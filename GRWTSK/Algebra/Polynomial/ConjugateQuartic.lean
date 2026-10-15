/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction and single witness: grwtsk contributors,
supplied GRL-RH-1 / 0.4.0 specification. Formalization assistance: OpenAI Codex.
Context: M. B. Nathanson, The Hermite-Sylvester criterion for real-rooted
polynomials, arXiv:1911.01745. Mathlib retains its upstream authorship/license. -/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Algebra.Polynomial.Eval.Defs
import Mathlib.Tactic.Ring
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Positivity

/-!
# Signed polynomial-square traces on a conjugate quartic

The four entries are a list, retaining repeated roots on either axis. This is
a signed trace of squares, never a sum of squared absolute values. All results
are algebraic and make no assertion about zeros of an analytic function.
-/

open Polynomial Complex

set_option autoImplicit false

namespace GRWTSK.Polynomial.ConjugateQuartic

/-- Four formal roots, including their list multiplicities. -/
def roots (a t : ℝ) : List ℂ :=
  [t + I * a, t - I * a, -t + I * a, -t - I * a]

/-- The monic real quartic with the displayed factorization. -/
noncomputable def quartic (a t : ℝ) : Polynomial ℝ :=
  ((X - C t) ^ 2 + C (a ^ 2)) * ((X + C t) ^ 2 + C (a ^ 2))

/-- A real polynomial of degree at most two, including lower-degree cases. -/
noncomputable def quadratic (c₀ c₁ c₂ : ℝ) : Polynomial ℝ :=
  C c₀ + C c₁ * X + C c₂ * X ^ 2

/-- The actual complex trace, evaluated at all four list entries. -/
noncomputable def signedTrace (a t : ℝ) (p : Polynomial ℝ) : ℂ :=
  ((roots a t).map fun r => (p.eval₂ Complex.ofRealHom r) ^ 2).sum

/-- The real signed trace; the accompanying identity also proves reality. -/
noncomputable def quadraticTrace (a t c₀ c₁ c₂ : ℝ) : ℝ :=
  (signedTrace a t (quadratic c₀ c₁ c₂)).re

theorem quartic_expansion (a t : ℝ) :
    quartic a t = X ^ 4 + C (2 * (a ^ 2 - t ^ 2)) * X ^ 2 +
      C ((a ^ 2 + t ^ 2) ^ 2) := by
  simp only [quartic, map_mul, map_sub, map_add, map_pow, map_ofNat]
  ring

theorem quartic_eval_roots (a t : ℝ) (r : ℂ) (hr : r ∈ roots a t) :
    (quartic a t).eval₂ Complex.ofRealHom r = 0 := by
  simp only [roots, List.mem_cons, List.not_mem_nil, or_false] at hr
  rcases hr with rfl | rfl | rfl | rfl <;>
    apply Complex.ext <;>
    simp [quartic, Complex.mul_re, Complex.mul_im, pow_two]

/-- Newton-sum expression, proved from polynomial evaluation at the actual roots. -/
theorem signedTrace_quadratic (a t c₀ c₁ c₂ : ℝ) :
    signedTrace a t (quadratic c₀ c₁ c₂) =
      ((4 * c₀ ^ 2 + 4 * (t ^ 2 - a ^ 2) * (c₁ ^ 2 + 2 * c₀ * c₂) +
        4 * (t ^ 4 - 6 * a ^ 2 * t ^ 2 + a ^ 4) * c₂ ^ 2 : ℝ) : ℂ) := by
  apply Complex.ext <;>
    simp only [Complex.ofReal_re, Complex.ofReal_im] <;>
    simp [signedTrace, roots, quadratic, Complex.mul_re, Complex.mul_im, pow_two] <;>
    ring

theorem quadraticTrace_eq (a t c₀ c₁ c₂ : ℝ) :
    quadraticTrace a t c₀ c₁ c₂ =
      4 * c₀ ^ 2 + 4 * (t ^ 2 - a ^ 2) * (c₁ ^ 2 + 2 * c₀ * c₂) +
        4 * (t ^ 4 - 6 * a ^ 2 * t ^ 2 + a ^ 4) * c₂ ^ 2 := by
  unfold quadraticTrace
  rw [signedTrace_quadratic]
  rfl

/-- The single quadratic test in the supplied specification. -/
noncomputable def witnessTrace (a t : ℝ) : ℝ :=
  quadraticTrace a t (a ^ 2 - t ^ 2) a 1

theorem witnessTrace_eq (a t : ℝ) :
    witnessTrace a t = -4 * a ^ 2 * (a ^ 2 + 3 * t ^ 2) := by
  rw [witnessTrace, quadraticTrace_eq]
  ring

theorem witnessTrace_neg {a : ℝ} (ha : a ≠ 0) (t : ℝ) : witnessTrace a t < 0 := by
  rw [witnessTrace_eq]
  have ha₂ : 0 < a ^ 2 := sq_pos_of_ne_zero ha
  have ht₂ : 0 ≤ t ^ 2 := sq_nonneg t
  have hpos : 0 < a ^ 2 + 3 * t ^ 2 := by positivity
  have : 0 < a ^ 2 * (a ^ 2 + 3 * t ^ 2) := mul_pos ha₂ hpos
  nlinarith

theorem witnessTrace_nonneg_iff (a t : ℝ) : 0 ≤ witnessTrace a t ↔ a = 0 := by
  constructor
  · intro h
    by_contra ha
    exact (not_lt_of_ge h) (witnessTrace_neg ha t)
  · rintro rfl
    simp [witnessTrace_eq]

/-- Special Hermite-form criterion: quadratic tests already detect this quartic. -/
theorem quadraticTrace_nonneg_iff (a t : ℝ) :
    (∀ c₀ c₁ c₂, 0 ≤ quadraticTrace a t c₀ c₁ c₂) ↔ a = 0 := by
  constructor
  · intro h
    exact (witnessTrace_nonneg_iff a t).mp (h (a ^ 2 - t ^ 2) a 1)
  · rintro rfl c₀ c₁ c₂
    rw [quadraticTrace_eq]
    have h₀ := sq_nonneg (c₀ + t ^ 2 * c₂)
    have h₁ := mul_nonneg (sq_nonneg t) (sq_nonneg c₁)
    nlinarith

/-- The even test misses every off-axis point at zero height. -/
theorem even_test_trace (a t : ℝ) :
    quadraticTrace a t (a ^ 2 - t ^ 2) 0 1 = -16 * a ^ 2 * t ^ 2 := by
  rw [quadraticTrace_eq]
  ring

theorem witnessTrace_zero_height (a : ℝ) : witnessTrace a 0 = -4 * a ^ 4 := by
  rw [witnessTrace_eq]
  ring

end GRWTSK.Polynomial.ConjugateQuartic
