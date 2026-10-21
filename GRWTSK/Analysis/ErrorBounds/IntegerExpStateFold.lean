/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human research direction: R.A. Jacob Martone. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.IntegerDyadicSquare

set_option autoImplicit false

/-!
# Exact integer reconstruction after the unchanged rational Taylor seed

The Taylor and logarithm calculations remain rational. Only the repeated rounded
square/value/error state uses integers. Decode returns the EXACT old Ball; this
is not a new error estimate or a compiled-integer/backend qualification.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ErrorBounds.IntegerExpStateFold

open GRWTSK.Algebra.BigOperators.IndexedStateFold
open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude)
open IntegerDyadicSquare (State scale decode step)

/-- Form the same seed, then encode its two floors and FULL radius ceiling. -/
def initial (bits : ℕ) (w : Coordinates) (s terms : ℕ) : State :=
  let seed := RationalExpStateFold.taylor (divNat w (2^s)) terms
  let v := rounded bits seed
  ⟨⌊seed.1*denominator bits⌋, ⌊seed.2*denominator bits⌋,
    ⌈(RationalExpTrace.seedTail (magnitude w) s terms+
      magnitude (sub seed v))*denominator bits⌉⟩

theorem initial_refines (bits : ℕ) (w : Coordinates) (s terms : ℕ) :
    decode bits (initial bits w s terms) = RationalExpStateFold.initial bits w s terms := by
  simp only [initial, decode, IntegerDyadicSquare.scale_cast,
    RationalExpStateFold.initial, rounded, down, up]

/-- Every integer state decodes to the original rational recurrence, in order. -/
theorem run_refines (bits start count : ℕ) (x : State) :
    decode bits (run (fun _ y => step bits y) start count x) =
      run (RationalExpStateFold.squareStep bits) start count (decode bits x) := by
  induction count generalizing start x with
  | zero => rfl
  | succ count ih =>
      rw [run, run, ih, IntegerDyadicSquare.step_refines]

/-- No integer transcript or seed midpoint is accepted as a supplied oracle. -/
def exponential (bits : ℕ) (w : Coordinates) (s terms : ℕ) : Ball :=
  decode bits (run (fun _ y => step bits y) 0 s (initial bits w s terms))

theorem exponential_eq (bits : ℕ) (w : Coordinates) (s terms : ℕ) :
    exponential bits w s terms = RationalExpStateFold.exponential bits w s terms := by
  rw [exponential, run_refines, initial_refines]
  rfl

theorem exponential_eq_reference (bits : ℕ) (w : Coordinates) (s terms : ℕ) :
    exponential bits w s terms = RationalRoundedExp.enclosure bits w s terms :=
  (exponential_eq bits w s terms).trans (RationalExpStateFold.exponential_eq bits w s terms)

def withLog (s : Coordinates) (ell : Ball) (d : RationalPowerValue.Resolution) : Ball :=
  let w := mul (sub zero s) ell.mid
  let z := exponential d.bits w d.squarings d.expTerms
  ⟨z.mid, up d.bits (z.rad+magnitude s*ell.rad)⟩

def powerValue (s : Coordinates) (t : ℚ) (d : RationalPowerValue.Resolution) : Ball :=
  withLog s (RationalPowerValue.logBall t d) d

theorem powerValue_eq (s : Coordinates) (t : ℚ) (d : RationalPowerValue.Resolution) :
    powerValue s t d = RationalExpStateFold.powerValue s t d := by
  simp only [powerValue, withLog, exponential_eq,
    RationalExpStateFold.powerValue, RationalExpStateFold.withLog]

/-- Semantic admissibility remains the original guarded domain and full error. -/
theorem powerValue_sound {s : Coordinates} {t : ℚ} {d : RationalPowerValue.Resolution}
    (h : RationalPowerValue.check s t d = true) :
    Holds (powerValue s t d) ((t : ℂ)^(-toComplex s)) := by
  rw [powerValue_eq]
  exact RationalExpStateFold.powerValue_sound h

end GRWTSK.Analysis.ErrorBounds.IntegerExpStateFold
