import SourceActualRieszCenteredReconstruction
import Mathlib.NumberTheory.LSeries.Dirichlet
import Mathlib.MeasureTheory.Integral.DominatedConvergence
import Mathlib.MeasureTheory.Integral.IntegralEqImproper
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-!
The actual closed Mangoldt ramps are integrated only in the initial Laplace
half-plane. Genuine single-ramp L1 and improper boundaries precede infinite
summation. No critical-domain integral or signed arithmetic cap is asserted.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/
set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceActualRieszInitialLaplace
open Set Filter MeasureTheory Complex
open scoped Topology BigOperators
open SourceActualRieszCenteredReconstruction SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.PrimePowerDescent

private def realRampAntiderivative (σ a t : ℝ) : ℝ :=
  -Real.exp (-σ * t) * ((t - a) / σ + 1 / σ^2)

private theorem realRampAntiderivative_hasDerivAt {σ : ℝ} (hσ : σ ≠ 0) (a t : ℝ) :
    HasDerivAt (realRampAntiderivative σ a)
      ((t - a) * Real.exp (-σ * t)) t := by
  have h := (((hasDerivAt_id t).const_mul (-σ)).exp.neg).mul
    ((((hasDerivAt_id t).sub_const a).div_const σ).add_const (1 / σ^2))
  convert! h using 1
  dsimp [realRampAntiderivative]
  field_simp [hσ]
  ring

private theorem realRampAntiderivative_tendsto {σ : ℝ} (hσ : 0 < σ) (a : ℝ) :
    Tendsto (realRampAntiderivative σ a) atTop (𝓝 0) := by
  have h0 := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (0 : ℝ) σ hσ
  simp only [Real.rpow_zero, one_mul] at h0
  have h1 := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (1 : ℝ) σ hσ
  simp only [Real.rpow_one] at h1
  have h := (((h1.sub (h0.const_mul a)).div_const σ).add
    (h0.div_const (σ^2))).neg
  convert! h using 1
  · ext t
    dsimp [realRampAntiderivative]
    ring
  · simp

