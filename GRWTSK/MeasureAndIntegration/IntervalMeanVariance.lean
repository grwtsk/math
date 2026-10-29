/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib interval integration and real calculus retain upstream authorship
and the Apache-2.0 license. -/
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus
import Mathlib.Tactic

/-!
# The actual interval-mean projection and its derivative-energy error

All quantities are literal interval integrals. The mean is the least-squares
constant. The primitive estimate uses the midpoint, two applications of
integral Cauchy--Schwarz, and monotonicity of the square integral. In particular,
the derivative need not be continuous at arithmetic birth events. The factor
1/8 is paid without a pointwise differentiability premise at those events.
SOURCE_PROOF_CANDIDATE; compilation, fresh replay and axiom audit NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open MeasureTheory Set

namespace GRWTSK.Analysis.Integration.IntervalMeanVariance

def mean (f : ℝ → ℝ) (a b : ℝ) : ℝ := (∫ x in a..b, f x) / (b - a)

def centeredEnergy (f : ℝ → ℝ) (a b c : ℝ) : ℝ :=
  ∫ x in a..b, (f x - c) ^ 2

def variance (f : ℝ → ℝ) (a b : ℝ) : ℝ :=
  centeredEnergy f a b (mean f a b)

/-- Equality on the closed cell identifies both the mean and the actual residual. -/
theorem variance_congr {f g : ℝ → ℝ} {a b : ℝ}
    (hfg : ∀ x ∈ uIcc a b, f x = g x) : variance f a b = variance g a b := by
  have hm : mean f a b = mean g a b := by
    unfold mean
    rw [intervalIntegral.integral_congr hfg]
  unfold variance centeredEnergy
  rw [hm]
  apply intervalIntegral.integral_congr
  intro x hx
  rw [hfg x hx]

theorem centered_integrable {f : ℝ → ℝ} {a b : ℝ}
    (hf : IntervalIntegrable f volume a b)
    (hf2 : IntervalIntegrable (fun x => f x ^ 2) volume a b) (c : ℝ) :
    IntervalIntegrable (fun x => (f x - c) ^ 2) volume a b := by
  have h := (hf2.sub (hf.const_mul (2 * c))).add
    (intervalIntegrable_const (c ^ 2))
  convert h using 1 <;> funext x <;> ring

theorem centeredEnergy_eq {f : ℝ → ℝ} {a b : ℝ}
    (hf : IntervalIntegrable f volume a b)
    (hf2 : IntervalIntegrable (fun x => f x ^ 2) volume a b) (c : ℝ) :
    centeredEnergy f a b c =
      (∫ x in a..b, f x ^ 2) - 2 * c * (∫ x in a..b, f x) + (b - a) * c ^ 2 := by
  unfold centeredEnergy
  have he : (fun x => (f x - c) ^ 2) =
      (fun x => (f x ^ 2 - (2 * c) * f x) + c ^ 2) := by funext x; ring
  rw [he, intervalIntegral.integral_add (hf2.sub (hf.const_mul _))
    (intervalIntegrable_const _), intervalIntegral.integral_sub hf2 (hf.const_mul _),
    intervalIntegral.integral_const_mul, intervalIntegral.integral_const]
  simp only [smul_eq_mul]

theorem centeredEnergy_nonnegative {f : ℝ → ℝ} {a b : ℝ}
    (hab : a ≤ b) (c : ℝ) : 0 ≤ centeredEnergy f a b c :=
  intervalIntegral.integral_nonneg_of_forall hab (fun _ => sq_nonneg _)

theorem variance_nonnegative {f : ℝ → ℝ} {a b : ℝ} (hab : a ≤ b) :
    0 ≤ variance f a b := centeredEnergy_nonnegative hab _

/-- The actual bin energy is its mean-square contribution plus its residual. -/
theorem variance_eq {f : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : IntervalIntegrable f volume a b)
    (hf2 : IntervalIntegrable (fun x => f x ^ 2) volume a b) :
    variance f a b = (∫ x in a..b, f x ^ 2) - (∫ x in a..b, f x) ^ 2 / (b - a) := by
  rw [variance, centeredEnergy_eq hf hf2]
  unfold mean
  field_simp [ne_of_gt (sub_pos.mpr hab)]
  <;> ring

/-- Orthogonality to the constant function is derived, not assumed. -/
theorem integral_sub_mean {f : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : IntervalIntegrable f volume a b) :
    (∫ x in a..b, (f x - mean f a b)) = 0 := by
  rw [intervalIntegral.integral_sub hf (intervalIntegrable_const _),
    intervalIntegral.integral_const]
  simp only [smul_eq_mul, mean]
  field_simp [ne_of_gt (sub_pos.mpr hab)]
  <;> ring

