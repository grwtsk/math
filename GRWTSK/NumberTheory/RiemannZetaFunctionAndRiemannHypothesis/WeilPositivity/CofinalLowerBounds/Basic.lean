import Mathlib.Data.Real.Basic
import Mathlib.Tactic

/-!
# Cofinal lower-bound certificates for a Weil-positivity research program

This file proves elementary implications about real-valued forms and scalar
block bounds. It does not construct the Weil form, prove the explicit formula,
assert a spectral estimate for that form, or prove the Riemann hypothesis.

Status: source draft; not elaborated or kernel-checked in this research session.
The accompanying research note records all analytic obligations separately.
-/

namespace GRWTSK.NumberTheory.RiemannZetaFunctionAndRiemannHypothesis.WeilPositivity

namespace Approximation

/-- An arbitrarily small additive lower-bound error forces nonnegativity. -/
theorem nonneg_of_arbitrarily_small_error (q : ℝ)
    (h : ∀ ε : ℝ, 0 < ε → -ε ≤ q) : 0 ≤ q := by
  by_contra hn
  have hq : q < 0 := lt_of_not_ge hn
  have he : 0 < -q / 2 := by linarith
  have hb := h (-q / 2) he
  linarith

/-- The same implication with a fixed, finite, nonnegative energy weight. -/
theorem nonneg_of_weighted_error (q w : ℝ) (hw : 0 ≤ w)
    (h : ∀ ε : ℝ, 0 < ε → -ε * w ≤ q) : 0 ≤ q := by
  apply nonneg_of_arbitrarily_small_error
  intro ε hε
  have hw1 : 0 < w + 1 := by linarith
  let d : ℝ := ε / (w + 1)
  have hd : 0 < d := div_pos hε hw1
  have hid : d * (w + 1) = ε := by
    dsimp [d]
    field_simp [ne_of_gt hw1]
  have hb := h d hd
  nlinarith

/-- A decreasing sequence with asymptotically vanishing negative allowance
is nonnegative at every index. -/
theorem antitone_nonneg_of_eventual_lower_bound (a : ℕ → ℝ)
    (ha : Antitone a)
    (hlower : ∀ ε : ℝ, 0 < ε →
      ∃ N : ℕ, ∀ n : ℕ, N ≤ n → -ε ≤ a n) :
    ∀ n : ℕ, 0 ≤ a n := by
  intro n
  apply nonneg_of_arbitrarily_small_error
  intro ε hε
  obtain ⟨N, hN⟩ := hlower ε hε
  exact (hN (max n N) (le_max_right n N)).trans
    (ha (le_max_left n N))

/-- Nested domains covering all tests turn eventual uniform lower bounds
into positivity on every test. No spectral infimum is needed. -/
theorem nonneg_of_cofinal_lower_bounds {α : Type*}
    (V : ℕ → α → Prop) (Q E : α → ℝ)
    (hcover : ∀ v : α, ∃ n : ℕ, V n v)
    (hnested : ∀ {m n : ℕ}, m ≤ n → ∀ v : α, V m v → V n v)
    (hE : ∀ v : α, 0 ≤ E v)
    (hlower : ∀ ε : ℝ, 0 < ε → ∃ N : ℕ,
      ∀ n : ℕ, N ≤ n → ∀ v : α, V n v → -ε * E v ≤ Q v) :
    ∀ v : α, 0 ≤ Q v := by
  intro v
  apply nonneg_of_weighted_error (Q v) (E v) (hE v)
  intro ε hε
  obtain ⟨m, hm⟩ := hcover v
  obtain ⟨N, hN⟩ := hlower ε hε
  exact hN (max m N) (le_max_right m N) v
    (hnested (le_max_left m N) v hm)

end Approximation

namespace Block

/-- Division-free Schur-complement identity. -/
theorem schur_identity (a b c d x y : ℝ) :
    c * ((a + d) * x ^ 2 - 2 * b * x * y + c * y ^ 2) =
      (c * y - b * x) ^ 2 + ((a + d) * c - b ^ 2) * x ^ 2 := by
  ring