private theorem realRamp_tail_integrable {σ : ℝ} (hσ : 0 < σ) (a : ℝ) :
    IntegrableOn (fun t : ℝ => (t - a) * Real.exp (-σ * t)) (Ioi a) := by
  apply integrableOn_Ioi_deriv_of_nonneg
    (realRampAntiderivative_hasDerivAt hσ.ne' a a).continuousAt.continuousWithinAt
    (fun t _ => realRampAntiderivative_hasDerivAt hσ.ne' a t)
    (fun t ht => mul_nonneg (sub_nonneg.mpr ht.le) (Real.exp_pos _).le)
    (realRampAntiderivative_tendsto hσ a)

private theorem realRamp_tail_integral {σ : ℝ} (hσ : 0 < σ) (a : ℝ) :
    (∫ t in Ioi a, (t - a) * Real.exp (-σ * t)) = Real.exp (-σ * a) / σ^2 := by
  rw [integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun t _ => realRampAntiderivative_hasDerivAt hσ.ne' a t)
    (realRamp_tail_integrable hσ a) (realRampAntiderivative_tendsto hσ a)]
  simp [realRampAntiderivative, div_eq_mul_inv]

private theorem zeroOn_lower_integrable {E : Type*} [NormedAddCommGroup E]
    [NormedSpace ℝ E] {f : ℝ → E} {a : ℝ} (hf : ∀ t ∈ Ioc (0 : ℝ) a, f t = 0) :
    IntegrableOn f (Ioc (0 : ℝ) a) := by
  exact (integrableOn_zero : IntegrableOn (fun _ : ℝ => (0 : E)) (Ioc (0 : ℝ) a)).congr_fun
    (fun t ht => (hf t ht).symm) measurableSet_Ioc

private theorem realRamp_integrable {σ a : ℝ} (hσ : 0 < σ) (ha : 0 ≤ a) :
    IntegrableOn (fun t : ℝ => max 0 (t - a) * Real.exp (-σ * t)) (Ioi 0) := by
  have hi : IntegrableOn (fun t : ℝ => max 0 (t - a) * Real.exp (-σ * t))
      (Ioi a) := (realRamp_tail_integrable hσ a).congr_fun
    (fun t ht => by dsimp only; rw [max_eq_right (sub_nonneg.mpr ht.le)]) measurableSet_Ioi
  have hlo := zeroOn_lower_integrable (f := fun t : ℝ =>
    max 0 (t - a) * Real.exp (-σ * t)) (fun t ht => by
      rw [max_eq_left (sub_nonpos.mpr ht.2), zero_mul])
  simpa only [Ioc_union_Ioi_eq_Ioi ha] using hlo.union hi

private theorem realRamp_integral {σ a : ℝ} (hσ : 0 < σ) (ha : 0 ≤ a) :
    (∫ t in Ioi 0, max 0 (t - a) * Real.exp (-σ * t)) = Real.exp (-σ * a) / σ^2 := by
  have hi := realRamp_integrable hσ ha
  have hia := hi.mono_set (Ioi_subset_Ioi ha)
  rw [← intervalIntegral.integral_interval_add_Ioi hi hia]
  have hlo : (∫ t in (0 : ℝ)..a, max 0 (t - a) * Real.exp (-σ * t)) = 0 := by
    apply intervalIntegral.integral_zero_ae
    filter_upwards with t
    intro ht
    rw [uIoc_of_le ha] at ht
    rw [max_eq_left (sub_nonpos.mpr ht.2), zero_mul]
  rw [hlo, zero_add]
  rw [← realRamp_tail_integral hσ a]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro t ht
  dsimp only
  rw [max_eq_right (sub_nonneg.mpr ht.le)]

private theorem complexRamp_norm (z : ℂ) (a t : ℝ) :
    ‖((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))‖ =
      max 0 (t - a) * Real.exp (-z.re * t) := by
  rw [norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (le_max_left _ _),
    Complex.norm_exp]
  congr 2
  simp

/-- The literal max ramp has genuine complex L1, including its zero lower segment. -/
theorem actualSingleRieszRamp_integrable {z : ℂ} (hz : 0 < z.re) {a : ℝ} (ha : 0 ≤ a) :
    IntegrableOn (fun t : ℝ => ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ)))
      (Ioi 0) := by
  apply (realRamp_integrable hz ha).mono'
    (by fun_prop : AEStronglyMeasurable
      (fun t : ℝ => ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ)))
      (volume.restrict (Ioi (0 : ℝ))))
  exact Eventually.of_forall (fun t => (complexRamp_norm z a t).le)

/-- Its exact absolute integral supplies the sum-integral norm budget. -/
theorem actualSingleRieszRamp_integral_norm {z : ℂ} (hz : 0 < z.re) {a : ℝ} (ha : 0 ≤ a) :
    (∫ t in Ioi 0, ‖((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))‖) =
      Real.exp (-z.re * a) / z.re^2 := by
  simp_rw [complexRamp_norm]
  exact realRamp_integral hz ha

private def complexRampAntiderivative (z : ℂ) (a t : ℝ) : ℂ :=
  -Complex.exp (-z * (t : ℂ)) * (((t - a : ℝ) : ℂ) / z + 1 / z^2)

