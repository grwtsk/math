# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ThetaIntegralTransport.Variant30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `98bfe65e7f3303e55f4e7686fc5e5f9810284e7b` · SHA-256 `30d8566ece3839ddf3953b34bedb8936c6ee1b7767d190d8fcde41417a80fca4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.ThetaKernelTransport
import FormalResearch.RiemannHypothesis.SourceComparison.MertensTransport

set_option autoImplicit false

namespace ThetaIntegralTransportScratch

open MeasureTheory Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open SourceSampling SourceSamplingDerivative ThetaKernelTransport

noncomputable section

theorem scaledSampling_hasDerivAt (A q x : ℝ) (hA : 1 ≤ A) (hq : 0 < q) (hx : 0 < x) :
    HasDerivAt (fun t : ℝ ↦ sourceSamplingKernel A (q * t))
      (q * deriv (sourceSamplingKernel A) (q * x)) x := by
  have h := (sourceSamplingKernel_hasDerivAt A (q * x) hA (mul_pos hq hx)).differentiableAt
  apply (h.hasDerivAt.comp x ((hasDerivAt_id x).const_mul q)).congr_deriv
  simp only [mul_one, mul_comm]

theorem scaledSampling_derivative_integrableOn (A q : ℝ) (N : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (deriv (fun t : ℝ ↦ sourceSamplingKernel A (q * t)))
      (Set.Icc 1 (N : ℝ)) := by
  let C : ℝ := 4 + 10 * Real.sqrt (65 / 3) / A + 4 * (65 / (3 * A ^ 2))
  have hc : ContinuousOn (fun t : ℝ ↦ q * (C / (q * t * Real.sqrt (q * t))))
      (Set.Icc 1 (N : ℝ)) := by
    apply continuousOn_const.mul
    apply continuousOn_const.div
    · exact (continuousOn_const.mul continuousOn_id).mul
        ((continuousOn_const.mul continuousOn_id).sqrt)
    · intro t ht
      have hqt : 0 < q * t := mul_pos hq (lt_of_lt_of_le zero_lt_one ht.1)
      exact mul_ne_zero hqt.ne' (Real.sqrt_pos.mpr hqt).ne'
  apply hc.integrableOn_Icc.mono'
    (stronglyMeasurable_deriv (fun t : ℝ ↦ sourceSamplingKernel A (q * t))).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
  have ht0 : 0 < t := lt_of_lt_of_le zero_lt_one ht.1
  rw [Real.norm_eq_abs, (scaledSampling_hasDerivAt A q t hA hq ht0).deriv,
    abs_mul, abs_of_pos hq]
  exact mul_le_mul_of_nonneg_left
    (sourceSamplingKernel_derivative_abs_le A (q * t) hA (mul_pos hq ht0)) hq.le

theorem scaledSampling_integrableOn (A q : ℝ) (N : ℕ) (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (fun t : ℝ ↦ sourceSamplingKernel A (q * t)) (Set.Icc 1 (N : ℝ)) := by
  apply ContinuousOn.integrableOn_Icc
  intro t ht
  exact (scaledSampling_hasDerivAt A q t hA hq
    (lt_of_lt_of_le zero_lt_one ht.1)).continuousAt.continuousWithinAt

theorem scaledSampling_sawtooth_integrableOn (A q : ℝ) (N : ℕ)
    (hA : 1 ≤ A) (hq : 0 < q) :
    IntegrableOn (fun t : ℝ ↦ ((⌊t⌋₊ : ℝ) + 1 - t) *
      (q * deriv (sourceSamplingKernel A) (q * t))) (Set.Icc 1 (N : ℝ)) := by
  have hi := SamplingError.sawtooth_mul_integrableOn
    (deriv (fun t : ℝ ↦ sourceSamplingKernel A (q * t))) N
    (scaledSampling_derivative_integrableOn A q N hA hq)
  apply hi.congr
  filter_upwards [ae_restrict_mem measurableSet_Icc] with t ht
  rw [(scaledSampling_hasDerivAt A q t hA hq
    (lt_of_lt_of_le zero_lt_one ht.1)).deriv]

theorem thetaKernel_eq_padded_sum (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    thetaKernel A q = ∑ k ∈ Icc 1 (⌊Real.exp (2 * A)⌋₊ + 1),
      sourceSamplingKernel A ((q : ℝ) * (k : ℝ)) := by
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  have hq1 : (1 : ℝ) ≤ q := by exact_mod_cast hq
  rw [thetaKernel_eq_sum_sourceSamplingKernel A q hq]
  simp only [Nat.cast_mul]
  apply sum_subset
  · intro k hk
    obtain ⟨hk1, hkB⟩ := mem_Icc.mp hk
    exact mem_Icc.mpr ⟨hk1, by omega⟩
  · intro k hk hout
    have hk' := mem_Icc.mp hk
    have hkN : k = ⌊Real.exp (2 * A)⌋₊ + 1 := by
      by_contra h
      exact hout (mem_Icc.mpr ⟨hk'.1, by omega⟩)
    have hk0 : (0 : ℝ) < k := by exact_mod_cast (show 0 < k by omega)
    apply MertensTransport.sourceSamplingKernel_zero_of_exp_le A _ (mul_pos hq0 hk0)
    have hf := Nat.lt_floor_add_one (Real.exp (2 * A))
    have hkX : Real.exp (2 * A) < (k : ℝ) := by
      simpa only [hkN, Nat.cast_add, Nat.cast_one] using hf
    nlinarith

theorem scaledSampling_endpoint_zero (A : ℝ) (q : ℕ) (hq : 1 ≤ q) :
    sourceSamplingKernel A ((q : ℝ) * (⌊Real.exp (2 * A)⌋₊ + 1 : ℕ)) = 0 := by
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  have hq1 : (1 : ℝ) ≤ q := by exact_mod_cast hq
  have hN : (0 : ℝ) < (⌊Real.exp (2 * A)⌋₊ + 1 : ℕ) := by positivity
  apply MertensTransport.sourceSamplingKernel_zero_of_exp_le A _ (mul_pos hq0 hN)
  have hf := Nat.lt_floor_add_one (Real.exp (2 * A))
  push_cast
  nlinarith

theorem thetaKernel_sub_integral_eq (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    thetaKernel A q -
      (∫ t in (1 : ℝ)..(⌊Real.exp (2 * A)⌋₊ + 1 : ℕ),
        sourceSamplingKernel A ((q : ℝ) * t)) =
      -(∫ t in (1 : ℝ)..(⌊Real.exp (2 * A)⌋₊ + 1 : ℕ),
        ((⌊t⌋₊ : ℝ) + 1 - t) *
          ((q : ℝ) * deriv (sourceSamplingKernel A) ((q : ℝ) * t))) := by
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  let N := ⌊Real.exp (2 * A)⌋₊ + 1
  have hN : 1 ≤ N := by dsimp [N]; omega
  rw [thetaKernel_eq_padded_sum A q hq]
  have he := SamplingError.sum_sub_integral_eq_of_endpoint_zero
    (fun t : ℝ ↦ sourceSamplingKernel A ((q : ℝ) * t)) N hN
    (fun t ht ↦ (scaledSampling_hasDerivAt A q t hA hq0
      (lt_of_lt_of_le zero_lt_one ht.1)).differentiableAt)
    (scaledSampling_derivative_integrableOn A q N hA hq0)
    (scaledSampling_endpoint_zero A q hq)
  rw [he]
  congr 1
  apply intervalIntegral.integral_congr
  intro t ht
  have hNreal : (1 : ℝ) ≤ N := by exact_mod_cast hN
  rw [Set.uIcc_of_le hNreal] at ht
  dsimp only
  rw [(scaledSampling_hasDerivAt A q t hA hq0
    (lt_of_lt_of_le zero_lt_one ht.1)).deriv]

theorem thetaKernel_sub_integral_abs_le (A : ℝ) (q : ℕ) (hA : 1 ≤ A) (hq : 1 ≤ q) :
    |thetaKernel A q -
      (∫ t in (1 : ℝ)..(⌊Real.exp (2 * A)⌋₊ + 1 : ℕ),
        sourceSamplingKernel A ((q : ℝ) * t))| ≤
      ∫ t in (1 : ℝ)..(⌊Real.exp (2 * A)⌋₊ + 1 : ℕ),
        |(q : ℝ) * deriv (sourceSamplingKernel A) ((q : ℝ) * t)| := by
  have hq0 : (0 : ℝ) < q := by exact_mod_cast (show 0 < q by omega)
  let N := ⌊Real.exp (2 * A)⌋₊ + 1
  have hN : 1 ≤ N := by dsimp [N]; omega
  rw [thetaKernel_eq_padded_sum A q hq]
  have he := SamplingError.abs_sum_sub_integral_le
    (fun t : ℝ ↦ sourceSamplingKernel A ((q : ℝ) * t)) N hN
    (fun t ht ↦ (scaledSampling_hasDerivAt A q t hA hq0
      (lt_of_lt_of_le zero_lt_one ht.1)).differentiableAt)
    (scaledSampling_derivative_integrableOn A q N hA hq0)
    (scaledSampling_endpoint_zero A q hq)
  refine he.trans_eq ?_
  apply intervalIntegral.integral_congr
  intro t ht
  have hNreal : (1 : ℝ) ≤ N := by exact_mod_cast hN
  rw [Set.uIcc_of_le hNreal] at ht
  dsimp only
  rw [(scaledSampling_hasDerivAt A q t hA hq0
    (lt_of_lt_of_le zero_lt_one ht.1)).deriv]

end
end ThetaIntegralTransportScratch
```
