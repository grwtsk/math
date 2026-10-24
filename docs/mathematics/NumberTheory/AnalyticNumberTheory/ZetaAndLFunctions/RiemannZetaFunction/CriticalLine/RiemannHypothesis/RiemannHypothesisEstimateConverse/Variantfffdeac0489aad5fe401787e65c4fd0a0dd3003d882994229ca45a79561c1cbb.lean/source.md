# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.RiemannHypothesisEstimateConverse.Variantfffdeac0489aad5fe401787e65c4fd0a0dd3003d882994229ca45a79561c1cbb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f7f1521dbb4b96ab1a08e7acd3dfc51b8160c274` · SHA-256 `11be0ddeb5c4531a4b37cbc378a9c59c4f4d490010642b36b1810390172acee1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualTransformConjugate.Varianta04f1be4b1082c62d83ed0141d390c4770b307441e522b7b89c59ffad956b162","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a04f1be4b1082c62d83ed0141d390c4770b307441e522b7b89c59ffad956b162","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.ActualTransformConjugate.Varianta04f1be4b1082c62d83ed0141d390c4770b307441e522b7b89c59ffad956b162","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"a04f1be4b1082c62d83ed0141d390c4770b307441e522b7b89c59ffad956b162","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/a04f1be4b1082c62d83ed0141d390c4770b307441e522b7b89c59ffad956b162.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ZeroSide.Assembly
import FormalResearch.RiemannHypothesis.Landau.Bridge
import FormalResearch.RiemannHypothesis.SourceBoundaryFrontierAudit

/-!
# The exact converse from RH to the unchanged source estimate

The already proved source zero identity is genuinely summable and indexes every
analytic multiplicity by occurrence slots. Under Mathlib's exact RH predicate,
the shifted values are imaginary. Evenness and reality of the actual test make
its transform real there, so each ordinary complex square has nonnegative real
part. The native normalized quadratic is therefore nonnegative at every A ≥ 1.

This proves equivalence of the exact estimate, prime-square compensation and
boundary cancellation rate with RH. Neither side is inhabited unconditionally.
No Perron identity, contour displacement or zero simplicity is assumed.

AI attribution: Codex authored this module and its proofs.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualTransformConjugate.Varianta04f1be4b1082c62d83ed0141d390c4770b307441e522b7b89c59ffad956b162

namespace FormalResearch.RiemannHypothesis.RiemannHypothesisEstimateConverse
open MeasureTheory
open scoped ComplexConjugate
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open ZeroObject ZeroSideTargets
noncomputable section

/-- Reality of the native test gives exact conjugation of its bilateral transform. -/
theorem actual_transform_conjugate (A : ℝ) (z : ℂ) :
    conj (bilateralTransform A z) = bilateralTransform A (conj z) := by
  unfold bilateralTransform
  rw [← integral_conj]
  apply integral_congr_ae
  filter_upwards [] with x
  simp [map_mul, ← Complex.exp_conj]

/-- Reflection and the proved evenness of the actual test give an even transform. -/
theorem actual_transform_even (A : ℝ) (hA : 1 ≤ A) (z : ℂ) :
    bilateralTransform A (-z) = bilateralTransform A z := by
  unfold bilateralTransform
  rw [← integral_neg_eq_self (fun x : ℝ ↦
    (actualTest A x : ℂ) * Complex.exp (z * (x : ℂ))) volume]
  apply integral_congr_ae
  filter_upwards [] with x
  rw [ZeroTestRegularity.actualTest_even A hA x]
  simp [neg_mul, mul_neg]

/-- The actual transform is real at every imaginary parameter. -/
theorem actual_transform_im_zero (A : ℝ) (hA : 1 ≤ A) (z : ℂ) (hz : z.re = 0) :
    (bilateralTransform A z).im = 0 := by
  apply Complex.conj_eq_iff_im.mp
  rw [actual_transform_conjugate]
  have hc : conj z = -z := by
    apply Complex.ext <;> simp [hz]
  rw [hc, actual_transform_even A hA]