private theorem complexRampAntiderivative_hasDerivAt {z : ℂ} (hz : z ≠ 0) (a t : ℝ) :
    HasDerivAt (complexRampAntiderivative z a)
      (((t - a : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) t := by
  have hx : HasDerivAt (fun t : ℝ => (t : ℂ)) 1 t := (hasDerivAt_id t).ofReal_comp
  have h := ((hx.const_mul (-z)).cexp.neg).mul
    (((hx.sub_const (a : ℂ)).div_const z).add_const (1 / z^2))
  convert! h using 1
  · ext u
    simp only [complexRampAntiderivative, Pi.mul_apply, Pi.neg_apply]
    push_cast
    ring
  · simp only [Pi.neg_apply]
    push_cast
    field_simp [hz]
    ring

private theorem complex_exp_monomial_zero {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    Tendsto (fun t : ℝ => (t : ℂ)^n * Complex.exp (-z * (t : ℂ))) atTop (𝓝 0) := by
  apply tendsto_zero_iff_norm_tendsto_zero.mpr
  have h := tendsto_rpow_mul_exp_neg_mul_atTop_nhds_zero (n : ℝ) z.re hz
  have he : (fun t : ℝ => ‖(t : ℂ)^n * Complex.exp (-z * (t : ℂ))‖) =ᶠ[atTop]
      fun t : ℝ => t^(n : ℝ) * Real.exp (-z.re * t) := by
    filter_upwards [eventually_ge_atTop (0 : ℝ)] with t ht
    simp only [norm_mul, norm_pow, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg ht, Complex.norm_exp]
    rw [Real.rpow_natCast]
    congr 2
    simp
  exact h.congr' he.symm

private theorem complexRampAntiderivative_tendsto {z : ℂ} (hz : 0 < z.re) (a : ℝ) :
    Tendsto (complexRampAntiderivative z a) atTop (𝓝 0) := by
  have h0 := complex_exp_monomial_zero hz 0
  have h1 := complex_exp_monomial_zero hz 1
  have h := (((h1.sub (h0.const_mul (a : ℂ))).div_const z).add
    (h0.div_const (z^2))).neg
  convert! h using 1
  · ext t
    dsimp [complexRampAntiderivative]
    push_cast
    ring
  · simp

/-- The genuine single closed ramp has its exact initial improper transform. -/
theorem actualSingleRieszRamp_integral {z : ℂ} (hz : 0 < z.re) {a : ℝ} (ha : 0 ≤ a) :
    (∫ t in Ioi 0, ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) =
      Complex.exp (-z * (a : ℂ)) / z^2 := by
  have hzn : z ≠ 0 := by intro h; simp [h] at hz
  have hi := actualSingleRieszRamp_integrable hz ha
  have hia := hi.mono_set (Ioi_subset_Ioi ha)
  have htail : IntegrableOn
      (fun t : ℝ => ((t - a : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) (Ioi a) := by
    apply hia.congr_fun _ measurableSet_Ioi
    intro t ht
    dsimp only
    rw [max_eq_right (sub_nonneg.mpr ht.le)]
  have he := integral_Ioi_of_hasDerivAt_of_tendsto'
    (fun t _ => complexRampAntiderivative_hasDerivAt hzn a t) htail
    (complexRampAntiderivative_tendsto hz a)
  rw [← intervalIntegral.integral_interval_add_Ioi hi hia]
  have hlo : (∫ t in (0 : ℝ)..a,
      ((max (0 : ℝ) (t - a) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) = 0 := by
    apply intervalIntegral.integral_zero_ae
    filter_upwards with t
    intro ht
    rw [uIoc_of_le ha] at ht
    rw [max_eq_left (sub_nonpos.mpr ht.2), Complex.ofReal_zero, zero_mul]
  rw [hlo, zero_add]
  calc
    _ = ∫ t in Ioi a, ((t - a : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ)) := by
      apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      dsimp only
      rw [max_eq_right (sub_nonneg.mpr ht.le)]
    _ = _ := by rw [he]; simp [complexRampAntiderivative, div_eq_mul_inv]

/-- Independently literal closed Mangoldt Laplace atom, including the zero/unit cases. -/
def actualRieszLaplaceAtom (z : ℂ) (n : ℕ) (t : ℝ) : ℂ :=
  ((ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
    max 0 (t - Real.log n) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))

/-- The whole initial transform is defined by the actual primitive integral. -/
def actualMangoldtRieszLaplace (z : ℂ) : ℂ :=
  ∫ t in Ioi (0 : ℝ), (actualMangoldtRieszPrimitive t : ℂ) *
    Complex.exp (-z * (t : ℂ))

private theorem atom_factor (z : ℂ) (n : ℕ) (t : ℝ) :
    actualRieszLaplaceAtom z n t =
      ((ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) : ℝ) : ℂ) *
        (((max (0 : ℝ) (t - Real.log n) : ℝ) : ℂ) * Complex.exp (-z * (t : ℂ))) := by
  unfold actualRieszLaplaceAtom
  push_cast
  ring

/-- Every actual atom is genuinely integrable in its initial domain. -/
theorem actualRieszLaplaceAtom_integrable {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    IntegrableOn (actualRieszLaplaceAtom z n) (Ioi 0) := by
  by_cases hn : n = 0
  · subst n
    have he : actualRieszLaplaceAtom z 0 = fun _ : ℝ => (0 : ℂ) := by
      ext t
      simp [actualRieszLaplaceAtom]
    rw [he]
    exact integrableOn_zero
  · have ha : 0 ≤ Real.log (n : ℝ) :=
      Real.log_nonneg (by exact_mod_cast Nat.one_le_iff_ne_zero.mpr hn)
    have he : actualRieszLaplaceAtom z n = fun t : ℝ =>
        ((ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) : ℝ) : ℂ) *
          (((max (0 : ℝ) (t - Real.log n) : ℝ) : ℂ) *
            Complex.exp (-z * (t : ℂ))) := funext (atom_factor z n)
    rw [he]
    exact (actualSingleRieszRamp_integrable hz ha).const_mul _

/-- The exact per-atom norm integral retains the critical half weight. -/
theorem actualRieszLaplaceAtom_integral_norm {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    (∫ t in Ioi 0, ‖actualRieszLaplaceAtom z n t‖) =
      ‖LSeries.term (fun n => (ArithmeticFunction.vonMangoldt n : ℂ))
        ((z.re + 1 / 2 : ℝ) : ℂ) n‖ / z.re^2 := by
  by_cases hn : n = 0
  · subst n
    simp [actualRieszLaplaceAtom]
  · have hn0 : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
    have ha : 0 ≤ Real.log (n : ℝ) :=
      Real.log_nonneg (by exact_mod_cast Nat.one_le_iff_ne_zero.mpr hn)
    have hcoef : 0 ≤ ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) :=
      div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Real.sqrt_nonneg _)
    have hnorm (t : ℝ) : ‖actualRieszLaplaceAtom z n t‖ =
        (ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ)) *
          ‖((max (0 : ℝ) (t - Real.log n) : ℝ) : ℂ) *
            Complex.exp (-z * (t : ℂ))‖ := by
      rw [atom_factor, norm_mul, Complex.norm_real, Real.norm_eq_abs,
        abs_of_nonneg hcoef]
    simp_rw [hnorm]
    rw [integral_const_mul, actualSingleRieszRamp_integral_norm hz ha,
      LSeries.term_def₀ (by simp)]
    rw [norm_mul, Complex.norm_real, Real.norm_eq_abs,
      abs_of_nonneg ArithmeticFunction.vonMangoldt_nonneg,
      Complex.norm_natCast_cpow_of_pos (Nat.pos_of_ne_zero hn)]
    have hsqrt : Real.sqrt (n : ℝ) = Real.exp (Real.log n / 2) := by
      symm
      rw [Real.exp_half, Real.exp_log hn0]
    rw [hsqrt, Real.rpow_def_of_pos hn0]
    simp only [neg_re, Complex.ofReal_re]
    rw [div_eq_mul_inv, ← Real.exp_neg, mul_assoc, ← mul_div_assoc, ← Real.exp_add]
    have he : -(Real.log (n : ℝ) / 2) + -z.re * Real.log n =
        Real.log n * -(z.re + 1 / 2) := by ring
    rw [he, mul_div_assoc]

/-- Genuine Dirichlet summability gives the actual sum-integral norm bound. -/
theorem actualRieszLaplaceAtoms_summable_integral_norm {z : ℂ} (hz : 1 / 2 < z.re) :
    Summable (fun n : ℕ => ∫ t in Ioi 0, ‖actualRieszLaplaceAtom z n t‖) := by
  have hsig : 1 < z.re + 1 / 2 := by linarith
  have hs := ArithmeticFunction.LSeriesSummable_vonMangoldt
    (s := ((z.re + 1 / 2 : ℝ) : ℂ)) (by simpa only [Complex.ofReal_re] using hsig)
  change Summable (LSeries.term (fun n => (ArithmeticFunction.vonMangoldt n : ℂ))
    ((z.re + 1 / 2 : ℝ) : ℂ)) at hs
  simp_rw [actualRieszLaplaceAtom_integral_norm (by linarith : 0 < z.re)]
  exact hs.norm.div_const _

/-- The actual closed inventory is the locally finite sum of every literal atom. -/
theorem actualRieszLaplaceAtoms_tsum (z : ℂ) (t : ℝ) :
    (∑' n : ℕ, actualRieszLaplaceAtom z n t) =
      ((actualMangoldtRieszPrimitive t + actualRieszContinuousRamp t : ℝ) : ℂ) *
        Complex.exp (-z * (t : ℂ)) := by
  classical
  have hzero : ∀ n : ℕ, n ∉ primePowerInventory t → actualRieszLaplaceAtom z n t = 0 := by
    intro n hn
    by_cases hn2 : 2 ≤ n
    · have hn0 : 0 < (n : ℝ) := by exact_mod_cast (by omega : 0 < n)
      have hgt : Nat.floor (Real.exp t) < n := by
        simpa only [primePowerInventory, Finset.mem_Icc, hn2, true_and, not_le] using hn
      have hlog : t < Real.log (n : ℝ) := by
        apply (Real.lt_log_iff_exp_lt hn0).2
        exact (Nat.floor_lt (Real.exp_pos t).le).1 hgt
      simp [actualRieszLaplaceAtom, max_eq_left (by linarith : t - Real.log n ≤ 0)]
    · have hn01 : n = 0 ∨ n = 1 := by omega
      rcases hn01 with rfl | rfl <;> simp [actualRieszLaplaceAtom]
  rw [tsum_eq_sum hzero]
  rw [actualMangoldtRieszPrimitive_eq_fixed_ramps (le_refl t)]
  simp only [sub_add_cancel, Complex.ofReal_sum, Complex.ofReal_mul]
  rw [Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n _
  simpa only [mul_assoc] using atom_factor z n t

private theorem actualRieszPrimitive_continuous : Continuous actualMangoldtRieszPrimitive := by
  apply continuous_iff_continuousAt.mpr
  intro t
  let b := t + 1
  have hc : Continuous (fun r : ℝ =>
      (∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
          max 0 (r - Real.log n)) - actualRieszContinuousRamp r) := by
    unfold actualRieszContinuousRamp
    fun_prop
  have he : actualMangoldtRieszPrimitive =ᶠ[𝓝 t] (fun r : ℝ =>
      (∑ n ∈ primePowerInventory b,
        ArithmeticFunction.vonMangoldt n / Real.sqrt (n : ℝ) *
          max 0 (r - Real.log n)) - actualRieszContinuousRamp r) := by
    filter_upwards [eventually_lt_nhds (by dsimp [b]; linarith : t < b)] with r hr
    exact actualMangoldtRieszPrimitive_eq_fixed_ramps hr.le
  exact hc.continuousAt.congr he.symm

/-- The complete literal atom sum has genuine initial L1, before any integral exchange. -/
theorem actualRieszLaplaceAtoms_tsum_integrable {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ => ∑' n : ℕ, actualRieszLaplaceAtom z n t) (Ioi 0) := by
  have hF (n : ℕ) := actualRieszLaplaceAtom_integrable (by linarith : 0 < z.re) n
  have hsum := actualRieszLaplaceAtoms_summable_integral_norm hz
  have hmeas : AEStronglyMeasurable
      (fun t : ℝ => ∑' n : ℕ, actualRieszLaplaceAtom z n t) (volume.restrict (Ioi 0)) := by
    simp_rw [actualRieszLaplaceAtoms_tsum]
    have hq : Continuous actualRieszContinuousRamp := by
      unfold actualRieszContinuousRamp
      fun_prop
    exact ((Complex.continuous_ofReal.comp
      (actualRieszPrimitive_continuous.add hq)).mul (by fun_prop)).aestronglyMeasurable
  refine ⟨hmeas, ?_⟩
  rw [hasFiniteIntegral_iff_enorm]
  have hint (n : ℕ) :
      ∫⁻ t in Ioi 0, ‖actualRieszLaplaceAtom z n t‖ₑ =
        ENNReal.ofReal (∫ t in Ioi 0, ‖actualRieszLaplaceAtom z n t‖) := by
    dsimp [enorm]
    rw [lintegral_coe_eq_integral _ (hF n).norm]
    simp only [coe_nnnorm]
  have hfinite : (∑' n : ℕ, ∫⁻ t in Ioi 0, ‖actualRieszLaplaceAtom z n t‖ₑ) < ⊤ := by
    simp_rw [hint]
    exact hsum.tsum_ofReal_lt_top
  apply lt_of_le_of_lt _ hfinite
  rw [← lintegral_tsum (fun n => (hF n).aestronglyMeasurable.enorm)]
  apply lintegral_mono
  intro t
  exact enorm_tsum_le_tsum_enorm

/-- The genuine L1 norm budget permits the actual infinite atom integral exchange. -/
theorem actualRieszLaplaceAtoms_integral_tsum {z : ℂ} (hz : 1 / 2 < z.re) :
    (∫ t in Ioi 0, ∑' n : ℕ, actualRieszLaplaceAtom z n t) =
      ∑' n : ℕ, ∫ t in Ioi 0, actualRieszLaplaceAtom z n t := by
  exact (integral_tsum_of_summable_integral_norm
    (fun n => actualRieszLaplaceAtom_integrable (by linarith : 0 < z.re) n)
    (actualRieszLaplaceAtoms_summable_integral_norm hz)).symm

/-- Each genuine actual atom has its exact Dirichlet term as initial transform. -/
theorem actualRieszLaplaceAtom_integral {z : ℂ} (hz : 0 < z.re) (n : ℕ) :
    (∫ t in Ioi 0, actualRieszLaplaceAtom z n t) =
      LSeries.term (fun n => (ArithmeticFunction.vonMangoldt n : ℂ)) (z + 1 / 2) n /
        z^2 := by
  by_cases hn : n = 0
  · subst n
    simp [actualRieszLaplaceAtom]
  · have hn0 : 0 < (n : ℝ) := by exact_mod_cast Nat.pos_of_ne_zero hn
    have ha : 0 ≤ Real.log (n : ℝ) :=
      Real.log_nonneg (by exact_mod_cast Nat.one_le_iff_ne_zero.mpr hn)
    simp_rw [atom_factor]
    rw [integral_const_mul, actualSingleRieszRamp_integral hz ha,
      LSeries.term_def₀ (by simp)]
    have hsqrt : (Real.sqrt (n : ℝ) : ℂ) = Complex.exp ((Real.log n : ℂ) / 2) := by
      rw [← Complex.ofReal_ofNat 2, ← Complex.ofReal_div, ← Complex.ofReal_exp]
      congr 1
      symm
      rw [Real.exp_half, Real.exp_log hn0]
    rw [Complex.ofReal_div, hsqrt, Complex.cpow_def_of_ne_zero (by exact_mod_cast hn),
      ← Complex.natCast_log]
    rw [div_eq_mul_inv, ← Complex.exp_neg, mul_assoc, ← mul_div_assoc, ← Complex.exp_add]
    have he : -((Real.log n : ℂ) / 2) + -z * (Real.log n : ℂ) =
        (Real.log n : ℂ) * -(z + 1 / 2) := by ring
    rw [he, mul_div_assoc]

private theorem continuousRamp_weight_eq (z : ℂ) (t : ℝ) :
    (actualRieszContinuousRamp t : ℂ) * Complex.exp (-z * (t : ℂ)) =
      4 * Complex.exp (-(z - 1 / 2) * (t : ℂ)) -
        4 * Complex.exp (-z * (t : ℂ)) -
        2 * ((t : ℂ) * Complex.exp (-z * (t : ℂ))) := by
  unfold actualRieszContinuousRamp
  push_cast
  have he : (t : ℂ) / 2 + -z * (t : ℂ) = -(z - 1 / 2) * (t : ℂ) := by ring
  rw [← he, Complex.exp_add]
  ring

/-- The full continuous ramp is genuinely L1 only in the stated initial domain. -/
theorem actualRieszContinuousRamp_laplace_integrable {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ => (actualRieszContinuousRamp t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi 0) := by
  have h0 := integrableOn_exp_mul_complex_Ioi (a := -z) (by simp; linarith) 0
  have hh := integrableOn_exp_mul_complex_Ioi (a := -(z - 1 / 2))
    (by simp; linarith) 0
  have ht : IntegrableOn (fun t : ℝ => (t : ℂ) * Complex.exp (-z * (t : ℂ)))
      (Ioi 0) := by
    apply (actualSingleRieszRamp_integrable (by linarith : 0 < z.re)
      (a := 0) le_rfl).congr_fun _ measurableSet_Ioi
    intro t ht
    have htn : 0 ≤ t := (show 0 < t from ht).le
    simp only [sub_zero, max_eq_right htn]
  simp_rw [continuousRamp_weight_eq]
  exact ((hh.const_mul 4).sub (h0.const_mul 4)).sub (ht.const_mul 2)

/-- The continuous ramp keeps its full lower-zero payment in the exact transform. -/
theorem actualRieszContinuousRamp_laplace_integral {z : ℂ} (hz : 1 / 2 < z.re) :
    (∫ t in Ioi 0, (actualRieszContinuousRamp t : ℂ) *
      Complex.exp (-z * (t : ℂ))) = 1 / (z^2 * (z - 1 / 2)) := by
  have h0 := integrableOn_exp_mul_complex_Ioi (a := -z) (by simp; linarith) 0
  have hh := integrableOn_exp_mul_complex_Ioi (a := -(z - 1 / 2))
    (by simp; linarith) 0
  have ht : IntegrableOn (fun t : ℝ => (t : ℂ) * Complex.exp (-z * (t : ℂ)))
      (Ioi 0) := by
    apply (actualSingleRieszRamp_integrable (by linarith : 0 < z.re)
      (a := 0) le_rfl).congr_fun _ measurableSet_Ioi
    intro t ht
    have htn : 0 ≤ t := (show 0 < t from ht).le
    simp only [sub_zero, max_eq_right htn]
  have hti : (∫ t : ℝ in Ioi 0, (t : ℂ) * Complex.exp (-z * (t : ℂ))) = 1 / z^2 := by
    convert! actualSingleRieszRamp_integral (by linarith : 0 < z.re) (a := 0) le_rfl
      using 1
    · apply setIntegral_congr_fun measurableSet_Ioi
      intro t ht
      have htn : 0 ≤ t := (show 0 < t from ht).le
      simp only [sub_zero, max_eq_right htn]
    · simp
  simp_rw [continuousRamp_weight_eq]
  have hsplit1 := integral_sub ((hh.const_mul 4).sub (h0.const_mul 4))
    (ht.const_mul 2)
  have hsplit2 := integral_sub (hh.const_mul 4) (h0.const_mul 4)
  simp only [Pi.sub_apply] at hsplit1 hsplit2
  rw [hsplit1, hsplit2, integral_const_mul, integral_const_mul,
    integral_const_mul, hti, integral_exp_mul_complex_Ioi (by simp; linarith),
    integral_exp_mul_complex_Ioi (by simp; linarith)]
  simp only [Complex.ofReal_zero, mul_zero, Complex.exp_zero]
  have hzn : z ≠ 0 := by intro h; simp [h] at hz
  have hhn : z - 1 / 2 ≠ 0 := by
    intro h
    have := congrArg Complex.re h
    simp at this
    linarith
  field_simp [hzn, hhn]
  ring

private theorem actualH_weight_eq_sum_sub (z : ℂ) (t : ℝ) :
    (actualMangoldtRieszPrimitive t : ℂ) * Complex.exp (-z * (t : ℂ)) =
      (∑' n : ℕ, actualRieszLaplaceAtom z n t) -
        (actualRieszContinuousRamp t : ℂ) * Complex.exp (-z * (t : ℂ)) := by
  rw [actualRieszLaplaceAtoms_tsum]
  push_cast
  ring

/-- The independently defined actual primitive has genuine initial Laplace L1. -/
theorem actualMangoldtRieszLaplace_integrable {z : ℂ} (hz : 1 / 2 < z.re) :
    IntegrableOn (fun t : ℝ => (actualMangoldtRieszPrimitive t : ℂ) *
      Complex.exp (-z * (t : ℂ))) (Ioi 0) := by
  simp_rw [actualH_weight_eq_sum_sub]
  exact (actualRieszLaplaceAtoms_tsum_integrable hz).sub
    (actualRieszContinuousRamp_laplace_integrable hz)

/-- The initial transform keeps the authentic full Dirichlet series and pole payment. -/
theorem actualMangoldtRieszLaplace_eq_LSeries {z : ℂ} (hz : 1 / 2 < z.re) :
    actualMangoldtRieszLaplace z =
      LSeries (fun n => (ArithmeticFunction.vonMangoldt n : ℂ)) (z + 1 / 2) / z^2 -
        1 / (z^2 * (z - 1 / 2)) := by
  unfold actualMangoldtRieszLaplace
  simp_rw [actualH_weight_eq_sum_sub]
  rw [integral_sub (actualRieszLaplaceAtoms_tsum_integrable hz)
      (actualRieszContinuousRamp_laplace_integrable hz),
    actualRieszLaplaceAtoms_integral_tsum hz,
    actualRieszContinuousRamp_laplace_integral hz]
  simp_rw [actualRieszLaplaceAtom_integral (by linarith : 0 < z.re)]
  rw [tsum_div_const]
  rfl

/-- The genuine actual initial H transform is the prescribed zeta logarithmic derivative. -/
theorem actualMangoldtRieszLaplace_eq_logDeriv {z : ℂ} (hz : 1 / 2 < z.re) :
    actualMangoldtRieszLaplace z =
      (-logDeriv riemannZeta (z + 1 / 2) - 1 / (z - 1 / 2)) / z^2 := by
  have hs : 1 < (z + 1 / 2).re := by simp only [add_re]; norm_num; linarith
  rw [actualMangoldtRieszLaplace_eq_LSeries hz,
    ArithmeticFunction.LSeries_vonMangoldt_eq_deriv_riemannZeta_div hs,
    logDeriv_apply]
  simp only [div_eq_mul_inv, mul_inv_rev]
  ring

end FormalResearch.RiemannHypothesis.SourceActualRieszInitialLaplace
