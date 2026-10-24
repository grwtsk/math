# Complete source: GRWTSK.Analysis.LaplaceTransform.PolynomialEnergyHolomorphy

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b13f477235c1eaaf98659cadaab90ca581a499fc` · SHA-256 `9231c577ddca9727b55979be4acc9e1f3dfcf2d599d4fa124f798090200bc20c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Probability.Moments.ComplexMGF
import GRWTSK.Analysis.Complex.PositiveHalfPlane

noncomputable section
open MeasureTheory Set Filter
open scoped Topology
set_option maxHeartbeats 400000
namespace EulerP04RH.LaplaceEnergy

/-- A polynomial cumulative square-energy bound on a literal real source. -/
def L2Growth (w : ℝ → ℝ) (C q : ℝ) : Prop :=
  ∀ T : ℝ, 0 ≤ T → (∫ u in Icc 0 T, w u ^ 2) ≤ C * (1 + T) ^ q

theorem abs_le_one_add_square (x : ℝ) : |x| ≤ 1 + x ^ 2 := by
  apply abs_le.mpr
  constructor <;> nlinarith [sq_nonneg (x - 1 / 2), sq_nonneg (x + 1 / 2)]

theorem summable_successor_power_exp (k : ℕ) {σ : ℝ} (hσ : 0 < σ) :
    Summable (fun n : ℕ => ((n : ℝ) + 1) ^ k * Real.exp (-σ * n)) := by
  have h := (Real.summable_pow_mul_exp_neg_nat_mul k hσ).comp_injective Nat.succ_injective
  have hs := h.mul_left (Real.exp σ)
  apply hs.congr
  intro n
  simp only [Function.comp_apply, Nat.cast_succ]
  calc
    Real.exp σ * (((n : ℝ) + 1) ^ k * Real.exp (-σ * ((n : ℝ) + 1))) =
        ((n : ℝ) + 1) ^ k * Real.exp (σ + (-σ * ((n : ℝ) + 1))) := by
          rw [Real.exp_add]
          ring
    _ = _ := by congr 2; ring

theorem summable_unit_majorant {C q σ : ℝ} (hC : 0 ≤ C) (hσ : 0 < σ) :
    Summable (fun n : ℕ => Real.exp (-σ * n) * (1 + C * (2 + n) ^ q)) := by
  let k : ℕ := ⌈q⌉₊
  have hqk : q ≤ (k : ℝ) := Nat.le_ceil q
  have hpow (n : ℕ) : (2 + (n : ℝ)) ^ q ≤ (2 : ℝ) ^ k * ((n : ℝ) + 1) ^ k := by
    calc
      (2 + (n : ℝ)) ^ q ≤ (2 + (n : ℝ)) ^ (k : ℝ) :=
        Real.rpow_le_rpow_of_exponent_le (by linarith [show (0 : ℝ) ≤ (n : ℝ) from Nat.cast_nonneg n]) hqk
      _ = (2 + (n : ℝ)) ^ k := Real.rpow_natCast _ _
      _ ≤ (2 * ((n : ℝ) + 1)) ^ k := by
        gcongr
        linarith [show (0 : ℝ) ≤ (n : ℝ) from Nat.cast_nonneg n]
      _ = _ := mul_pow _ _ _
  have he : Summable (fun n : ℕ => Real.exp (-σ * n)) := by
    simpa only [mul_comm] using
      (Real.summable_exp_nat_mul_iff (a := -σ)).mpr (by linarith)
  have hp := (summable_successor_power_exp k hσ).mul_left (C * 2 ^ k)
  apply (he.add hp).of_nonneg_of_le (fun n => by positivity)
  intro n
  calc
    Real.exp (-σ * n) * (1 + C * (2 + n) ^ q) ≤
      Real.exp (-σ * n) * (1 + C * (2 ^ k * ((n : ℝ) + 1) ^ k)) :=
        mul_le_mul_of_nonneg_left
          (add_le_add_right (mul_le_mul_of_nonneg_left (hpow n) hC) 1)
          (Real.exp_pos _).le
    _ = _ := by ring

