import Mathlib

/-!
Research direction: grwtsk contributors.
Implementation prepared with ChatGPT assistance. Ordinary mathematical lemmas
and Mathlib retain their authorship. Kernel compilation has not been run for
this additive source. No arithmetic growth hypothesis is asserted.
-/

noncomputable section
namespace GRWTSK.Analysis.TriangularBlock

/-- Scalar singular-value bound for two equal diagonal norm bounds. -/
def gain (a b : ℝ) : ℝ := (Real.sqrt (4*a^2+b^2)+b)/2

lemma gain_nonnegative {a b : ℝ} (hb : 0 ≤ b) : 0 ≤ gain a b := by
  unfold gain
  positivity

lemma gain_equation (a b : ℝ) : (gain a b)^2 = b*gain a b+a^2 := by
  have hs := Real.sq_sqrt (show 0 ≤ 4*a^2+b^2 by positivity)
  unfold gain
  nlinarith

/-- Polynomial certificate: no spectral theorem or division is hidden here. -/
theorem scalar_square_bound {a b k : ℝ} (hb : 0 ≤ b) (hk : 0 < k)
    (hroot : k^2 = b*k+a^2) (x y : ℝ) :
    (a*x)^2+(b*x+a*y)^2 ≤ k^2*(x^2+y^2) := by
  have hid :
      k*(k^2*(x^2+y^2)-((a*x)^2+(b*x+a*y)^2)) - b*(a*x-k*y)^2 =
        (k^2-b*k-a^2)*((k+b)*x^2+k*y^2) := by ring
  have hz : k^2-b*k-a^2 = 0 := by linarith
  rw [hz, zero_mul] at hid
  have hnon := mul_nonneg hb (sq_nonneg (a*x-k*y))
  have hp : 0 ≤ k*(k^2*(x^2+y^2)-((a*x)^2+(b*x+a*y)^2)) := by linarith
  have hd := nonneg_of_mul_nonneg_left hp hk
  linarith

/-- This includes a=0 and b=0, rather than dividing by a zero diagonal. -/
theorem gain_square_bound {a b : ℝ} (hb : 0 ≤ b) (x y : ℝ) :
    (a*x)^2+(b*x+a*y)^2 ≤ (gain a b)^2*(x^2+y^2) := by
  have hk := gain_nonnegative (a := a) hb
  rcases lt_or_eq_of_le hk with hk | hk
  · exact scalar_square_bound hb hk (gain_equation a b) x y
  · have hk0 : gain a b = 0 := hk.symm
    have ha : a = 0 := by nlinarith [gain_equation a b]
    have hb0 : b = 0 := by
      unfold gain at hk0
      nlinarith [Real.sqrt_nonneg (4*a^2+b^2)]
    simp [ha, hb0, gain]

/-- Convert two componentwise norm bounds into the sharp scalar block budget. -/
theorem component_square_bound {a b x y u v : ℝ}
    (ha : 0 ≤ a) (hb : 0 ≤ b) (hx : 0 ≤ x) (hy : 0 ≤ y)
    (hu : 0 ≤ u) (hv : 0 ≤ v) (hu_le : u ≤ a*x) (hv_le : v ≤ b*x+a*y) :
    u^2+v^2 ≤ (gain a b)^2*(x^2+y^2) := by
  have h₁ : u^2 ≤ (a*x)^2 := by nlinarith [mul_nonneg ha hx]
  have h₂ : v^2 ≤ (b*x+a*y)^2 := by
    nlinarith [add_nonneg (mul_nonneg hb hx) (mul_nonneg ha hy)]
  exact (add_le_add h₁ h₂).trans (gain_square_bound hb x y)

/-- Actual normed-operator block action, with its two component norms retained.
This is the Euclidean direct-sum square estimate, not a matrix entrywise norm. -/
theorem operator_square_bound {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E]
    (A C : E →L[ℝ] E) {a b : ℝ} (ha : 0 ≤ a) (hb : 0 ≤ b)
    (hA : ‖A‖ ≤ a) (hC : ‖C‖ ≤ b) (x y : E) :
    ‖A x‖^2+‖C x+A y‖^2 ≤ (gain a b)^2*(‖x‖^2+‖y‖^2) := by
  have hx : ‖A x‖ ≤ a*‖x‖ :=
    (A.le_opNorm x).trans (mul_le_mul_of_nonneg_right hA (norm_nonneg x))
  have hy : ‖C x+A y‖ ≤ b*‖x‖+a*‖y‖ := by
    calc
      ‖C x+A y‖ ≤ ‖C x‖+‖A y‖ := norm_add_le _ _
      _ ≤ b*‖x‖+a*‖y‖ := add_le_add
        ((C.le_opNorm x).trans (mul_le_mul_of_nonneg_right hC (norm_nonneg x)))
        ((A.le_opNorm y).trans (mul_le_mul_of_nonneg_right hA (norm_nonneg y)))
  exact component_square_bound ha hb (norm_nonneg x) (norm_nonneg y)
    (norm_nonneg (A x)) (norm_nonneg (C x+A y)) hx hy

end GRWTSK.Analysis.TriangularBlock
#print axioms GRWTSK.Analysis.TriangularBlock.gain_square_bound
#print axioms GRWTSK.Analysis.TriangularBlock.component_square_bound
#print axioms GRWTSK.Analysis.TriangularBlock.operator_square_bound
