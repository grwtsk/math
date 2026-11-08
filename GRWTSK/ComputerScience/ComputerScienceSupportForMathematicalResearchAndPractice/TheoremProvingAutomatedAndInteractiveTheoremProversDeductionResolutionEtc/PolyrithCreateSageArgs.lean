/-
Copyright (c) 2022 Dhruv Bhatia. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dhruv Bhatia, Eric Wieser, Mario Carneiro
-/
import Mathlib.Data.Rat.Basic
import Mathlib.Tactic.LinearCombination

/-!

# polyrith Tactic

This split module retains polynomial/context representations and checking of a
supplied certificate. The Python/Sage acquisition and tactic registration are in
the importing Noe driver. The upstream method description below describes the
original combined implementation; no external service is called by this core.

In this file, the `polyrith` tactic is created.  This tactic, which
works over `Field`s, attempts to prove a multivariate polynomial target over said
field by using multivariable polynomial hypotheses/proof terms over the same field.
Used as is, the tactic makes use of those hypotheses in the local context that are
over the same field as the target. However, the user can also specify which hypotheses
from the local context to use, along with proof terms that might not already be in the
local context. Note: since this tactic uses SageMath via an API call done in Python,
it can only be used with a working internet connection, and with a local installation of Python.

## Implementation Notes

The tactic `linear_combination` is often used to prove such goals by allowing the user to
specify a coefficient for each hypothesis. If the target polynomial can be written as a
linear combination of the hypotheses with the chosen coefficients, then the `linear_combination`
tactic succeeds. In other words, `linear_combination` is a certificate checker, and it is left
to the user to find a collection of good coefficients. The `polyrith` tactic automates this
process using the theory of Groebner bases.

Polyrith does this by first parsing the relevant hypotheses into a form that Python can understand.
It then calls a Python file that uses the SageMath API to compute the coefficients. These
coefficients are then sent back to Lean, which parses them into pexprs. The information is then
given to the `linear_combination` tactic, which completes the process by checking the certificate.

`polyrith` calls an external python script `scripts/polyrith_sage.py`. Because this is not a Lean
file, changes to this script may not be noticed during Lean compilation if you have already
generated olean files. If you are modifying this python script, you likely know what you're doing;
remember to force recompilation of any files that call `polyrith`.

## TODO

* Give Sage more information about the specific ring being used for the coefficients. For now,
  we always use ℚ (or `QQ` in Sage).
* Handle `•` terms.
* Support local Sage installations.

## References

* See the book [*Ideals, Varieties, and Algorithms*][coxlittleOshea1997] by David Cox, John Little,
  and Donal O'Shea for the background theory on Groebner bases
* This code was heavily inspired by the code for the tactic `linarith`, which was written by
  Robert Lewis, who advised me on this project as part of a Computer Science independent study
  at Brown University.

-/

set_option autoImplicit true

namespace Mathlib.Tactic.Polyrith
open Lean hiding Rat
open Meta Ring Qq PrettyPrinter AtomM
initialize registerTraceClass `Meta.Tactic.polyrith

/-! # Poly Datatype -/

/--
A datatype representing the semantics of multivariable polynomials.
Each `poly` can be converted into a string.
-/
inductive Poly
  | const : ℚ → Poly
  | var : ℕ → Poly
  | hyp : Term → Poly
  | add : Poly → Poly → Poly
  | sub : Poly → Poly → Poly
  | mul : Poly → Poly → Poly
  | div : Poly → Poly → Poly
  | pow : Poly → Poly → Poly
  | neg : Poly → Poly
  deriving BEq, Repr

/--
This converts a poly object into a string representing it. The string
maintains the semantic structure of the poly object.

The output of this function must be valid Python syntax, and it assumes the variables `varN` from
`scripts/polyrith.py.`
-/
def Poly.format : Poly → Lean.Format
  | .const z => toString z
  | .var n => s!"var{n}"
  | .hyp e => s!"hyp{e}" -- this one can't be used by python
  | .add p q => s!"({p.format} + {q.format})"
  | .sub p q => s!"({p.format} - {q.format})"
  | .mul p q => s!"({p.format} * {q.format})"
  | .div p q => s!"({p.format} / {q.format})" -- this one can't be used by python
  | .pow p q => s!"({p.format} ^ {q.format})"
  | .neg p => s!"-{p.format}"

instance : Lean.ToFormat Poly := ⟨Poly.format⟩
instance : ToString Poly := ⟨(toString ·.format)⟩
instance : Repr Poly := ⟨fun p _ => p.format⟩
instance : Inhabited Poly := ⟨Poly.const 0⟩

instance : Quote ℤ where quote
  | .ofNat n => quote n
  | .negSucc n => Unhygienic.run `(-$(quote n))

