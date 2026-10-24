-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceControllerEnergy.Variant7e6a60f8863b7a2d608c397964ead7aaf73aff2c3be1e213f1044a4c3344418b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e6a60f8863b7a2d608c397964ead7aaf73aff2c3be1e213f1044a4c3344418b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceControllerEnergy.Variant7e6a60f8863b7a2d608c397964ead7aaf73aff2c3be1e213f1044a4c3344418b","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"7e6a60f8863b7a2d608c397964ead7aaf73aff2c3be1e213f1044a4c3344418b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/spectral-covariance/root-literal-check.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerEnergy
import FormalResearch.RiemannHypothesis.SourceComparison.SourceControllerPoleConstraint


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceControllerEnergy.Variant7e6a60f8863b7a2d608c397964ead7aaf73aff2c3be1e213f1044a4c3344418b

open FormalResearch.RiemannHypothesis.SourceComparison
open HalfLineExponential PositiveResolvent HalfLineOperator SourceResolventTruncation

example : ∀ (T : H →L[ℂ] H) (α : ℝ) (r q : H),
    SourceControllerEnergy.trackingEnergy T α r q = ‖r - T q‖ ^ 2 + α * ‖q‖ ^ 2 := by
  intros; rfl
example : ∀ (T : H →L[ℂ] H) (α : ℝ) (r : H),
    SourceControllerEnergy.canonicalController T α r =
      T.adjoint (positiveResolvent (T.comp T.adjoint) α r) := by
  intros; rfl
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r : H,
    r - T (SourceControllerEnergy.canonicalController T α r) =
      (α : ℂ) • positiveResolvent (T.comp T.adjoint) α r :=
  SourceControllerEnergy.canonical_residual
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r : H,
    SourceControllerEnergy.trackingEnergy T α r
      (SourceControllerEnergy.canonicalController T α r) =
      regularizedMass (T.comp T.adjoint) α r := SourceControllerEnergy.canonical_energy
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r w : H,
    (inner ℂ (r - T (SourceControllerEnergy.canonicalController T α r)) (T w)).re =
      α * (inner ℂ (SourceControllerEnergy.canonicalController T α r) w).re :=
  SourceControllerEnergy.canonical_cross_term
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r w : H,
    SourceControllerEnergy.trackingEnergy T α r
      (SourceControllerEnergy.canonicalController T α r + w) =
        regularizedMass (T.comp T.adjoint) α r + ‖T w‖ ^ 2 + α * ‖w‖ ^ 2 :=
  SourceControllerEnergy.trackingEnergy_translate_canonical
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r q : H,
    regularizedMass (T.comp T.adjoint) α r ≤
      SourceControllerEnergy.trackingEnergy T α r q :=
  SourceControllerEnergy.regularizedMass_le_trackingEnergy
example : ∀ α : ℝ, 0 < α → ∀ q : H,
    sourceMass α ≤ ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2 :=
  SourceControllerEnergy.sourceMass_le_full_energy
example : ∀ (T : H →L[ℂ] H) (α : ℝ), 0 < α → ∀ r : H,
    IsLeast (Set.range (SourceControllerEnergy.trackingEnergy T α r))
      (regularizedMass (T.comp T.adjoint) α r) := SourceControllerEnergy.isLeast_trackingEnergy
example : ∀ α : ℝ, 0 < α →
    IsLeast (Set.range (fun q : H =>
      ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2)) (sourceMass α) :=
  SourceControllerEnergy.sourceMass_isLeast_full_energy
example : ∀ N α : ℝ, 0 < α → ∀ q : H,
    truncatedMass N α ≤ ‖referenceVector - TimeKernelTruncation.truncatedOperator N q‖ ^ 2 +
      α * ‖q‖ ^ 2 := SourceControllerEnergy.truncatedMass_le_full_energy
example : ∀ α : ℝ, 0 < α →
    ‖referenceVector - sourceOperator
      (SourceControllerEnergy.canonicalController sourceOperator α referenceVector)‖ ^ 2 +
      α * ‖SourceControllerEnergy.canonicalController sourceOperator α referenceVector‖ ^ 2 =
        sourceMass α := SourceControllerEnergy.sourceMass_canonical_energy
example : ∀ (z : ℂ) (hz : 0 < z.re) (q : H),
    inner ℂ (exponentialVector z hz) q = 0 →
      inner ℂ (exponentialVector z hz) (referenceVector - sourceOperator q) = 1 / (z + 1) :=
  SourceControllerPoleConstraint.source_residual_evaluation_of_input_zero
example : ∀ q : H, inner ℂ (exponentialVector (1 / 2) (by norm_num)) q = 0 →
    (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator q‖ ^ 2 :=
  SourceControllerPoleConstraint.source_residual_sq_ge_of_input_half_zero
example : ∀ α : ℝ, 0 ≤ α → ∀ q : H,
    inner ℂ (exponentialVector (1 / 2) (by norm_num)) q = 0 →
      (4 / 9 : ℝ) ≤ ‖referenceVector - sourceOperator q‖ ^ 2 + α * ‖q‖ ^ 2 :=
  SourceControllerPoleConstraint.source_full_energy_ge_of_input_half_zero
