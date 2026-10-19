/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.CriticalStripRealAxisMellin
import Mathlib.Analysis.Calculus.MeanValue
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Analysis.SpecialFunctions.Pow.Real

set_option autoImplicit false

/-!
# Explicit bounds for the sourced fractional Mellin transform

All integrals below are used with a proved positive real part and cutoff at least 1.
The finite interval and omitted tail are separate exact integrals. The error estimate
is not a zero-divisor tail estimate, and no quadrature routine or sample oracle is
introduced. The derivative bound is conservative: log(t) <= t^a/a gives 1/a^2
on Re(s)>=2a. Source-only until the pinned stack is elaborated and audited.
-/

namespace GRWTSK.RiemannHypothesis.CriticalStripHeightDescent

open Complex MeasureTheory Filter Set
open scoped Topology

noncomputable section

/-- The integrand from the existing exact fractional Mellin identity. -/
def fractionalIntegrand (s : ℂ) (t : ℝ) : ℂ :=
  ((t : ℂ) - (⌊t⌋₊ : ℂ)) * (t : ℂ) ^ (-(s + 1))

lemma fractionalIntegrand_integrable {s : ℂ} (hs : 0 < s.re) :
    IntegrableOn (fractionalIntegrand s) (Ioi 1) :=
  fractionalMellin_integrable hs

/-- The kernel bound is valid on the whole integration domain, not just at integers. -/
lemma fractionalIntegrand_norm_le {s : ℂ} {t : ℝ} (ht : 1 < t) :
    ‖fractionalIntegrand s t‖ ≤ t ^ (-(s.re + 1)) := by
  have hk : ‖(t : ℂ) - (⌊t⌋₊ : ℂ)‖ ≤ 1 := by
    simpa only [fractionalKernel, realFractionalKernel, if_pos ht.le,
      Complex.ofReal_sub, Complex.ofReal_natCast] using fractionalKernel_norm_le_one t
  simp only [fractionalIntegrand, norm_mul]
  rw [Complex.norm_cpow_eq_rpow_re_of_pos (zero_lt_one.trans ht)]
  simp only [Complex.neg_re, Complex.add_re, Complex.one_re]
  exact mul_le_of_le_one_left (Real.rpow_nonneg (zero_lt_one.trans ht).le _) hk

/-- Retain the finite part as an actual integral; computing it is a separate task. -/
def fractionalMellinTruncation (T : ℝ) (s : ℂ) : ℂ :=
  ∫ t : ℝ in Ioc 1 T, fractionalIntegrand s t

/-- The omitted part is not discarded or assigned zero. -/
def fractionalMellinTail (T : ℝ) (s : ℂ) : ℂ :=
  ∫ t : ℝ in Ioi T, fractionalIntegrand s t

lemma fractionalMellinTail_integrable {T : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hs : 0 < s.re) :
    IntegrableOn (fractionalIntegrand s) (Ioi T) :=
  (fractionalIntegrand_integrable hs).mono_set (Ioi_subset_Ioi hT)

/-- Exact disjoint-domain decomposition, including the cutoff endpoint once. -/
theorem fractionalMellin_split {T : ℝ} {s : ℂ} (hT : 1 ≤ T) (hs : 0 < s.re) :
    fractionalMellin s = fractionalMellinTruncation T s + fractionalMellinTail T s := by
  have hdis : Disjoint (Ioc (1 : ℝ) T) (Ioi T) := by
    apply Set.disjoint_left.mpr
    intro t ht hgt
    exact (not_lt_of_ge ht.2) hgt
  have hu : Ioc (1 : ℝ) T ∪ Ioi T = Ioi 1 := by
    ext t
    constructor
    · rintro (h | h)
      · exact h.1
      · exact hT.trans_lt h
    · intro ht
      by_cases hc : t ≤ T
      · exact Or.inl ⟨ht, hc⟩
      · exact Or.inr (lt_of_not_ge hc)
  have hfin : IntegrableOn (fractionalIntegrand s) (Ioc 1 T) :=
    (fractionalIntegrand_integrable hs).mono_set Ioc_subset_Ioi_self
  have htail := fractionalMellinTail_integrable hT hs
  rw [fractionalMellin_eq_integral]
  simpa only [hu, fractionalMellinTruncation, fractionalMellinTail,
    fractionalIntegrand] using setIntegral_union hdis measurableSet_Ioi hfin htail

