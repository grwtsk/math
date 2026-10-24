# Complete source: GRWTSK.Algebra.LinearAlgebra.72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201FeshbachInertiaA.Variant3cd6144a0b6c8cce81caa301721981626fe485836535aaf4f483c8f19e60eb70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f409d3e2661476ae47fd948e3c3e669740b0baf3` · SHA-256 `e629d04f5a2c5bf758ab114ccd240bd2b66db031ca08568f5d99af6ae51a8424`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.Scalar.Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.Scalar.Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/72/72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201--feshbach-inertia-audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FeshbachInertia

/-!
Numerical inertia fixtures with actual nonzero cross coupling.

The rank-one packet tests the singular Schur center and retained null index.
The indefinite packet tests both signed indices. Counts are proved through
Mathlib's weighted-sum-of-squares signature theorems; no eigenvalue oracle or
numerical approximation is used. AI attribution: Codex authored these fixtures.
-/


namespace GRWTSK.Algebra.LinearAlgebra.Scalar.Variant72de4debf1dde0222803eac9999a0ca266679c886bf4a065263e441630eef201

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

#print FormalResearch.PositiveAtlas.FeshbachInertia.fullForm_apply
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.fullForm_apply
#print FormalResearch.PositiveAtlas.FeshbachInertia.reducedForm_apply
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.reducedForm_apply
#print FormalResearch.PositiveAtlas.FeshbachInertia.shear_apply
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.shear_apply
#print FormalResearch.PositiveAtlas.FeshbachInertia.formEquiv
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.formEquiv
#print FormalResearch.PositiveAtlas.FeshbachInertia.sigPos_eq
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.sigPos_eq
#print FormalResearch.PositiveAtlas.FeshbachInertia.sigNeg_eq
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.sigNeg_eq
#print FormalResearch.PositiveAtlas.FeshbachInertia.radical_finrank_eq
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.radical_finrank_eq
#print FormalResearch.PositiveAtlas.FeshbachInertia.inertia_eq
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.inertia_eq
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.nonzero_shear
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.nonzero_shear
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_center
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_center
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_inertia
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.singular_inertia
#print FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.indefinite_inertia
#print axioms FormalResearch.PositiveAtlas.FeshbachInertia.Fixtures.indefinite_inertia
```
