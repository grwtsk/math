# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Fixtures.Variant0f2af9c082f5702edef39db0b7234199080be666202cfc05fb13e61462e55361

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e8c72a87ce43dc1cc3507931bdc535daca786925` · SHA-256 `be635c441f7f803066dca24f65b7cc68fec568807bdc63da5474fe50b8e82dc3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveFixture24.Variantb7b90f156d94fe5e570f65247e17d67cd389825cf7c196bf29e9be26ed19f4ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b7b90f156d94fe5e570f65247e17d67cd389825cf7c196bf29e9be26ed19f4ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PositiveFixture24.Variantb7b90f156d94fe5e570f65247e17d67cd389825cf7c196bf29e9be26ed19f4ff","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"b7b90f156d94fe5e570f65247e17d67cd389825cf7c196bf29e9be26ed19f4ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/Grassmannian/Fixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.Plucker24
import Mathlib.Tactic.NormNum

/-!
# Exact positive, boundary, and sign-loss fixtures

All examples use exact arithmetic. They distinguish coordinate compatibility,
ordered-minor positivity, positive Gram energy, and information lost by squaring.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveFixture24.Variantb7b90f156d94fe5e570f65247e17d67cd389825cf7c196bf29e9be26ed19f4ff

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

/-- The positive chart with matrix rows (1,0,-1,-2) and (0,1,1,1). -/
def positiveFixture24 : Chart24 := ⟨1, 1, 1, 2⟩

theorem positiveFixture24_coordinates :
    positiveFixture24.coordinates = ⟨1, 1, 1, 1, 2, 1⟩ := by
  rw [Chart24.coordinates_eq]
  norm_num [positiveFixture24]

theorem positiveFixture24_positive : positiveFixture24.Positive := by
  norm_num [Chart24.Positive, positiveFixture24]

theorem positiveFixture24_ordered_minors :
    AllOrderedMinorsPos positiveFixture24.matrix := by
  apply PluckerCoordinates24.allOrderedMinorsPos_of_strictlyPositive
  exact (Chart24.coordinates_strictlyPositive_iff _).mpr positiveFixture24_positive

theorem positiveFixture24_pivot : columnMinor positiveFixture24.matrix ![0, 1] = 1 :=
  Chart24.pivot_eq_one _

/-- A nonnegative boundary chart with a zero (3,4) minor and a nonzero pivot. -/
def boundaryFixture24 : Chart24 := ⟨1, 1, 1, 1⟩

theorem boundaryFixture24_coordinates :
    boundaryFixture24.coordinates = ⟨1, 1, 1, 1, 1, 0⟩ := by
  rw [Chart24.coordinates_eq]
  norm_num [boundaryFixture24]

theorem boundaryFixture24_ordered_minors :
    AllOrderedMinorsNonneg boundaryFixture24.matrix := by
  apply PluckerCoordinates24.allOrderedMinorsNonneg_of_nonnegative
  change boundaryFixture24.coordinates.Nonnegative
  rw [boundaryFixture24_coordinates]
  norm_num [PluckerCoordinates24.Nonnegative]

theorem boundaryFixture24_not_positive : ¬ boundaryFixture24.Positive := by
  norm_num [Chart24.Positive, boundaryFixture24]

theorem boundaryFixture24_pivot : columnMinor boundaryFixture24.matrix ![0, 1] = 1 :=
  Chart24.pivot_eq_one _

/-- Positive numbers alone need not satisfy the Pluecker relation. -/
def incompatibleOnes24 : PluckerCoordinates24 := ⟨1, 1, 1, 1, 1, 1⟩

theorem incompatibleOnes24_positive : incompatibleOnes24.StrictlyPositive := by
  norm_num [PluckerCoordinates24.StrictlyPositive, incompatibleOnes24]

theorem incompatibleOnes24_not_compatible : ¬ incompatibleOnes24.Compatible := by
  norm_num [PluckerCoordinates24.Compatible, incompatibleOnes24]

/-- No real matrix has all six of these claimed maximal minors. -/
theorem incompatibleOnes24_not_matrix :
    ¬ ∃ A : Matrix (Fin 2) (Fin 4) ℝ,
      PluckerCoordinates24.ofMatrix A = incompatibleOnes24 := by
  rintro ⟨A, hA⟩
  have h := PluckerCoordinates24.ofMatrix_compatible A
  rw [hA] at h
  exact incompatibleOnes24_not_compatible h

/-- Two rank-one rows with different signs but the same squared coordinates. -/
def positiveRow : Fin 2 → ℝ := ![1, 1]

/-- The row (1,-1), whose two entries have opposite signs. -/
def mixedSignRow : Fin 2 → ℝ := ![1, -1]

theorem rows_same_squares (i : Fin 2) : positiveRow i ^ 2 = mixedSignRow i ^ 2 := by
  fin_cases i <;> norm_num [positiveRow, mixedSignRow]

/-- They are not proportional even if an arbitrary real scalar is allowed. -/
theorem rows_not_proportional :
    ¬ ∃ t : ℝ, ∀ i : Fin 2, mixedSignRow i = t * positiveRow i := by
  rintro ⟨t, ht⟩
  have h0 := ht 0
  have h1 := ht 1
  norm_num [positiveRow, mixedSignRow] at h0 h1
  linarith

/-- Positive Gram energy does not imply equal signs of the rank-one minors. -/
theorem mixedSignRow_positive_gram_and_mixed_signs :
    0 < mixedSignRow 0 ^ 2 + mixedSignRow 1 ^ 2 ∧
      0 < mixedSignRow 0 ∧ mixedSignRow 1 < 0 := by
  norm_num [mixedSignRow]

end

end FormalResearch.PositiveAtlas.Grassmannian
```
