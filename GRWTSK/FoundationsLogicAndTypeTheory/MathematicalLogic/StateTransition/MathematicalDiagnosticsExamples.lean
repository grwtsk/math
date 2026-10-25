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

/-!
## Cross-catalog transport fixtures

The source and target catalogs have different claim-index types (Nat, Bool,
and Unit) but intentionally carry one exact recorded source identity. Source
meaning still requires a mathematical adapter; identity equality alone gives
no implication. A changed blob blocks this strict source-preserving interface.
-/

private def natClaimCatalog : Catalog Nat where
  statement := fun n => n ≤ 2
  hypotheses := fun _ => []
  source := fun _ => fixtureSource

private def boolClaimCatalog : Catalog Bool where
  statement := fun b => (if b then (1 : Nat) else 0) ≤ 2
  hypotheses := fun _ => []
  source := fun _ => fixtureSource

private def unitClaimCatalog : Catalog Unit where
  statement := fun _ => (1 : Nat) ≤ 2
  hypotheses := fun _ => []
  source := fun _ => fixtureSource

private def boolIndex (b : Bool) : Nat := if b then 1 else 0

/-- Same recorded source, but different claim indexing and an explicit
semantic implication at each Boolean index. -/
def boolCatalogTransport : CatalogTransport natClaimCatalog boolClaimCatalog where
  reindex := boolIndex
  sourceIdentity := by
    intro _
    rfl
  preservesMeaning := by
    intro _ sourceProof
    exact sourceProof

/-- Another source-preserving transport used to exercise composition. -/
def unitCatalogTransport : CatalogTransport boolClaimCatalog unitClaimCatalog where
  reindex := fun _ => true
  sourceIdentity := by
    intro _
    rfl
  preservesMeaning := by
    intro _ sourceProof
    exact sourceProof

private theorem nat_one_meaning : Meaning natClaimCatalog 1 := by
  intro _
  decide

/-- Proofs travel from Nat-indexed claims to Bool-indexed claims only through
the displayed, proof-carrying catalog transport. -/
theorem bool_indexed_transport_sound : Meaning boolClaimCatalog true :=
  boolCatalogTransport.meaning true nat_one_meaning

/-- The existing Standing semantics, not the source label, provides the
corresponding proof-status transfer. -/
theorem bool_indexed_proof_status :
    (boolCatalogTransport.forwardStanding true
      (.established nat_one_meaning)).hasProof = true := rfl

/-- The two semantic implications and two recorded source equalities compose
without dropping the intermediate claim-index type. -/
theorem composed_catalog_transport_sound : Meaning unitClaimCatalog () :=
  (boolCatalogTransport.comp unitCatalogTransport).meaning () nat_one_meaning

private def alternateSource : SourceIdentity :=
  { fixtureSource with blob := "different-test-blob" }

private def originalUnitCatalog : Catalog Unit where
  statement := fun _ => True
  hypotheses := fun _ => []
  source := fun _ => fixtureSource

private def alternateUnitCatalog : Catalog Unit where
  statement := fun _ => True
  hypotheses := fun _ => []
  source := fun _ => alternateSource

/-- A matching declaration name does not make two different recorded blobs
equal. The exact-source transport cannot be constructed in this fixture. -/
theorem changed_blob_blocks_source_preserving_transport :
    ¬ Nonempty (CatalogTransport originalUnitCatalog alternateUnitCatalog) := by
  intro candidate
  obtain ⟨transport⟩ := candidate
  have same : fixtureSource = alternateSource := by
    simpa [originalUnitCatalog, alternateUnitCatalog] using
      (transport.sourceIdentity ())
  have blobEquality := congrArg SourceIdentity.blob same
  simp [fixtureSource, alternateSource] at blobEquality

end GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.MathematicalDiagnostics.Examples
