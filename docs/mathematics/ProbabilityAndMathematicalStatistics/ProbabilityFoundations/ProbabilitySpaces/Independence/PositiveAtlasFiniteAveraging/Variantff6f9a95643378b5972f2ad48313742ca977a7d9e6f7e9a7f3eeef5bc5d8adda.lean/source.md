# Complete source: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.PositiveAtlasFiniteAveraging.Variantff6f9a95643378b5972f2ad48313742ca977a7d9e6f7e9a7f3eeef5bc5d8adda

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `304b4ee3febd5f90f2f06d2ec3061616b7376220` · SHA-256 `11e9849950a94abbc53574c0a3266a6d9467cb1c7eb5c806f136f5ea409eb23d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.WeightedAverage.Varianta5fd062fdd3738cd17f4d79aa6911623bb10bec1b6a4ff0b266b422d01ec7d4f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5fd062fdd3738cd17f4d79aa6911623bb10bec1b6a4ff0b266b422d01ec7d4f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.Independence.SourceCorpus.WeightedAverage.Varianta5fd062fdd3738cd17f4d79aa6911623bb10bec1b6a4ff0b266b422d01ec7d4f","mathematical_subject":"Probability.Independence","original_sha256":"a5fd062fdd3738cd17f4d79aa6911623bb10bec1b6a4ff0b266b422d01ec7d4f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/local-lean-recovery-sweep-20261001/tests/positive_atlas_finite_averaging.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FiniteCovarianceProjection

/-!
Finite recovery fixtures for actual weighted averaging and log-affine covariance.

The unequal-weight packet distinguishes weighted averaging from ordinary
averaging and has a nonzero zero-mean residual. The Hessian packet is an actual
two-sample exponential family with positive base weights and linear statistics.
Parameter-independent nullity here concerns this specified finite family, with
no RH source, uniform spectral bound, or continuum interpretation.
Fixture adapters authored by the Codex AI assistant during source recovery.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Independence.WeightedAverage.Varianta5fd062fdd3738cd17f4d79aa6911623bb10bec1b6a4ff0b266b422d01ec7d4f

namespace FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures

noncomputable section

open FiniteAveragingExamples

/-- The actual average of values zero and four with weights one and three is
three, so an unweighted average would give the wrong packet. -/
theorem weighted_average :
    unequalWeights.averaging varying = (fun _ _ => (3 : ℝ)) ∧
      unequalWeights.averaging varying ≠ (fun _ _ => (2 : ℝ)) := by
  constructor
  · exact unequal_average
  · rw [unequal_average]
    intro h
    have hvalue := congrFun (congrFun h ()) 0
    norm_num at hvalue

/-- Exact coordinates of the retained packet's residual. -/
def residual : Unit → Fin 2 → ℝ := fun _ i => if i = 0 then -3 else 1

theorem residual_eq : residual = varying - unequalWeights.averaging varying := by
  rw [unequal_average]
  funext b i
  fin_cases i <;> norm_num [residual, varying]

/-- Zero weighted mean does not imply the residual is zero or has zero energy. -/
theorem nonzero_zero_mean_residual :
    residual ≠ 0 ∧ unequalWeights.mean residual () = 0 ∧
      unequalWeights.positiveForm.form residual residual = 12 := by
  constructor
  · intro h
    have hvalue := congrFun (congrFun h ()) 0
    norm_num [residual] at hvalue
  · constructor
    · norm_num [FiniteFibreWeights.mean, FiniteFibreWeights.mass,
        unequalWeights, residual, Fin.sum_univ_two]
    · rw [residual_eq]
      exact unequal_residual_energy

/-- Flattening preserves the unnormalized residual energy. Dividing the weights
by their mass would change this value, so this fixture checks the exact adapter. -/
theorem flattened_residual_energy :
    (FiniteFeatureGeometry.featureForm
      (FiniteFibreWeights.flattenObservable (B := Unit) (I := fun _ => Fin 2))
      (fun x => unequalWeights.weight x.1 x.2)
      (fun x => (unequalWeights.positive x.1 x.2).le)).form residual residual = 12 := by
  rw [← unequalWeights.positiveForm_eq_featureForm]
  exact nonzero_zero_mean_residual.2.2

/-- A literal log-affine family with statistics zero and identity and positive
base weights one and three. -/
def twoSampleFamily : FiniteLogAffineFamily (Fin 2) ℝ where
  baseWeight i := if i = 0 then 1 else 3
  baseWeight_pos i := by split <;> norm_num
  statistic i := if i = 0 then 0 else ContinuousLinearMap.id ℝ ℝ

/-- The exact Hessian at the zero parameter is the expected variance. -/
theorem hessian_at_zero :
    fderiv ℝ (fderiv ℝ twoSampleFamily.logPartition) 0 (1 : ℝ) (1 : ℝ) =
      3 / 16 := by
  rw [twoSampleFamily.iterated_fderiv_logPartition_eq_covariance]
  norm_num [FiniteLogAffineFamily.covarianceForm_apply,
    FiniteLogAffineFamily.centeredStatistic, FiniteLogAffineFamily.centroid_apply,
    FiniteLogAffineFamily.probability, FiniteLogAffineFamily.partition,
    FiniteLogAffineFamily.unnormalizedWeight, twoSampleFamily, Fin.sum_univ_two]

/-- The finite family's Hessian has exactly the zero direction as its null space,
at every real parameter. -/
theorem hessian_null_iff (theta u : ℝ) :
    fderiv ℝ (fderiv ℝ twoSampleFamily.logPartition) theta u u = 0 ↔ u = 0 := by
  rw [twoSampleFamily.iterated_fderiv_logPartition_eq_covariance]
  change (twoSampleFamily.covarianceForm theta).IsNull u ↔ u = 0
  rw [twoSampleFamily.covariance_null_iff_constant_statistics]
  constructor
  · intro h
    have h01 := h 0 1
    simpa [twoSampleFamily] using h01.symm
  · rintro rfl
    intro i j
    simp

/-- Changing the parameter does not change this exact finite Hessian null space. -/
theorem hessian_null_parameter_independent (theta eta u : ℝ) :
    (fderiv ℝ (fderiv ℝ twoSampleFamily.logPartition) theta u u = 0) ↔
      (fderiv ℝ (fderiv ℝ twoSampleFamily.logPartition) eta u u = 0) := by
  rw [twoSampleFamily.iterated_fderiv_logPartition_eq_covariance,
    twoSampleFamily.iterated_fderiv_logPartition_eq_covariance]
  exact twoSampleFamily.covariance_null_parameter_independent theta eta u

end

end FormalResearch.PositiveAtlas.FiniteAveragingRecoveryFixtures
```
