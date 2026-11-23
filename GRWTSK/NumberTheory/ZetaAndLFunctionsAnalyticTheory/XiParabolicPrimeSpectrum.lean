/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.Complex.Trigonometric
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.Tactic

/-! Parabolic rate separation and the correlation defect in arithmetic heat-ray sampling. -/
namespace GRWTSK.XiParabolicPrimeSpectrum

/-- Real and imaginary parts of the parabolic heat rate. -/
noncomputable def height (d g : ℝ) := d+(d^2-g^2)/2
def frequency (d g : ℝ) := (1+d)*g

theorem rate_parts (s : ℂ) :
    (s+s^2/2).re = height s.re s.im ∧ (s+s^2/2).im = frequency s.re s.im := by
  simp [height,frequency,pow_two,Complex.mul_re,Complex.mul_im,Complex.div_ofNat_re,
    Complex.div_ofNat_im]
  ring

/-- Distinct points in the critical strip have distinct complex rates. -/
theorem rate_injective {s t : ℂ} (hs : -(1/2:ℝ) ≤ s.re) (ht : -(1/2:ℝ) ≤ t.re)
    (h : s+s^2/2=t+t^2/2) : s=t := by
  have hp : (s-t)*(2+s+t)=0 := by linear_combination 2*h
  rcases mul_eq_zero.mp hp with he | he
  · exact sub_eq_zero.mp he
  · have hr := congrArg Complex.re he
    simp at hr
    linarith

/-- A single decoded height bounds all possible ordinates on its layer. -/
theorem ordinate_budget {d : ℝ} (hd : |d| ≤ 1/2) (g : ℝ) :
    g^2 ≤ 5/4-2*height d g := by
  have h2 := (sq_le_sq.mpr (show |d| ≤ |(1/2:ℝ)| by simpa using hd))
  have hu := (abs_le.mp hd).2
  unfold height
  nlinarith

theorem frequency_budget {d : ℝ} (hd : |d| ≤ 1/2) (g : ℝ) :
    frequency d g ^ 2 ≤ (9/4)*(5/4-2*height d g) := by
  have h := abs_le.mp hd
  have h1 : (1+d)^2 ≤ (3/2:ℝ)^2 := (sq_le_sq₀ (by linarith) (by norm_num)).2 (by linarith)
  have h2 := mul_le_mul_of_nonneg_right h1 (sq_nonneg g)
  have h3 := ordinate_budget hd g
  unfold frequency
  nlinarith

/-- The sign of the violation of the real-frequency parabola is exactly the
sign of the transverse displacement. -/
theorem parabola_defect (d g : ℝ) :
    2*height d g+(frequency d g)^2 = d*(2+d)*(1+g^2) := by
  unfold height frequency
  ring

theorem real_layer_iff {d : ℝ} (hd : -(1/2:ℝ) ≤ d) (g : ℝ) :
    2*height d g+(frequency d g)^2=0 ↔ d=0 := by
  rw [parabola_defect]
  have h1 : 0 < 2+d := by linarith
  have h2 : 0 < 1+g^2 := by positivity
  simp [h1.ne',h2.ne']

/-- An individual off-frequency error in a finite Cesàro extraction. -/
theorem finite_character_bound {z : ℂ} (hz : ‖z‖ = 1) (hne : z ≠ 1) (n : ℕ) :
    ‖(∑ k ∈ Finset.range n, z^k)/(n:ℂ)‖ ≤ 2/(‖z-1‖*(n:ℝ)) := by
  rw [geom_sum_eq hne, norm_div, norm_div]
  have h : ‖z^n-1‖ ≤ 2 := by
    calc
      _ ≤ ‖z^n‖ + ‖(1:ℂ)‖ := norm_sub_le _ _
      _ = 2 := by simp [hz]; norm_num
  simp only [Complex.norm_natCast]
  rw [← div_mul_eq_div_div]
  exact div_le_div_of_nonneg_right h (by positivity)

/-- Three sampled correlation coefficients suffice to integrate this square. -/
theorem three_correlations (theta c : ℝ) :
    (Real.cos theta-c)^2 =
      (1+Real.cos (2*theta))/2-2*c*Real.cos theta+c^2 := by
  rw [Real.cos_two_mul]
  ring

/-- On half the unwrapping mesh, the cosine deficit is uniformly comparable to the squared-frequency difference. -/
theorem half_mesh_cosine {y x : ℝ} (hy : 0 ≤ y) (hyx : y ≤ x) (hx : x ≤ Real.pi/2) :
    (2/Real.pi^2)*(x^2-y^2) ≤ Real.cos y - Real.cos x ∧
    Real.cos y - Real.cos x ≤ (x^2-y^2)/2 := by
  set u := (x+y)/2 with hu
  set v := (x-y)/2 with hv
  have u0 : 0 ≤ u := by dsimp [u]; linarith
  have v0 : 0 ≤ v := by dsimp [v]; linarith
  have ub : u ≤ Real.pi/2 := by dsimp [u]; linarith
  have vb : v ≤ Real.pi/2 := by dsimp [v]; linarith
  have huv : Real.cos y-Real.cos x = 2*Real.sin u*Real.sin v := by
    linarith [Real.cos_sub_cos x y]
  have lower := mul_le_mul (Real.mul_le_sin u0 ub) (Real.mul_le_sin v0 vb)
    (show 0 ≤ 2 / Real.pi * v by positivity)
    (Real.sin_nonneg_of_nonneg_of_le_pi u0 (by linarith [Real.pi_pos]))
  have upper := mul_le_mul (Real.sin_le u0) (Real.sin_le v0)
    (Real.sin_nonneg_of_nonneg_of_le_pi v0 (by linarith [Real.pi_pos])) u0
  rw [huv]
  constructor
  · calc
      _ = 2*((2/Real.pi*u)*(2/Real.pi*v)) := by rw [hu,hv]; ring
      _ ≤ _ := by linarith
  · calc
      _ ≤ 2*(u*v) := by linarith
      _ = _ := by rw [hu,hv]; ring

/-- A finite leading layer has zero defect precisely when every atom
of positive mass satisfies the required cosine relation. -/
theorem layer_defect_iff {ι : Type*} (s : Finset ι) (w x : ι → ℝ) (c : ℝ)
    (hw : ∀ i ∈ s, 0 < w i) :
    (∑ i ∈ s, w i*(x i-c)^2)=0 ↔ ∀ i ∈ s, x i=c := by
  rw [Finset.sum_eq_zero_iff_of_nonneg (fun i hi => mul_nonneg (hw i hi).le (sq_nonneg _))]
  simp +contextual [(hw _ _).ne',sub_eq_zero]

/-- On each spectral fiber, transverse position is the imaginary part of the
normal generator, and the reciprocal projection error has an exact square. -/
theorem reciprocal_defect {g : ℝ} (hg : g ≠ 0) (d : ℝ) :
    1/g^2-1/(g^2+d^2)=d^2/(g^2*(g^2+d^2)) := by
  have hp : 0 < g^2+d^2 := add_pos_of_pos_of_nonneg (sq_pos_of_ne_zero hg) (sq_nonneg _)
  field_simp
  ring

end GRWTSK.XiParabolicPrimeSpectrum
