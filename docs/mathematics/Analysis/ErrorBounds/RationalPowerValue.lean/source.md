# Complete source: GRWTSK.Analysis.ErrorBounds.RationalPowerValue

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `10053d4c8ed63d6f12162002f3d29075473c3b62` · SHA-256 `812dbbca5828ee471f9d894a4cb926110f07de423f7148e56294501b813bc8dc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human research direction: grwtsk contributors. Proof drafting assistance: OpenAI ChatGPT.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import GRWTSK.Analysis.ErrorBounds.RationalAtanhPower
import GRWTSK.Analysis.ErrorBounds.RationalRoundedExp

set_option autoImplicit false

/-!
# A constructed inverse-power value from finite resolution data

No logarithm, exponential value, local residual or analytic enclosure is an input.
The literal parameter/base and resolution generate every seed and square. The
old trace checker is proved to accept that construction under the scalar guards.
Successful validity need not mean useful precision. The previous checkers and
all their error terms are unchanged. SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
namespace GRWTSK.Analysis.ErrorBounds.RationalPowerValue

open RationalComplexEnclosure RationalDyadicArithmetic
open RationalNewtonDisk (magnitude)

structure Resolution where
  scale : ℕ
  logTwoTerms : ℕ
  logMantissaTerms : ℕ
  bits : ℕ
  squarings : ℕ
  expTerms : ℕ
  deriving DecidableEq

def logBall (t : ℚ) (d : Resolution) : Ball :=
  RationalAtanhLog.enclosure t d.scale d.logTwoTerms d.logMantissaTerms d.bits

def exponent (s : Coordinates) (t : ℚ) (d : Resolution) : Coordinates :=
  RationalAtanhPower.exponent s t d.scale d.logTwoTerms d.logMantissaTerms d.bits

def trace (s : Coordinates) (t : ℚ) (d : Resolution) : RationalExpTrace.Trace :=
  RationalRoundedExp.trace d.bits (exponent s t d) d.squarings d.expTerms

def valueBall (s : Coordinates) (t : ℚ) (d : Resolution) : Ball :=
  RationalAtanhPower.output s t d.scale d.logTwoTerms d.logMantissaTerms d.bits
    (magnitude (exponent s t d)) d.squarings d.expTerms (trace s t d)

/-- Only finite scalar conditions; no externally supplied trace or magnitude. -/
def Valid (s : Coordinates) (t : ℚ) (d : Resolution) : Prop :=
  0 ≤ s.1 ∧ RationalAtanhLog.validScale t d.scale = true ∧
    (magnitude (exponent s t d) / (2 ^ d.squarings : ℕ)) /
      (d.expTerms + 1 : ℕ) ≤ (1 / 2 : ℚ)

instance validDecidable (s : Coordinates) (t : ℚ) (d : Resolution) :
    Decidable (Valid s t d) := by unfold Valid; infer_instance

def check (s : Coordinates) (t : ℚ) (d : Resolution) : Bool := decide (Valid s t d)

theorem check_iff_valid (s : Coordinates) (t : ℚ) (d : Resolution) :
    check s t d = true ↔ Valid s t d := by simp [check]

/-- The ray domain is derived from the computed REAL nonnegative logarithm. -/
theorem exponent_re_nonpos {s : Coordinates} {t : ℚ} {d : Resolution}
    (h : check s t d = true) : (exponent s t d).1 ≤ 0 := by
  obtain ⟨hs,hl,_⟩ := (check_iff_valid _ _ _).mp h
  have hc := RationalAtanhLog.enclosure_center hl d.logTwoTerms d.logMantissaTerms d.bits
  have hp := mul_nonneg hs hc.1
  simp only [exponent, RationalAtanhPower.exponent, mul, sub, zero, hc.2, mul_zero, sub_zero]
  nlinarith

/-- Every actual seed/square residual and exact trace length comes from the OLD
reference constructor; a scalar guard is not substituted for an arbitrary trace. -/
theorem trace_checked {s : Coordinates} {t : ℚ} {d : Resolution}
    (h : check s t d = true) :
    RationalExpTrace.check (exponent s t d) (magnitude (exponent s t d))
      d.squarings d.expTerms (trace s t d) = true :=
  RationalRoundedExp.trace_checked d.bits (exponent_re_nonpos h) d.squarings d.expTerms
    ((check_iff_valid _ _ _).mp h).2.2

theorem logBall_sound {s : Coordinates} {t : ℚ} {d : Resolution}
    (h : check s t d = true) : Holds (logBall t d) (Real.log (t : ℝ) : ℂ) :=
  RationalAtanhLog.enclosure_sound ((check_iff_valid _ _ _).mp h).2.1
    d.logTwoTerms d.logMantissaTerms d.bits

/-- The original inverse power is enclosed, not merely exp at its rounded log. -/
theorem valueBall_sound {s : Coordinates} {t : ℚ} {d : Resolution}
    (h : check s t d = true) : Holds (valueBall s t d) ((t : ℂ) ^ (-toComplex s)) :=
  RationalAtanhPower.inverse_power_sound ((check_iff_valid _ _ _).mp h).1
    ((check_iff_valid _ _ _).mp h).2.1 (trace_checked h)

def evaluate (s : Coordinates) (t : ℚ) (d : Resolution) : Option Ball :=
  if check s t d then some (valueBall s t d) else none

theorem evaluate_eq_some_iff (s : Coordinates) (t : ℚ) (d : Resolution) (b : Ball) :
    evaluate s t d = some b ↔ check s t d = true ∧ valueBall s t d = b := by
  by_cases h : check s t d = true <;> simp [evaluate, h]

theorem evaluate_sound {s : Coordinates} {t : ℚ} {d : Resolution} {b : Ball}
    (h : evaluate s t d = some b) : Holds b ((t : ℂ) ^ (-toComplex s)) := by
  obtain ⟨hc,rfl⟩ := (evaluate_eq_some_iff _ _ _ _).mp h
  exact valueBall_sound hc

end GRWTSK.Analysis.ErrorBounds.RationalPowerValue
```
