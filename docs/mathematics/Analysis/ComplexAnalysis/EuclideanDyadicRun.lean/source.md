# Complete source: GRWTSK.Analysis.Complex.EuclideanDyadicRun

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db4ae0a66b36df7b880da2541e47ce991be55e50` · SHA-256 `5f0752616696f288bf6c78169d7570f524d678a2baaebcc6428d04a9681bcd69`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.Complex.IntegerDyadicTrace
import Mathlib.Data.Int.DivMod

set_option autoImplicit false

/-!
# Exact integer execution of the original dyadic squaring recurrence

Integer Euclidean division implements component floors. Negated Euclidean
division implements the stored-error ceiling, including negative numerators
in that operation. This changes neither the original algorithm nor its budget.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.Analysis.Complex.EuclideanDyadicRun

open RationalRoundedArithmetic IntegerDyadicTrace

def next (bits : ℕ) (a : GridState) : GridState :=
  ⟨realProduct a / scaleZ bits, imagProduct a / scaleZ bits,
    -((-errorProduct bits a) / scaleZ bits)⟩

def iterate (bits : ℕ) (a : GridState) : ℕ → GridState
  | 0 => a
  | n + 1 => next bits (iterate bits a n)

theorem ediv_window (D A : ℤ) (hD : 0 < D) : FloorWindow D A (A / D) := by
  have h0 := Int.emod_nonneg A (ne_of_gt hD)
  have h1 := Int.emod_lt_of_pos A hD
  have he := Int.emod_add_mul_ediv A D
  constructor <;> nlinarith

theorem neg_ediv_window (D A : ℤ) (hD : 0 < D) :
    CeilingWindow D A (-((-A) / D)) := by
  have h := ediv_window D (-A) hD
  constructor <;> nlinarith [h.1, h.2]

theorem next_error_nonneg (bits : ℕ) (a : GridState) (ha : 0 ≤ a.errorPart) :
    0 ≤ (next bits a).errorPart := by
  have hp := scaleZ_pos bits
  have hA : 0 ≤ errorProduct bits a := by
    unfold errorProduct
    positivity
  have h := (neg_ediv_window (scaleZ bits) (errorProduct bits a) hp).2
  change 0 ≤ -((-errorProduct bits a) / scaleZ bits)
  nlinarith

/-- All five conjuncts of the historical step predicate, not just output agreement. -/
theorem next_valid (bits : ℕ) (a : GridState) (ha : 0 ≤ a.errorPart) :
    StepValid bits a (next bits a) :=
  ⟨ha, next_error_nonneg bits a ha,
    ediv_window _ _ (scaleZ_pos bits), ediv_window _ _ (scaleZ_pos bits),
    neg_ediv_window _ _ (scaleZ_pos bits)⟩

theorem iterate_error_nonneg (bits : ℕ) (a : GridState) (ha : 0 ≤ a.errorPart) (n : ℕ) :
    0 ≤ (iterate bits a n).errorPart := by
  induction n with
  | zero => exact ha
  | succ n ih => exact next_error_nonneg bits _ ih

/-- Generic equality with the original rational run, including its error state. -/
theorem run_eq_iterate (bits : ℕ) (seed : QComplex) (e : ℚ) (a : GridState)
    (ha : SeedValid bits seed e a) (n : ℕ) :
    run bits seed e n = decode bits (iterate bits a n) := by
  induction n with
  | zero => exact seed_refines bits seed e a ha
  | succ n ih =>
      rw [run, ih]
      exact step_refines bits _ _
        (next_valid bits _ (iterate_error_nonneg bits a ha.2.1 n))

end GRWTSK.Analysis.Complex.EuclideanDyadicRun
```