/-- Unit-interval weighted mass is controlled solely by the cumulative L² budget. -/
theorem weighted_unit_integral_bound (w : ℝ → ℝ) (hw : Continuous w)
    {C q σ : ℝ} (hσ : 0 < σ) (hgrowth : L2Growth w C q) (n : ℕ) :
    (∫ u in Icc (n : ℝ) ((n : ℝ) + 1),
      ‖Real.exp (-σ * u) * (1 + w u ^ 2)‖) ≤
      Real.exp (-σ * n) * (1 + C * (2 + n) ^ q) := by
  have hi : IntegrableOn (fun u => Real.exp (-σ * u) * (1 + w u ^ 2))
      (Icc (n : ℝ) ((n : ℝ) + 1)) := by
    exact ((continuous_const.mul continuous_id).rexp.mul
      (continuous_const.add (hw.pow 2))).integrableOn_Icc
  have hg : IntegrableOn (fun u => Real.exp (-σ * (n : ℝ)) * (1 + w u ^ 2))
      (Icc (n : ℝ) ((n : ℝ) + 1)) :=
    (continuous_const.mul (continuous_const.add (hw.pow 2))).integrableOn_Icc
  have hsq : IntegrableOn (fun u => w u ^ 2) (Icc 0 ((n : ℝ) + 1)) :=
    (hw.pow 2).integrableOn_Icc
  have hsqunit : IntegrableOn (fun u => w u ^ 2) (Icc (n : ℝ) ((n : ℝ) + 1)) :=
    (hw.pow 2).integrableOn_Icc
  have hsubset : Icc (n : ℝ) ((n : ℝ) + 1) ⊆ Icc 0 ((n : ℝ) + 1) := by
    intro u hu
    exact ⟨(Nat.cast_nonneg n).trans hu.1, hu.2⟩
  have hmass : (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), w u ^ 2) ≤
      C * (2 + n) ^ q := by
    calc
      _ ≤ ∫ u in Icc 0 ((n : ℝ) + 1), w u ^ 2 :=
        setIntegral_mono_set hsq (Eventually.of_forall (fun u => sq_nonneg (w u)))
          (Eventually.of_forall hsubset)
      _ ≤ _ := by
        simpa only [show (1 : ℝ) + (n + 1) = 2 + n by ring] using
          hgrowth ((n : ℝ) + 1) (by positivity)
  have hnorm : (fun u : ℝ => ‖Real.exp (-σ * u) * (1 + w u ^ 2)‖) =
      fun u => Real.exp (-σ * u) * (1 + w u ^ 2) := by
    funext u
    apply Real.norm_of_nonneg
    positivity
  rw [hnorm]
  calc
    _ ≤ ∫ u in Icc (n : ℝ) ((n : ℝ) + 1),
        Real.exp (-σ * (n : ℝ)) * (1 + w u ^ 2) := by
      apply setIntegral_mono_on hi hg measurableSet_Icc
      intro u hu
      apply mul_le_mul_of_nonneg_right _ (by positivity)
      apply Real.exp_le_exp.mpr
      exact mul_le_mul_of_nonpos_left hu.1 (by linarith)
    _ = Real.exp (-σ * n) *
        (1 + (∫ u in Icc (n : ℝ) ((n : ℝ) + 1), w u ^ 2)) := by
      rw [integral_const_mul,
        integral_add (f := fun _ : ℝ => (1 : ℝ)) (g := fun u : ℝ => w u ^ 2)
          (continuous_const.integrableOn_Icc) hsqunit,
        setIntegral_const, Real.volume_real_Icc_of_le (by linarith)]
      simp
    _ ≤ _ := mul_le_mul_of_nonneg_left (add_le_add_right hmass 1) (Real.exp_pos _).le

theorem weighted_majorant_integrable (w : ℝ → ℝ) (hw : Continuous w)
    {C q σ : ℝ} (hC : 0 ≤ C) (hσ : 0 < σ) (hgrowth : L2Growth w C q) :
    IntegrableOn (fun u => Real.exp (-σ * u) * (1 + w u ^ 2)) (Ioi 0) := by
  have hunit : ∀ n : ℕ, IntegrableOn (fun u => Real.exp (-σ * u) * (1 + w u ^ 2))
      (Icc (n : ℝ) ((n : ℝ) + 1)) := by
    intro n
    exact ((continuous_const.mul continuous_id).rexp.mul
      (continuous_const.add (hw.pow 2))).integrableOn_Icc
  have hs := (summable_unit_majorant hC hσ).of_nonneg_of_le
    (fun n => integral_nonneg (fun u => norm_nonneg _))
    (weighted_unit_integral_bound w hw hσ hgrowth)
  have hu := integrableOn_iUnion_of_summable_integral_norm hunit hs
  apply hu.mono_set
  intro u hu0
  refine mem_iUnion.mpr ⟨⌊u⌋₊, ?_⟩
  exact ⟨Nat.floor_le hu0.le, (Nat.lt_floor_add_one u).le⟩


