# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Parsing.Varianta6743be6dfc49068fdec98130708d7a7a7a5571f5cbaced493a97ffafe512584

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `efccfea4bde182336a840dee7731d1a7f61b67af` · SHA-256 `dfa746a85107ed901737834681c3e84f7a134798cecab23b6345ff9005b33758`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListFindDefeq.Varianta3bf5d59841b8bbef72a338cbfcb96457325a2e434a1ea7cf20feeaaf912cd08","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a3bf5d59841b8bbef72a338cbfcb96457325a2e434a1ea7cf20feeaaf912cd08","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ListFindDefeq.Varianta3bf5d59841b8bbef72a338cbfcb96457325a2e434a1ea7cf20feeaaf912cd08","mathematical_subject":"Computation.DataStructures","original_sha256":"a3bf5d59841b8bbef72a338cbfcb96457325a2e434a1ea7cf20feeaaf912cd08","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Tactic/Linarith/Parsing.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Robert Y. Lewis. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robert Y. Lewis
-/

import Std.Data.RBMap.Basic
import Mathlib.Tactic.Linarith.Datatypes

/-!
# Parsing input expressions into linear form

`linarith` computes the linear form of its input expressions,
assuming (without justification) that the type of these expressions
is a commutative semiring.
It identifies atoms up to ring-equivalence: that is, `(y*3)*x` will be identified `3*(x*y)`,
where the monomial `x*y` is the linear atom.

* Variables are represented by natural numbers.
* Monomials are represented by `Monom := RBMap ℕ ℕ`.
  The monomial `1` is represented by the empty map.
* Linear combinations of monomials are represented by `Sum := RBMap Monom ℤ`.

All input expressions are converted to `Sum`s, preserving the map from expressions to variables.
We then discard the monomial information, mapping each distinct monomial to a natural number.
The resulting `RBMap ℕ ℤ` represents the ring-normalized linear form of the expression.
This is ultimately converted into a `Linexp` in the obvious way.

`linearFormsAndMaxVar` is the main entry point into this file. Everything else is contained.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ListFindDefeq.Varianta3bf5d59841b8bbef72a338cbfcb96457325a2e434a1ea7cf20feeaaf912cd08

set_option autoImplicit true

open Linarith.Ineq Std

section
open Lean Elab Tactic Meta

/--
`findDefeq red m e` looks for a key in `m` that is defeq to `e` (up to transparency `red`),
and returns the value associated with this key if it exists.
Otherwise, it fails.
-/
def List.findDefeq (red : TransparencyMode) (m : List (Expr × v)) (e : Expr) : MetaM v := do
  if let some (_, n) ← m.findM? $ fun ⟨e', _⟩ => withTransparency red (isDefEq e e') then
    return n
  else
    failure
end

/--
We introduce a local instance allowing addition of `RBMap`s,
removing any keys with value zero.
We don't need to prove anything about this addition, as it is only used in meta code.
-/
local instance [Add β] [Zero β] [DecidableEq β] : Add (RBMap α β c) where
  add := fun f g => (f.mergeWith (fun _ b b' => b + b') g).filter (fun _ b => b ≠ 0)

namespace Linarith

/-- A local abbreviation for `RBMap` so we don't need to write `Ord.compare` each time. -/
abbrev Map (α β) [Ord α] := RBMap α β Ord.compare

/-! ### Parsing datatypes -/

/-- Variables (represented by natural numbers) map to their power. -/
@[reducible] def Monom : Type := Map ℕ ℕ

/-- `1` is represented by the empty monomial, the product of no variables. -/
def Monom.one : Monom := RBMap.empty

/-- Compare monomials by first comparing their keys and then their powers. -/
def Monom.lt : Monom → Monom → Bool :=
  fun a b =>
    ((a.keys : List ℕ) < b.keys) ||
      (((a.keys : List ℕ) = b.keys) && ((a.values : List ℕ) < b.values))

