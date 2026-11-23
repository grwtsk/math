/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic
import Mathlib.MeasureTheory.Integral.Bochner.Basic
import Mathlib.Tactic

/-! Multiplicative gamma smoothing of the inverse-power traces and its exact two-moment loss. -/
namespace GRWTSK.XiGammaMomentCalibration
open MeasureTheory
noncomputable section

def correction (n : ℝ) : ℕ → ℝ
  | 0 => 1
  | k+1 => correction n k * (n+k)/n

theorem correction_pos {n : ℝ} (hn : 0 < n) (k : ℕ) : 0 < correction n k := by
  induction k with
  | zero => simp [correction]
  | succ k ih => rw [correction]; positivity

theorem correction_one {n : ℝ} (hn : 0 < n) : correction n 1 = 1 := by
  simp [correction,hn.ne']

theorem two_moment_loss {n a b c : ℝ} (hn : 0 < n) (k : ℕ)
    (h : (correction n (k+1)*b)^2 ≤ (correction n k*a)*(correction n (k+2)*c)) :
    (n+k)/(n+k+1)*b^2 ≤ a*c := by
  let C := correction n k
  have hC : 0 < C := correction_pos hn _
  have hK : 0 < n+k := by positivity
  have hK' : 0 < n+k+1 := by positivity
  have he1 : correction n (k+1)=C*(n+k)/n := rfl
  have he2 : correction n (k+2)=C*(n+k)*(n+k+1)/n^2 := by
    rw [correction,he1]
    push_cast
    ring
  rw [he1,he2] at h
  field_simp at h
  rw [div_mul_eq_mul_div,div_le_iff₀ hK']
  change C*(n+k)*b^2 ≤ C*a*(n+k+1)*c at h
  apply le_of_mul_le_mul_left (a := C) _ hC
  nlinarith only [h]

theorem moment_quadratic {μ : Measure ℝ} {k : ℕ} {a b : ℝ}
    (hs : ∀ᵐ x ∂μ, 0 ≤ x)
    (h0 : Integrable (fun x : ℝ => x^k) μ)
    (h1 : Integrable (fun x : ℝ => x^(k+1)) μ)
    (h2 : Integrable (fun x : ℝ => x^(k+2)) μ) :
    0 ≤ a^2*(∫ x, x^k ∂μ)+2*a*b*(∫ x, x^(k+1) ∂μ)+b^2*(∫ x, x^(k+2) ∂μ) := by
  let F := fun x : ℝ => a^2*x^k
  let G := fun x : ℝ => (2*a*b)*x^(k+1)
  let H := fun x : ℝ => b^2*x^(k+2)
  have iF : Integrable F μ := h0.const_mul _
  have iG : Integrable G μ := h1.const_mul _
  have iH : Integrable H μ := h2.const_mul _
  have nonneg : 0 ≤ ∫ x, ((F x+G x)+H x) ∂μ := by
    apply integral_nonneg_of_ae
    filter_upwards [hs] with x hx
    dsimp [F,G,H]
    have he : a^2*x^k+(2*a*b)*x^(k+1)+b^2*x^(k+2) = x^k*(a+b*x)^2 := by ring
    rw [he]
    exact mul_nonneg (pow_nonneg hx _) (sq_nonneg _)
  change 0 ≤ ∫ x, (F+G) x + H x ∂μ at nonneg
  rw [integral_add (iF.add iG) iH] at nonneg
  simp only [Pi.add_apply] at nonneg
  rw [integral_add iF iG] at nonneg
  simpa only [F,G,H,integral_const_mul] using nonneg

theorem determinant_from_quadratic {a b c : ℝ} (ha : 0 < a)
    (h : ∀ u v : ℝ, 0 ≤ u^2*a+2*u*v*b+v^2*c) : b^2 ≤ a*c := by
  have hh := h (-b) a
  apply le_of_mul_le_mul_left (a := a) _ ha
  nlinarith only [hh]

end
end GRWTSK.XiGammaMomentCalibration