/-- Least-squares optimality with the complete translation cost. -/
theorem centeredEnergy_split {f : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : IntervalIntegrable f volume a b)
    (hf2 : IntervalIntegrable (fun x => f x ^ 2) volume a b) (c : ℝ) :
    centeredEnergy f a b c = variance f a b + (b - a) * (c - mean f a b) ^ 2 := by
  rw [centeredEnergy_eq hf hf2, variance_eq hab hf hf2]
  unfold mean
  field_simp [ne_of_gt (sub_pos.mpr hab)]
  <;> ring

theorem variance_le_centeredEnergy {f : ℝ → ℝ} {a b : ℝ} (hab : a < b)
    (hf : IntervalIntegrable f volume a b)
    (hf2 : IntervalIntegrable (fun x => f x ^ 2) volume a b) (c : ℝ) :
    variance f a b ≤ centeredEnergy f a b c := by
  rw [centeredEnergy_split hab hf hf2]
  exact le_add_of_nonneg_right (mul_nonneg (sub_pos.mpr hab).le (sq_nonneg _))

/-- Integral Cauchy--Schwarz against the constant one, including zero-width cells. -/
theorem integral_sq_le_length_mul {f : ℝ → ℝ} {a b : ℝ} (hab : a ≤ b)
    (hf : IntervalIntegrable f volume a b)
    (hf2 : IntervalIntegrable (fun x => f x ^ 2) volume a b) :
    (∫ x in a..b, f x) ^ 2 ≤ (b - a) * (∫ x in a..b, f x ^ 2) := by
  rcases hab.eq_or_lt with rfl | hab
  · simp
  · have hv := variance_nonnegative (f := f) hab.le
    rw [variance_eq hab hf hf2] at hv
    have hd : (∫ x in a..b, f x) ^ 2 / (b - a) ≤ (∫ x in a..b, f x ^ 2) := by linarith
    have h := (div_le_iff₀ (sub_pos.mpr hab)).mp hd
    nlinarith

private theorem integral_left_distance (a c : ℝ) :
    (∫ x in a..c, c - x) = (c - a) ^ 2 / 2 := by
  have hd (x : ℝ) : HasDerivAt (fun y : ℝ => -(c - y) ^ 2 / 2) (c - x) x := by
    convert (((hasDerivAt_id x).const_sub c).pow 2).neg.div_const 2 using 1 <;> ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hd x)
    ((continuous_const.sub continuous_id).intervalIntegrable _ _)]
  ring

private theorem integral_right_distance (c b : ℝ) :
    (∫ x in c..b, x - c) = (b - c) ^ 2 / 2 := by
  have hd (x : ℝ) : HasDerivAt (fun y : ℝ => (y - c) ^ 2 / 2) (x - c) x := by
    convert (((hasDerivAt_id x).sub_const c).pow 2).div_const 2 using 1 <;> ring
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hd x)
    ((continuous_id.sub continuous_const).intervalIntegrable _ _)]
  ring

