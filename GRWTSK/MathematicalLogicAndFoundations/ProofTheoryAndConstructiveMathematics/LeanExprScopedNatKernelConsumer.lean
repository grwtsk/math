/- Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / LEAN_COMPILATION_NOT_RUN /
META_OBSERVER_NOT_EXECUTED / KERNEL_REPLAY_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.MathematicalLogicAndFoundations.ProofTheoryAndConstructiveMathematics.LeanExprScopedNatLeTransClosure

/-!
# Kernel-facing consumer of the original scoped Nat.le_trans expression

An existing MetaM observer recognizes the exact Nat.le_trans application with
literal parameters (1,2,3) and two original local proof fvars. It abstracts
THOSE fvars and returns a closed expression, after checking its source and type.

This increment submits the *same emitted* closed expression, reapplied to the
*original* local fvars, to an actual Lean proof goal. Unlike merely storing a
MetaM Boolean, a successful native compilation of the theorem below would make
Lean's kernel inspect the emitted term. We do NOT report that compilation or
kernel acceptance here, and this is NOT an independent fresh-kernel receipt.

The certified-sofic consumer uses the same original local proof hypotheses and
the unchanged full signed error allowance. Neither an arbitrary proof Expr,
a candidate search edge, nor the raw MetaM result becomes an accepted theorem.
No general extractor, source-commit authentication, or RH/NS proof is asserted.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite

open Lean Lean.Meta Lean.Elab Lean.Elab.Tactic
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.CheckedApplicationSoficBridge
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.DefectEnrichedSoficLanguage
open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.SearchSoficLanguage

/-- This tactic accepts exactly the scoped literal application
`Nat.le_trans 1 2 3 h12 h23`. It does not search the local context for an
arbitrary theorem or insert a fallback proof if the observer rejects it.

The source Expr is constructed with the actual local hypothesis Exprs. The
emitted `ObservedScopedNatLeTrans.closedProof` is reapplied to these same Exprs
and assigned directly to the current goal. A successful Lean compilation checks
that assigned proof at this theorem declaration, without an `Expr`-to-`Prop` axiom.
-/
elab "emit_checked_scoped_nat_trans_123" : tactic => withMainContext do
  let goal ← getMainGoal
  let lctx ← getLCtx
  let some leftDecl := lctx.findFromUserName? `h12
    | throwError "missing exact local hypothesis h12"
  let some rightDecl := lctx.findFromUserName? `h23
    | throwError "missing exact local hypothesis h23"
  let left := leftDecl.toExpr
  let right := rightDecl.toExpr
  let source := mkLiteralNatLeTrans 1 2 3 left right
  let some observation ← observeAndAbstractScopedNatLeTrans source
    | throwError "scoped Nat.le_trans proof abstraction rejected the source"
  -- The original two proof expressions are re-applied; no new evidence added.
  let emitted := Lean.mkApp2 observation.closedProof left right
  if emitted.hasMVar then
    throwError "emitted proof contains an unresolved metavariable"
  unless ← Lean.Meta.isTypeCorrect emitted do
    throwError "emitted proof is not well-typed in the actual goal context"
  let emittedType ← Lean.Meta.inferType emitted
  let expectedType ← goal.getType
  unless ← Lean.Meta.isDefEq emittedType expectedType do
    throwError "emitted proof type does not match the original goal"
  goal.assign emitted
  replaceMainGoal []

/-- Nonvacuous proof consumer: the theorem's proof is exactly the expression
emitted by the scoped observer. There is deliberately no alternative `exact`
or `sorry` branch. Native compilation and an independent replay are still pending. -/
theorem emitted_scoped_nat_trans_123
    (h12 : (1 : Nat) ≤ 2) (h23 : (2 : Nat) ≤ 3) : (1 : Nat) ≤ 3 := by
  emit_checked_scoped_nat_trans_123

/-- The same TWO original typed local hypotheses also certify the one-letter
sofic path. Its numeric defect is still the original signed endpoint difference.
The proof's first component is furnished by the actual Meta-emitted expression. -/
theorem emitted_proof_and_certified_sofic_return
    (h12 : (1 : Nat) ≤ 2) (h23 : (2 : Nat) ≤ 3) :
    ((1 : Nat) ≤ 3) ∧
      (∃ defect allowance : ℝ,
        CertifiedTrace NatTransitivityExample.network.quantitative
          1 [2] 3 defect allowance ∧
        NatTransitivityExample.network.quantitative.readout 1 =
          NatTransitivityExample.network.quantitative.readout 3 + defect ∧
        0 ≤ allowance ∧ |defect| ≤ allowance) := by
  constructor
  · emit_checked_scoped_nat_trans_123
  · let certified : WordPath
        NatTransitivityExample.network.quantitative.sandwich.lower
        1 [2] 3 :=
      WordPath.cons (by exact ⟨h12, h23⟩) (WordPath.nil 3)
    exact (AppliedWord.ofWordPath NatTransitivityExample.network
      certified).exists_quantitative_return

/-- Compile-time Meta regression gate. This does not itself certify a theorem.
When the new module is actually compiled, a `false` observation produces an
error and fails the build rather than being silently recorded as a success. -/
run_meta do
  unless (← observeScopedReference) do
    throwError "scoped Nat.le_trans reference observation failed"

/-- Reusing one local proof for the two distinct positions is deliberately
outside the accepted grammar. This negative check should return `none`. -/
run_meta do
  let duplicateAccepted ←
    Lean.Meta.withLocalDecl `h12 .default (literalLeExpr 1 2) fun h12 => do
      let source := mkLiteralNatLeTrans 1 2 3 h12 h12
      return (← observeAndAbstractScopedNatLeTrans source).isSome
  if duplicateAccepted then
    throwError "unsupported repeated proof variable was admitted"

end GRWTSK.CombinatoricsAndDiscreteMathematics.DirectedGraph.JointPremiseInference.Finite
