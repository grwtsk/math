# Complete source: GRWTSK.Algebra.LinearAlgebra.RecognitionFixtures.Variant70d12be5b362f3cbe91542565dffdf9938a424067244b609d51b5b0057e44d93

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `082afe71ee54aa7f849b1b3c5772b7f9b1888a53` · SHA-256 `ae5f12a0dd67de10fef11a443ae75ddfaf59102d96d7e1f87563e40442ce9f6b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.RescaledPositiveFrame24.Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.RescaledPositiveFrame24.Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/PositiveAtlas/Grassmannian/RecognitionFixtures.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.Grassmannian.PluckerRecognition
import FormalResearch.PositiveAtlas.Grassmannian.Fixtures
import FormalResearch.PositiveAtlas.Grassmannian.PivotFixtures
import Mathlib.Tactic.NormNum

/-!
# Positive recognition and rank/vacuity counterexamples

Full-rank hypotheses cannot be omitted: different rank-one row spaces can have
all their two-by-two maximal minors equal to zero. Likewise, strict positivity
quantified over a nonexistent increasing selection is vacuous, not a rank proof.
-/


namespace GRWTSK.Algebra.LinearAlgebra.RescaledPositiveFrame24.Variant18b53583535ee1074cc8eb41ad8bfcfa8cd1049aef60b819cfb89d3c5df54d5b

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

open scoped Matrix

/-- A different presentation of the same positive Gr(2,4) point. -/
def rescaledPositiveFrame24 : Matrix (Fin 2) (Fin 4) ℝ :=
  (!![2, 0; 0, 2] : Matrix (Fin 2) (Fin 2) ℝ) * positiveFixture24.matrix

/-- The change of representative multiplies every maximal minor by four. -/
theorem rescaledPositiveFrame24_minor (c : Fin 2 → Fin 4) :
    columnMinor rescaledPositiveFrame24 c = 4 * columnMinor positiveFixture24.matrix c := by
  rw [rescaledPositiveFrame24, columnMinor_mul_left]
  norm_num [Matrix.det_fin_two]

/-- The distinct presentation is recognized as the same actual row subspace. -/
theorem rescaledPositiveFrame24_rowSpace :
    frameRowSpace positiveFixture24.matrix = frameRowSpace rescaledPositiveFrame24 := by
  apply frameRowSpace_eq_of_columnMinor_proportional _ _
    (Chart24.matrix_rank positiveFixture24) 4 (by norm_num)
  exact rescaledPositiveFrame24_minor

/-- Positive ordered minors are retained under this positive-determinant row change. -/
theorem rescaledPositiveFrame24_positive : AllOrderedMinorsPos rescaledPositiveFrame24 := by
  change AllOrderedMinorsPos
    ((!![2, 0; 0, 2] : Matrix (Fin 2) (Fin 2) ℝ) * positiveFixture24.matrix)
  exact (allOrderedMinorsPos_mul_left_iff _ _
    (by norm_num [Matrix.det_fin_two])).mpr positiveFixture24_ordered_minors

/-- A rank-deficient matrix spanning the first coordinate axis. -/
def rankDeficientLeft : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j => if i = 0 ∧ j = 0 then 1 else 0

/-- A rank-deficient matrix spanning the second coordinate axis. -/
def rankDeficientRight : Matrix (Fin 2) (Fin 2) ℝ :=
  fun i j => if i = 0 ∧ j = 1 then 1 else 0

/-- All maximal selected minors of the first degenerate frame vanish. -/
theorem rankDeficientLeft_minors (c : Fin 2 → Fin 2) :
    columnMinor rankDeficientLeft c = 0 := by
  simp [columnMinor, columnSubmatrix, Matrix.det_fin_two, rankDeficientLeft]

/-- All maximal selected minors of the second degenerate frame vanish. -/
theorem rankDeficientRight_minors (c : Fin 2 → Fin 2) :
    columnMinor rankDeficientRight c = 0 := by
  simp [columnMinor, columnSubmatrix, Matrix.det_fin_two, rankDeficientRight]

/-- Equal zero maximal-minor vectors do not determine rank-deficient row spaces. -/
theorem rankDeficient_rowSpaces_ne :
    frameRowSpace rankDeficientLeft ≠ frameRowSpace rankDeficientRight := by
  intro he
  have hm := row_mem_frameRowSpace rankDeficientLeft (0 : Fin 2)
  rw [he] at hm
  obtain ⟨u, hu⟩ :=
    (mem_frameRowSpace_iff rankDeficientRight (rankDeficientLeft.row 0)).mp hm
  have hh := congrFun hu (0 : Fin 2)
  change (u ᵥ* rankDeficientRight) 0 = rankDeficientLeft 0 0 at hh
  norm_num [Matrix.vecMul, dotProduct, rankDeficientRight, rankDeficientLeft] at hh

/-- A concrete counterexample to omitting rank from projective-minor recognition. -/
theorem rank_hypothesis_cannot_be_dropped :
    (∀ I : Fin 2 ↪o Fin 2,
      orderedMinor rankDeficientRight I = (1 : ℝ) * orderedMinor rankDeficientLeft I) ∧
      frameRowSpace rankDeficientLeft ≠ frameRowSpace rankDeficientRight := by
  refine ⟨?_, rankDeficient_rowSpaces_ne⟩
  intro I
  change columnMinor rankDeficientRight I = 1 * columnMinor rankDeficientLeft I
  rw [rankDeficientLeft_minors, rankDeficientRight_minors, mul_zero]

/-- There is no increasing selection of two distinct columns from one column. -/
theorem no_two_columns_in_one : IsEmpty (Fin 2 ↪o Fin 1) := by
  refine ⟨fun I => ?_⟩
  have h := I.strictMono (by decide : (0 : Fin 2) < 1)
  have he : I 0 = I 1 := Subsingleton.elim _ _
  exact (ne_of_lt h) he

/-- Vacuous strict-minor positivity is not a full-rank certificate. -/
theorem vacuous_positivity_not_rank :
    AllOrderedMinorsPos (0 : Matrix (Fin 2) (Fin 1) ℝ) ∧
      (0 : Matrix (Fin 2) (Fin 1) ℝ).rank ≠ 2 := by
  refine ⟨?_, by simp⟩
  intro I
  exact (no_two_columns_in_one.false I).elim

/-- The rank-zero case retains its empty nonzero determinant chart. -/
theorem empty_frame_has_ordered_pivot (n : ℕ) (A : Matrix (Fin 0) (Fin n) ℝ) :
    ∃ I : Fin 0 ↪o Fin n, orderedMinor A I ≠ 0 := by
  apply exists_orderedMinor_ne_zero_of_rank A
  exact Nat.eq_zero_of_le_zero (Matrix.rank_le_height A)

end

end FormalResearch.PositiveAtlas.Grassmannian
```