/-- Positive part is used only after the signed source has been assembled. -/
def positiveDensity (w : ℝ → ℝ) (u : ℝ) : ENNReal := ENNReal.ofReal (max (w u) 0)
def sourcePositiveMeasure (w : ℝ → ℝ) : Measure ℝ :=
  (volume.restrict (Ioi 0)).withDensity (positiveDensity w)

def signedLaplace (w : ℝ → ℝ) (z : ℂ) : ℂ :=
  ∫ (u : ℝ) in Ioi 0, Complex.exp (-z * (u : ℂ)) * (w u : ℂ)

theorem positiveDensity_measurable {w : ℝ → ℝ} (hw : Continuous w) :
    Measurable (positiveDensity w) :=
  (hw.max continuous_const).measurable.ennreal_ofReal

theorem weighted_positive_integrable (w : ℝ → ℝ) (hw : Continuous w)
    {C q σ : ℝ} (hC : 0 ≤ C) (hσ : 0 < σ) (hgrowth : L2Growth w C q) :
    IntegrableOn (fun u => max (w u) 0 * Real.exp (-σ * u)) (Ioi 0) := by
  apply (weighted_majorant_integrable w hw hC hσ hgrowth).mono'
    (((hw.max continuous_const).mul
      (continuous_const.mul continuous_id).rexp).aestronglyMeasurable)
  filter_upwards [] with u
  change ‖max (w u) 0 * Real.exp (-σ * u)‖ ≤
    Real.exp (-σ * u) * (1 + w u ^ 2)
  rw [Real.norm_of_nonneg (mul_nonneg (le_max_right _ _) (Real.exp_pos _).le)]
  have hp : max (w u) 0 ≤ |w u| := max_le (le_abs_self _) (abs_nonneg _)
  have h := hp.trans (abs_le_one_add_square (w u))
  calc
    _ ≤ (1 + w u ^ 2) * Real.exp (-σ * u) :=
      mul_le_mul_of_nonneg_right h (Real.exp_pos _).le
    _ = _ := mul_comm _ _

