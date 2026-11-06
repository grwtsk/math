/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Complex
import Mathlib.Algebra.Polynomial.Eval.Defs

/-!
# Finite real cosine filters on an open period strip

Cosine identifies only the two signs on the open period strip. A real
polynomial formed from the conjugate-paired factors removes any prescribed
finite set away from the sign-conjugation orbit of the selected value.
This retains the entire orbit even if some of its points coincide.
-/

set_option autoImplicit false
noncomputable section
open Complex Polynomial
open scoped ComplexConjugate BigOperators

namespace GRWTSK.ComplexAnalysis.OddCosWindow

/-- On one open period strip, the cosine identifies only the two signs. -/
theorem cos_eq_cos_iff_of_abs_re_lt_pi {x y : ℂ}
    (hx : |x.re| < Real.pi) (hy : |y.re| < Real.pi) :
    cos x = cos y ↔ y = x ∨ y = -x := by
  constructor
  · intro h
    obtain ⟨k, hk⟩ := Complex.cos_eq_cos_iff.mp h
    have hk_re : |(k : ℝ)| < 1 := by
      have h := abs_lt.mp hx
      have h' := abs_lt.mp hy
      have hpi := Real.pi_pos
      have harith : |2 * (k : ℝ) * Real.pi| < 2 * Real.pi := by
        rcases hk with hxy | hxy
        · have hre := congrArg Complex.re hxy
          simp [Complex.mul_re, Complex.mul_im] at hre
          rw [show 2 * (k : ℝ) * Real.pi = y.re - x.re by linarith]
          exact abs_lt.mpr ⟨by linarith, by linarith⟩
        · have hre := congrArg Complex.re hxy
          simp [Complex.mul_re, Complex.mul_im] at hre
          rw [show 2 * (k : ℝ) * Real.pi = y.re + x.re by linarith]
          exact abs_lt.mpr ⟨by linarith, by linarith⟩
      rw [abs_mul, abs_mul, abs_of_nonneg (show (0 : ℝ) ≤ 2 by norm_num),
        abs_of_pos hpi] at harith
      have h := (mul_lt_mul_iff_of_pos_left hpi).mp
        (show Real.pi * (2 * |(k : ℝ)|) < Real.pi * 2 by linarith)
      linarith
    have hk0 : k = 0 := by
      rw [← Int.cast_abs] at hk_re
      have hk_lt : |k| < 1 := by exact_mod_cast hk_re
      obtain ⟨hkLower, hkUpper⟩ := abs_lt.mp hk_lt
      omega
    simpa [hk0] using hk
  · rintro (rfl | rfl)
    · rfl
    · exact (cos_neg _).symm

/-- On that same strip, an off-axis argument has nonreal cosine. -/
theorem cos_im_ne_zero_of_off_axes {x : ℂ} (hx : |x.re| < Real.pi)
    (hxR : x.re ≠ 0) (hxI : x.im ≠ 0) : (cos x).im ≠ 0 := by
  intro h
  have hCos : cos x = cos (conj x) := by
    rw [cos_conj, Complex.conj_eq_iff_im.mpr h]
  have hxConj : |(conj x).re| < Real.pi := by simpa using hx
  rcases (cos_eq_cos_iff_of_abs_re_lt_pi hx hxConj).mp hCos with hSame | hNeg
  · apply hxI
    have := congrArg Complex.im hSame
    simp only [Complex.conj_im] at this
    linarith
  · apply hxR
    have := congrArg Complex.re hNeg
    simp only [Complex.conj_re, Complex.neg_re] at this
    linarith

private def cosineFactor (w : ℂ) : Polynomial ℝ :=
  X ^ 2 - C (2 * w.re) * X + C (normSq w)

private theorem cosineFactor_eval (v w : ℂ) :
    (cosineFactor w).eval₂ ofRealHom v = (v - w) * (v - conj w) := by
  simp only [cosineFactor, eval₂_add, eval₂_sub, eval₂_pow, eval₂_X, eval₂_mul,
    eval₂_C]
  change v ^ 2 - ((2 * w.re : ℝ) : ℂ) * v + (normSq w : ℂ) = _
  rw [← Complex.add_conj, ← Complex.mul_conj]
  ring

private theorem cos_mul_eq_cos_mul_iff {d : ℝ} (hd : d ≠ 0) {a w : ℂ}
    (ha : |(d * a).re| < Real.pi) (hw : |(d * w).re| < Real.pi) :
    cos (d * a) = cos (d * w) ↔ w = a ∨ w = -a := by
  rw [cos_eq_cos_iff_of_abs_re_lt_pi ha hw]
  simp only [← mul_neg, mul_right_inj' (Complex.ofReal_ne_zero.mpr hd)]

/-- A real polynomial filters finitely many cosine observations and retains
its value at the selected orbit in one open period strip. -/
theorem exists_real_cosine_filter {d : ℝ} (hd : d ≠ 0) {a : ℂ} (W : Finset ℂ)
    (ha : |(d * a).re| < Real.pi)
    (hW : ∀ w ∈ W, |(d * w).re| < Real.pi ∧ w ≠ a ∧ w ≠ -a ∧ w ≠ conj a ∧ w ≠ -conj a) :
    ∃ P : Polynomial ℝ, P.eval₂ ofRealHom (cos (d * a)) ≠ 0 ∧
      ∀ w ∈ W, P.eval₂ ofRealHom (cos (d * w)) = 0 := by
  classical
  let P := ∏ w ∈ W, cosineFactor (cos (d * w))
  have hEval (z : ℂ) : P.eval₂ ofRealHom (cos (d * z)) =
      ∏ w ∈ W, (cos (d * z) - cos (d * w)) * (cos (d * z) - conj (cos (d * w))) := by
    change (eval₂RingHom ofRealHom (cos (d * z))) (∏ w ∈ W, cosineFactor (cos (d * w))) = _
    rw [map_prod]
    apply Finset.prod_congr rfl
    intro w _
    exact cosineFactor_eval _ _
  refine ⟨P, ?_, fun w hw => ?_⟩
  · rw [hEval]
    apply Finset.prod_ne_zero_iff.mpr
    intro w hw
    obtain ⟨hwRe, hwA, hwNegA, hwConjA, hwNegConjA⟩ := hW w hw
    apply mul_ne_zero
    · intro h
      rcases (cos_mul_eq_cos_mul_iff hd ha hwRe).mp (sub_eq_zero.mp h) with h | h
      · exact hwA h
      · exact hwNegA h
    · intro h
      have hRe : |(d * conj w).re| < Real.pi := by
        rw [show (d * conj w : ℂ) = conj (d * w) by simp]
        simpa only [conj_re] using hwRe
      have hCos : cos (d * a) = cos (d * conj w) := by
        rw [show (d * conj w : ℂ) = conj (d * w) by simp, cos_conj]
        exact sub_eq_zero.mp h
      rcases (cos_mul_eq_cos_mul_iff hd ha hRe).mp hCos with h | h
      · exact hwConjA (by simpa using congrArg conj h)
      · exact hwNegConjA (by simpa using congrArg conj h)
  · rw [hEval]
    exact Finset.prod_eq_zero hw (by simp)

end GRWTSK.ComplexAnalysis.OddCosWindow