instance : Quote ℚ where
  quote q :=
    if q.den = 1 then quote q.num
    else Unhygienic.run `($(quote q.num) / $(quote q.den))

variable (vars : Array Syntax.Term) in
/-- Converts a `Poly` expression into a `Syntax` suitable as an input to `linear_combination`. -/
def Poly.toSyntax : Poly → Unhygienic Syntax.Term
  | .const z => pure (quote z)
  | .var n => pure vars[n]!
  | .hyp stx => pure stx
  | .add p q => do `($(← p.toSyntax) + $(← q.toSyntax))
  | .sub p q => do `($(← p.toSyntax) - $(← q.toSyntax))
  | .mul p q => do `($(← p.toSyntax) * $(← q.toSyntax))
  | .div p q => do `($(← p.toSyntax) / $(← q.toSyntax))
  | .pow p q => do `($(← p.toSyntax) ^ $(← q.toSyntax))
  | .neg p => do `(-$(← p.toSyntax))

/-- Reifies a ring expression of type `α` as a `Poly`. -/
partial def parse {u} {α : Q(Type u)} (sα : Q(CommSemiring $α))
    (c : Ring.Cache sα) (e : Q($α)) : AtomM Poly := do
  let els := do
    try pure <| Poly.const (← (← NormNum.derive e).toRat)
    catch _ => pure <| Poly.var (← addAtom e)
  let .const n _ := (← withReducible <| whnf e).getAppFn | els
  match n, c.rα with
  | ``HAdd.hAdd, _ | ``Add.add, _ => match e with
    | ~q($a + $b) => pure <| (← parse sα c a).add (← parse sα c b)
    | _ => els
  | ``HMul.hMul, _ | ``Mul.mul, _ => match e with
    | ~q($a * $b) => pure <| (← parse sα c a).mul (← parse sα c b)
    | _ => els
  | ``HSMul.hSMul, _ => match e with
    | ~q(($a : ℕ) • ($b : «$α»)) => pure <| (← parse sℕ .nat a).mul (← parse sα c b)
    | _ => els
  | ``HPow.hPow, _ | ``Pow.pow, _ => match e with
    | ~q($a ^ $b) =>
      try pure <| (← parse sα c a).pow (.const (← (← NormNum.derive (u := .zero) b).toRat))
      catch _ => els
    | _ => els
  | ``Neg.neg, some _ => match e with
    | ~q(-$a) => pure <| (← parse sα c a).neg
  | ``HSub.hSub, some _ | ``Sub.sub, some _ => match e with
    | ~q($a - $b) => pure <| (← parse sα c a).sub (← parse sα c b)
    | _ => els
  | _, _ => els

/-- The possible hypothesis sources for a polyrith proof. -/
inductive Source where
  /-- `input n` refers to the `n`'th input `ai` in `polyrith [a1, ..., an]`. -/
  | input : Nat → Source
  /-- `fvar h` refers to hypothesis `h` from the local context. -/
  | fvar : FVarId → Source

/-- The first half of `polyrith` produces a list of arguments to be sent to Sage. -/
def parseContext (only : Bool) (hyps : Array Expr) (tgt : Expr) :
    AtomM (Expr × Array (Source × Poly) × Poly) := do
  let fail {α} : AtomM α := throwError "polyrith failed: target is not an equality in semirings"
  let some (α, e₁, e₂) := (← whnfR <|← instantiateMVars tgt).eq? | fail
  let .sort u ← instantiateMVars (← whnf (← inferType α)) | unreachable!
  let some v := u.dec | throwError "not a type{indentExpr α}"
  have α : Q(Type v) := α
  have e₁ : Q($α) := e₁; have e₂ : Q($α) := e₂
  let sα ← synthInstanceQ (q(CommSemiring $α) : Q(Type v))
  let c ← mkCache sα
  let tgt := (← parse sα c e₁).sub (← parse sα c e₂)
  let rec
    /-- Parses a hypothesis and adds it to the `out` list. -/
    processHyp src ty out := do
      if let some (β, e₁, e₂) := (← instantiateMVars ty).eq? then
        if ← withTransparency (← read).red <| isDefEq α β then
          return out.push (src, (← parse sα c e₁).sub (← parse sα c e₂))
      pure out
  let mut out := #[]
  if !only then
    for ldecl in ← getLCtx do
      out ← processHyp (.fvar ldecl.fvarId) ldecl.type out
  for hyp in hyps, i in [:hyps.size] do
    out ← processHyp (.input i) (← inferType hyp) out
  pure (α, out, tgt)

/-- Constructs the list of arguments to pass to the external sage script `polyrith_sage.py`. -/
def createSageArgs (trace : Bool) (α : Expr) (atoms : Nat)
    (hyps : Array (Source × Poly)) (tgt : Poly) : Array String :=
  let hyps := hyps.map (toString ·.2) |>.toList.toString
  #[toString trace, toString α, toString atoms, hyps, toString tgt]

/-- A JSON parser for `ℚ` specific to the return value of `polyrith_sage.py`. -/
local instance : FromJson ℚ where fromJson?
  | .arr #[a, b] => return (← fromJson? a : ℤ) / (← fromJson? b : ℕ)
  | _ => .error "expected array with two elements"

/-- Removes an initial `-` sign from a polynomial with negative leading coefficient. -/
def Poly.unNeg? : Poly → Option Poly
  | .mul a b => return .mul (← a.unNeg?) b
  | .const i => if i < 0 then some (.const (-i)) else none
  | .neg p => p
  | _ => none

/-- Adds two polynomials, performing some simple simplifications for presentation like
`a + -b = a - b`. -/
def Poly.add' : Poly → Poly → Poly
  | .const 0, p => match p.unNeg? with
    | some np => .neg np
    | none => p
  | p, .const 0 => p
  | a, b => match b.unNeg? with
    | some nb => a.sub nb
    | none => a.add b

/-- Multiplies two polynomials, performing some simple simplifications for presentation like
`1 * a = a`. -/
def Poly.mul' : Poly → Poly → Poly
  | .const 0, _ => .const 0
  | .const 1, p
  | p, .const 1 => p
  | a, b => a.mul b

/-- Extracts the divisor `c : ℕ` from a polynomial of the form `1/c * b`. -/
def Poly.unDiv? : Poly → Option (Poly × ℕ)
  | .mul a b => do let (a, r) ← a.unDiv?; return (.mul' a b, r)
  | .const r => if r.num = 1 ∧ r.den ≠ 1 then some (.const r.num, r.den) else none
  | .neg p => do let (p, r) ← p.unDiv?; return (.neg p, r)
  | _ => none

/-- Constructs a power expression `v_i ^ j`, performing some simplifications in trivial cases. -/
def Poly.pow' : ℕ → ℕ → Poly
  | _, 0 => .const 1
  | i, 1 => .var i
  | i, k => .pow (.var i) (.const k)

/-- Constructs a sum from a monadic function supplying the monomials. -/
def Poly.sumM [Monad m] (a : Array α) (f : α → m Poly) : m Poly :=
  a.foldlM (init := .const 0) fun p a => return p.add' (← f a)

instance : FromJson Poly where
  fromJson? j := do
    Poly.sumM (← j.getArr?) fun j => do
      let mut mon := .const (← fromJson? (← j.getArrVal? 1))
      for j in ← (← j.getArrVal? 0).getArr? do
        mon := mon.mul' (.pow' (← fromJson? (← j.getArrVal? 0)) (← fromJson? (← j.getArrVal? 1)))
      pure mon

/-- The result of a sage call in the success case. -/
structure SageSuccess where
  /-- The script returns a string containing python script to be sent to the remote server,
  when the tracing option is set. -/
  trace : Option String := none
  /-- The main result of the function call is an array of polynomials
  parallel to the input list of hypotheses. -/
  data : Option (Array Poly) := none
  deriving FromJson, Repr

/-- The result of a sage call in the failure case. -/
structure SageError where
  /-- The error kind -/
  name : String
  /-- The error message -/
  value : String
  deriving FromJson

/-- The result of a sage call. -/
def SageResult := Except SageError SageSuccess

instance : FromJson SageResult where fromJson? j := do
  if let .ok true := fromJson? <| j.getObjValD "success" then
    return .ok (← fromJson? j)
  else
    return .error (← fromJson? j)

/-
Local attribution: grwtsk contributors.
Artifact-boundary split of grwtsk/math@8ac7546df3bc1a5d0db99e022fe0c0ccb0ff77ec
Source: GRWTSK/ComputerScience/ComputerScienceSupportForMathematicalResearchAndPractice/TheoremProvingAutomatedAndInteractiveTheoremProversDeductionResolutionEtc/PolyrithCreateSageArgs.lean
Git blob: 4ee028d7c404ac0cd8d4fea00009416f745159a0
Retained polynomial representation/context parsing and proof-producing checking of a supplied SageResult.
External Python/Sage acquisition and tactic orchestration are in the importing Noe driver.
Compilation, fresh kernel checking and transitive axiom auditing: NOT_RUN.
Historical provenance comments describe the original source, not verification of these edited bytes.
-/

/-- Reconstruct and check the supplied polynomial certificate in the existing AtomM context. -/
def _root_.GRWTSK.Polyrith.applySageCertificate (g : MVarId) (hyps : Array Expr)
    (hyps' : Array (Source × Poly)) (traceOnly : Bool) (result : SageResult) :
    AtomM (Except MVarId (TSyntax `tactic)) := do
  match result with
  | .ok { trace, data } =>
    if let some trace := trace then logInfo trace
    if let some polys := data then
      let vars ← liftM <| (← get).atoms.mapM delab
      let p ← Poly.sumM (polys.zip hyps') fun (p, src, _) => do
        let h := .hyp (← delab (match src with | .input i => hyps[i]! | .fvar h => .fvar h))
        pure <| match p.unDiv? with
        | some (p, den) => (p.mul' h).div (.const den)
        | none => p.mul' h
      let stx := (withRef (← getRef) <| p.toSyntax vars).run
      let tac ←
        if let .const 0 := p then `(tactic| linear_combination)
        else `(tactic| linear_combination $stx:term)
      try
        guard (← Elab.runTactic g tac).1.isEmpty
      catch _ => throwError
        "polyrith found the following certificate, but it failed to close the goal:\n{stx}"
      pure <| .ok tac
    else if traceOnly then
      return .error g
    else throwError "internal error: no output available"
  | .error { name, value } =>
    throwError "polyrith failed to retrieve a solution from Sage! {name}: {value}"

end Mathlib.Tactic.Polyrith
