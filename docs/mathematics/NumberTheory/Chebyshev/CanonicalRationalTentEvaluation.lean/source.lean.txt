/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.RationalTentAccumulation
import GRWTSK.NumberTheory.Chebyshev.CanonicalTentPrimeCriterion

set_option autoImplicit false

/-!
# Rational finite sums and the exact canonical zero-head boundary

Numerical acceptance is NOT acceptance of a zero database. HeadBinding requires
a bijection to the SAME complete closed-height head, exact actual analytic
multiplicities, and proved coordinate enclosures for each mapped point. None
of those facts is inferred from a small arithmetic error or matching lengths.
The prime margin and complete omitted tail are unchanged.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation

open scoped BigOperators
open GRWTSK.Analysis.Complex.RationalRoundedArithmetic
open GRWTSK.Analysis.Complex.RationalTentAccumulation
open GRWTSK.Analysis.Complex.TentMellinKernel
open GRWTSK.RiemannHypothesis.CanonicalZeroDivisor
open TentSource SignedTentCorrection CanonicalTentPrimeCriterion

/-- Semantic source evidence, deliberately NOT a decidable numeric guard. -/
structure HeadBinding (T : ℝ) {k : ℕ} (rows : Fin k → WeightedInput) where
  index : Fin k ≃ ↥(heightHead T)
  weight_eq : ∀ i, (rows i).weight = multiplicity (index i).1
  coordinate : ∀ i, ‖(index i).1.1 - QComplex.embed (rows i).point.center‖ ≤
    ((rows i).point.coordinateError : ℝ)

def squareCenterQ (n : ℕ) : ℚ := ((n : ℚ) ^ 2 + ((n : ℚ) + 1) ^ 2) / 2
def squareRadiusQ (n : ℕ) : ℚ := (2 * (n : ℚ) + 1) / 2

@[simp] theorem cast_squareCenterQ (n : ℕ) : (squareCenterQ n : ℝ) = squareCenter n := by
  simp [squareCenterQ, squareCenter]

@[simp] theorem cast_squareRadiusQ (n : ℕ) : (squareRadiusQ n : ℝ) = squareRadius n := by
  simp [squareRadiusQ, squareRadius]

/-- Exact equality of finite sources, not just of their counts or heights. -/
theorem head_eq_bound_sum (x h T : ℝ) {k : ℕ} (rows : Fin k → WeightedInput)
    (binding : HeadBinding T rows) :
    (∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel x h z.1) =
      ∑ i, ((rows i).weight : ℂ) * tentKernel x h (binding.index i).1.1 := by
  classical
  calc
    _ = ∑ z : ↥(heightHead T), (multiplicity z.1 : ℂ) * tentKernel x h z.1.1 := by
      rw [Finset.sum_coe_sort]
    _ = ∑ i : Fin k, (multiplicity (binding.index i).1 : ℂ) *
        tentKernel x h (binding.index i).1.1 := (Equiv.sum_comp binding.index _).symm
    _ = _ := by
      apply Finset.sum_congr rfl
      intro i _
      rw [binding.weight_eq i]

/-- Arithmetic acceptance plus explicit source binding supplies the parent head premise. -/
theorem verified_head_sound (x h : ℚ) (T : ℝ) (bits : ℕ) {k : ℕ}
    (rows : Fin k → WeightedInput) (binding : HeadBinding T rows)
    (tolerance : ℚ) (out : State)
    (hv : verify x h bits rows tolerance out = true) :
    ‖(∑ z ∈ heightHead T, (multiplicity z : ℂ) * tentKernel (x : ℝ) (h : ℝ) z.1) -
      QComplex.embed out.value‖ ≤ (out.error : ℝ) ∧ out.error ≤ tolerance := by
  obtain ⟨hg, ht, rfl⟩ := (verify_iff x h bits rows tolerance out).mp hv
  constructor
  · rw [head_eq_bound_sum (x : ℝ) (h : ℝ) T rows binding]
    exact compute_sound x h bits rows hg (fun i => (binding.index i).1.1)
      (fun i => (point_mem_strip (binding.index i).1).2.le) binding.coordinate
  · exact ht

/-- No supplied whole-head analytic enclosure. The exact source binding and
STRICT prime margin remain independent requirements; tolerance alone is not a margin. -/
theorem prime_in_square_of_verified_rational_head (n : ℕ) (hn : 2 ≤ n)
    (T : ℝ) (hT : 2 ≤ T) (bits : ℕ) {k : ℕ} (rows : Fin k → WeightedInput)
    (binding : HeadBinding T rows) (tolerance : ℚ) (out : State)
    (hv : verify (squareCenterQ n) (squareRadiusQ n) bits rows tolerance out = true)
    (hmargin : 0 < canonicalPrimeMargin n T
      ((QComplex.embed out.value).re + (out.error : ℝ)) (-squareTrivialBudget n)) :
    ∃ p : ℕ, Nat.Prime p ∧ n ^ 2 < p ∧ p < (n + 1) ^ 2 := by
  have he := (verified_head_sound (squareCenterQ n) (squareRadiusQ n) T bits
    rows binding tolerance out hv).1
  simp only [cast_squareCenterQ, cast_squareRadiusQ] at he
  exact prime_in_square_of_canonical_tent n hn T hT (QComplex.embed out.value)
    (out.error : ℝ) he hmargin

end GRWTSK.NumberTheory.Chebyshev.CanonicalRationalTentEvaluation
