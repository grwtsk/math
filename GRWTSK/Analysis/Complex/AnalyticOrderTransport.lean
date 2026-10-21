/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Proof drafting assistance: OpenAI.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Analysis.Analytic.Order
import Mathlib.Analysis.Calculus.Deriv.Star
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic.FunProp
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.LinearCombination

set_option autoImplicit false

/-!
# Analytic-order transport through actual function identities

Conjugation acts on BOTH the argument and the value. It is not a complex-linear
coordinate change. The derivative identity handles that case separately from
the invertible holomorphic map w -> 1-w and a nonvanishing analytic multiplier.
These are elementary source drafts using pinned Mathlib, not new analytic results.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.AnalyticOrderTransport

open scoped ComplexConjugate

/-- Double conjugation commutes with every iterated derivative. The underlying
Mathlib derivative is totalized; this identity alone asserts no analyticity. -/
theorem iteratedDeriv_conjugate_pullback (f : ℂ → ℂ) (n : ℕ) :
    iteratedDeriv n (conj ∘ f ∘ conj) = conj ∘ iteratedDeriv n f ∘ conj := by
  induction n with
  | zero => simp
  | succ n ih =>
      rw [iteratedDeriv_succ, ih, deriv_conj_conj, iteratedDeriv_succ]

/-- Actual value equivariance plus analyticity at BOTH points preserves order.
Zero-set equivariance alone is not the hypothesis used in this theorem. -/
theorem order_conjugate_of_equivariant (f : ℂ → ℂ) (z : ℂ)
    (equivariant : ∀ w, f (conj w) = conj (f w))
    (analytic : AnalyticAt ℂ f z) (conjugateAnalytic : AnalyticAt ℂ f (conj z)) :
    analyticOrderAt f (conj z) = analyticOrderAt f z := by
  have fixed : conj ∘ f ∘ conj = f := by
    funext w
    simp [Function.comp_def, equivariant]
  have derivativeFixed (n : ℕ) :
      conj ∘ iteratedDeriv n f ∘ conj = iteratedDeriv n f := by
    rw [← iteratedDeriv_conjugate_pullback, fixed]
  apply ENat.eq_of_forall_natCast_le_iff
  intro n
  rw [natCast_le_analyticOrderAt_iff_iteratedDeriv_eq_zero conjugateAnalytic,
    natCast_le_analyticOrderAt_iff_iteratedDeriv_eq_zero analytic]
  apply forall_congr'
  intro i
  apply forall_congr'
  intro hi
  have same := congrFun (derivativeFixed i) z
  change conj (iteratedDeriv i f (conj z)) = iteratedDeriv i f z at same
  rw [← same]
  simp

/-- The holomorphic reflection has derivative -1, not zero. This is distinct
from the antiholomorphic critical reflection w -> 1-conj(w). -/
theorem order_one_sub (f : ℂ → ℂ) (z : ℂ) :
    analyticOrderAt (f ∘ (fun w : ℂ => 1 - w)) z = analyticOrderAt f (1 - z) := by
  have derivative : deriv (fun w : ℂ => 1 - w) z = -1 := by
    simpa using ((hasDerivAt_const z (1 : ℂ)).sub (hasDerivAt_id z)).deriv
  apply analyticOrderAt_comp_of_deriv_ne_zero
  · fun_prop
  · rw [derivative]
    norm_num

/-- A multiplier may be discarded from the order only after its analyticity
and nonvanishing at the SAME point have been established. -/
theorem order_mul_nonzero_right (f g : ℂ → ℂ) (z : ℂ)
    (hf : AnalyticAt ℂ f z) (hg : AnalyticAt ℂ g z) (nonzero : g z ≠ 0) :
    analyticOrderAt (f * g) z = analyticOrderAt f z := by
  rw [analyticOrderAt_mul hf hg, hg.analyticOrderAt_eq_zero.mpr nonzero, add_zero]

/-- A nonzero multiplier leaves a repeated zero repeated. -/
theorem nonzero_multiplier_fixture :
    analyticOrderAt (fun z : ℂ => z ^ 3 * 2) 0 = 3 := by
  have unchanged := order_mul_nonzero_right (fun z : ℂ => z ^ 3)
    (fun _ => 2) 0 (by fun_prop) (by fun_prop) (by norm_num)
  have monomial := analyticOrderAt_centeredMonomial (𝕜 := ℂ) (z₀ := 0) (n := 3)
  simpa using unchanged.trans (by simpa using monomial)

/-- Multiplication by a vanishing factor changes order. -/
theorem vanishing_multiplier_fixture :
    analyticOrderAt (fun z : ℂ => z * z) 0 = 2 ∧
      analyticOrderAt (fun z : ℂ => z) 0 = 1 := by
  constructor
  · simpa [pow_two] using
      (analyticOrderAt_centeredMonomial (𝕜 := ℂ) (z₀ := 0) (n := 2))
  · exact analyticOrderAt_id

/-- A ramified chart cannot use the nonzero-derivative transport rule. -/
theorem ramified_coordinate_fixture :
    analyticOrderAt ((fun z : ℂ => z ^ 3) ∘ (fun z => z ^ 2)) 0 = 6 := by
  simpa [Function.comp_def, ← pow_mul] using
    (analyticOrderAt_centeredMonomial (𝕜 := ℂ) (z₀ := 0) (n := 6))

/-- This polynomial has a reflection-invariant zero SET but unequal orders at
its two reflected points. It is a control, not the Riemann zeta function. -/
theorem same_zero_set_unequal_orders_fixture :
    (∀ z : ℂ, (1 - z) * ((1 - z) - 1) ^ 2 = 0 ↔ z * (z - 1) ^ 2 = 0) ∧
      analyticOrderAt (fun z : ℂ => z * (z - 1) ^ 2) 0 = 1 ∧
      analyticOrderAt (fun z : ℂ => z * (z - 1) ^ 2) 1 = 2 := by
  have zeros (z : ℂ) : z * (z - 1) ^ 2 = 0 ↔ z = 0 ∨ z = 1 := by
    simp [mul_eq_zero, sub_eq_zero]
  refine ⟨?_, ?_, ?_⟩
  · intro z
    rw [zeros (1 - z), zeros z]
    constructor
    · rintro (h | h)
      · right
        linear_combination -h
      · left
        linear_combination -h
    · rintro (h | h)
      · right
        rw [h]
        norm_num
      · left
        rw [h]
        norm_num
  · have unchanged := order_mul_nonzero_right (fun z : ℂ => z)
      (fun z => (z - 1) ^ 2) 0 (by fun_prop) (by fun_prop) (by norm_num)
    exact unchanged.trans analyticOrderAt_id
  · have unchanged := order_mul_nonzero_right (fun z : ℂ => (z - 1) ^ 2)
      (fun z => z) 1 (by fun_prop) (by fun_prop) (by norm_num)
    have monomial := analyticOrderAt_centeredMonomial (𝕜 := ℂ) (z₀ := 1) (n := 2)
    simpa [mul_comm] using unchanged.trans monomial

end GRWTSK.Analysis.Complex.AnalyticOrderTransport
