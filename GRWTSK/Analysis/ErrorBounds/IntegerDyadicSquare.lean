/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalExpStateFold
import Mathlib.Algebra.Order.Floor.Ring

set_option autoImplicit false

/-!
# Integer-scaled reconstruction of the exact rounded complex square

Three unbounded integers represent BOTH midpoint coordinates and the full radius
on the fixed positive dyadic grid. Signed Euclidean division implements floor;
negated floor implements ceiling. No machine word, overflow, alternate radius,
external state certificate or analytic-domain extension is introduced.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ErrorBounds.IntegerDyadicSquare

open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude)

/-- Positive at every natural precision, including zero. -/
def scale (bits : ℕ) : ℤ := 2^bits

theorem scale_pos (bits : ℕ) : 0 < scale bits := by unfold scale; positivity

theorem scale_cast (bits : ℕ) : (scale bits : ℚ) = denominator bits := by
  simp [scale, denominator]

/-- The denominator is positive at every use. This is ceiling, not truncation. -/
def ceilDiv (a d : ℤ) : ℤ := -((-a) / d)

theorem floor_ratio (a : ℤ) {d : ℤ} (hd : 0 < d) :
    ⌊(a : ℚ)/(d : ℚ)⌋ = a/d := by
  rw [Int.floor_div_cast_of_nonneg hd.le, Int.floor_intCast]

theorem ceil_ratio (a : ℤ) {d : ℤ} (hd : 0 < d) :
    ⌈(a : ℚ)/(d : ℚ)⌉ = ceilDiv a d := by
  calc
    _ = -⌊((-a : ℤ) : ℚ)/(d : ℚ)⌋ := by
      simp only [Int.cast_neg, neg_div, Int.floor_neg, neg_neg]
    _ = _ := by rw [floor_ratio (-a) hd]; rfl

/-- Scale the square denominator BEFORE taking the signed coordinate floor. -/
theorem down_square_ratio (bits : ℕ) (a : ℤ) :
    down bits ((a : ℚ)/(scale bits : ℚ)^2) =
      ((a / scale bits : ℤ) : ℚ)/(scale bits : ℚ) := by
  have hd : (scale bits : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt (scale_pos bits))
  have he : ((a : ℚ)/(scale bits : ℚ)^2)*(scale bits : ℚ) =
      (a : ℚ)/(scale bits : ℚ) := by field_simp; ring
  unfold down
  simp only [← scale_cast bits]
  rw [he, floor_ratio a (scale_pos bits)]

/-- Round the COMPLETE error numerator upward on the SAME dyadic grid. -/
theorem up_square_ratio (bits : ℕ) (a : ℤ) :
    up bits ((a : ℚ)/(scale bits : ℚ)^2) =
      (ceilDiv a (scale bits) : ℚ)/(scale bits : ℚ) := by
  have hd : (scale bits : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt (scale_pos bits))
  have he : ((a : ℚ)/(scale bits : ℚ)^2)*(scale bits : ℚ) =
      (a : ℚ)/(scale bits : ℚ) := by field_simp; ring
  unfold up
  simp only [← scale_cast bits]
  rw [he, ceil_ratio a (scale_pos bits)]

/-- An arithmetic representation, not evidence that its decoded radius is valid. -/
structure State where
  re : ℤ
  im : ℤ
  error : ℤ
  deriving DecidableEq

def decode (bits : ℕ) (x : State) : Ball :=
  ⟨((x.re : ℚ)/(scale bits : ℚ), (x.im : ℚ)/(scale bits : ℚ)),
    (x.error : ℚ)/(scale bits : ℚ)⟩

def realNumerator (x : State) : ℤ := x.re^2-x.im^2

def imagNumerator (x : State) : ℤ := 2*x.re*x.im

/-- Both coordinate displacements are charged, even for negative raw values. -/
def residual (bits : ℕ) (x : State) : ℤ :=
  |(realNumerator x / scale bits)*scale bits-realNumerator x| +
  |(imagNumerator x / scale bits)*scale bits-imagNumerator x|

/-- Every operation in this transition is integer arithmetic. -/
def step (bits : ℕ) (x : State) : State :=
  ⟨realNumerator x / scale bits, imagNumerator x / scale bits,
    ceilDiv (2*x.error*scale bits+x.error^2+residual bits x) (scale bits)⟩

def raw (bits : ℕ) (x : State) : Coordinates :=
  ((realNumerator x : ℚ)/(scale bits : ℚ)^2,
    (imagNumerator x : ℚ)/(scale bits : ℚ)^2)

theorem raw_eq (bits : ℕ) (x : State) :
    raw bits x = mul (decode bits x).mid (decode bits x).mid := by
  have hd : (scale bits : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt (scale_pos bits))
  apply Prod.ext <;>
    simp only [raw, decode, realNumerator, imagNumerator, mul,
      Int.cast_sub, Int.cast_pow, Int.cast_mul, Int.cast_ofNat] <;>
    field_simp <;> ring

theorem midpoint_eq (bits : ℕ) (x : State) :
    (decode bits (step bits x)).mid = rounded bits (raw bits x) := by
  apply Prod.ext <;>
    simp only [decode, step, rounded, raw, down_square_ratio]

/-- The integer residual numerator decodes to the OLD L1 square displacement. -/
theorem residual_eq (bits : ℕ) (x : State) :
    magnitude (sub (decode bits (step bits x)).mid (raw bits x)) =
      (residual bits x : ℚ)/(scale bits : ℚ)^2 := by
  have hd : (scale bits : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt (scale_pos bits))
  have hdiff (a u : ℤ) : (a : ℚ)/(scale bits : ℚ) -
      (u : ℚ)/(scale bits : ℚ)^2 =
      ((a*scale bits-u : ℤ) : ℚ)/(scale bits : ℚ)^2 := by
    push_cast
    field_simp
    ring
  simp only [magnitude, sub, decode, step, raw, hdiff, residual,
    Int.cast_add, Int.cast_abs, abs_div, abs_of_nonneg (sq_nonneg (scale bits : ℚ))]
  rw [add_div]

theorem radius_input_eq (bits : ℕ) (x : State) :
    2*(decode bits x).rad+(decode bits x).rad^2+
      magnitude (sub (decode bits (step bits x)).mid (raw bits x)) =
    ((2*x.error*scale bits+x.error^2+residual bits x : ℤ) : ℚ)/(scale bits : ℚ)^2 := by
  rw [residual_eq]
  have hd : (scale bits : ℚ) ≠ 0 := by exact_mod_cast (ne_of_gt (scale_pos bits))
  simp only [decode]
  push_cast
  field_simp
  ring

/-- Exact refinement of ALL THREE rational output fields. This also holds for
arithmetic states outside semantic guards, without certifying such states. -/
theorem step_refines (bits j : ℕ) (x : State) :
    decode bits (step bits x) = RationalExpStateFold.squareStep bits j (decode bits x) := by
  change Ball.mk (decode bits (step bits x)).mid (decode bits (step bits x)).rad = _
  apply congrArg₂ Ball.mk
  · simpa only [RationalExpStateFold.squareStep, ← raw_eq bits x] using midpoint_eq bits x
  · change ((ceilDiv (2*x.error*scale bits+x.error^2+residual bits x) (scale bits) : ℤ) : ℚ) /
        (scale bits : ℚ) = up bits _
    simp only [← raw_eq bits x, ← midpoint_eq bits x, radius_input_eq, up_square_ratio]

end GRWTSK.Analysis.ErrorBounds.IntegerDyadicSquare