/-- Uniform on any declared right half-plane Re(s)>=sigma>0. -/
theorem fractionalMellinTail_norm_le {T σ : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖fractionalMellinTail T s‖ ≤ T ^ (-σ) / σ := by
  have hT0 : 0 < T := zero_lt_one.trans_le hT
  have hi := fractionalMellinTail_integrable hT (hσ.trans_le hs)
  have hg : IntegrableOn (fun t : ℝ => t ^ (-(σ + 1))) (Ioi T) :=
    integrableOn_Ioi_rpow_of_lt (by linarith) hT0
  calc
    ‖fractionalMellinTail T s‖ ≤ ∫ t in Ioi T, ‖fractionalIntegrand s t‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi T, t ^ (-(σ + 1)) := by
      apply integral_mono_ae hi.norm hg
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      exact (fractionalIntegrand_norm_le (hT.trans_lt ht)).trans
        (Real.rpow_le_rpow_of_exponent_le (hT.trans ht.le) (by linarith))
    _ = T ^ (-σ) / σ := by
      rw [integral_Ioi_rpow_of_lt (by linarith : -(σ + 1) < -1) hT0,
        show -(σ + 1) + 1 = -σ by ring, neg_div_neg_eq]

/-- The whole transform is bounded on each right half-plane, uniformly in height. -/
theorem fractionalMellin_norm_le {σ : ℝ} {s : ℂ} (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖fractionalMellin s‖ ≤ 1 / σ := by
  have h := fractionalMellinTail_norm_le (T := 1) le_rfl hσ hs
  rw [fractionalMellin_eq_integral]
  simpa only [fractionalMellinTail, fractionalIntegrand, Real.one_rpow] using h

/-- Same pole-normalized source, with only the finite Mellin integral retained. -/
def truncatedPoleModel (T : ℝ) (s : ℂ) : ℂ :=
  s - s * (s - 1) * fractionalMellinTruncation T s

/-- Exact residual from the arithmetic source identity and the disjoint integral split. -/
theorem poleNormalized_truncation_residual {T : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hs : 0 < s.re) :
    poleNormalizedZeta s - truncatedPoleModel T s =
      -(s * (s - 1)) * fractionalMellinTail T s := by
  rw [poleNormalized_eq_fractional hs]
  unfold fractionalPoleModel truncatedPoleModel
  rw [fractionalMellin_split hT hs]
  ring

/-- This is a proved truncation error, not a numerical fit to zeta values. -/
theorem poleNormalized_truncation_error {T σ : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) :
    ‖poleNormalizedZeta s - truncatedPoleModel T s‖ ≤
      ‖s‖ * ‖s - 1‖ * (T ^ (-σ) / σ) := by
  rw [poleNormalized_truncation_residual hT (hσ.trans_le hs), norm_mul,
    norm_neg, norm_mul]
  exact mul_le_mul_of_nonneg_left (fractionalMellinTail_norm_le hT hσ hs)
    (mul_nonneg (norm_nonneg _) (norm_nonneg _))

/-- Bounded parameter sets have one explicit uniform truncation majorant. -/
theorem poleNormalized_truncation_error_uniform {T σ B : ℝ} {s : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re) (hB : ‖s‖ ≤ B) :
    ‖poleNormalizedZeta s - truncatedPoleModel T s‖ ≤
      B * (B + 1) * (T ^ (-σ) / σ) := by
  have hB0 : 0 ≤ B := (norm_nonneg s).trans hB
  have hsub : ‖s - 1‖ ≤ B + 1 := by
    calc
      ‖s - 1‖ ≤ ‖s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ ≤ B + 1 := by simpa only [norm_one] using add_le_add_right hB 1
  exact (poleNormalized_truncation_error hT hσ hs).trans
    (mul_le_mul_of_nonneg_right
      (mul_le_mul hB hsub (norm_nonneg _) hB0)
      (div_nonneg (Real.rpow_nonneg (zero_lt_one.trans_le hT).le _) hσ.le))

/-- The explicit bounded-domain majorant tends to zero. It says nothing about a
positive zero-exclusion margin on the full unbounded critical strip. -/
theorem truncation_majorant_tendsto_zero {σ : ℝ} (hσ : 0 < σ) (B : ℝ) :
    Tendsto (fun n : ℕ => B * (B + 1) * (((n : ℝ) + 1) ^ (-σ) / σ))
      atTop (𝓝 0) := by
  have hn : Tendsto (fun n : ℕ => (n : ℝ) + 1) atTop atTop :=
    tendsto_atTop_add_const_right _ _ tendsto_natCast_atTop_atTop
  simpa using (((tendsto_rpow_neg_atTop hσ).comp hn).div_const σ).const_mul (B * (B + 1))

/-- A quadrature approximation is separately charged; it is not the exact finite integral. -/
theorem poleNormalized_quadrature_error {T σ ε : ℝ} {s a : ℂ}
    (hT : 1 ≤ T) (hσ : 0 < σ) (hs : σ ≤ s.re)
    (ha : ‖fractionalMellinTruncation T s - a‖ ≤ ε) :
    ‖poleNormalizedZeta s - (s - s * (s - 1) * a)‖ ≤
      ‖s‖ * ‖s - 1‖ * (T ^ (-σ) / σ + ε) := by
  have hsplit : poleNormalizedZeta s - (s - s * (s - 1) * a) =
      (poleNormalizedZeta s - truncatedPoleModel T s) +
      (-(s * (s - 1)) * (fractionalMellinTruncation T s - a)) := by
    unfold truncatedPoleModel
    ring
  rw [hsplit]
  calc
    _ ≤ ‖poleNormalizedZeta s - truncatedPoleModel T s‖ +
        ‖-(s * (s - 1)) * (fractionalMellinTruncation T s - a)‖ := norm_add_le _ _
    _ ≤ ‖s‖ * ‖s - 1‖ * (T ^ (-σ) / σ) + ‖s‖ * ‖s - 1‖ * ε := by
      apply add_le_add (poleNormalized_truncation_error hT hσ hs)
      rw [norm_mul, norm_neg, norm_mul]
      exact mul_le_mul_of_nonneg_left ha (mul_nonneg (norm_nonneg _) (norm_nonneg _))
    _ = _ := by ring

/-- The actual logarithmic Mellin transform, with the chain-rule minus sign retained. -/
def fractionalLogMellin (s : ℂ) : ℂ :=
  mellin (fun t : ℝ => Real.log t • fractionalKernel t) (-s)

theorem fractionalMellin_hasDerivAt {s : ℂ} (hs : 0 < s.re) :
    MellinConvergent (fun t : ℝ => Real.log t • fractionalKernel t) (-s) ∧
      HasDerivAt fractionalMellin (-fractionalLogMellin s) s := by
  have hm := mellin_hasDerivAt_of_isBigO_rpow (s := -s)
    fractionalKernel_locallyIntegrable
    fractionalKernel_isBigO_top (by simpa using neg_neg_of_pos hs)
    (fractionalKernel_isBigO_zero (-s.re - 1))
    (show -s.re - 1 < (-s).re by simp only [Complex.neg_re]; linarith)
  refine ⟨hm.1, ?_⟩
  simpa only [fractionalMellin, fractionalLogMellin, Function.comp_def, mul_neg_one]
    using hm.2.comp s (hasDerivAt_id s).neg

lemma fractionalLogMellin_eq_integral (s : ℂ) :
    fractionalLogMellin s = ∫ t : ℝ in Ioi 1,
      (Real.log t : ℂ) * fractionalIntegrand s t := by
  unfold fractionalLogMellin mellin
  rw [setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
    (Set.Ici_subset_Ioi.mpr zero_lt_one) ?_]
  · rw [integral_Ici_eq_integral_Ioi]
    apply setIntegral_congr_fun measurableSet_Ioi
    intro t ht
    simp only [Complex.real_smul, smul_eq_mul, fractionalKernel, realFractionalKernel,
      if_pos ht.le, Complex.ofReal_sub, Complex.ofReal_natCast, fractionalIntegrand]
    rw [show -s - 1 = -(s + 1) by ring]
    ring
  · intro t ht
    have ht1 : t < 1 := lt_of_not_ge ht.2
    simp [fractionalKernel, realFractionalKernel, not_le.mpr ht1]

lemma fractionalLogMellin_integrable {s : ℂ} (hs : 0 < s.re) :
    IntegrableOn (fun t : ℝ => (Real.log t : ℂ) * fractionalIntegrand s t) (Ioi 1) := by
  have hi : IntegrableOn (fun t : ℝ =>
      (t : ℂ) ^ (-s - 1) • (Real.log t • fractionalKernel t)) (Ioi 1) :=
    (fractionalMellin_hasDerivAt hs).1.mono_set (Ioi_subset_Ioi zero_le_one)
  refine hi.congr_fun ?_ measurableSet_Ioi
  intro t ht
  simp only [Complex.real_smul, smul_eq_mul, fractionalKernel, realFractionalKernel,
    if_pos ht.le, Complex.ofReal_sub, Complex.ofReal_natCast, fractionalIntegrand]
  rw [show -s - 1 = -(s + 1) by ring]
  ring

/-- A conservative but explicit derivative majorant from log(t)<=t^a/a.
No cancellation or real-axis positivity is assumed at complex parameters. -/
theorem fractionalMellin_deriv_norm_le {a : ℝ} {s : ℂ}
    (ha : 0 < a) (hs : 2 * a ≤ s.re) :
    ‖deriv fractionalMellin s‖ ≤ 1 / a ^ 2 := by
  have hs0 : 0 < s.re := (by linarith : 0 < 2 * a).trans_le hs
  rw [(fractionalMellin_hasDerivAt hs0).2.deriv, norm_neg,
    fractionalLogMellin_eq_integral]
  have hi := fractionalLogMellin_integrable hs0
  have hg : IntegrableOn (fun t : ℝ => (1 / a) * t ^ (-(a + 1))) (Ioi 1) :=
    (integrableOn_Ioi_rpow_of_lt (by linarith : -(a + 1) < -1) zero_lt_one).const_mul _
  calc
    _ ≤ ∫ t : ℝ in Ioi 1, ‖(Real.log t : ℂ) * fractionalIntegrand s t‖ :=
      norm_integral_le_integral_norm _
    _ ≤ ∫ t : ℝ in Ioi 1, (1 / a) * t ^ (-(a + 1)) := by
      apply integral_mono_ae hi.norm hg
      filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
      have ht0 : 0 < t := zero_lt_one.trans ht
      rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg (Real.log_nonneg ht.le)]
      calc
        _ ≤ (t ^ a / a) * t ^ (-(s.re + 1)) :=
          mul_le_mul (Real.log_le_rpow_div ht0.le ha)
            (fractionalIntegrand_norm_le ht) (norm_nonneg _) (by positivity)
        _ = (1 / a) * t ^ (a - (s.re + 1)) := by
          calc
            _ = (1 / a) * (t ^ a * t ^ (-(s.re + 1))) := by ring
            _ = _ := by
              simp only [← Real.rpow_add ht0, sub_eq_add_neg]
        _ ≤ (1 / a) * t ^ (-(a + 1)) :=
          mul_le_mul_of_nonneg_left
            (Real.rpow_le_rpow_of_exponent_le ht.le (by linarith)) (by positivity)
    _ = 1 / a ^ 2 := by
      rw [integral_const_mul,
        integral_Ioi_rpow_of_lt (by linarith : -(a + 1) < -1) zero_lt_one]
      rw [show -(a + 1) + 1 = -a by ring]
      simp only [Real.one_rpow, neg_div_neg_eq]
      field_simp [ha.ne'] <;> ring

/-- Differentiate the exact source identity on a genuine open half-plane. -/
theorem poleNormalized_hasDerivAt_mellin {s : ℂ} (hs : 0 < s.re) :
    HasDerivAt poleNormalizedZeta
      (1 - ((2 * s - 1) * fractionalMellin s +
        s * (s - 1) * deriv fractionalMellin s)) s := by
  have hp : HasDerivAt (fun z : ℂ => z * (z - 1)) (2 * s - 1) s := by
    convert (hasDerivAt_id s).mul ((hasDerivAt_id s).sub_const 1) using 1 <;> ring
  have hm := (fractionalMellin_differentiableAt hs).hasDerivAt
  have hg : HasDerivAt fractionalPoleModel
      (1 - ((2 * s - 1) * fractionalMellin s +
        s * (s - 1) * deriv fractionalMellin s)) s := by
    convert (hasDerivAt_id s).sub (hp.mul hm) using 1 <;>
      simp only [fractionalPoleModel] <;> ring
  apply hg.congr_of_eventuallyEq
  have hnb : {z : ℂ | 0 < z.re} ∈ 𝓝 s :=
    (Complex.continuous_re.isOpen_preimage _ isOpen_Ioi).mem_nhds hs
  filter_upwards [hnb] with z hz using poleNormalized_eq_fractional hz

/-- An explicit whole-region derivative supplier for the normalized-source patch
constructor. B bounds complex modulus, not height alone. -/
theorem poleNormalized_deriv_norm_le {a B : ℝ} {s : ℂ}
    (ha : 0 < a) (hs : 2 * a ≤ s.re) (hB : ‖s‖ ≤ B) :
    ‖deriv poleNormalizedZeta s‖ ≤
      1 + (2 * B + 1) * (1 / a) + B * (B + 1) * (1 / a ^ 2) := by
  have hB0 : 0 ≤ B := (norm_nonneg s).trans hB
  have hs0 : 0 < s.re := (by linarith : 0 < 2 * a).trans_le hs
  have hM := fractionalMellin_norm_le ha (by linarith : a ≤ s.re)
  have hdM := fractionalMellin_deriv_norm_le ha hs
  have hsub : ‖s - 1‖ ≤ B + 1 := by
    calc
      ‖s - 1‖ ≤ ‖s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ ≤ B + 1 := by simpa only [norm_one] using add_le_add_right hB 1
  have htwo : ‖2 * s - 1‖ ≤ 2 * B + 1 := by
    calc
      ‖2 * s - 1‖ ≤ ‖(2 : ℂ) * s‖ + ‖(1 : ℂ)‖ := norm_sub_le _ _
      _ = 2 * ‖s‖ + 1 := by norm_num [norm_mul]
      _ ≤ 2 * B + 1 := by linarith
  rw [(poleNormalized_hasDerivAt_mellin hs0).deriv]
  calc
    _ ≤ ‖(1 : ℂ)‖ + ‖(2 * s - 1) * fractionalMellin s +
        s * (s - 1) * deriv fractionalMellin s‖ := norm_sub_le _ _
    _ ≤ 1 + (‖(2 * s - 1) * fractionalMellin s‖ +
        ‖s * (s - 1) * deriv fractionalMellin s‖) := by
      simpa only [norm_one] using add_le_add_left (norm_add_le _ _) (1 : ℝ)
    _ ≤ 1 + ((2 * B + 1) * (1 / a) + B * (B + 1) * (1 / a ^ 2)) := by
      simp only [norm_mul]
      apply add_le_add_left
      apply add_le_add
      · exact mul_le_mul htwo hM (norm_nonneg _) (by positivity)
      · exact mul_le_mul
          (mul_le_mul hB hsub (norm_nonneg _) hB0) hdM
          (norm_nonneg _) (mul_nonneg hB0 (by positivity))
    _ = _ := by ring

/-- Even convergent approximants cannot produce a strict source lower margin at an
actual zero. This is a mathematical hostile control, not a test-vector heuristic. -/
theorem no_strict_sample_margin_at_zero {F : ℂ → ℂ} {s a : ℂ} {ε : ℝ}
    (hz : F s = 0) (henclosure : ‖F s - a‖ ≤ ε) : ¬ ε < ‖a‖ := by
  rw [hz, zero_sub, norm_neg] at henclosure
  exact not_lt_of_ge henclosure

end

end GRWTSK.RiemannHypothesis.CriticalStripHeightDescent
