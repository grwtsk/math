# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variant21ee7cfd529b8a36acc27ab0ac2d325a2e443c5e35af35ed3d5f5a26d6534003

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd964c7eec43d3508a6938e5d0abc57d4b963d09` · SHA-256 `f980cf9972917be4d48e623f8e9bd9a394655ef199096d5ac05fad3d63c5db8e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.BetaIntegralNatFactorials.Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.BetaIntegralNatFactorials.Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55","mathematical_subject":"Analysis.Integration","original_sha256":"6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.ThetaXiCoefficientFormula
import Mathlib.Analysis.SpecialFunctions.Gamma.Beta
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Exact transport of the literal theta-tail pairings

A finite beta convolution pays the even tail order by exactly `4 ^ q`.
Nonnegative Tonelli on `0 ≤ t ≤ u` then identifies the source-only moments.
The existing actual-xi coefficient theorem supplies the final transport.

Every inner slice is integrable before its real integral is converted to an
extended nonnegative integral. The outer tail pairing and the resulting source
moment already have independent integrability proofs in `ThetaTailCalculus`.
No higher tail differentiation or determinant-positivity assertion is used.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.BetaIntegralNatFactorials.Variant6a2136f67d197e950fd31b83e8561489e22ec4b0f21229ca2852829c86f83d55

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open MeasureTheory Set

noncomputable section

private theorem betaIntegral_nat_factorials (a b : ℕ) :
    Complex.betaIntegral ((a : ℂ) + 1) ((b : ℂ) + 1) =
      (a.factorial : ℂ) * (b.factorial : ℂ) / ((a + b + 1).factorial : ℂ) := by
  have h := Complex.Gamma_mul_Gamma_eq_betaIntegral
    (s := (a : ℂ) + 1) (t := (b : ℂ) + 1)
    (by simp only [Complex.add_re, Complex.natCast_re, Complex.one_re]; positivity)
    (by simp only [Complex.add_re, Complex.natCast_re, Complex.one_re]; positivity)
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

