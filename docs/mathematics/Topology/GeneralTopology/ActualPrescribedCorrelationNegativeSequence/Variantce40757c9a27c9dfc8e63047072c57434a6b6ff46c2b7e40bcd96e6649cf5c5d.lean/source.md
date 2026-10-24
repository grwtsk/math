# Complete source: GRWTSK.Topology.GeneralTopology.ActualPrescribedCorrelationNegativeSequence.Variantce40757c9a27c9dfc8e63047072c57434a6b6ff46c2b7e40bcd96e6649cf5c5d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cdb93bc01b21b3bc5f071ed2ae8b01af9c51802f` · SHA-256 `ce40757c9a27c9dfc8e63047072c57434a6b6ff46c2b7e40bcd96e6649cf5c5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualComplexCorrelationAsymptotic
import ActualPrescribedComplexCoefficient

/-!
A prescribed sequence of actual scales has a negative real complex correlation
transform. This is a literal source-kernel consequence, not a zeta zero,
arithmetic covariance estimate, or RH counterexample.
Research direction: grwtsk contributors. Formal development: OpenAI Codex.
-/
set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.ActualPrescribedCorrelationNegativeSequence
open Filter
open scoped Topology
open SourcePairing ActualCriticalExponentialResponse ActualCorrelationOppositeHalf
open SourceActualComplexEndpointAsymptotic SourceActualComplexEndpointCoefficient
open ActualPrescribedComplexCoefficient ActualComplexCorrelationAsymptotic
noncomputable section

/-- An independently prescribed sequence removes the actual complex phase. -/
def actualPrescribedScaleSequence (n : ℕ) : ℝ := 2 * Real.pi * n

/-- These source scales approach positive infinity. -/
theorem actualPrescribedScaleSequence_tendsto :
    Tendsto actualPrescribedScaleSequence atTop atTop := by
  exact Tendsto.const_mul_atTop (by positivity : 0 < 2 * Real.pi)
    tendsto_natCast_atTop_atTop

/-- The literal complex phase equals a positive real exponential on this sequence. -/
theorem actualPrescribedScaleSequence_phase (n : ℕ) :
    Complex.exp (-2 * actualPrescribedComplexMode *
      (actualPrescribedScaleSequence n : ℂ)) =
      (Real.exp (-actualPrescribedScaleSequence n) : ℂ) := by
  have he : -2 * actualPrescribedComplexMode *
      (actualPrescribedScaleSequence n : ℂ) =
      -(actualPrescribedScaleSequence n : ℂ) - (n : ℂ) * (2 * Real.pi * Complex.I) := by
    dsimp [actualPrescribedComplexMode, actualPrescribedScaleSequence]
    push_cast
    ring
  rw [he, sub_eq_add_neg, Complex.exp_add,
    Complex.exp_neg ((n : ℂ) * (2 * Real.pi * Complex.I)),
    Complex.exp_nat_mul_two_pi_mul_I, inv_one, mul_one]
  rw [← Complex.ofReal_neg]
  exact (Complex.ofReal_exp _).symm

/-- The genuine positive-half source transform has the exact negative scaled real limit. -/
theorem actualPrescribedCorrelation_scaled_real_tendsto :
    Tendsto (fun n : ℕ =>
      actualPrescribedScaleSequence n ^ 9 * sourceNormalization (actualPrescribedScaleSequence n) *
        Real.exp (-actualPrescribedScaleSequence n) *
        (actualHalfCorrelationTransform (actualPrescribedScaleSequence n)
          actualPrescribedComplexMode).re) atTop (𝓝 (-1179648 : ℝ)) := by
  have hh := Complex.continuous_re.continuousAt.tendsto.comp
    ((actualHalfCorrelationTransform_normalized_tendsto
      actualPrescribedComplexMode_re_pos).comp actualPrescribedScaleSequence_tendsto)
  have hc : 384 / actualPrescribedComplexMode ^ 3 - 96 / actualPrescribedComplexMode ^ 5 =
      actualLeadingComplexCoefficient actualPrescribedComplexMode :=
    (actualLeadingComplexCoefficient_eq actualPrescribedComplexMode_re_pos).symm
  rw [hc, actualLeadingComplexCoefficient_prescribed_square_re] at hh
  apply hh.congr'
  exact Filter.Eventually.of_forall fun n => by
    dsimp [actualCorrelationAsymptoticScale]
    rw [actualPrescribedScaleSequence_phase]
    simp only [Complex.mul_re, Complex.mul_im, Complex.ofReal_re, Complex.ofReal_im,
      mul_zero, zero_mul, zero_add, sub_zero]

/-- Eventually the unscaled actual transform itself has negative real part. -/
theorem actualPrescribedCorrelation_eventually_negative :
    ∀ᶠ n in atTop,
      (actualHalfCorrelationTransform (actualPrescribedScaleSequence n)
        actualPrescribedComplexMode).re < 0 := by
  have hn := actualPrescribedCorrelation_scaled_real_tendsto.eventually_lt_const
    (by norm_num : (-1179648 : ℝ) < 0)
  filter_upwards [hn, actualPrescribedScaleSequence_tendsto.eventually_ge_atTop 1] with n hn hA
  have hp : 0 < actualPrescribedScaleSequence n ^ 9 *
      sourceNormalization (actualPrescribedScaleSequence n) *
        Real.exp (-actualPrescribedScaleSequence n) := by
    have hZ := source_normalization_pos (actualPrescribedScaleSequence n) hA
    have hAp : 0 < actualPrescribedScaleSequence n := by linarith
    positivity
  by_contra h
  have hv : 0 ≤ (actualHalfCorrelationTransform (actualPrescribedScaleSequence n)
      actualPrescribedComplexMode).re := le_of_not_gt h
  have hh := mul_nonneg hp.le hv
  linarith

/-- Negative real actual transform values occur at arbitrarily large genuine source scales. -/
theorem actualPrescribedCorrelation_negative_beyond (R : ℝ) :
    ∃ A : ℝ, R ≤ A ∧ 1 ≤ A ∧
      (actualHalfCorrelationTransform A actualPrescribedComplexMode).re < 0 := by
  obtain ⟨n, hn, hR, hA⟩ :=
    (actualPrescribedCorrelation_eventually_negative.and
      ((actualPrescribedScaleSequence_tendsto.eventually_ge_atTop R).and
      (actualPrescribedScaleSequence_tendsto.eventually_ge_atTop 1))).exists
  exact ⟨actualPrescribedScaleSequence n, hR, hA, hn⟩

end
end FormalResearch.RiemannHypothesis.ActualPrescribedCorrelationNegativeSequence
```
