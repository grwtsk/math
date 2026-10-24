# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007fCombined.Variant8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1cb2ea4ff85f9945a5df6f0d152da2a0cd7adf95` · SHA-256 `8d80a94c6de9aea3ebddf3b2b22c8ff8c67c4a0d4ff897b98b14366bf5c9007f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula
import Mathlib.Analysis.SpecialFunctions.Gamma.Beta

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open MeasureTheory Set

noncomputable section

private theorem betaIntegral_nat_factorials (a b : ℕ) :
    Complex.betaIntegral ((a : ℂ) + 1) ((b : ℂ) + 1) =
      (a.factorial : ℂ) * (b.factorial : ℂ) / ((a + b + 1).factorial : ℂ) := by
  have h := Complex.Gamma_mul_Gamma_eq_betaIntegral
    (s := (a : ℂ) + 1) (t := (b : ℂ) + 1) (by simp; positivity) (by simp; positivity)
  have hsum : (a : ℂ) + 1 + ((b : ℂ) + 1) = ((a + b + 1 : ℕ) : ℂ) + 1 := by
    push_cast
    ring
  rw [hsum, Complex.Gamma_nat_eq_factorial, Complex.Gamma_nat_eq_factorial,
    Complex.Gamma_nat_eq_factorial] at h
  apply (eq_div_iff (by exact_mod_cast Nat.factorial_ne_zero (a + b + 1))).mpr
  simpa only [mul_comm] using h.symm

/-- Natural polynomial specialization of Mathlib's scaled complex beta integral. -/
theorem integral_pow_mul_sub_pow_nat (a b : ℕ) (u : ℝ) (hu : 0 ≤ u) :
    (∫ t in (0 : ℝ)..u, t ^ a * (u - t) ^ b) =
      u ^ (a + b + 1) * (a.factorial : ℝ) * (b.factorial : ℝ) /
        ((a + b + 1).factorial : ℝ) := by
  rcases hu.eq_or_lt with rfl | hu
  · simp
  have h := Complex.betaIntegral_scaled ((a : ℂ) + 1) ((b : ℂ) + 1) hu
  have hexp : (a : ℂ) + 1 + ((b : ℂ) + 1) - 1 = ((a + b + 1 : ℕ) : ℂ) := by
    push_cast
    ring
  rw [hexp, betaIntegral_nat_factorials] at h
  simp only [add_sub_cancel_right, Complex.cpow_natCast] at h
  have hcast :
      (∫ t in (0 : ℝ)..u, (t : ℂ) ^ a * ((u : ℂ) - t) ^ b) =
        ((∫ t in (0 : ℝ)..u, t ^ a * (u - t) ^ b : ℝ) : ℂ) := by
    simp only [← Complex.ofReal_sub, ← Complex.ofReal_pow, ← Complex.ofReal_mul,
      intervalIntegral.integral_ofReal]
  rw [hcast] at h
  apply Complex.ofReal_injective
  push_cast
  exact h.trans (by ring)

/-- Exact finite beta convolution paying the even tail order and basis normalization. -/
theorem beta_evenBasis_tailKernel_mul (m q : ℕ) (u : ℝ) (hu : 0 ≤ u) :
    (4 : ℝ) ^ (q + 1) *
      (∫ t in Icc (0 : ℝ) u,
        ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) * evenBasis m t) =
      evenBasis (m + q + 1) u := by
  rw [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hu]
  have hfun : (fun t : ℝ =>
      ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) * evenBasis m t) =
        fun t : ℝ => ((2 : ℝ) ^ (2 * m) /
          (((2 * q + 1).factorial : ℝ) * ((2 * m).factorial : ℝ))) *
            (t ^ (2 * m) * (u - t) ^ (2 * q + 1)) := by
    funext t
    unfold evenBasis
    rw [mul_pow]
    ring
  rw [hfun, intervalIntegral.integral_const_mul,
    integral_pow_mul_sub_pow_nat (2 * m) (2 * q + 1) u hu]
  have hn : 2 * m + (2 * q + 1) + 1 = 2 * (m + q + 1) := by omega
  rw [hn]
  have hpow : (4 : ℝ) ^ (q + 1) * (2 : ℝ) ^ (2 * m) =
      (2 : ℝ) ^ (2 * (m + q + 1)) := by
    rw [show (4 : ℝ) = 2 ^ 2 by norm_num, ← pow_mul, ← pow_add]
    congr 1
    omega
  unfold evenBasis
  rw [mul_pow]
  field_simp
  rw [← hpow]
  ring