/-- RH centers every occurrence, preserving all finite analytic multiplicity slots. -/
theorem shifted_value_re_zero_of_rh (hRH : _root_.RiemannHypothesis)
    (o : ZeroOccurrence) : (shiftedValue o).re = 0 := by
  have hp := point_nontrivial o.1
  have hr := hRH o.1.val hp.1 hp.2.1 hp.2.2
  simp [shiftedValue, hr]

/-- The proved summable zero identity yields the exact source lower bound zero under RH. -/
theorem source_quadratic_nonneg_of_rh (hRH : _root_.RiemannHypothesis)
    (A : ℝ) (hA : 1 ≤ A) :
    0 ≤ sourceQuadraticValue Realization.explicitSecondDerivative A := by
  obtain ⟨_, _, hs, hscale, hform⟩ := ZeroSide.Assembly.zero_side_identity A hA
  have hi (o : ZeroOccurrence) : (bilateralTransform A (shiftedValue o)).im = 0 :=
    actual_transform_im_zero A hA _ (shifted_value_re_zero_of_rh hRH o)
  have hn : 0 ≤ (∑' o : ZeroOccurrence, bilateralTransform A (shiftedValue o) ^ 2).re := by
    rw [Complex.re_tsum hs]
    apply tsum_nonneg
    intro o
    simp only [pow_two, Complex.mul_re, hi o, mul_zero, sub_zero]
    exact mul_self_nonneg _
  have he := congrArg Complex.re (hscale.trans hform)
  simp only [Complex.ofReal_re] at he
  rw [← he] at hn
  exact (mul_nonneg_iff_of_pos_left (source_normalization_pos A hA)).mp hn

/-- The unchanged all-real-radius estimate follows from RH with constant zero. -/
theorem estimate_of_riemann_hypothesis (hRH : _root_.RiemannHypothesis) :
    CorrelationAssembly.EstimateObligation :=
  ⟨0, fun A hA ↦ source_quadratic_nonneg_of_rh hRH A hA⟩

/-- The original Landau implication and the exact converse classify the native estimate. -/
theorem estimate_iff_riemann_hypothesis :
    CorrelationAssembly.EstimateObligation ↔ _root_.RiemannHypothesis :=
  ⟨Landau.Bridge.riemann_hypothesis_of_uniform_lower_bound, estimate_of_riemann_hypothesis⟩

/-- The exact prime-and-square tail is equivalent to RH, not an unconditional theorem. -/
theorem prime_square_compensation_iff_riemann_hypothesis :
    PrimeSquareEstimate.PrimeSquareCompensationTail ↔ _root_.RiemannHypothesis :=
  FullQuadraticFrontierAudit.full_estimate_iff_prime_square_compensation.symm.trans
    estimate_iff_riemann_hypothesis

/-- The vanishing-normalization rate inherits the same exact RH equivalence. -/
theorem boundary_rate_iff_riemann_hypothesis :
    SourceBoundaryFrontierAudit.BoundaryCancellationRate ↔ _root_.RiemannHypothesis :=
  SourceBoundaryFrontierAudit.boundary_rate_iff_estimate.trans estimate_iff_riemann_hypothesis

/-- The optimal zero lower constant is equivalent to the existence of any source lower bound. -/
theorem estimate_iff_source_quadratic_nonneg :
    CorrelationAssembly.EstimateObligation ↔
      ∀ A : ℝ, 1 ≤ A → 0 ≤ sourceQuadraticValue Realization.explicitSecondDerivative A :=
  ⟨fun h ↦ source_quadratic_nonneg_of_rh (estimate_iff_riemann_hypothesis.mp h),
    fun h ↦ ⟨0, h⟩⟩

end
end FormalResearch.RiemannHypothesis.RiemannHypothesisEstimateConverse
```
