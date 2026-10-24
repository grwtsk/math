/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ComplexAnalysis.DyadicExponentialEnclosure
import Mathlib.Algebra.Order.Floor.Ring

set_option autoImplicit false

/-!
# Directed dyadic rounding of values AND propagated error bounds

Real and imaginary parts are rounded down using integer floor, including at
negative inputs. Error bounds are rounded up using negated floor. The seed
is rounded too. Every stored component and error lies on the chosen dyadic
grid. This controls denominators, not magnitudes, overflow or runtime.
This mathematical real/complex implementation is noncomputable; it is not a
byte-level rational checker. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring

open GRWTSK.Analysis.ComplexAnalysis.FiniteExponentialEnclosure
open GRWTSK.Analysis.ComplexAnalysis.DyadicExponentialEnclosure

noncomputable section

def scale (bits : ℕ) : ℝ := (2 : ℝ) ^ bits

theorem scale_pos (bits : ℕ) : 0 < scale bits := by unfold scale; positivity

def down (bits : ℕ) (x : ℝ) : ℝ := (⌊scale bits * x⌋ : ℝ) / scale bits

def up (bits : ℕ) (x : ℝ) : ℝ := -down bits (-x)

/-- The second inequality remains strict, including negative inputs. -/
theorem down_bounds (bits : ℕ) (x : ℝ) :
    down bits x ≤ x ∧ x < down bits x + 1 / scale bits := by
  have hp := scale_pos bits
  constructor
  · unfold down
    apply (div_le_iff₀ hp).mpr
    simpa only [mul_comm] using Int.floor_le (scale bits * x)
  · unfold down
    rw [← add_div]
    apply (lt_div_iff₀ hp).mpr
    simpa only [mul_comm] using Int.lt_floor_add_one (scale bits * x)

/-- Directed upward rounding never decreases a proposed error bound. -/
theorem up_bounds (bits : ℕ) (x : ℝ) :
    x ≤ up bits x ∧ up bits x < x + 1 / scale bits := by
  have h := down_bounds bits (-x)
  unfold up
  constructor <;> linarith [h.1, h.2]

theorem abs_sub_down_le (bits : ℕ) (x : ℝ) :
    |x - down bits x| ≤ 1 / scale bits := by
  have h := down_bounds bits x
  rw [abs_of_nonneg (sub_nonneg.mpr h.1)]
  linarith [h.2]

def quantize (bits : ℕ) (z : ℂ) : ℂ := ⟨down bits z.re, down bits z.im⟩

/-- Two component allowances; no square-root arithmetic is needed. -/
def roundoff (bits : ℕ) : ℝ := 2 / scale bits

theorem norm_sub_quantize_le (bits : ℕ) (z : ℂ) :
    ‖z - quantize bits z‖ ≤ roundoff bits := by
  have hr := abs_sub_down_le bits z.re
  have hi := abs_sub_down_le bits z.im
  refine (norm_le_rectNorm (z - quantize bits z)).trans ?_
  change |z.re - down bits z.re| + |z.im - down bits z.im| ≤ 2 / scale bits
  calc
    _ ≤ 1 / scale bits + 1 / scale bits := add_le_add hr hi
    _ = 2 / scale bits := by ring

theorem down_on_grid (bits : ℕ) (x : ℝ) :
    ∃ k : ℤ, down bits x = (k : ℝ) / scale bits :=
  ⟨⌊scale bits * x⌋, rfl⟩

theorem up_on_grid (bits : ℕ) (x : ℝ) :
    ∃ k : ℤ, up bits x = (k : ℝ) / scale bits := by
  refine ⟨-⌊scale bits * (-x)⌋, ?_⟩
  simp only [up, down, Int.cast_neg, neg_div]

theorem quantize_on_grid (bits : ℕ) (z : ℂ) :
    ∃ kr ki : ℤ, (quantize bits z).re = (kr : ℝ) / scale bits ∧
      (quantize bits z).im = (ki : ℝ) / scale bits := by
  obtain ⟨kr, hr⟩ := down_on_grid bits z.re
  obtain ⟨ki, hi⟩ := down_on_grid bits z.im
  exact ⟨kr, ki, hr, hi⟩

/-- Even zero squarings retain the initial rounding operation. -/
def roundedValue (bits : ℕ) (seed : ℂ) : ℕ → ℂ
  | 0 => quantize bits seed
  | j + 1 => quantize bits (roundedValue bits seed j ^ 2)

/-- Round the stored error UP after charging the seed and each local step. -/
def roundedError (bits : ℕ) (seed : ℂ) (initial : ℝ) : ℕ → ℝ
  | 0 => up bits (initial + roundoff bits)
  | j + 1 => up bits
      (roundedError bits seed initial j *
        (2 * rectNorm (roundedValue bits seed j) + roundedError bits seed initial j) +
          roundoff bits)

/-- There are no caller-supplied rounding certificates: the operation supplies them. -/
theorem rounded_chain_sound (bits : ℕ) (a seed : ℂ) (initial : ℝ)
    (hinitial : ‖a - seed‖ ≤ initial) (s : ℕ) :
    ‖squareValue a s - roundedValue bits seed s‖ ≤ roundedError bits seed initial s := by
  induction s with
  | zero =>
      change ‖a - quantize bits seed‖ ≤ up bits (initial + roundoff bits)
      calc
        _ = ‖(a - seed) + (seed - quantize bits seed)‖ := by congr 1; ring
        _ ≤ ‖a - seed‖ + ‖seed - quantize bits seed‖ := norm_add_le _ _
        _ ≤ initial + roundoff bits := add_le_add hinitial (norm_sub_quantize_le bits seed)
        _ ≤ _ := (up_bounds bits _).1
  | succ s ih =>
      change ‖squareValue a s ^ 2 - quantize bits (roundedValue bits seed s ^ 2)‖ ≤ _
      exact (norm_rounded_square_sub_le (squareValue a s) (roundedValue bits seed s)
        (quantize bits (roundedValue bits seed s ^ 2)) (roundedError bits seed initial s)
        (roundoff bits) ih (norm_sub_quantize_le bits (roundedValue bits seed s ^ 2))).trans
          (up_bounds bits _).1

/-- Value and error storage have the SAME prescribed denominator at every stage. -/
theorem rounded_state_on_grid (bits : ℕ) (seed : ℂ) (initial : ℝ) (s : ℕ) :
    (∃ kr ki : ℤ, (roundedValue bits seed s).re = (kr : ℝ) / scale bits ∧
      (roundedValue bits seed s).im = (ki : ℝ) / scale bits) ∧
    (∃ ke : ℤ, roundedError bits seed initial s = (ke : ℝ) / scale bits) := by
  cases s with
  | zero => exact ⟨quantize_on_grid bits seed, up_on_grid bits _⟩
  | succ s => exact ⟨quantize_on_grid bits _, up_on_grid bits _⟩

end
end GRWTSK.Analysis.ComplexAnalysis.DyadicRoundedSquaring
