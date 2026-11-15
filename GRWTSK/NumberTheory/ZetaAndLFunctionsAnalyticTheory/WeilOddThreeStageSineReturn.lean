/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors. Development provenance: AI-assisted.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineDeficitKernel
import Mathlib.MeasureTheory.Measure.Lebesgue.Integral

/-!
# Return from the sine deficit to the original conductor-three stage

In the radius-one source identity, the multiplier is bounded below by
one minus its nonnegative deficit. Subtracting the energy identity
therefore bounds the primitive arithmetic value below by the negative
deficit integral with coefficient `4/π`. The Hilbert–Schmidt estimate
has coefficient `2/π` and uses the positive physical half of the test.
Oddness and support in `[-1,1]` make twice that physical mass exactly
the original energy. These two factors of two give the square root of
the sinc rectangle as the coefficient in the lower bound.

This is the conditional return requested by the journal plan at
<https://github.com/grwtsk/hs/issues/2#issuecomment-6889833674>.
The numerical enclosure of the original rectangle is a separate premise.
Independent analytical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt

open DirichletStageChain LowSchur OddContinuousSine OddRootProjection OddShiftEnergySine
open SourcePrimeCorrelation

private theorem energy_liftReal_eq_twice_unit_mass {f : ℝ → ℝ}
    (hodd : Function.Odd f) (hsupp : ∀ t, t ∉ Icc (-(1 : ℝ)) 1 → f t = 0) :
    energy (liftReal f) = 2 * ∫ x in Ioc (0 : ℝ) 1, f x ^ 2 := by
  have hpos : (∫ x in Ioi (0 : ℝ), f x ^ 2) = ∫ x in Ioc (0 : ℝ) 1, f x ^ 2 := by
    apply setIntegral_eq_of_subset_of_forall_sdiff_eq_zero measurableSet_Ioi
      (fun _ hx => hx.1)
    intro x hx
    have hx1 : 1 < x := lt_of_not_ge (fun hle => hx.2 ⟨hx.1, hle⟩)
    rw [hsupp x (fun h => (not_le_of_gt hx1) h.2), zero_pow (by decide)]
  calc
    energy (liftReal f) = ∫ x : ℝ, f x ^ 2 := by
      simp only [energy, liftReal, Complex.norm_real, Real.norm_eq_abs, sq_abs]
    _ = ∫ x : ℝ, f |x| ^ 2 := by
      apply integral_congr_ae
      exact Filter.Eventually.of_forall fun x => by
        change f x ^ 2 = f |x| ^ 2
        by_cases hx : 0 ≤ x
        · rw [abs_of_nonneg hx]
        · rw [abs_of_neg (lt_of_not_ge hx), hodd x, neg_sq]
    _ = 2 * ∫ x in Ioi (0 : ℝ), f x ^ 2 :=
      integral_comp_abs (f := fun x => f x ^ 2)
    _ = _ := by rw [hpos]