instance : Ord Monom where
  compare x y := if x.lt y then .lt else if x == y then .eq else .gt

/-- Linear combinations of monomials are represented by mapping monomials to coefficients. -/
@[reducible] def Sum : Type := Map Monom ℤ

/-- `1` is represented as the singleton sum of the monomial `Monom.one` with coefficient 1. -/
def Sum.one : Sum := RBMap.empty.insert Monom.one 1

/-- `Sum.scaleByMonom s m` multiplies every monomial in `s` by `m`. -/
def Sum.scaleByMonom (s : Sum) (m : Monom) : Sum :=
  s.foldr (fun m' coeff sm => sm.insert (m + m') coeff) RBMap.empty

/-- `sum.mul s1 s2` distributes the multiplication of two sums. -/
def Sum.mul (s1 s2 : Sum) : Sum :=
  s1.foldr (fun mn coeff sm => sm + ((s2.scaleByMonom mn).mapVal (fun _ v => v * coeff)))
    RBMap.empty

/-- The `n`th power of `s : Sum` is the `n`-fold product of `s`, with `s.pow 0 = Sum.one`. -/
def Sum.pow (s : Sum) : ℕ → Sum
  | 0     => Sum.one
  | (k+1) => s.mul (s.pow k)

/-- `SumOfMonom m` lifts `m` to a sum with coefficient `1`. -/
def SumOfMonom (m : Monom) : Sum :=
  RBMap.empty.insert m 1

/-- The unit monomial `one` is represented by the empty RBMap. -/
def one : Monom := RBMap.empty

/-- A scalar `z` is represented by a `Sum` with coefficient `z` and monomial `one` -/
def scalar (z : ℤ) : Sum :=
  RBMap.empty.insert one z

/-- A single variable `n` is represented by a sum with coefficient `1` and monomial `n`. -/
def var (n : ℕ) : Sum :=
  RBMap.empty.insert (RBMap.empty.insert n 1) 1


/-! ### Parsing algorithms -/

open Lean Elab Tactic Meta

/--
`ExprMap` is used to record atomic expressions which have been seen while processing inequality
expressions.
-/
-- The natural number is just the index in the list,
-- and we could reimplement to just use `List Expr` if desired.
abbrev ExprMap := List (Expr × ℕ)

/--
`linearFormOfAtom red map e` is the atomic case for `linear_form_of_expr`.
If `e` appears with index `k` in `map`, it returns the singleton sum `var k`.
Otherwise it updates `map`, adding `e` with index `n`, and returns the singleton sum `var n`.
-/
def linearFormOfAtom (red : TransparencyMode) (m : ExprMap) (e : Expr) : MetaM (ExprMap × Sum) := do
  try
    let k ← m.findDefeq red e
    return (m, var k)
  catch _ =>
    let n := m.length + 1
    return ((e, n)::m, var n)

/--
`linearFormOfExpr red map e` computes the linear form of `e`.

`map` is a lookup map from atomic expressions to variable numbers.
If a new atomic expression is encountered, it is added to the map with a new number.
It matches atomic expressions up to reducibility given by `red`.

Because it matches up to definitional equality, this function must be in the `MetaM` monad,
and forces some functions that call it into `MetaM` as well.
-/

