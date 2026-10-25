# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RevisedPower.Variantf5afd846800deecd14b5d8320d303efc5b09da2370a1d1e8696874b45aa6100c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `53b27f3808b9d5e0ebdb29bad323d7406ce51d65` · SHA-256 `08cd6c5c7ff9b2e7719e36e64357dee62abdaa91e445c8f33cd1b88d46e24463`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RevisedPowerCandidate.Variant2f763e1466379cc471501b3f4ef55315c9e30bede15a50e8689967e3c1ba1290","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2f763e1466379cc471501b3f4ef55315c9e30bede15a50e8689967e3c1ba1290","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceOrganization.SourceCorpus.RevisedPowerCandidate.Variant2f763e1466379cc471501b3f4ef55315c9e30bede15a50e8689967e3c1ba1290","mathematical_subject":"MathematicalTooling.SourceOrganization","original_sha256":"2f763e1466379cc471501b3f4ef55315c9e30bede15a50e8689967e3c1ba1290","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/type-theory-reconstruction/FormalResearch/MathematicalTooling/Coverage/RevisedPower.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.MathematicalTooling.Coverage.Cardinal

/-!
# The unresolved revised-power producer and its exact-block interface

The minimum-family equality is stated as existence plus a lower bound on every
candidate family, avoiding an empty-infimum convention. This module proves only
the elementary restriction of supplied exactly-sized blocks. The revised-GCH
producer remains a proposition with its original quantifier dependence.
Human research direction: grwtsk contributors. Implementation: OpenAI Codex.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RevisedPowerCandidate.Variant2f763e1466379cc471501b3f4ef55315c9e30bede15a50e8689967e3c1ba1290

namespace FormalResearch.MathematicalTooling.Coverage

universe u
open Cardinal

/-- Candidate families contain exactly theta-sized blocks and cover each such
target using fewer than theta blocks. This precedes downward closure. -/
def RevisedPowerCandidate (lam theta : Cardinal.{u}) (P : Set (Set lam.out)) : Prop :=
  (∀ C ∈ P, #C = theta) ∧
    ∀ A : Set lam.out, #A = theta →
      ∃ Q : Set (Set lam.out), Q ⊆ P ∧ #Q < theta ∧ A ⊆ ⋃₀ Q

/-- The least possible family size equals lam, expressed without adding an axiom. -/
def RevisedPowerEquals (lam theta : Cardinal.{u}) : Prop :=
  (∃ P : Set (Set lam.out), RevisedPowerCandidate lam theta P ∧ #P = lam) ∧
    ∀ P : Set (Set lam.out), RevisedPowerCandidate lam theta P → lam ≤ #P

/-- Shelah's regular-theta quantifier order. The threshold depends on lam and mu. -/
def RevisedGCHStatement : Prop :=
  ∀ μ : Cardinal.{u}, μ.IsStrongLimit → ℵ₀ < μ →
    ∀ lam : Cardinal.{u}, μ ≤ lam →
      ∃ κ : Cardinal.{u}, κ < μ ∧
        ∀ theta : Cardinal.{u}, theta.IsRegular → κ ≤ theta → theta < μ →
          RevisedPowerEquals lam theta

/-- Downward closure admits smaller restrictions, including the empty one;
the original exact-cardinality predicate is deliberately not preserved. -/
theorem exact_block_restriction {X : Type u} (P : Set (Set X))
    (theta : Cardinal.{u}) (sizes : ∀ C ∈ P, #C = theta)
    (A C : Set X) (member : C ∈ P) :
    A ∩ C ∈ downwardClosure P ∧ #(A ∩ C : Set X) ≤ theta := by
  constructor
  · exact ⟨C, member, Set.inter_subset_right⟩
  · exact (Cardinal.mk_le_mk_of_subset Set.inter_subset_right).trans_eq (sizes C member)

end FormalResearch.MathematicalTooling.Coverage
```
