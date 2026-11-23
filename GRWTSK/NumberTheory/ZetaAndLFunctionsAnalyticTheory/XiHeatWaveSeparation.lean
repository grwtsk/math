/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Tactic

/-! Resistance to simultaneous phase recurrence from an integer determinant. -/
namespace GRWTSK.XiHeatWaveSeparation
open Real
noncomputable section

theorem determinant_gap {a b p q : ℤ} (h : p*a-q*b ≠ 0) :
    (1:ℝ) ≤ |(p:ℝ)*a-(q:ℝ)*b| := by
  exact_mod_cast Int.one_le_abs h

theorem approximation_gap {α a b p q : ℝ} (hb : 0<b)
    (hdet : 1 ≤ |p*a-q*b|) :
    1/b-|p| *|α-a/b| ≤ |p*α-q| := by
  have hr : p*a-q*b = b*(p*α-q)-b*p*(α-a/b) := by field_simp <;> ring
  rw [hr] at hdet
  have h := hdet.trans (abs_sub _ _)
  simp only [abs_mul,abs_of_pos hb] at h
  apply sub_le_iff_le_add.mpr
  apply (div_le_iff₀ hb).mpr
  nlinarith only [h]

theorem phase_gap {α x y p q : ℝ} (he : y=α*x) :
    |p*α-q| ≤ (1+|α|)*max |x-p| |y-q| := by
  have eqn : p*α-q = (y-q)-α*(x-p) := by rw [he]; ring
  rw [eqn]
  calc
    _ ≤ |y-q|+|α*(x-p)| := abs_sub _ _
    _ ≤ _ := by
      rw [abs_mul,add_mul,one_mul]
      exact add_le_add (le_max_right _ _) (mul_le_mul_of_nonneg_left (le_max_left _ _) (abs_nonneg _))

theorem cosine_defect {u : ℝ} (hu : |u| ≤ π/2) :
    2/π^2*u^2 ≤ 1-|cos u| := by
  have hn : 0 ≤ cos u := cos_nonneg_of_mem_Icc ⟨by linarith [(abs_le.mp hu).1],(abs_le.mp hu).2⟩
  rw [abs_of_nonneg hn]
  linarith [cos_le_one_sub_mul_cos_sq (x := u) (by linarith [pi_pos])]

/-- A centered orbital phase within pi/3 keeps at least half the mass in its real part. -/
theorem orbital_cosine_average {Ω : Type*} [MeasurableSpace Ω]
    (μ : MeasureTheory.Measure Ω) [MeasureTheory.IsProbabilityMeasure μ]
    (phase : Ω → ℝ) (hf : MeasureTheory.Integrable (fun x => cos (phase x)) μ)
    (h : ∀ x, |phase x| ≤ π/3) : 1/2 ≤ ∫ x, cos (phase x) ∂μ := by
  calc
    _ = ∫ _ : Ω, (1/2 : ℝ) ∂μ := by simp
    _ ≤ _ := by
      apply MeasureTheory.integral_mono (MeasureTheory.integrable_const _) hf
      intro x
      change (1/2 : ℝ) ≤ cos (phase x)
      rw [← Real.cos_pi_div_three,← Real.cos_abs (phase x)]
      exact Real.cos_le_cos_of_nonneg_of_le_pi (abs_nonneg _) (by linarith [Real.pi_pos]) (h x)

end
end GRWTSK.XiHeatWaveSeparation