def thetaTailPairKernel (m q : ℕ) (t u : ℝ) : ℝ :=
  thetaPhi u * ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) *
    evenBasis m t

theorem thetaTailPairKernel_nonnegative (m q : ℕ) {t u : ℝ}
    (ht : 0 ≤ t) (htu : t ≤ u) : 0 ≤ thetaTailPairKernel m q t u := by
  exact mul_nonneg (mul_nonneg (thetaPhi_positive u (ht.trans htu)).le
    (div_nonneg (pow_nonneg (sub_nonneg.mpr htu) _) (by positivity)))
    (evenBasis_nonnegative m t)

theorem continuous_thetaTailPairKernel (m q : ℕ) :
    Continuous (fun p : ℝ × ℝ => thetaTailPairKernel m q p.1 p.2) := by
  unfold thetaTailPairKernel evenBasis
  exact ((continuous_thetaPhi.comp continuous_snd).mul
    (((continuous_snd.sub continuous_fst).pow _).div_const _)).mul (by fun_prop)

def thetaTailPairIntegrand (m q : ℕ) : ℝ × ℝ → ℝ :=
  {p : ℝ × ℝ | 0 ≤ p.1 ∧ p.1 ≤ p.2}.indicator
    (fun p => thetaTailPairKernel m q p.1 p.2)

theorem measurable_thetaTailPairIntegrand (m q : ℕ) :
    Measurable (thetaTailPairIntegrand m q) := by
  apply (continuous_thetaTailPairKernel m q).measurable.indicator
  exact (measurableSet_le measurable_const measurable_fst).inter
    (measurableSet_le measurable_fst measurable_snd)

theorem thetaTailPairIntegrand_nonnegative (m q : ℕ) (p : ℝ × ℝ) :
    0 ≤ thetaTailPairIntegrand m q p := by
  unfold thetaTailPairIntegrand
  apply indicator_nonneg
  intro x hx
  exact thetaTailPairKernel_nonnegative m q hx.1 hx.2