partial def linearFormOfExpr (red : TransparencyMode) (m : ExprMap) (e : Expr) :
    MetaM (ExprMap × Sum) :=
  match e.numeral? with
  | some 0 => return ⟨m, RBMap.empty⟩
  | some (n+1) => return ⟨m, scalar (n+1)⟩
  | none =>
  match e.getAppFnArgs with
  | (``HMul.hMul, #[_, _, _, _, e1, e2]) => do
    let (m1, comp1) ← linearFormOfExpr red m e1
    let (m2, comp2) ← linearFormOfExpr red m1 e2
    return (m2, comp1.mul comp2)
  | (``HAdd.hAdd, #[_, _, _, _, e1, e2]) => do
    let (m1, comp1) ← linearFormOfExpr red m e1
    let (m2, comp2) ← linearFormOfExpr red m1 e2
    return (m2, comp1 + comp2)
  | (``HSub.hSub, #[_, _, _, _, e1, e2]) => do
    let (m1, comp1) ← linearFormOfExpr red m e1
    let (m2, comp2) ← linearFormOfExpr red m1 e2
    return (m2, comp1 + comp2.mapVal (fun _ v => -v))
  | (``Neg.neg, #[_, _, e]) => do
    let (m1, comp) ← linearFormOfExpr red m e
    return (m1, comp.mapVal (fun _ v => -v))
  | (``HPow.hPow, #[_, _, _, _, a, n]) => do
    match n.numeral? with
    | some n => do
      let (m1, comp) ← linearFormOfExpr red m a
      return (m1, comp.pow n)
    | none => linearFormOfAtom red m e
  | _ => linearFormOfAtom red m e

/--
`elimMonom s map` eliminates the monomial level of the `Sum` `s`.

`map` is a lookup map from monomials to variable numbers.
The output `RBMap ℕ ℤ` has the same structure as `s : Sum`,
but each monomial key is replaced with its index according to `map`.
If any new monomials are encountered, they are assigned variable numbers and `map` is updated.
 -/
def elimMonom (s : Sum) (m : Map Monom ℕ) : Map Monom ℕ × Map ℕ ℤ :=
  s.foldr (λ mn coeff ⟨map, out⟩ =>
    match map.find? mn with
    | some n => ⟨map, out.insert n coeff⟩
    | none =>
      let n := map.size
      ⟨map.insert mn n, out.insert n coeff⟩)
    (m, RBMap.empty)

/--
`toComp red e e_map monom_map` converts an expression of the form `t < 0`, `t ≤ 0`, or `t = 0`
into a `comp` object.

`e_map` maps atomic expressions to indices; `monom_map` maps monomials to indices.
Both of these are updated during processing and returned.
-/
def toComp (red : TransparencyMode) (e : Expr) (e_map : ExprMap) (monom_map : Map Monom ℕ) :
    MetaM (Comp × ExprMap × Map Monom ℕ) := do
  let (iq, e) ← parseCompAndExpr e
  let (m', comp') ← linearFormOfExpr red e_map e
  let ⟨nm, mm'⟩ := elimMonom comp' monom_map
  -- Note: we use `.reverse` as `Linexp.get` assumes the monomial are in descending order
  return ⟨⟨iq, mm'.toList.reverse⟩, m', nm⟩

/--
`toCompFold red e_map exprs monom_map` folds `toComp` over `exprs`,
updating `e_map` and `monom_map` as it goes.
 -/
def toCompFold (red : TransparencyMode) : ExprMap → List Expr → Map Monom ℕ →
      MetaM (List Comp × ExprMap × Map Monom ℕ)
| m, [],     mm => return ([], m, mm)
| m, (h::t), mm => do
    let (c, m', mm') ← toComp red h m mm
    let (l, mp, mm') ← toCompFold red m' t mm'
    return (c::l, mp, mm')

/--
`linearFormsAndMaxVar red pfs` is the main interface for computing the linear forms of a list
of expressions. Given a list `pfs` of proofs of comparisons, it produces a list `c` of `Comp`s of
the same length, such that `c[i]` represents the linear form of the type of `pfs[i]`.

It also returns the largest variable index that appears in comparisons in `c`.
-/
def linearFormsAndMaxVar (red : TransparencyMode) (pfs : List Expr) :
    MetaM (List Comp × ℕ) := do
  let pftps ← (pfs.mapM inferType)
  let (l, _, map) ← toCompFold red [] pftps RBMap.empty
  trace[linarith.detail] "monomial map: {map.toList.map fun ⟨k,v⟩ => (k.toList, v)}"
  return (l, map.size - 1)

end Linarith
```
