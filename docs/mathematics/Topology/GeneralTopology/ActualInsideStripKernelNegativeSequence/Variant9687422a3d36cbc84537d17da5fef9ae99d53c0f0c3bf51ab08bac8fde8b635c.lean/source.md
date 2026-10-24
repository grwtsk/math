# Complete source: GRWTSK.Topology.GeneralTopology.ActualInsideStripKernelNegativeSequence.Variant9687422a3d36cbc84537d17da5fef9ae99d53c0f0c3bf51ab08bac8fde8b635c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `261fce18e3b19f753f085af6c88fec70fe69f63c` · SHA-256 `a91b1b74310d10999f12b9e57a05f04fc4121a79e111029b6b69c446d6ea5185`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.ActualInsideStripMode.Variant71fb1963edbefe669a8e75dba558e473959f1dd93b81e6b9a6ead8722766627a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"71fb1963edbefe669a8e75dba558e473959f1dd93b81e6b9a6ead8722766627a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.ActualInsideStripMode.Variant71fb1963edbefe669a8e75dba558e473959f1dd93b81e6b9a6ead8722766627a","mathematical_subject":"Topology.GeneralTopology","original_sha256":"71fb1963edbefe669a8e75dba558e473959f1dd93b81e6b9a6ead8722766627a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-refocus-20261006/dependencies/owner-source-captures/ActualInsideStripKernelNegativeSequence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ActualPrescribedCorrelationNegativeSequence

/-!
A prescribed mode lies strictly inside the genuine critical strip. The literal
actual bilateral correlation kernel has negative real values at arbitrarily
large source scales there. No actual zeta zero, arithmetic divergence, or RH
counterexample is asserted.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/

namespace GRWTSK.Topology.GeneralTopology.ActualInsideStripMode.Variant71fb1963edbefe669a8e75dba558e473959f1dd93b81e6b9a6ead8722766627a

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualInsideStripKernelNegativeSequence
open Filter
open scoped Topology
open SourcePairing ActualCorrelationOppositeHalf
open SourceActualComplexEndpointAsymptotic SourceActualComplexEndpointCoefficient
open ActualComplexCorrelationAsymptotic ActualPrescribedCorrelationNegativeSequence
noncomputable section

/-- A literal shifted argument inside the original critical strip. -/
def actualInsideStripMode : ℂ := (1 + Complex.I) / 4

/-- Independently prescribed scales remove this mode's complex phase. -/
def actualInsideStripSequence (n : ℕ) : ℝ := 2 * actualPrescribedScaleSequence n

private theorem actualInsideStripMode_re_pos : 0 < actualInsideStripMode.re := by
  norm_num [actualInsideStripMode]

private theorem actualInsideStripSequence_tendsto :
    Tendsto actualInsideStripSequence atTop atTop := by
  exact Tendsto.const_mul_atTop (by norm_num : (0 : ℝ) < 2)
    actualPrescribedScaleSequence_tendsto

/-- The genuine Mellin argument lies strictly inside the critical strip. -/
theorem actualInsideStripMellin_eq :
    actualInsideStripMode + 1/2 = 3/4 + 1/4 * Complex.I := by
  apply Complex.ext <;> norm_num [actualInsideStripMode]

/-- The literal source coefficient is computed with exact Gaussian powers. -/
theorem actualInsideStripCoefficient_eq :
    actualLeadingComplexCoefficient actualInsideStripMode = 6144 - 18432 * Complex.I := by
  have h3 : actualInsideStripMode ^ 3 = (-1 + Complex.I) / 32 := by
    apply Complex.ext <;>
      norm_num [actualInsideStripMode, pow_succ, Complex.mul_re, Complex.mul_im]
  have h5 : actualInsideStripMode ^ 5 = (-1 - Complex.I) / 256 := by
    apply Complex.ext <;>
      norm_num [actualInsideStripMode, pow_succ, Complex.mul_re, Complex.mul_im]
  rw [actualLeadingComplexCoefficient_eq actualInsideStripMode_re_pos, h3, h5]
  apply Complex.ext <;> norm_num [Complex.div_re, Complex.div_im, Complex.normSq]

/-- The ordinary square, with no conjugation, has a negative real coefficient. -/
theorem actualInsideStripCoefficient_square_re :
    (actualLeadingComplexCoefficient actualInsideStripMode ^ 2).re = -301989888 := by
  rw [actualInsideStripCoefficient_eq]
  norm_num [pow_two]

