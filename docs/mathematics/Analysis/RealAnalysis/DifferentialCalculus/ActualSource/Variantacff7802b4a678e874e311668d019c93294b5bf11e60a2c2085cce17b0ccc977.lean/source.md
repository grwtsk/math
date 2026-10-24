# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualSource.Variantacff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d69fa87e0c697dcf51df2ecbdbb5c630098feae` · SHA-256 `acff7802b4a678e874e311668d019c93294b5bf11e60a2c2085cce17b0ccc977`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceSamplingRemainder
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateCorrelation

/-!
Actual-source proof candidate developed with a static source-audit agent.
Research direction and theorem selection: grwtsk contributors.
Proof development: OpenAI Codex. Focused compilation passed; full verification and integration remain separate.
The underlying actual source and regularity/normalization proofs are inherited.
-/
set_option autoImplicit false
noncomputable section
namespace InnerAbelSourceCandidate

open FormalResearch.RiemannHypothesis
open SourcePairing SourcePositiveSampling SourceSamplingTaylor SourceSamplingRemainder
open SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation

/-- The actual logarithmic sampling derivative with its literal positive density. -/
theorem logProfile_deriv_eq {A d y : ℝ} (hA : 1 ≤ A) (hd : 0 < d) (hy : 0 < y) :
    deriv (logProfile A d) y =
      (1 / Real.sqrt d * y ^ (-3 / 2 : ℝ)) *
        ((1 - Real.log y / 2) *
            sourceCorrelation explicitSecondDerivative A (Real.log d + Real.log y) +
          Real.log y * deriv (sourceCorrelation explicitSecondDerivative A)
            (Real.log d + Real.log y)) := by
  rw [(logProfile_hasDerivAt (by linarith) d hy).deriv,
    samplingDerivative_prefactor hd hy]

/-- The explicit budget needed by centered Abel summation, still in rpow-density form. -/
theorem logProfile_deriv_abs_le_density {A d y : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hy : 1 ≤ y) :
    |deriv (logProfile A d) y| ≤
      (1 / Real.sqrt d * y ^ (-3 / 2 : ℝ)) *
        (1 + (1 / 2 + 5 / A) * Real.log y) := by
  have hd0 : 0 < d := by linarith
  have hy0 : 0 < y := by linarith
  have hl : 0 ≤ Real.log y := Real.log_nonneg hy
  have hw : 0 ≤ 1 / Real.sqrt d * y ^ (-3 / 2 : ℝ) := by positivity
  have hc := actual_correlation_abs_le_one A (Real.log d + Real.log y) hA
  have hcp := sourceCorrelation_deriv_abs_le_five_div hA (Real.log d + Real.log y)
  have hcoef : |1 - Real.log y / 2| ≤ 1 + Real.log y / 2 := by
    simpa only [abs_one, abs_div, abs_of_nonneg hl,
      abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
      abs_sub (1 : ℝ) (Real.log y / 2)
  rw [logProfile_deriv_eq hA hd0 hy0, abs_mul, abs_of_nonneg hw]
  apply mul_le_mul_of_nonneg_left _ hw
  calc
    _ ≤ |1 - Real.log y / 2| *
          |sourceCorrelation explicitSecondDerivative A (Real.log d + Real.log y)| +
        Real.log y * |deriv (sourceCorrelation explicitSecondDerivative A)
          (Real.log d + Real.log y)| := by
      simpa only [abs_mul, abs_of_nonneg hl] using
        abs_add_le
          ((1 - Real.log y / 2) *
            sourceCorrelation explicitSecondDerivative A (Real.log d + Real.log y))
          (Real.log y * deriv (sourceCorrelation explicitSecondDerivative A)
            (Real.log d + Real.log y))
    _ ≤ (1 + Real.log y / 2) * 1 + Real.log y * (5 / A) := by
      apply add_le_add
      · exact mul_le_mul hcoef hc (abs_nonneg _) (by positivity)
      · exact mul_le_mul_of_nonneg_left hcp hl
    _ = _ := by ring

/-- Positive-base powers convert the same literal budget to the requested denominator. -/
theorem logProfile_deriv_abs_le {A d y : ℝ}
    (hA : 1 ≤ A) (hd : 1 ≤ d) (hy : 1 ≤ y) :
    |deriv (logProfile A d) y| ≤
      (1 + (1 / 2 + 5 / A) * Real.log y) /
        (Real.sqrt d * y ^ (3 / 2 : ℝ)) := by
  have hy0 : 0 < y := by linarith
  apply (logProfile_deriv_abs_le_density hA hd hy).trans_eq
  rw [show (-3 / 2 : ℝ) = -(3 / 2 : ℝ) by ring, Real.rpow_neg hy0.le]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

/-- Exact source-weight identification, without invoking totalized logs at zero. -/
theorem logProfile_eq_literal {A d y : ℝ} (hd : 0 < d) (hy : 0 < y) :
    logProfile A d y =
      Real.log y / Real.sqrt (d * y) *
        sourceCorrelation explicitSecondDerivative A (Real.log (d * y)) := by
  rw [logProfile_eq_of_pos A d hy, sourceLogSamplingTerm_eq_source_weight A hd hy]
  ring

/-- The lower Abel endpoint vanishes because the sampled logarithm is log one. -/
theorem logProfile_at_one (A d : ℝ) : logProfile A d 1 = 0 := by
  rw [logProfile_eq_log_mul, Real.log_one, zero_mul]

/-- Existing positive-axis convention for h, with its spatial derivative. -/
theorem unit_plainProfile_hasDerivAt {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    HasDerivAt (plainProfile A 1)
      (x ^ (-3 / 2 : ℝ) *
        (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x) -
          sourceCorrelation explicitSecondDerivative A (Real.log x) / 2)) x := by
  have h := plainProfile_hasDerivAt (by linarith : 0 < A) 1 hx
  rw [samplingDerivative_prefactor (by norm_num : (0 : ℝ) < 1) hx] at h
  simpa only [Real.sqrt_one, div_one, one_mul, Real.log_one, zero_add] using h

/-- Actual source-weight derivative budget; differentiation is in x. -/
theorem unit_plainProfile_deriv_abs_le {A x : ℝ} (hA : 1 ≤ A) (hx : 0 < x) :
    |deriv (plainProfile A 1) x| ≤ (1 / 2 + 5 / A) * x ^ (-3 / 2 : ℝ) := by
  have hw : 0 ≤ x ^ (-3 / 2 : ℝ) := Real.rpow_nonneg hx.le _
  have hc := actual_correlation_abs_le_one A (Real.log x) hA
  have hcp := sourceCorrelation_deriv_abs_le_five_div hA (Real.log x)
  rw [(unit_plainProfile_hasDerivAt hA hx).deriv, abs_mul, abs_of_nonneg hw]
  calc
    _ ≤ x ^ (-3 / 2 : ℝ) *
        (|deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x)| +
          |sourceCorrelation explicitSecondDerivative A (Real.log x)| / 2) := by
      apply mul_le_mul_of_nonneg_left _ hw
      simpa only [abs_div, abs_of_pos (by norm_num : (0 : ℝ) < 2)] using
        abs_sub (deriv (sourceCorrelation explicitSecondDerivative A) (Real.log x))
          (sourceCorrelation explicitSecondDerivative A (Real.log x) / 2)
    _ ≤ x ^ (-3 / 2 : ℝ) * (5 / A + 1 / 2) := by
      apply mul_le_mul_of_nonneg_left _ hw
      exact add_le_add hcp (div_le_div_of_nonneg_right hc (by norm_num))
    _ = _ := by ring

