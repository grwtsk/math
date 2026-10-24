# Complete source: GRWTSK.Algebra.LinearAlgebra.PositiveAtlasFeshbachInertia.Variant51f4562c6f338de52720c8eb0b2f51325ea9ebc273df45373d1f9f043306adb5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b527b840f31bf3df623a6d1f6c81c512003087a8` · SHA-256 `3f7becaf50450a76a7304f0dad4f42cbbf86da2d27285320a16f37184933706a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Scalar.Variant884a27efde0de8fa0374a624598095a8dc11e69c52b9297e1b667f9b20228552","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"884a27efde0de8fa0374a624598095a8dc11e69c52b9297e1b667f9b20228552","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Scalar.Variant884a27efde0de8fa0374a624598095a8dc11e69c52b9297e1b667f9b20228552","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"884a27efde0de8fa0374a624598095a8dc11e69c52b9297e1b667f9b20228552","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass15/feshbach_review/pr267-source/tests/positive_atlas_feshbach_inertia.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FeshbachInertia

/-!
Numerical inertia fixtures with actual nonzero cross coupling.

The rank-one packet tests the singular Schur center and retained null index.
The indefinite packet tests both signed indices. Counts are proved through
Mathlib's weighted-sum-of-squares signature theorems; no eigenvalue oracle or
numerical approximation is used. AI attribution: Codex authored these fixtures.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Scalar.Variant884a27efde0de8fa0374a624598095a8dc11e69c52b9297e1b667f9b20228552

namespace FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures

open Matrix

noncomputable section

attribute [local instance] invertibleOne

private def scalar (a : ℝ) : Matrix Unit Unit ℝ := fun _ _ => a

private def weights (a : ℝ) : Unit ⊕ Unit → ℝ :=
  Sum.elim (fun _ => a - 1) (fun _ => 1)

private def reducedWeightedEquiv (a : ℝ) :
    (reducedForm (scalar a) (1 : Matrix Unit Unit ℝ) 1).IsometryEquiv
      (QuadraticMap.weightedSumSquares ℝ (weights a)) where
  toLinearEquiv := (LinearEquiv.sumPiEquivProdPi ℝ Unit Unit (fun _ => ℝ)).symm
  map_app' z := by
    rw [reducedForm_apply]
    change QuadraticMap.weightedSumSquares ℝ (weights a) (Sum.elim z.1 z.2) = _
    simp [QuadraticMap.weightedSumSquares_apply, weights, Feshbach.schur, scalar,
      dotProduct, Matrix.mulVec]
    ring

private theorem inertia_counts (a : ℝ) :
    (sigPos (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1).radical) =
      ({i | 0 < weights a i}.ncard, {i | weights a i < 0}.ncard,
        {i | weights a i = 0}.ncard) := by
  have h : (fullForm (scalar a) (1 : Matrix Unit Unit ℝ) 1).Equivalent
      (QuadraticMap.weightedSumSquares ℝ (weights a)) :=
    ⟨(formEquiv (scalar a) (1 : Matrix Unit Unit ℝ) 1 Matrix.isHermitian_one).trans
      (reducedWeightedEquiv a)⟩
  rw [QuadraticForm.sigPos_of_equiv_weightedSumSquares h,
    QuadraticForm.sigNeg_of_equiv_weightedSumSquares h,
    QuadraticForm.finrank_radical_of_equiv_weightedSumSquares h]

/-- The completion-of-squares shear has the required plus sign. -/
theorem nonzero_shear :
    shear (1 : Matrix Unit Unit ℝ) 1 (fun _ => 2, fun _ => 3) =
      (fun _ => 2, fun _ => 5) := by
  ext <;> norm_num [shear_apply]

/-- The rank-one packet has an exactly zero Schur center. -/
theorem singular_center :
    Feshbach.schur (scalar 1) (1 : Matrix Unit Unit ℝ)ᴴ 1 1 = 0 := by
  ext i j
  simp [Feshbach.schur, scalar]

/-- The genuinely coupled rank-one packet has one positive, zero negative and
one null direction; singularity is preserved by the congruence. -/
theorem singular_inertia :
    (sigPos (fullForm (scalar 1) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar 1) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar 1) (1 : Matrix Unit Unit ℝ) 1).radical) =
      (1, 0, 1) := by
  rw [inertia_counts]
  have hp : {i | 0 < weights 1 i} = {Sum.inr ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hn : {i | weights 1 i < 0} = ∅ := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hz : {i | weights 1 i = 0} = {Sum.inl ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  rw [hp, hn, hz]
  simp

/-- The genuinely coupled indefinite packet retains one positive and one
negative direction, with no null direction. -/
theorem indefinite_inertia :
    (sigPos (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1),
        sigNeg (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1),
        Module.finrank ℝ (fullForm (scalar 0) (1 : Matrix Unit Unit ℝ) 1).radical) =
      (1, 1, 0) := by
  rw [inertia_counts]
  have hp : {i | 0 < weights 0 i} = {Sum.inr ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hn : {i | weights 0 i < 0} = {Sum.inl ()} := by
    ext i
    rcases i with i | j <;> simp [weights]
  have hz : {i | weights 0 i = 0} = ∅ := by
    ext i
    rcases i with i | j <;> simp [weights]
  rw [hp, hn, hz]
  simp

end

end FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures
```