/-- The genuine source phase is positive real at these prescribed scales. -/
theorem actualInsideStripSequence_phase (n : ℕ) :
    Complex.exp (-2 * actualInsideStripMode * (actualInsideStripSequence n : ℂ)) =
      (Real.exp (-actualInsideStripSequence n / 2) : ℂ) := by
  have he : -2 * actualInsideStripMode * (actualInsideStripSequence n : ℂ) =
      (-actualInsideStripSequence n / 2 : ℝ) -
        (n : ℂ) * (2 * Real.pi * Complex.I) := by
    dsimp [actualInsideStripMode, actualInsideStripSequence, actualPrescribedScaleSequence]
    push_cast
    ring
  rw [he, sub_eq_add_neg, Complex.exp_add,
    Complex.exp_neg ((n : ℂ) * (2 * Real.pi * Complex.I)),
    Complex.exp_nat_mul_two_pi_mul_I, inv_one, mul_one]
  exact (Complex.ofReal_exp _).symm

/-- Exact actual bilateral source asymptotics give the negative real limit. -/
theorem actualInsideStripKernel_scaled_real_tendsto :
    Tendsto (fun n : ℕ =>
      actualInsideStripSequence n ^ 9 * sourceNormalization (actualInsideStripSequence n) *
        Real.exp (-actualInsideStripSequence n / 2) *
        (actualBilateralCorrelationTransform (actualInsideStripSequence n)
          actualInsideStripMode).re) atTop (𝓝 (-301989888 : ℝ)) := by
  have hh := Complex.continuous_re.continuousAt.tendsto.comp
    ((actualBilateralCorrelationTransform_normalized_tendsto
      actualInsideStripMode_re_pos).comp actualInsideStripSequence_tendsto)
  have hc : 384 / actualInsideStripMode ^ 3 - 96 / actualInsideStripMode ^ 5 =
      actualLeadingComplexCoefficient actualInsideStripMode :=
    (actualLeadingComplexCoefficient_eq actualInsideStripMode_re_pos).symm
  rw [hc, actualInsideStripCoefficient_square_re] at hh
  apply hh.congr'
  exact Filter.Eventually.of_forall fun n => by
    dsimp [actualCorrelationAsymptoticScale]
    rw [actualInsideStripSequence_phase]
    simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, zero_mul, zero_add, sub_zero]

/-- The literal actual kernel is eventually negative in this strict strip mode. -/
theorem actualInsideStripKernel_eventually_negative :
    ∀ᶠ n in atTop,
      (actualBilateralCorrelationTransform (actualInsideStripSequence n)
        actualInsideStripMode).re < 0 := by
  have hn := actualInsideStripKernel_scaled_real_tendsto.eventually_lt_const
    (by norm_num : (-301989888 : ℝ) < 0)
  filter_upwards [hn, actualInsideStripSequence_tendsto.eventually_ge_atTop 1] with n hn hA
  have hp : 0 < actualInsideStripSequence n ^ 9 *
      sourceNormalization (actualInsideStripSequence n) *
        Real.exp (-actualInsideStripSequence n / 2) := by
    have hZ := source_normalization_pos (actualInsideStripSequence n) hA
    have hAp : 0 < actualInsideStripSequence n := by linarith
    positivity
  by_contra h
  have hv : 0 ≤ (actualBilateralCorrelationTransform (actualInsideStripSequence n)
      actualInsideStripMode).re := le_of_not_gt h
  have hh := mul_nonneg hp.le hv
  linarith

/-- Blanket nonnegative real strip-kernel rules fail at arbitrarily large actual scales. -/
theorem actualInsideStripKernel_negative_beyond (R : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 1 ≤ A ∧
      (actualBilateralCorrelationTransform A actualInsideStripMode).re < 0 := by
  obtain ⟨n, hn, hR, hA⟩ :=
    (actualInsideStripKernel_eventually_negative.and
      ((actualInsideStripSequence_tendsto.eventually_ge_atTop R).and
      (actualInsideStripSequence_tendsto.eventually_ge_atTop 1))).exists
  exact ⟨actualInsideStripSequence n, hR, hA, hn⟩

end
end FormalResearch.RiemannHypothesis.ActualInsideStripKernelNegativeSequence
```