/-- A scalar block estimate allowing a nonnegative error `d`. -/
theorem lower_bound (a b c d x y : ℝ) (hc : 0 < c) (hd : 0 ≤ d)
    (hschur : b ^ 2 ≤ (a + d) * c) :
    -d * (x ^ 2 + y ^ 2) ≤ a * x ^ 2 - 2 * b * x * y + c * y ^ 2 := by
  have hprod : 0 ≤ ((a + d) * c - b ^ 2) * x ^ 2 :=
    mul_nonneg (sub_nonneg.mpr hschur) (sq_nonneg x)
  have hmul : 0 ≤ c * ((a + d) * x ^ 2 - 2 * b * x * y + c * y ^ 2) := by
    rw [schur_identity]
    exact add_nonneg (sq_nonneg (c * y - b * x)) hprod
  have hmain : 0 ≤ (a + d) * x ^ 2 - 2 * b * x * y + c * y ^ 2 := by
    by_contra hn
    have hneg : (a + d) * x ^ 2 - 2 * b * x * y + c * y ^ 2 < 0 :=
      lt_of_not_ge hn
    exact (not_lt_of_ge hmul) (mul_neg_of_pos_of_neg hc hneg)
  have hdy : 0 ≤ d * y ^ 2 := mul_nonneg hd (sq_nonneg y)
  nlinarith

/-- Data which an analytic or validated-numerical argument must supply.
The inequalities are hypotheses; this structure does not assert existence. -/
structure Certificate {α : Type*} (V : α → Prop) (Q E : α → ℝ) where
  low : ℝ
  cross : ℝ
  tail : ℝ
  defect : ℝ
  tail_pos : 0 < tail
  defect_nonneg : 0 ≤ defect
  schur : cross ^ 2 ≤ (low + defect) * tail
  x : α → ℝ
  y : α → ℝ
  energy : ∀ v : α, V v → E v = x v ^ 2 + y v ^ 2
  form_lower : ∀ v : α, V v →
    low * x v ^ 2 - 2 * cross * x v * y v + tail * y v ^ 2 ≤ Q v

/-- Every valid block certificate supplies a lower bound for the whole form. -/
theorem Certificate.bounds {α : Type*} {V : α → Prop} {Q E : α → ℝ}
    (C : Certificate V Q E) (v : α) (hv : V v) :
    -C.defect * E v ≤ Q v := by
  rw [C.energy v hv]
  exact (lower_bound C.low C.cross C.tail C.defect (C.x v) (C.y v)
    C.tail_pos C.defect_nonneg C.schur).trans (C.form_lower v hv)

/-- A sequence of certificates with vanishing defects proves positivity.
Constructing such certificates for the genuine Weil form remains open here. -/
theorem nonneg_of_cofinal_certificates {α : Type*}
    (V : ℕ → α → Prop) (Q E : α → ℝ)
    (hcover : ∀ v : α, ∃ n : ℕ, V n v)
    (hnested : ∀ {m n : ℕ}, m ≤ n → ∀ v : α, V m v → V n v)
    (hE : ∀ v : α, 0 ≤ E v)
    (C : ∀ n : ℕ, Certificate (V n) Q E)
    (hdefect : ∀ ε : ℝ, 0 < ε →
      ∃ N : ℕ, ∀ n : ℕ, N ≤ n → (C n).defect ≤ ε) :
    ∀ v : α, 0 ≤ Q v := by
  apply Approximation.nonneg_of_cofinal_lower_bounds V Q E hcover hnested hE
  intro ε hε
  obtain ⟨N, hN⟩ := hdefect ε hε
  refine ⟨N, ?_⟩
  intro n hn v hv
  have hb := (C n).bounds v hv
  have hm := mul_le_mul_of_nonneg_right (hN n hn) (hE v)
  linarith

end Block

namespace Counterexample

/-- A small positive trial value can coexist with a fixed negative direction. -/
def diagonalForm (ε x y : ℝ) : ℝ := -(x ^ 2) + ε * y ^ 2

theorem trial_energy (ε : ℝ) : diagonalForm ε 0 1 = ε := by
  simp [diagonalForm]

theorem hidden_negative_direction (ε : ℝ) : diagonalForm ε 1 0 = -1 := by
  norm_num [diagonalForm]

end Counterexample

namespace Correlation

/-- The two-vertex chain estimate underlying the half-support overlap bound. -/
theorem two_vertex_bound (x y : ℝ) : 2 * |x * y| ≤ x ^ 2 + y ^ 2 := by
  rw [abs_mul]
  nlinarith [sq_nonneg (|x| - |y|), sq_abs x, sq_abs y]

end Correlation

namespace ZeroGeometry

/-- Coordinate geometry only. The two zero-free bounds must be supplied
separately; this declaration does not import or prove either analytic bound. -/
theorem strip_of_reflected_seven_eighths_bounds (x y : ℝ)
    (hcoords : x = 1 / 2 - y)
    (hx : x ≤ 7 / 8) (hreflected : 1 - x ≤ 7 / 8) :
    |y| ≤ 3 / 8 := by
  apply abs_le.mpr
  constructor <;> linarith

end ZeroGeometry

end GRWTSK.NumberTheory.RiemannZetaFunctionAndRiemannHypothesis.WeilPositivity
