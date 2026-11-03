/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
META_OBSERVER_NOT_EXECUTED / KERNEL_REPLAY_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.ScopedNatLeTransExpression
import GRWTSK.Combinatorics.GraphTheory.CheckedApplicationSoficBridge

/-!
# Dependent closure of all five original scoped Nat.le_trans arguments

The existing `ScopedNatLeTransExpression` recognizes one exact `Lean.Expr`
headed by `Nat.le_trans` and FIVE actual local variables `a b c hab hbc`,
with correct dependent types. This source closes precisely those variables,
including the three Nat parameters, in their original order. It preserves
both premise proofs, binder dependencies, the original expression and the
proof's definitional return when reapplied to the same five local variables.

This is an actual MetaM program and a kernel-facing theorem candidate; a
successful native build would check the emitted proof term. None of the
native checks has run in this authoring environment. Meta observations alone
are not kernel certificates or authenticated Git/Lean declarations.

The quantitative sofic consumer separately requires the original two typed
premises, and reuses the existing lower/certified relation and signed budget.
No candidate, upper-language word, or numerical graph rank is promoted.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open Lean Lean.Meta Lean.Elab Lean.Elab.Tactic
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CheckedApplicationSoficBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- The supported abstraction has five different *context identities*.  Equal
Nat values are allowed; repeated fvar IDs are excluded as a scope guard. -/
def distinctExprs : List Lean.Expr → Bool
  | [] => true
  | x :: xs => !(xs.any (fun y => x == y)) && distinctExprs xs

/-- Exact scoped original plus the emitted fully closed dependent proof. -/
structure ObservedDependentNatLeTrans (source : Lean.Expr) where
  observation : ScopedNatLeTransObservation source
  closedProof : Lean.Expr
  closedType : Lean.Expr

/-- Source fidelity remains an equality of actual expression constructors. -/
theorem ObservedDependentNatLeTrans.original_exact {source : Lean.Expr}
    (o : ObservedDependentNatLeTrans source) :
    source = makeNatLeTransExpr
      o.observation.spine.a o.observation.spine.b o.observation.spine.c
      o.observation.spine.hab o.observation.spine.hbc :=
  o.observation.spine.source_eq

/-- New logical boundary: close *a,b,c,hab,hbc*, not only proof variables.
The `MetaM` observer fails closed on unsupported or out-of-context inputs.
`mkForallFVars` constructs the expected type with the SAME binder order and
real dependent premise types; it does not infer them from strings.

There are no axioms or unsafe coercions from `Lean.Expr` to a Lean proposition.
This routine's return remains an environment-dependent observation until
an independently checked theorem proof actually uses its emitted expression. -/
def observeAndCloseDependentNatLeTrans (source : Lean.Expr) :
    Lean.Meta.MetaM (Option (ObservedDependentNatLeTrans source)) := do
  try
    let some observation ← inspectScopedNatLeTrans source | return none
    let w := observation.spine
    let args : Array Lean.Expr := #[w.a, w.b, w.c, w.hab, w.hbc]
    if !(distinctExprs args.toList) then return none
    if source.hasMVar || source.hasLevelParam then return none
    let resultType := Lean.mkApp2 (Lean.mkConst ``Nat.le) w.a w.c
    -- The true local-context types have already been checked by the observer.
    let expectedType ← Lean.Meta.mkForallFVars args resultType
    let closed ← Lean.Meta.mkLambdaFVars args source
    if closed.hasFVar || closed.hasMVar || closed.hasLevelParam then return none
    if expectedType.hasFVar || expectedType.hasMVar || expectedType.hasLevelParam then
      return none
    unless (← Lean.Meta.isTypeCorrect closed) do return none
    let actualType ← Lean.Meta.inferType closed
    unless (← Lean.Meta.isDefEq actualType expectedType) do return none
    -- Proof irrelevance makes definitional equality insufficient to identify
    -- proof expressions. First demand a literal Expr-structural beta roundtrip.
    if closed.beta args != source then return none
    -- The separate Meta type/defeq gate checks the original goal context.
    let reopened := Lean.mkAppN closed args
    unless (← Lean.Meta.isTypeCorrect reopened) do return none
    unless (← Lean.Meta.isDefEq reopened source) do return none
    return some ⟨observation, closed, actualType⟩
  catch _ =>
    return none