theorem positiveMeasure_exp_integrable (w : ℝ → ℝ) (hw : Continuous w)
    {C q σ : ℝ} (hC : 0 ≤ C) (hσ : 0 < σ) (hgrowth : L2Growth w C q) :
    Integrable (fun u => Real.exp (-σ * u)) (sourcePositiveMeasure w) := by
  change Integrable (fun u => Real.exp (-σ * u))
    ((volume.restrict (Ioi (0 : ℝ))).withDensity (positiveDensity w))
  have hmeas : AEMeasurable (positiveDensity w) (volume.restrict (Ioi (0 : ℝ))) :=
    (positiveDensity_measurable hw).aemeasurable
  have hfinite : ∀ᵐ u ∂volume.restrict (Ioi (0 : ℝ)), positiveDensity w u < ⊤ :=
    Eventually.of_forall (fun _ => ENNReal.ofReal_lt_top)
  apply (integrable_withDensity_iff_integrable_smul₀' hmeas hfinite).2
  simpa only [positiveDensity, ENNReal.toReal_ofReal (le_max_right _ _), smul_eq_mul, IntegrableOn] using
    weighted_positive_integrable w hw hC hσ hgrowth

theorem positiveMeasure_negative_expSet (w : ℝ → ℝ) (hw : Continuous w)
    {C q : ℝ} (hC : 0 ≤ C) (hgrowth : L2Growth w C q) :
    Iio 0 ⊆ ProbabilityTheory.integrableExpSet id (sourcePositiveMeasure w) := by
  intro t ht
  change t < 0 at ht
  change Integrable (fun u => Real.exp (t * u)) (sourcePositiveMeasure w)
  have h := positiveMeasure_exp_integrable w hw hC (show 0 < -t by linarith) hgrowth
  simpa only [neg_neg, id_eq] using h

theorem positiveLaplace_analytic (w : ℝ → ℝ) (hw : Continuous w)
    {C q : ℝ} (hC : 0 ≤ C) (hgrowth : L2Growth w C q) :
    AnalyticOnNhd ℂ
      (fun z => ProbabilityTheory.complexMGF id (sourcePositiveMeasure w) (-z))
      RHTerminal.PositiveHalfPlane := by
  intro z hz
  change 0 < z.re at hz
  have hsubset := interior_mono (positiveMeasure_negative_expSet w hw hC hgrowth)
  have hzneg : (-z).re ∈ interior
      (ProbabilityTheory.integrableExpSet id (sourcePositiveMeasure w)) := by
    apply hsubset
    simpa only [interior_Iio, Complex.neg_re, mem_Iio] using (show -z.re < 0 by linarith)
  exact (ProbabilityTheory.analyticAt_complexMGF hzneg).comp
    (analyticAt_id.neg)

theorem positiveLaplace_eq (w : ℝ → ℝ) (hw : Continuous w) (z : ℂ) :
    ProbabilityTheory.complexMGF id (sourcePositiveMeasure w) (-z) =
      ∫ (u : ℝ) in Ioi 0, Complex.exp (-z * (u : ℂ)) * ((max (w u) 0 : ℝ) : ℂ) := by
  rw [ProbabilityTheory.complexMGF, sourcePositiveMeasure,
    integral_withDensity_eq_integral_toReal_smul
      (positiveDensity_measurable hw) (Eventually.of_forall
        (fun u => ENNReal.ofReal_lt_top))]
  apply integral_congr_ae
  filter_upwards [] with u
  simp only [positiveDensity, ENNReal.toReal_ofReal (le_max_right _ _), id_eq,
    RCLike.real_smul_eq_coe_mul]
  exact mul_comm _ _

theorem complex_weighted_positive_integrable (w : ℝ → ℝ) (hw : Continuous w)
    {C q : ℝ} (hC : 0 ≤ C) (hgrowth : L2Growth w C q)
    {z : ℂ} (hz : 0 < z.re) :
    IntegrableOn (fun (u : ℝ) => Complex.exp (-z * (u : ℂ)) * ((max (w u) 0 : ℝ) : ℂ)) (Ioi 0) := by
  have h := weighted_positive_integrable w hw hC hz hgrowth
  apply Integrable.mono' h
    (((continuous_const.mul Complex.continuous_ofReal).cexp.mul
      (Complex.continuous_ofReal.comp (hw.max continuous_const))).aestronglyMeasurable)
  filter_upwards [] with u
  change ‖Complex.exp (-z * (u : ℂ)) * ((max (w u) 0 : ℝ) : ℂ)‖ ≤
    max (w u) 0 * Real.exp (-z.re * u)
  rw [norm_mul, Complex.norm_exp, Complex.norm_real, Real.norm_of_nonneg (le_max_right _ _)]
  simp only [Complex.mul_re, Complex.neg_re, Complex.neg_im, Complex.ofReal_re,
    Complex.ofReal_im, mul_zero, sub_zero]
  rw [mul_comm]

theorem neg_L2Growth {w : ℝ → ℝ} {C q : ℝ} (h : L2Growth w C q) :
    L2Growth (fun u => -w u) C q := by
  simpa only [L2Growth, neg_sq] using h

theorem signedLaplace_eq_difference (w : ℝ → ℝ) (hw : Continuous w)
    {C q : ℝ} (hC : 0 ≤ C) (hgrowth : L2Growth w C q)
    {z : ℂ} (hz : 0 < z.re) :
    signedLaplace w z =
      ProbabilityTheory.complexMGF id (sourcePositiveMeasure w) (-z) -
      ProbabilityTheory.complexMGF id (sourcePositiveMeasure (fun u => -w u)) (-z) := by
  rw [positiveLaplace_eq w hw, positiveLaplace_eq (fun u => -w u) hw.neg]
  rw [← integral_sub
    (complex_weighted_positive_integrable w hw hC hgrowth hz)
    (complex_weighted_positive_integrable (fun u => -w u) hw.neg hC
      (neg_L2Growth hgrowth) hz)]
  apply integral_congr_ae
  filter_upwards [] with u
  have hparts : max (w u) 0 - max (-w u) 0 = w u := by
    by_cases hwu : 0 ≤ w u
    · rw [max_eq_left hwu, max_eq_right (by linarith)]
      ring
    · rw [max_eq_right (by linarith), max_eq_left (by linarith)]
      ring
  change Complex.exp (-z * (u : ℂ)) * (w u : ℂ) = _
  rw [← mul_sub, ← Complex.ofReal_sub, hparts]

theorem signedLaplace_analytic (w : ℝ → ℝ) (hw : Continuous w)
    {C q : ℝ} (hC : 0 ≤ C) (hgrowth : L2Growth w C q) :
    AnalyticOnNhd ℂ (signedLaplace w) RHTerminal.PositiveHalfPlane := by
  have hdiff := (positiveLaplace_analytic w hw hC hgrowth).sub
    (positiveLaplace_analytic (fun u => -w u) hw.neg hC (neg_L2Growth hgrowth))
  apply hdiff.congr (isOpen_lt continuous_const Complex.continuous_re)
  intro z hz
  exact (signedLaplace_eq_difference w hw hC hgrowth hz).symm


end EulerP04RH.LaplaceEnergy
```