/-- A source primitive pays the mean-projection residual at rate length^2/8.
Only the explicit primitive identity is required; no derivative at a jump is used. -/
theorem variance_le_derivative_energy {f g : ℝ → ℝ}
    (hf : Continuous f)
    (hg : ∀ a b, IntervalIntegrable g volume a b)
    (hg2 : ∀ a b, IntervalIntegrable (fun x => g x ^ 2) volume a b)
    (hprimitive : ∀ x y, f y - f x = ∫ z in x..y, g z)
    {a b : ℝ} (hab : a < b) :
    variance f a b ≤ (b - a) ^ 2 / 8 * (∫ x in a..b, g x ^ 2) := by
  let c : ℝ := (a + b) / 2
  have hac : a ≤ c := by dsimp [c]; linarith
  have hcb : c ≤ b := by dsimp [c]; linarith
  let A : ℝ := ∫ x in a..c, g x ^ 2
  let B : ℝ := ∫ x in c..b, g x ^ 2
  have hleft (x : ℝ) (hx : x ∈ Icc a c) : (f x - f c) ^ 2 ≤ (c - x) * A := by
    have hs := integral_sq_le_length_mul hx.2 (hg x c) (hg2 x c)
    have hm : (∫ z in x..c, g z ^ 2) ≤ A :=
      intervalIntegral.integral_mono_interval hx.1 hx.2 le_rfl
        (ae_of_all _ (fun z => sq_nonneg (g z))) (hg2 a c)
    have hm' := mul_le_mul_of_nonneg_left hm (sub_nonneg.mpr hx.2)
    rw [← hprimitive x c] at hs
    nlinarith
  have hright (x : ℝ) (hx : x ∈ Icc c b) : (f x - f c) ^ 2 ≤ (x - c) * B := by
    have hs := integral_sq_le_length_mul hx.1 (hg c x) (hg2 c x)
    have hm : (∫ z in c..x, g z ^ 2) ≤ B :=
      intervalIntegral.integral_mono_interval le_rfl hx.1 hx.2
        (ae_of_all _ (fun z => sq_nonneg (g z))) (hg2 c b)
    have hm' := mul_le_mul_of_nonneg_left hm (sub_nonneg.mpr hx.1)
    rw [← hprimitive c x] at hs
    exact hs.trans hm'
  have hL : (∫ x in a..c, (f x - f c) ^ 2) ≤ (c - a) ^ 2 / 2 * A := by
    calc
      _ ≤ ∫ x in a..c, (c - x) * A :=
        intervalIntegral.integral_mono_on hac
          (((hf.sub continuous_const).pow 2).intervalIntegrable _ _)
          (((continuous_const.sub continuous_id).mul_const A).intervalIntegrable _ _) hleft
      _ = _ := by rw [intervalIntegral.integral_mul_const, integral_left_distance]
  have hR : (∫ x in c..b, (f x - f c) ^ 2) ≤ (b - c) ^ 2 / 2 * B := by
    calc
      _ ≤ ∫ x in c..b, (x - c) * B :=
        intervalIntegral.integral_mono_on hcb
          (((hf.sub continuous_const).pow 2).intervalIntegrable _ _)
          (((continuous_id.sub continuous_const).mul_const B).intervalIntegrable _ _) hright
      _ = _ := by rw [intervalIntegral.integral_mul_const, integral_right_distance]
  have he : A + B = ∫ x in a..b, g x ^ 2 :=
    intervalIntegral.integral_add_adjacent_intervals (hg2 a c) (hg2 c b)
  calc
    variance f a b ≤ centeredEnergy f a b (f c) :=
      variance_le_centeredEnergy hab (hf.intervalIntegrable _ _) ((hf.pow 2).intervalIntegrable _ _) _
    _ = (∫ x in a..c, (f x - f c) ^ 2) + (∫ x in c..b, (f x - f c) ^ 2) := by
      exact (intervalIntegral.integral_add_adjacent_intervals
        (((hf.sub continuous_const).pow 2).intervalIntegrable _ _)
        (((hf.sub continuous_const).pow 2).intervalIntegrable _ _)).symm
    _ ≤ (c - a) ^ 2 / 2 * A + (b - c) ^ 2 / 2 * B := add_le_add hL hR
    _ = (b - a) ^ 2 / 8 * (A + B) := by dsimp [c]; ring
    _ = _ := by rw [he]

/-- The sharp affine constant follows already by comparison with the midpoint.
No pairwise Fubini lemma is needed. -/
theorem variance_le_lipschitz {f : ℝ → ℝ} (hf : Continuous f)
    {a b L : ℝ} (hab : a < b) (hL : 0 ≤ L)
    (hlip : ∀ x ∈ Icc a b, ∀ y ∈ Icc a b, |f x - f y| ≤ L * |x - y|) :
    variance f a b ≤ L ^ 2 * (b - a) ^ 3 / 12 := by
  let c : ℝ := (a + b) / 2
  have hc : c ∈ Icc a b := by dsimp [c]; constructor <;> linarith
  have hbnd (x : ℝ) (hx : x ∈ Icc a b) : (f x - f c) ^ 2 ≤ L ^ 2 * (x - c) ^ 2 := by
    have hs := (sq_le_sq₀ (abs_nonneg _) (mul_nonneg hL (abs_nonneg _))).mpr
      (hlip x hx c hc)
    simpa only [sq_abs, mul_pow] using hs
  have hd (x : ℝ) : HasDerivAt (fun y : ℝ => (y - c) ^ 3 / 3) ((x - c) ^ 2) x := by
    convert (((hasDerivAt_id x).sub_const c).pow 3).div_const 3 using 1 <;> ring
  have hi : (∫ x in a..b, (x - c) ^ 2) = (b - a) ^ 3 / 12 := by
    rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun x _ => hd x)
      (((continuous_id.sub continuous_const).pow 2).intervalIntegrable _ _)]
    dsimp [c]
    ring
  calc
    variance f a b ≤ centeredEnergy f a b (f c) :=
      variance_le_centeredEnergy hab (hf.intervalIntegrable _ _) ((hf.pow 2).intervalIntegrable _ _) _
    _ ≤ ∫ x in a..b, L ^ 2 * (x - c) ^ 2 :=
      intervalIntegral.integral_mono_on hab.le
        (((hf.sub continuous_const).pow 2).intervalIntegrable _ _)
        ((continuous_const.mul ((continuous_id.sub continuous_const).pow 2)).intervalIntegrable _ _)
        hbnd
    _ = _ := by rw [intervalIntegral.integral_const_mul, hi]; ring

end GRWTSK.Analysis.Integration.IntervalMeanVariance