/-- The successor-indexed literal tail kernel paired with the unchanged even basis. -/
def thetaTailPairKernel (m q : ℕ) (t u : ℝ) : ℝ :=
  thetaPhi u * ((u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) *
    evenBasis m t

/-- Every factor has its actual nonnegative sign on the triangular source region. -/
theorem thetaTailPairKernel_nonnegative (m q : ℕ) {t u : ℝ}
    (ht : 0 ≤ t) (htu : t ≤ u) : 0 ≤ thetaTailPairKernel m q t u := by
  exact mul_nonneg (mul_nonneg (thetaPhi_positive u (ht.trans htu)).le
    (div_nonneg (pow_nonneg (sub_nonneg.mpr htu) _) (by positivity)))
    (evenBasis_nonnegative m t)

/-- The source kernel is jointly continuous before restriction to the triangle. -/
theorem continuous_thetaTailPairKernel (m q : ℕ) :
    Continuous (fun p : ℝ × ℝ => thetaTailPairKernel m q p.1 p.2) := by
  unfold thetaTailPairKernel evenBasis
  exact ((continuous_thetaPhi.comp continuous_snd).mul
    (((continuous_snd.sub continuous_fst).pow _).div_const _)).mul (by fun_prop)

private def thetaTailPairIntegrand (m q : ℕ) : ℝ × ℝ → ℝ :=
  {p : ℝ × ℝ | 0 ≤ p.1 ∧ p.1 ≤ p.2}.indicator
    (fun p => thetaTailPairKernel m q p.1 p.2)

private theorem measurable_thetaTailPairIntegrand (m q : ℕ) :
    Measurable (thetaTailPairIntegrand m q) := by
  apply (continuous_thetaTailPairKernel m q).measurable.indicator
  exact (measurableSet_le measurable_const measurable_fst).inter
    (measurableSet_le measurable_fst measurable_snd)

private theorem thetaTailPairIntegrand_nonnegative (m q : ℕ) (p : ℝ × ℝ) :
    0 ≤ thetaTailPairIntegrand m q p := by
  unfold thetaTailPairIntegrand
  apply indicator_nonneg
  intro x hx
  exact thetaTailPairKernel_nonnegative m q hx.1 hx.2

private theorem thetaTailPairIntegrand_right (m q : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    (fun u => thetaTailPairIntegrand m q (t, u)) =
      (Ici t).indicator (thetaTailPairKernel m q t) := by
  funext u
  simp [thetaTailPairIntegrand, Set.indicator, ht]

private theorem thetaTailPairIntegrand_right_of_neg (m q : ℕ) {t : ℝ} (ht : t < 0) :
    (fun u => thetaTailPairIntegrand m q (t, u)) = 0 := by
  funext u
  simp [thetaTailPairIntegrand, Set.indicator, not_le.mpr ht]

private theorem thetaTailPairIntegrand_left (m q : ℕ) (u : ℝ) :
    (fun t => thetaTailPairIntegrand m q (t, u)) =
      (Icc (0 : ℝ) u).indicator (fun t => thetaTailPairKernel m q t u) := rfl

private theorem thetaTailPairIntegrand_right_integrable (m q : ℕ) (t : ℝ) :
    Integrable (fun u => thetaTailPairIntegrand m q (t, u)) := by
  by_cases ht : 0 ≤ t
  · rw [thetaTailPairIntegrand_right m q ht, integrable_indicator_iff measurableSet_Ici]
    have hfun : thetaTailPairKernel m q t = fun u =>
        (thetaPhi u * (u - t) ^ (2 * q + 1) / ((2 * q + 1).factorial : ℝ)) *
          evenBasis m t := by
      funext u
      unfold thetaTailPairKernel
      ring
    rw [hfun]
    exact (thetaTail_integrable (2 * q + 1) ht).mul_const (evenBasis m t)
  · rw [thetaTailPairIntegrand_right_of_neg m q (lt_of_not_ge ht)]
    exact integrable_zero _ _ _

private theorem thetaTailPairIntegrand_left_integrable (m q : ℕ) (u : ℝ) :
    Integrable (fun t => thetaTailPairIntegrand m q (t, u)) := by
  rw [thetaTailPairIntegrand_left, integrable_indicator_iff measurableSet_Icc]
  exact ((continuous_thetaTailPairKernel m q).comp
    (continuous_id.prodMk continuous_const)).continuousOn.integrableOn_Icc

private theorem thetaTailPairIntegrand_integral_right (m q : ℕ) (t : ℝ) :
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

private theorem thetaTailPairIntegrand_integral_left (m q : ℕ) (u : ℝ) :
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

/-- Unfolding the positive even tail order gives the exact nested source integral. -/
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
private theorem nonnegative_integral_integral_swap
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

/-- Nonnegative Tonelli reverses the triangular source integral with measurable,
finite inner slices in both directions. -/
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

/-- The finite beta convolution transports each positive even tail order with
the exact power of four. -/
theorem tailPairing_succ_beta (m q : ℕ) :
    (4 : ℝ) ^ (q + 1) * tailPairing m (q + 1) =
      ∫ u in Ici (0 : ℝ), thetaPhi u * evenBasis (m + q + 1) u := by
  rw [tailPairing_succ_tonelli, ← integral_const_mul]
  apply setIntegral_congr_fun measurableSet_Ici
  intro u hu
  dsimp only
  rw [← mul_assoc, mul_comm ((4 : ℝ) ^ (q + 1)) (thetaPhi u), mul_assoc,
    beta_evenBasis_tailKernel_mul m q u hu]

/-- Source-only transport for every order, with the zeroth tail handled separately. -/
theorem thetaTailPairing_transport (m q : ℕ) :
    (4 : ℝ) ^ q * tailPairing m q =
      ∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis (m + q) t := by
  cases q with
  | zero => simp [tailPairing]
  | succ q => simpa only [Nat.add_assoc, Nat.succ_eq_add_one] using tailPairing_succ_beta m q

/-- The unchanged transport proposition follows from the actual xi coefficient
formula and the source-only theta moment identity, without additional hypotheses. -/
theorem thetaTailTransport : ThetaTailTransport := by
  intro m q
  rw [thetaCoefficientFormula (m + q), ← thetaTailPairing_transport, mul_assoc]

/-- The order-two regression retains exactly one factor of four. -/
theorem thetaTailPairing_order_two (m : ℕ) :
    4 * tailPairing m 1 =
      ∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis (m + 1) t := by
  simpa using thetaTailPairing_transport m 1

/-- At basis degree zero and tail order two the beta convolution is exactly `2u²`. -/
theorem beta_tailKernel_zero_one (u : ℝ) (hu : 0 ≤ u) :
    4 * (∫ t in Icc (0 : ℝ) u, u - t) = 2 * u ^ 2 := by
  have h := beta_evenBasis_tailKernel_mul 0 0 u hu
  norm_num [evenBasis] at h
  convert h using 1
  ring

end
end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