/-- The original radius-one primitive form is bounded below by the negative square root
of the actual sine-deficit rectangle times the whole-line energy. -/
theorem q3_primitiveArithmeticValue_ge_neg_sqrt_rectangle (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hparity : gammaParity χ = 1)
    {f : ℝ → ℝ} (hf : Admissible χ 1 f) :
    -Real.sqrt (sineDeficitRectangle 256 (q3SineDeficit χ)) * energy (liftReal f) ≤
      primitiveArithmeticValue χ hp hn 1 (liftReal f) := by
  let μ := (volume : Measure ℝ).restrict (Ioi (0 : ℝ))
  let ν := (volume : Measure ℝ).restrict (Ioc (0 : ℝ) 1)
  let k : ℝ → ℝ := fun x => halfSineMoment 1 f x ^ 2
  let m := q3SineMultiplier χ
  let d := q3SineDeficit χ
  let E := energy (liftReal f)
  let Q := primitiveArithmeticValue χ hp hn 1 (liftReal f)
  let r := Real.sqrt (sineDeficitRectangle 256 d)
  have hSource : Q + E = (4 / Real.pi) * ∫ x, m x * k x ∂μ :=
    originalPrimitiveQ_eq_q3SineMultiplier χ hp hn hf
  have hM : Integrable (fun x => m x * k x) μ :=
    integrableOn_primitiveSineIntegrand χ hp hn hf
  obtain ⟨_, hdiff, _, hodd, hL2, hs, _⟩ := hf
  have hsupp (t : ℝ) (ht : t ∉ Icc (-(1 : ℝ)) 1) : f t = 0 :=
    Complex.ofReal_eq_zero.mp (hs t ht)
  have hLp : MemLp f 2 ν := by
    simpa only [liftReal, RCLike.re_to_complex, Complex.ofReal_re] using
      hL2.re.restrict (Ioc (0 : ℝ) 1)
  have hK : Integrable k μ :=
    (halfSineMoment_sq_integrable (by norm_num) hdiff.continuous hodd hsupp hL2).integrableOn
  have hE : E = (4 / Real.pi) * ∫ x, k x ∂μ :=
    energy_eq_sine_integral (by norm_num) hdiff.continuous hodd hsupp hL2
  have hMass : E = 2 * ∫ u, f u ^ 2 ∂ν :=
    energy_liftReal_eq_twice_unit_mass hodd hsupp
  have hDeficit (x : ℝ) : d x * k x = max 0 (k x - m x * k x) := by
    change max 0 (1 - m x) * k x = _
    rw [max_mul_of_nonneg _ _ (sq_nonneg (halfSineMoment 1 f x)), zero_mul,
      sub_mul, one_mul]
  have hMax : Integrable (fun x => max 0 (k x - m x * k x)) μ :=
    (integrable_zero ℝ ℝ μ).sup (hK.sub hM)
  have hDi : Integrable (fun x => d x * k x) μ :=
    hMax.congr (Filter.Eventually.of_forall fun x => (hDeficit x).symm)
  have hmono : (∫ x, k x ∂μ) - (∫ x, d x * k x ∂μ) ≤ ∫ x, m x * k x ∂μ := by
    rw [← integral_sub hK hDi]
    apply integral_mono (hK.sub hDi) hM
    intro x
    change k x - d x * k x ≤ m x * k x
    linarith [hDeficit x, le_max_right 0 (k x - m x * k x)]
  have hD : (2 / Real.pi) * (∫ x, d x * k x ∂μ) ≤ r * ∫ u, f u ^ 2 ∂ν :=
    (le_abs_self _).trans (abs_q3_sineDeficitQuadratic_le χ hparity hLp)
  have hGap : E - 2 * ((2 / Real.pi) * ∫ x, d x * k x ∂μ) ≤ Q + E := by
    calc
      _ = (4 / Real.pi) * ((∫ x, k x ∂μ) - ∫ x, d x * k x ∂μ) := by
        rw [hE]
        ring
      _ ≤ (4 / Real.pi) * ∫ x, m x * k x ∂μ :=
        mul_le_mul_of_nonneg_left hmono (by positivity)
      _ = _ := hSource.symm
  have hScaled : 2 * (r * ∫ u, f u ^ 2 ∂ν) = r * E := by
    rw [hMass]
    ring
  have hBoth :=
    (sub_le_sub_left (mul_le_mul_of_nonneg_left hD (by norm_num : (0 : ℝ) ≤ 2)) E).trans hGap
  rw [hScaled] at hBoth
  change -r * E ≤ Q
  linarith

/-- Any certified square upper bound for the rectangle transfers to the original
primitive arithmetic value with its corresponding nonnegative coefficient. -/
theorem q3_primitiveArithmeticValue_ge_of_rectangle_le_sq (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hparity : gammaParity χ = 1)
    {b : ℝ} (hb : 0 ≤ b) (hrect : sineDeficitRectangle 256 (q3SineDeficit χ) ≤ b ^ 2)
    {f : ℝ → ℝ} (hf : Admissible χ 1 f) :
    -b * energy (liftReal f) ≤ primitiveArithmeticValue χ hp hn 1 (liftReal f) := by
  have hr := Real.sqrt_le_sqrt hrect
  rw [Real.sqrt_sq hb] at hr
  have hE : 0 ≤ energy (liftReal f) := integral_nonneg fun _ => sq_nonneg _
  exact (mul_le_mul_of_nonneg_right (neg_le_neg hr) hE).trans
    (q3_primitiveArithmeticValue_ge_neg_sqrt_rectangle χ hp hn hparity hf)

/-- A rectangle at most one suffices for stage zero of the original odd primitive
conductor-three stage chain. -/
theorem q3_primitiveStageLower_of_rectangle_le_one (χ : DirichletCharacter ℂ 3)
    (hp : χ.IsPrimitive) (hn : χ ≠ 1) (hparity : gammaParity χ = 1)
    (hrect : sineDeficitRectangle 256 (q3SineDeficit χ) ≤ 1) :
    PrimitiveStageLower χ hp hn 0 := by
  intro f hf
  have hf1 : Admissible χ 1 f := by simpa using hf
  have hb : sineDeficitRectangle 256 (q3SineDeficit χ) ≤ (1 : ℝ) ^ 2 := by
    simpa using hrect
  simpa using q3_primitiveArithmeticValue_ge_of_rectangle_le_sq χ hp hn hparity
    (by norm_num) hb hf1

end GRWTSK.NumberTheory.WeilQuadraticForm.OddThreeSineHilbertSchmidt