theorem thetaTailPairIntegrand_right (m q : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    (fun u => thetaTailPairIntegrand m q (t, u)) =
      (Ici t).indicator (thetaTailPairKernel m q t) := by
  funext u
  simp [thetaTailPairIntegrand, Set.indicator, ht]

theorem thetaTailPairIntegrand_right_of_neg (m q : ℕ) {t : ℝ} (ht : t < 0) :
    (fun u => thetaTailPairIntegrand m q (t, u)) = 0 := by
  funext u
  simp [thetaTailPairIntegrand, Set.indicator, not_le.mpr ht]

theorem thetaTailPairIntegrand_left (m q : ℕ) (u : ℝ) :
    (fun t => thetaTailPairIntegrand m q (t, u)) =
      (Icc (0 : ℝ) u).indicator (fun t => thetaTailPairKernel m q t u) := rfl

theorem thetaTailPairIntegrand_right_integrable (m q : ℕ) (t : ℝ) :
    Integrable (fun u => thetaTailPairIntegrand m q (t, u)) := by
  by_cases ht : 0 ≤ t
  · rw [thetaTailPairIntegrand_right m q ht, integrable_indicator_iff measurableSet_Ici]
    unfold IntegrableOn
    convert (thetaTail_integrable (2 * q + 1) ht).mul_const (evenBasis m t) using 1
    congr 1
    funext u
    unfold thetaTailPairKernel
    ring
  · rw [thetaTailPairIntegrand_right_of_neg m q (lt_of_not_ge ht)]
    exact integrable_zero _ _ _

theorem thetaTailPairIntegrand_left_integrable (m q : ℕ) (u : ℝ) :
    Integrable (fun t => thetaTailPairIntegrand m q (t, u)) := by
  rw [thetaTailPairIntegrand_left, integrable_indicator_iff measurableSet_Icc]
  exact ((continuous_thetaTailPairKernel m q).comp
    (continuous_id.prodMk continuous_const)).continuousOn.integrableOn_Icc

theorem thetaTailPairIntegrand_integral_right (m q : ℕ) (t : ℝ) :
    (∫ u, thetaTailPairIntegrand m q (t, u)) =
      (Ici (0 : ℝ)).indicator
        (fun t => thetaTail (2 * (q + 1)) t * evenBasis m t) t := by
  by_cases ht : 0 ≤ t
  · rw [thetaTailPairIntegrand_right m q ht, integral_indicator measurableSet_Ici,
      indicator_of_mem (show t ∈ Ici (0 : ℝ) from ht)]
    rw [show 2 * (q + 1) = (2 * q + 1) + 1 by omega, thetaTail]
    rw [← integral_mul_const]
    apply integral_congr_ae
    filter_upwards [] with u
    unfold thetaTailPairKernel
    ring
  · rw [thetaTailPairIntegrand_right_of_neg m q (lt_of_not_ge ht)]
    simp [indicator_of_notMem (show t ∉ Ici (0 : ℝ) from ht)]

theorem thetaTailPairIntegrand_integral_left (m q : ℕ) (u : ℝ) :
    (∫ t, thetaTailPairIntegrand m q (t, u)) =
      (Ici (0 : ℝ)).indicator (fun u => thetaPhi u *
        ∫ t in Icc (0 : ℝ) u,
          ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) *
            evenBasis m t) u := by
  rw [thetaTailPairIntegrand_left, integral_indicator measurableSet_Icc]
  by_cases hu : 0 ≤ u
  · rw [indicator_of_mem (show u ∈ Ici (0 : ℝ) from hu), ← integral_const_mul]
    apply integral_congr_ae
    filter_upwards [] with t
    unfold thetaTailPairKernel
    ring
  · rw [indicator_of_notMem (show u ∉ Ici (0 : ℝ) from hu), Icc_eq_empty_of_lt (lt_of_not_ge hu)]
    simp

theorem tailPairing_succ_eq_iteratedIntegral (m q : ℕ) :
    tailPairing m (q + 1) =
      ∫ t in Ici (0 : ℝ), ∫ u in Ici t, thetaTailPairKernel m q t u := by
  unfold tailPairing
  rw [show 2 * (q + 1) = (2 * q + 1) + 1 by omega]
  simp only [thetaTail]
  apply integral_congr_ae
  filter_upwards [] with t
  rw [← integral_mul_const]
  apply integral_congr_ae
  filter_upwards [] with u
  unfold thetaTailPairKernel
  ring


section

variable {α β : Type*} [MeasurableSpace α] [MeasurableSpace β]
  {μ : Measure α} {ν : Measure β} [SFinite μ] [SFinite ν]

