/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.DyadicRoundedSquaring
import Mathlib.Data.Rat.Floor

set_option autoImplicit false

/-!
# Exact rational arithmetic refining the directed-rounded complex specification

Computational definitions use only rational and integer arithmetic. The map to
complex numbers is semantic and noncomputable; no computational definition
calls it. Every rounding operation, including negative components and stored
error bounds, is related to the SAME inherited operation by exact equality.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED. No Lean execution is represented.
-/

namespace GRWTSK.Analysis.Complex.RationalRoundedArithmetic

open scoped BigOperators
open GRWTSK.Analysis.Complex.FiniteExponentialEnclosure

structure QComplex where
  re : ℚ
  im : ℚ
  deriving DecidableEq, Repr

namespace QComplex

def zero : QComplex := ⟨0, 0⟩
def one : QComplex := ⟨1, 0⟩
def add (z w : QComplex) : QComplex := ⟨z.re + w.re, z.im + w.im⟩
def mul (z w : QComplex) : QComplex :=
  ⟨z.re * w.re - z.im * w.im, z.re * w.im + z.im * w.re⟩
def smul (r : ℚ) (z : QComplex) : QComplex := ⟨r * z.re, r * z.im⟩
def pow (z : QComplex) : ℕ → QComplex
  | 0 => one
  | n + 1 => mul (pow z n) z

def rect (z : QComplex) : ℚ := |z.re| + |z.im|

/-- Exactly K terms. No real exponential is evaluated in this definition. -/
def polynomial (z : QComplex) : ℕ → QComplex
  | 0 => zero
  | K + 1 => add (polynomial z K) (smul (1 / (K.factorial : ℚ)) (pow z K))

noncomputable def embed (z : QComplex) : ℂ := ⟨(z.re : ℝ), (z.im : ℝ)⟩

@[simp] theorem embed_zero : embed zero = 0 := by apply Complex.ext <;> simp [embed, zero]
@[simp] theorem embed_one : embed one = 1 := by apply Complex.ext <;> simp [embed, one]

@[simp] theorem embed_add (z w : QComplex) : embed (add z w) = embed z + embed w := by
  apply Complex.ext <;> simp [embed, add]

@[simp] theorem embed_mul (z w : QComplex) : embed (mul z w) = embed z * embed w := by
  apply Complex.ext <;> simp [embed, mul, Complex.mul_re, Complex.mul_im]

@[simp] theorem embed_smul (r : ℚ) (z : QComplex) :
    embed (smul r z) = ((r : ℝ) : ℂ) * embed z := by
  apply Complex.ext <;> simp [embed, smul, Complex.mul_re, Complex.mul_im]

@[simp] theorem embed_pow (z : QComplex) (n : ℕ) : embed (pow z n) = embed z ^ n := by
  induction n with
  | zero => simp [pow]
  | succ n ih => simp [pow, ih, pow_succ]

@[simp] theorem cast_rect (z : QComplex) : (rect z : ℝ) = rectNorm (embed z) := by
  simp [rect, rectNorm, embed]

@[simp] theorem embed_polynomial (z : QComplex) (K : ℕ) :
    embed (polynomial z K) = expPolynomial (embed z) K := by
  induction K with
  | zero => simp [polynomial, expPolynomial]
  | succ K ih =>
      rw [polynomial, embed_add, ih, embed_smul, embed_pow]
      simp [expPolynomial, Finset.sum_range_succ, div_eq_mul_inv, mul_comm]

end QComplex

/-- All computational scale factors are positive rationals, even at bits=0. -/
def scaleQ (bits : ℕ) : ℚ := (2 : ℚ) ^ bits

def downQ (bits : ℕ) (x : ℚ) : ℚ := (⌊scaleQ bits * x⌋ : ℚ) / scaleQ bits
def upQ (bits : ℕ) (x : ℚ) : ℚ := -downQ bits (-x)
def roundoffQ (bits : ℕ) : ℚ := 2 / scaleQ bits

def quantizeQ (bits : ℕ) (z : QComplex) : QComplex :=
  ⟨downQ bits z.re, downQ bits z.im⟩

