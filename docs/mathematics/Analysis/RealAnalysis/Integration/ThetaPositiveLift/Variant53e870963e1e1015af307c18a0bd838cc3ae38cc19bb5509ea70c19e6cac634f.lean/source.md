# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ThetaPositiveLift.Variant53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `85acd9d7614dc4e41554850f09947393bc166351` · SHA-256 `53e870963e1e1015af307c18a0bd838cc3ae38cc19bb5509ea70c19e6cac634f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.ThetaKernel
import Mathlib.MeasureTheory.Integral.Bochner.Set
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.MeasureTheory.Integral.Prod

/-!
# Positivity of the literal repeated theta tails

All statements use the tails already defined in `ThetaPositiveLift`.
Nonnegativity alone is not a determinant sign theorem.
-/

namespace FormalResearch.RiemannHypothesis.ThetaPositiveLift

open MeasureTheory Set
open scoped Topology

noncomputable section

/-- The moving half-line is a measurable subset of the two-variable parameter space. -/
theorem stronglyMeasurable_thetaTail (q : ℕ) : StronglyMeasurable (thetaTail q) := by
  cases q with
  | zero => exact continuous_thetaPhi.stronglyMeasurable
  | succ q =>
    let F : ℝ × ℝ → ℝ := fun p =>
      thetaPhi p.2 * (p.2 - p.1) ^ q / (q.factorial : ℝ)
    have hF : StronglyMeasurable F :=
      (((continuous_thetaPhi.comp continuous_snd).mul
        ((continuous_snd.sub continuous_fst).pow q)).div_const _).stronglyMeasurable
    have hS : MeasurableSet {p : ℝ × ℝ | p.1 ≤ p.2} :=
      measurableSet_le measurable_fst measurable_snd
    have hi := (hF.indicator hS).integral_prod_right' (ν := volume)
    have he (t : ℝ) :
        (fun u => ({p : ℝ × ℝ | p.1 ≤ p.2}.indicator F) (t, u)) =
          (Ici t).indicator (fun u => thetaPhi u * (u - t) ^ q / (q.factorial : ℝ)) := rfl
    simpa only [he, integral_indicator measurableSet_Ici, thetaTail] using hi

/-- The integrand of every positive-order tail is nonnegative on its actual domain. -/
theorem thetaTail_integrand_nonnegative (q : ℕ) {t u : ℝ}
    (ht : 0 ≤ t) (hu : t ≤ u) :
    0 ≤ thetaPhi u * (u - t) ^ q / (q.factorial : ℝ) := by
  exact div_nonneg (mul_nonneg (thetaPhi_positive u (ht.trans hu)).le
    (pow_nonneg (sub_nonneg.mpr hu) q)) (by positivity)