/-- The actual maintained sharp energy result implies the requested coarse coefficient. -/
theorem actual_derivative_energy_coarse {A : ℝ} (hA : 1 ≤ A) :
    (∫ x : ℝ, (deriv (normalizedTest explicitSecondDerivative A) x) ^ 2) ≤
      (65 / 3 : ℝ) / A ^ 2 := by
  have hp : 0 < A := by linarith
  apply (le_div_iff₀ (sq_pos_of_pos hp)).mpr
  simpa only [mul_comm] using
    (SourceDerivativeEnergy.actual_derivative_energy_upper hA).trans
      (by norm_num : (162826 / 7623 : ℝ) ≤ 65 / 3)

/-- Multiplicative source identification is confined to positive inputs. -/
theorem plainProfile_scale_identity {A d y : ℝ} (hd : 0 < d) (hy : 0 < y) :
    plainProfile A d y = plainProfile A 1 (d * y) := by
  rw [plainProfile_eq_of_pos A d hy,
    plainProfile_eq_of_pos A 1 (mul_pos hd hy),
    sourcePlainSamplingTerm_eq_source_weight A hd hy,
    sourcePlainSamplingTerm_eq_source_weight A (by norm_num : (0 : ℝ) < 1)
      (mul_pos hd hy)]
  simp only [one_mul]

/-- The requested product-and-chain derivative contains the actual factor d. -/
theorem logProfile_hasDerivAt_chain {A d y : ℝ}
    (hA : 1 ≤ A) (hd : 0 < d) (hy : 0 < y) :
    HasDerivAt (logProfile A d)
      (plainProfile A 1 (d * y) / y +
        d * Real.log y * deriv (plainProfile A 1) (d * y)) y := by
  have hplain := ((plainProfile_contDiff (by linarith : 0 < A) 1).differentiable
    (by norm_num) (d * y)).hasDerivAt
  have hcomp := hplain.comp y ((hasDerivAt_id y).const_mul d)
  have hprod : HasDerivAt (fun z : ℝ => Real.log z * plainProfile A 1 (d * z))
      (plainProfile A 1 (d * y) / y +
        d * Real.log y * deriv (plainProfile A 1) (d * y)) y := by
    apply ((Real.hasDerivAt_log hy.ne').mul hcomp).congr_deriv
    simp only [Function.comp_apply]
    ring
  apply hprod.congr_of_eventuallyEq
  filter_upwards [isOpen_Ioi.mem_nhds hy] with z hz
  rw [logProfile_eq_log_mul, plainProfile_scale_identity hd hz]

end InnerAbelSourceCandidate
```