structure State where
  value : QComplex
  error : ℚ
  deriving DecidableEq, Repr

/-- The seed is rounded even when the number of squarings is zero. -/
def initialState (bits : ℕ) (seed : QComplex) (initial : ℚ) : State :=
  ⟨quantizeQ bits seed, upQ bits (initial + roundoffQ bits)⟩

/-- The complete nonlinear budget is rounded UP, never toward zero. -/
def step (bits : ℕ) (a : State) : State :=
  ⟨quantizeQ bits (QComplex.mul a.value a.value),
    upQ bits (a.error * (2 * QComplex.rect a.value + a.error) + roundoffQ bits)⟩

/-- Primitive recursion on a finite squaring count, with both state components retained. -/
def run (bits : ℕ) (seed : QComplex) (initial : ℚ) : ℕ → State
  | 0 => initialState bits seed initial
  | j + 1 => step bits (run bits seed initial j)

@[simp] theorem cast_scaleQ (bits : ℕ) :
    (scaleQ bits : ℝ) = DyadicRoundedSquaring.scale bits := by
  simp [scaleQ, DyadicRoundedSquaring.scale]

/-- Pinned Rat.floor_cast is the bridge; floating-point floor is not involved. -/
@[simp] theorem cast_downQ (bits : ℕ) (x : ℚ) :
    (downQ bits x : ℝ) = DyadicRoundedSquaring.down bits (x : ℝ) := by
  unfold downQ DyadicRoundedSquaring.down
  rw [← cast_scaleQ, ← Rat.cast_mul, Rat.floor_cast]
  simp

@[simp] theorem cast_upQ (bits : ℕ) (x : ℚ) :
    (upQ bits x : ℝ) = DyadicRoundedSquaring.up bits (x : ℝ) := by
  simp [upQ, DyadicRoundedSquaring.up]

@[simp] theorem cast_roundoffQ (bits : ℕ) :
    (roundoffQ bits : ℝ) = DyadicRoundedSquaring.roundoff bits := by
  simp [roundoffQ, DyadicRoundedSquaring.roundoff]

@[simp] theorem embed_quantizeQ (bits : ℕ) (z : QComplex) :
    QComplex.embed (quantizeQ bits z) =
      DyadicRoundedSquaring.quantize bits (QComplex.embed z) := by
  apply Complex.ext <;> simp [QComplex.embed, quantizeQ, DyadicRoundedSquaring.quantize]

/-- EXACT refinement of BOTH components, not merely a nearby output. -/
theorem run_refines (bits : ℕ) (seed : QComplex) (initial : ℚ) (s : ℕ) :
    QComplex.embed (run bits seed initial s).value =
        DyadicRoundedSquaring.roundedValue bits (QComplex.embed seed) s ∧
      ((run bits seed initial s).error : ℝ) =
        DyadicRoundedSquaring.roundedError bits (QComplex.embed seed) (initial : ℝ) s := by
  induction s with
  | zero => simp [run, initialState, DyadicRoundedSquaring.roundedValue,
      DyadicRoundedSquaring.roundedError]
  | succ s ih =>
      constructor
      · simpa [run, step, DyadicRoundedSquaring.roundedValue, pow_two] using
          congrArg (fun v : ℂ => DyadicRoundedSquaring.quantize bits (v * v)) ih.1
      · simp [run, step, DyadicRoundedSquaring.roundedError, ih.1, ih.2]

/-- This generic statement retains an honest seed premise; the power module
supplies it from the actual rational-log and Taylor construction. -/
theorem run_sound (bits : ℕ) (seed : QComplex) (initial : ℚ) (a : ℂ)
    (ha : ‖a - QComplex.embed seed‖ ≤ (initial : ℝ)) (s : ℕ) :
    ‖DyadicExponentialEnclosure.squareValue a s -
      QComplex.embed (run bits seed initial s).value‖ ≤
      ((run bits seed initial s).error : ℝ) := by
  rw [(run_refines bits seed initial s).1, (run_refines bits seed initial s).2]
  exact DyadicRoundedSquaring.rounded_chain_sound bits a (QComplex.embed seed) initial ha s

end GRWTSK.Analysis.Complex.RationalRoundedArithmetic