/-- Real positive Meta fixture: five local variables whose proof-binder types
refer to the three original Nat fvars, in their original scope and order. -/
def observeDependentNatLeTransReference : Lean.Meta.MetaM Bool :=
  Lean.Meta.withLocalDeclD `a (Lean.mkConst ``Nat) fun a =>
  Lean.Meta.withLocalDeclD `b (Lean.mkConst ``Nat) fun b =>
  Lean.Meta.withLocalDeclD `c (Lean.mkConst ``Nat) fun c =>
  Lean.Meta.withLocalDeclD `hab
    (Lean.mkApp2 (Lean.mkConst ``Nat.le) a b) fun hab =>
  Lean.Meta.withLocalDeclD `hbc
    (Lean.mkApp2 (Lean.mkConst ``Nat.le) b c) fun hbc => do
    let source := makeNatLeTransExpr a b c hab hbc
    return (← observeAndCloseDependentNatLeTrans source).isSome

/-- The next theorem *really submits the Meta-emitted expression* to an
ordinary Lean proof goal. A failed observation is a tactic error, not a
fallback call to `Nat.le_trans` or a fabricated proof witness. -/
elab "emit_dependent_nat_trans" : tactic => withMainContext do
  let goal ← getMainGoal
  let lctx ← getLCtx
  let some aDecl := lctx.findFromUserName? `a
    | throwError "missing exact Nat local a"
  let some bDecl := lctx.findFromUserName? `b
    | throwError "missing exact Nat local b"
  let some cDecl := lctx.findFromUserName? `c
    | throwError "missing exact Nat local c"
  let some habDecl := lctx.findFromUserName? `hab
    | throwError "missing exact proof local hab"
  let some hbcDecl := lctx.findFromUserName? `hbc
    | throwError "missing exact proof local hbc"
  let a := aDecl.toExpr
  let b := bDecl.toExpr
  let c := cDecl.toExpr
  let hab := habDecl.toExpr
  let hbc := hbcDecl.toExpr
  let args : Array Lean.Expr := #[a, b, c, hab, hbc]
  let source := makeNatLeTransExpr a b c hab hbc
  let some o ← observeAndCloseDependentNatLeTrans source
    | throwError "dependent scoped Nat.le_trans observer rejected proof"
  let emitted := Lean.mkAppN o.closedProof args
  if emitted.hasMVar then throwError "unresolved proof metavariable"
  unless (← Lean.Meta.isTypeCorrect emitted) do
    throwError "reopened dependent proof is ill typed"
  let expected ← goal.getType
  let inferred ← Lean.Meta.inferType emitted
  unless (← Lean.Meta.isDefEq inferred expected) do
    throwError "emitted dependent proof has wrong conclusion type"
  goal.assign emitted
  replaceMainGoal []

/-- The intended parameter scope is now general Nat data, not three closed
literals. Acceptance requires actually compiling this theorem in pinned Lean. -/
theorem emitted_dependent_nat_trans
    (a b c : Nat) (hab : a ≤ b) (hbc : b ≤ c) : a ≤ c := by
  emit_dependent_nat_trans

/-- An independently typed *consumer* of the same five original parameters,
with the original certified graph word and its complete signed allowance.
The first component specifically uses the emitted expression, not a shortcut. -/
theorem emitted_dependent_nat_sofic_return
    (a b c : Nat) (hab : a ≤ b) (hbc : b ≤ c) :
    (a ≤ c) ∧
      (∃ defect allowance : ℝ,
        CertifiedTrace NatTransitivityExample.network.quantitative
          a [b] c defect allowance ∧
        NatTransitivityExample.network.quantitative.readout a =
          NatTransitivityExample.network.quantitative.readout c + defect ∧
        0 ≤ allowance ∧ |defect| ≤ allowance) := by
  constructor
  · emit_dependent_nat_trans
  · let path : WordPath NatTransitivityExample.network.quantitative.sandwich.lower
        a [b] c :=
      WordPath.cons (by exact ⟨hab, hbc⟩) (WordPath.nil c)
    exact (AppliedWord.ofWordPath NatTransitivityExample.network
      path).exists_quantitative_return

/-- This is an executable source-level regression gate, not an observed run.
When the new module is built, a rejected valid dependent instance is fatal. -/
run_meta do
  unless (← observeDependentNatLeTransReference) do
    throwError "dependent local Nat.le_trans proof closure failed"

/-- Adversarial control: a duplicate local identity in the a/b positions is
outside the deliberately restricted binder-custody domain. -/
run_meta do
  let admitted ←
    Lean.Meta.withLocalDeclD `a (Lean.mkConst ``Nat) fun a =>
    Lean.Meta.withLocalDeclD `c (Lean.mkConst ``Nat) fun c =>
    Lean.Meta.withLocalDeclD `hab
      (Lean.mkApp2 (Lean.mkConst ``Nat.le) a a) fun hab =>
    Lean.Meta.withLocalDeclD `hbc
      (Lean.mkApp2 (Lean.mkConst ``Nat.le) a c) fun hbc => do
        let source := makeNatLeTransExpr a a c hab hbc
        return (← observeAndCloseDependentNatLeTrans source).isSome
  if admitted then
    throwError "dependent observer admitted duplicate Nat parameter identity"

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