/-- The original kernel and all its repeated tails are nonnegative on `[0,∞)`.
This order fact alone does not assert integrability or strict positivity. -/
theorem thetaTail_nonnegative (q : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    0 ≤ thetaTail q t := by
  cases q with
  | zero => exact (thetaPhi_positive t ht).le
  | succ q =>
    exact setIntegral_nonneg measurableSet_Ici
      (fun u hu => thetaTail_integrand_nonnegative q ht hu)

/-- A single integrable majorant works for every normalized positive-order tail. -/
theorem thetaTail_integrand_le (q : ℕ) {t u : ℝ}
    (ht : 0 ≤ t) (hu : t ≤ u) :
    thetaPhi u * (u - t) ^ q / (q.factorial : ℝ) ≤
      thetaPhiDecayConstant * Real.exp (-3 * u) := by
  have hu0 := ht.trans hu
  have hC := thetaPhiDecayConstant_positive
  have hp : (u - t) ^ q / (q.factorial : ℝ) ≤ Real.exp u :=
    (Real.pow_div_factorial_le_exp (u - t) (sub_nonneg.mpr hu) q).trans
      (Real.exp_le_exp.mpr (by linarith))
  calc
    _ = thetaPhi u * ((u - t) ^ q / (q.factorial : ℝ)) := by ring
    _ ≤ (thetaPhiDecayConstant * Real.exp (-4 * u)) * Real.exp u :=
      mul_le_mul (thetaPhi_le_exp_neg_four_mul hu0) hp
        (by positivity) (by positivity)
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring

/-- The integral defining every positive-order tail is absolutely integrable. -/
theorem thetaTail_integrable (q : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    IntegrableOn (fun u => thetaPhi u * (u - t) ^ q / (q.factorial : ℝ)) (Ici t) := by
  have hmajor : IntegrableOn (fun u : ℝ => thetaPhiDecayConstant * Real.exp (-3 * u))
      (Ici t) :=
    ((integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
      (integrableOn_exp_mul_Ioi (a := -3) (by norm_num) t)).const_mul _
  apply hmajor.mono'
  · exact ((continuous_thetaPhi.mul ((continuous_id.sub continuous_const).pow q)).div_const
      (q.factorial : ℝ)).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
    rw [Real.norm_of_nonneg (thetaTail_integrand_nonnegative q ht hu)]
    exact thetaTail_integrand_le q ht hu

/-- Strict positivity uses actual integrability and a positive-measure interval. -/
theorem thetaTail_positive (q : ℕ) {t : ℝ} (ht : 0 ≤ t) : 0 < thetaTail q t := by
  cases q with
  | zero => exact thetaPhi_positive t ht
  | succ q =>
    change 0 < ∫ u in Ici t, thetaPhi u * (u - t) ^ q / (q.factorial : ℝ)
    apply (setIntegral_pos_iff_support_of_nonneg_ae ?_ (thetaTail_integrable q ht)).mpr
    · have hpos : (0 : ENNReal) < volume (Ioo (t + 1) (t + 2)) := by simp
      apply hpos.trans_le (measure_mono ?_)
      intro u hu
      have hut : t < u := by have := hu.1; linarith
      refine ⟨?_, hut.le⟩
      exact ne_of_gt (div_pos (mul_pos (thetaPhi_positive u (ht.trans hut.le))
        (pow_pos (sub_pos.mpr hut) q)) (by positivity))
    · filter_upwards [ae_restrict_mem measurableSet_Ici] with u hu
      exact thetaTail_integrand_nonnegative q ht hu

/-- All orders share an explicit exponential tail bound sufficient for polynomial pairings. -/
theorem thetaTail_le_exp_neg_three_mul (q : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail q t ≤ thetaPhiDecayConstant * Real.exp (-3 * t) := by
  have hC := thetaPhiDecayConstant_positive
  cases q with
  | zero =>
    exact (thetaPhi_le_exp_neg_four_mul ht).trans
      (mul_le_mul_of_nonneg_left (Real.exp_le_exp.mpr (by linarith)) hC.le)
  | succ q =>
    have hmajor : IntegrableOn (fun u : ℝ => thetaPhiDecayConstant * Real.exp (-3 * u))
        (Ici t) := ((integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
          (integrableOn_exp_mul_Ioi (a := -3) (by norm_num) t)).const_mul _
    calc
      _ ≤ ∫ u in Ici t, thetaPhiDecayConstant * Real.exp (-3 * u) :=
        setIntegral_mono_on (thetaTail_integrable q ht) hmajor measurableSet_Ici
          (fun u hu => thetaTail_integrand_le q ht hu)
      _ = thetaPhiDecayConstant * (-Real.exp (-3 * t) / (-3)) := by
        rw [integral_const_mul, integral_Ici_eq_integral_Ioi,
          integral_exp_mul_Ioi (by norm_num : (-3 : ℝ) < 0)]
      _ ≤ _ := by nlinarith [Real.exp_pos (-3 * t)]

/-- Every literal repeated tail tends to zero, with convergence justified by its bound. -/
theorem thetaTail_tendsto_atTop (q : ℕ) :
    Filter.Tendsto (thetaTail q) Filter.atTop (𝓝 0) := by
  refine squeeze_zero' (g := fun t => thetaPhiDecayConstant * Real.exp (-3 * t)) ?_ ?_ ?_
  · filter_upwards [Filter.eventually_ge_atTop (0 : ℝ)] with t ht
    exact thetaTail_nonnegative q ht
  · filter_upwards [Filter.eventually_ge_atTop (0 : ℝ)] with t ht
    exact thetaTail_le_exp_neg_three_mul q ht
  · have he : Filter.Tendsto (fun t : ℝ => Real.exp (-3 * t))
        Filter.atTop (𝓝 0) := Real.tendsto_exp_atBot.comp
          (Filter.tendsto_id.const_mul_atTop_of_neg (by norm_num : (-3 : ℝ) < 0))
    simpa using he.const_mul thetaPhiDecayConstant

/-- Every repeated tail is itself absolutely integrable on the nonnegative half-line. -/
theorem thetaTail_integrableOn (q : ℕ) : IntegrableOn (thetaTail q) (Ici (0 : ℝ)) := by
  have hmajor : IntegrableOn (fun t : ℝ => thetaPhiDecayConstant * Real.exp (-3 * t))
      (Ici 0) := ((integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
        (integrableOn_exp_mul_Ioi (a := -3) (by norm_num) 0)).const_mul _
  apply hmajor.mono' (stronglyMeasurable_thetaTail q).aestronglyMeasurable
  filter_upwards [ae_restrict_mem measurableSet_Ici] with t ht
  rw [Real.norm_of_nonneg (thetaTail_nonnegative q ht)]
  exact thetaTail_le_exp_neg_three_mul q ht

/-- Tail/basis products have an explicit integrable majorant for every pair of orders. -/
theorem thetaTail_mul_evenBasis_le (q n : ℕ) {t : ℝ} (ht : 0 ≤ t) :
    thetaTail q t * evenBasis n t ≤ thetaPhiDecayConstant * Real.exp (-t) := by
  have hC := thetaPhiDecayConstant_positive
  calc
    _ ≤ (thetaPhiDecayConstant * Real.exp (-3 * t)) * Real.exp (2 * t) :=
      mul_le_mul (thetaTail_le_exp_neg_three_mul q ht)
        (Real.pow_div_factorial_le_exp (2 * t) (by positivity) (2 * n))
        (evenBasis_nonnegative n t) (by positivity)
    _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring

/-- The literal transport pairing converges absolutely, independently of xi transport. -/
theorem thetaTail_mul_evenBasis_integrable (q n : ℕ) :
    IntegrableOn (fun t => thetaTail q t * evenBasis n t) (Ici (0 : ℝ)) := by
  have hmajor : IntegrableOn (fun t : ℝ => thetaPhiDecayConstant * Real.exp (-t))
      (Ici 0) := ((integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
        (integrableOn_exp_neg_Ioi 0)).const_mul _
  apply hmajor.mono'
  · apply ((stronglyMeasurable_thetaTail q).mul ?_).aestronglyMeasurable
    exact (by unfold evenBasis; fun_prop : Continuous (evenBasis n)).stronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with t ht
    rw [Real.norm_of_nonneg (mul_nonneg (thetaTail_nonnegative q ht)
      (evenBasis_nonnegative n t))]
    exact thetaTail_mul_evenBasis_le q n ht

/-- Every even-basis boundary product vanishes at positive infinity. -/
theorem thetaTail_mul_evenBasis_tendsto_atTop (q n : ℕ) :
    Filter.Tendsto (fun t => thetaTail q t * evenBasis n t) Filter.atTop (𝓝 0) := by
  refine squeeze_zero' (g := fun t => thetaPhiDecayConstant * Real.exp (-t)) ?_ ?_ ?_
  · filter_upwards [Filter.eventually_ge_atTop (0 : ℝ)] with t ht
    exact mul_nonneg (thetaTail_nonnegative q ht) (evenBasis_nonnegative n t)
  · filter_upwards [Filter.eventually_ge_atTop (0 : ℝ)] with t ht
    exact thetaTail_mul_evenBasis_le q n ht
  · simpa using (Real.tendsto_exp_atBot.comp Filter.tendsto_neg_atTop_atBot).const_mul
      thetaPhiDecayConstant

/-- The original kernel is absolutely integrable on every nonnegative tail. -/
theorem thetaPhi_integrableOn {t : ℝ} (ht : 0 ≤ t) : IntegrableOn thetaPhi (Ici t) := by
  simpa using thetaTail_integrable 0 ht

/-- Extending the lower endpoint only adds an integral over a compact interval. -/
theorem thetaPhi_integrableOn_Ici (t : ℝ) : IntegrableOn thetaPhi (Ici t) := by
  by_cases ht : 0 ≤ t
  · exact thetaPhi_integrableOn ht
  · apply ((continuous_thetaPhi.continuousOn.integrableOn_Icc
      (a := t) (b := 0)).union (thetaPhi_integrableOn (le_refl 0))).mono_set
    intro u hu
    by_cases hu0 : 0 ≤ u
    · exact Or.inr hu0
    · exact Or.inl ⟨hu, le_of_not_ge hu0⟩

/-- Every coefficient integral in `ThetaCoefficientFormula` is well defined. -/
theorem thetaPhi_mul_evenBasis_integrable (n : ℕ) :
    IntegrableOn (fun t => thetaPhi t * evenBasis n t) (Ici (0 : ℝ)) := by
  have hC := thetaPhiDecayConstant_positive
  have hmajor : IntegrableOn (fun t : ℝ => thetaPhiDecayConstant * Real.exp (-2 * t))
      (Ici 0) := ((integrableOn_Ici_iff_integrableOn_Ioi (by finiteness)).mpr
        (integrableOn_exp_mul_Ioi (a := -2) (by norm_num) 0)).const_mul _
  apply hmajor.mono'
  · exact (continuous_thetaPhi.mul (by unfold evenBasis; fun_prop)).aestronglyMeasurable
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with t ht
    rw [Real.norm_of_nonneg (mul_nonneg (thetaPhi_positive t ht).le
      (evenBasis_nonnegative n t))]
    calc
      _ ≤ (thetaPhiDecayConstant * Real.exp (-4 * t)) * Real.exp (2 * t) :=
        mul_le_mul (thetaPhi_le_exp_neg_four_mul ht)
          (Real.pow_div_factorial_le_exp (2 * t) (mul_nonneg (by norm_num) ht) (2 * n))
          (evenBasis_nonnegative n t) (by positivity)
      _ = _ := by rw [mul_assoc, ← Real.exp_add]; congr 2; ring

/-- Every actual theta moment in the proposed coefficient formula is positive. -/
theorem thetaPhi_mul_evenBasis_integral_positive (n : ℕ) :
    0 < ∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis n t := by
  apply (setIntegral_pos_iff_support_of_nonneg_ae ?_
    (thetaPhi_mul_evenBasis_integrable n)).mpr
  · have hpos : (0 : ENNReal) < volume (Ioo (1 : ℝ) 2) := by simp
    apply hpos.trans_le (measure_mono ?_)
    intro t ht
    have ht0 : 0 < t := by have := ht.1; linarith
    refine ⟨?_, ht0.le⟩
    apply ne_of_gt
    apply mul_pos (thetaPhi_positive t ht0.le)
    unfold evenBasis
    positivity
  · filter_upwards [ae_restrict_mem measurableSet_Ici] with t ht
    exact mul_nonneg (thetaPhi_positive t ht).le (evenBasis_nonnegative n t)

/-- The remaining coefficient identity alone would give every coefficient's strict sign.
The identity is an explicit premise, not an unconditional xi assertion. -/
theorem coefficient_positive_of_thetaCoefficientFormula
    (hformula : ThetaCoefficientFormula) (n : ℕ) : 0 < XiToeplitz.coefficient n := by
  rw [hformula n]
  exact mul_pos (by norm_num) (thetaPhi_mul_evenBasis_integral_positive n)

/-- The first literal tail differs from its value at zero by an interval integral. -/
theorem thetaTail_one_eq_sub (t : ℝ) :
    thetaTail 1 t = thetaTail 1 0 - ∫ u in (0 : ℝ)..t, thetaPhi u := by
  have h := intervalIntegral.integral_Ici_sub_Ici'
    (thetaPhi_integrableOn_Ici 0) (thetaPhi_integrableOn_Ici t)
  simp only [thetaTail, pow_zero, mul_one, Nat.factorial_zero, Nat.cast_one, div_one]
  linarith

/-- Moving the lower endpoint is justified by actual integrability and continuity. -/
theorem hasDerivAt_thetaTail_one (t : ℝ) :
    HasDerivAt (thetaTail 1) (-thetaPhi t) t := by
  have heq : thetaTail 1 = fun x => thetaTail 1 0 - ∫ u in (0 : ℝ)..x, thetaPhi u :=
    funext thetaTail_one_eq_sub
  rw [heq]
  exact (intervalIntegral.integral_hasDerivAt_right
    (continuous_thetaPhi.intervalIntegrable 0 t)
    (continuous_thetaPhi.stronglyMeasurableAtFilter volume _)
    continuous_thetaPhi.continuousAt).const_sub _

/-- The first tail tends to zero at infinity by the improper integral theorem. -/
theorem thetaTail_one_tendsto_atTop :
    Filter.Tendsto (thetaTail 1) Filter.atTop (𝓝 0) := by
  simpa [thetaTail] using
    (tendsto_integral_Ici_zero (f := thetaPhi) (μ := volume) Filter.tendsto_id)

/-- The rank-zero sign-regularity instance has the empty determinant convention. -/
theorem thetaTailSignRegular_zero (q : Fin 0 ↪o ℕ) (t : Fin 0 ↪o ℝ) :
    0 ≤ (-1 : ℝ) ^ (0 * (0 - 1) / 2) *
      Matrix.det (Matrix.of (fun (i j : Fin 0) => thetaTail (2 * q i) (t j))) := by
  rw [Matrix.det_fin_zero]
  norm_num

/-- The rank-one instance follows from the source, without an all-orders sign premise. -/
theorem thetaTailSignRegular_one (q : Fin 1 ↪o ℕ) (t : Fin 1 ↪o ℝ)
    (ht : ∀ i, 0 ≤ t i) :
    0 ≤ (-1 : ℝ) ^ (1 * (1 - 1) / 2) *
      Matrix.det (Matrix.of (fun (i j : Fin 1) => thetaTail (2 * q i) (t j))) := by
  rw [Matrix.det_fin_one]
  simpa using thetaTail_nonnegative (2 * q 0) (ht 0)

end

end FormalResearch.RiemannHypothesis.ThetaPositiveLift
```
