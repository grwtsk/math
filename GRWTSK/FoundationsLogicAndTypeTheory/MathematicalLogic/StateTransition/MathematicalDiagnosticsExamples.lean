/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.MathematicalDiagnostics

/-!
# Cross-subject diagnostic examples and hostile controls

These are mathematical examples, not executed compiler or kernel receipts. A
candidate for a false claim is legal descriptive data, while the established
case requires an actual proof of the precise catalog meaning. Domain
restriction and implication direction remain visible.
-/

namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.MathematicalDiagnostics.Examples

open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.ResearchState
open GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.MathematicalDiagnostics

private def fixtureSource : SourceIdentity where
  repository := "mathematical-fixture"
  commit := "test-revision"
  tree := "test-tree"
  path := "MathematicalDiagnosticsExamples.lean"
  blob := "test-blob"
  declarationName := "Examples.fixtureClaim"

/-- The claim's full meaning still depends on its exact catalog. -/
private def fixtureCatalog : Catalog Bool where
  statement := fun positive => if positive then True else False
  hypotheses := fun _ => []
  source := fun _ => fixtureSource

private def positiveDescriptor : Descriptor Bool where
  claim := true
  source := fixtureSource
  canonicalSubjectPath := "GRWTSK/FoundationsLogicAndTypeTheory"
  family := .proof
  code := "PROOF_PRESENT"

private def negativeDescriptor : Descriptor Bool where
  claim := false
  source := fixtureSource
  canonicalSubjectPath := "GRWTSK/FoundationsLogicAndTypeTheory"
  family := .proof
  code := "UNRESOLVED_PROOF"

/-- A recorded checked proposition has an actual mathematical proof. -/
def establishedExample : CatalogDiagnostic fixtureCatalog where
  descriptor := positiveDescriptor
  sourceMatches := rfl
  standing := .established (by simp [Meaning, fixtureCatalog])

/-- A recorded unproved proposition remains candidate metadata. -/
def candidateExample : CatalogDiagnostic fixtureCatalog where
  descriptor := negativeDescriptor
  sourceMatches := rfl
  standing := .candidate

theorem established_example_sound : fixtureCatalog.statement true := by
  exact establishedExample.statement_of_hasProof (by rfl) (by simp [fixtureCatalog])

theorem candidate_example_has_no_proof_flag :
    candidateExample.standing.hasProof = false := rfl

/-- A valid implication cannot transport a refutation in the wrong direction. -/
def falseRefutation : Standing False := .refuted (fun impossible => impossible)

def falseToTrue : False → True := fun impossible => False.elim impossible

theorem forward_refutation_does_not_refute_true :
    (Standing.forward falseToTrue falseRefutation).hasRefutation = false := rfl

/-- A conditional derivation carries its false premise, not a proof of False. -/
def falseConditional : Standing False :=
  .conditional False (fun impossible => impossible)

theorem conditional_false_is_not_established :
    falseConditional.hasProof = false := rfl

/-- One arithmetic witness refutes precisely the universal arithmetic bound. -/
theorem arithmetic_counterexample : ¬ (∀ n : Nat, n ≤ 0) := by
  exact scoped_counterexample (fun _ : Nat => True) (fun n => n ≤ 0)
    1 trivial (by decide)

/-- A restricted proposition may hold while the global claim fails. -/
theorem restricted_true_global_false :
    (∀ n : Nat, n = 0 → n = 0) ∧ ¬ (∀ n : Nat, n = 0) := by
  constructor
  · intro n hypothesis
    exact hypothesis
  · intro global
    have impossible : (1 : Nat) = 0 := global 1
    cases impossible

/-- A real scope transition uses both a domain inclusion and an
inequality comparison; a diagnostic label cannot supply them. -/
theorem arithmetic_scoped_transfer :
    (∀ n : Nat, n ≤ 2 → n ≤ 2) →
      (∀ n : Nat, n = 0 → n ≤ 3) := by
  intro source
  refine scoped_transfer source ?_ ?_
  · intro n isZero
    simp [isZero]
  · intro n _ sourceBound
    exact Nat.le_trans sourceBound (by decide)

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.MathematicalDiagnostics.Examples