/-- Nonnegative Tonelli, lifted to totalized real integrals through finite
slices in both directions. Outer integrability is not assumed. -/
theorem nonnegative_integral_integral_swap
    {f : α → β → ℝ}
    (hf : Measurable (Function.uncurry f))
    (hpos : ∀ x y, 0 ≤ f x y)
    (hleft : ∀ x, Integrable (f x) ν)
    (hright : ∀ y, Integrable (fun x => f x y) μ) :
    (∫ x, ∫ y, f x y ∂ν ∂μ) = ∫ y, ∫ x, f x y ∂μ ∂ν := by
  have hl (x : α) :
      ENNReal.ofReal (∫ y, f x y ∂ν) = ∫⁻ y, ENNReal.ofReal (f x y) ∂ν :=
    ofReal_integral_eq_lintegral_ofReal (hleft x)
      (Filter.Eventually.of_forall (hpos x))
  have hr (y : β) :
      ENNReal.ofReal (∫ x, f x y ∂μ) = ∫⁻ x, ENNReal.ofReal (f x y) ∂μ :=
    ofReal_integral_eq_lintegral_ofReal (hright y)
      (Filter.Eventually.of_forall fun x => hpos x y)
  rw [integral_eq_lintegral_of_nonneg_ae
      (Filter.Eventually.of_forall fun x => integral_nonneg (hpos x))
      hf.stronglyMeasurable.integral_prod_right.aestronglyMeasurable,
    integral_eq_lintegral_of_nonneg_ae
      (Filter.Eventually.of_forall fun y => integral_nonneg fun x => hpos x y)
      hf.stronglyMeasurable.integral_prod_left.aestronglyMeasurable]
  simp_rw [hl, hr]
  exact congrArg ENNReal.toReal (lintegral_lintegral_swap hf.ennreal_ofReal.aemeasurable)


end

theorem tailPairing_succ_tonelli (m q : ℕ) :
    tailPairing m (q + 1) =
      ∫ u in Ici (0 : ℝ), thetaPhi u *
        ∫ t in Icc (0 : ℝ) u,
          ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) * evenBasis m t := by
  have h := nonnegative_integral_integral_swap
    (μ := volume) (ν := volume)
    (f := fun t u => thetaTailPairIntegrand m q (t, u))
    (measurable_thetaTailPairIntegrand m q)
    (fun t u => thetaTailPairIntegrand_nonnegative m q (t, u))
    (thetaTailPairIntegrand_right_integrable m q)
    (thetaTailPairIntegrand_left_integrable m q)
  simpa only [thetaTailPairIntegrand_integral_right,
    thetaTailPairIntegrand_integral_left, integral_indicator measurableSet_Ici,
    tailPairing] using h

theorem tailPairing_succ_beta (m q : ℕ) :
    (4 : ℝ) ^ (q + 1) * tailPairing m (q + 1) =
      ∫ u in Ici (0 : ℝ), thetaPhi u * evenBasis (m + q + 1) u := by
  rw [tailPairing_succ_tonelli, ← integral_const_mul]
  apply setIntegral_congr_fun measurableSet_Ici
  intro u hu
  dsimp only
  rw [← mul_assoc, mul_comm ((4 : ℝ) ^ (q + 1)) (thetaPhi u), mul_assoc,
    beta_evenBasis_tailKernel_mul m q u hu]

theorem thetaTailPairing_transport (m q : ℕ) :
    (4 : ℝ) ^ q * tailPairing m q =
      ∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis (m + q) t := by
  cases q with
  | zero => simp [tailPairing]
  | succ q => simpa only [Nat.add_assoc, Nat.succ_eq_add_one] using tailPairing_succ_beta m q

theorem thetaTailTransport : ThetaTailTransport := by
  intro m q
  rw [thetaCoefficientFormula (m + q), ← thetaTailPairing_transport, mul_assoc]

theorem thetaTailPairing_order_two (m : ℕ) :
    4 * tailPairing m 1 =
      ∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis (m + 1) t := by
  simpa using thetaTailPairing_transport m 1

theorem beta_tailKernel_zero_one (u : ℝ) (hu : 0 ≤ u) :
    4 * (∫ t in Icc (0 : ℝ) u, u - t) = 2 * u ^ 2 := by
  have h := beta_evenBasis_tailKernel_mul 0 0 u hu
  norm_num [evenBasis] at h
  convert h using 1
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
