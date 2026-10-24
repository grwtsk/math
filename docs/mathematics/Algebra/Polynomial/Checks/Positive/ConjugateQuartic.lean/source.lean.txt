import GRWTSK.Algebra.Polynomial.ConjugateQuartic

open GRWTSK.Polynomial.ConjugateQuartic

-- These bind the displayed detector to actual polynomial evaluation and all four roots.
example (a t : ℝ) :
    signedTrace a t (quadratic (a ^ 2 - t ^ 2) a 1) =
      ((-4 * a ^ 2 * (a ^ 2 + 3 * t ^ 2) : ℝ) : ℂ) := by
  rw [signedTrace_quadratic]
  congr 1
  ring

example (a t : ℝ) : 0 ≤ witnessTrace a t ↔ a = 0 := witnessTrace_nonneg_iff a t
example (a t : ℝ) :
    (∀ c₀ c₁ c₂, 0 ≤ quadraticTrace a t c₀ c₁ c₂) ↔ a = 0 :=
  quadraticTrace_nonneg_iff a t
example : witnessTrace 1 0 = -4 := by norm_num [witnessTrace_eq]
example : quadraticTrace 1 0 1 0 1 = 0 := by norm_num [quadraticTrace_eq]
example : roots 1 0 = [Complex.I, -Complex.I, Complex.I, -Complex.I] := by
  simp [roots]
-- Absolute squares are positive at the same fixture where the signed trace is negative.
example : ((roots 1 0).map fun r =>
    Complex.normSq ((quadratic 1 1 1).eval₂ Complex.ofRealHom r)).sum = 4 := by
  norm_num [roots, quadratic, Complex.normSq_apply, Complex.mul_re, Complex.mul_im, pow_two]
