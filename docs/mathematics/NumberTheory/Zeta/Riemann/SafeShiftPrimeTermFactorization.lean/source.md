# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftPrimeTermFactorization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ecfef89654ed3ecea7c3b8a1a1729bfa6961983e` · SHA-256 `9ec8163660619fc6e0bf0f3724815d4b959eb139f94914999bb91af3dc06e8a7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftQuarticChannelPacking
import Mathlib.Analysis.SpecialFunctions.Pow.Complex
import Mathlib.Analysis.SpecialFunctions.Pow.Real
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Exact safe-shift prime-term factorization

Relative to the a=0 center term at 2+i t, the safe plus/minus terms factor as

  T_plus  = T_center * q^(-a),
  T_minus = T_center * q^( a),

where a=Re(s)-1/2 and q is the actual prime-power source label.

Thus all height dependence is carried by one common complex center term and
the horizontal defect enters through real positive powers q^(±a). The
reflection-even/odd channels therefore factor through the real scales

  (q^(-a)+q^a)/2,
  (q^(-a)-q^a)/2.

This is an exact source identity. It does not choose a stage renormalization.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SAFE_PRIME_TERM_FACTORIZATION_EXACT / STAGE_SCALE_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Complex
open CanonicalZeroDivisor

def safePlusDefectScale
    (z : ZeroPoint) (event : PrimePowerEvent) : ℝ :=
  (event.natValue : ℝ) ^ (-zeroDefect z.1)

def safeMinusDefectScale
    (z : ZeroPoint) (event : PrimePowerEvent) : ℝ :=
  (event.natValue : ℝ) ^ zeroDefect z.1

def safeEvenDefectScale
    (z : ZeroPoint) (event : PrimePowerEvent) : ℝ :=
  (safePlusDefectScale z event + safeMinusDefectScale z event) / 2

def safeOddDefectScale
    (z : ZeroPoint) (event : PrimePowerEvent) : ℝ :=
  (safePlusDefectScale z event - safeMinusDefectScale z event) / 2

theorem safePlusDefectScale_cast
    (z : ZeroPoint) (event : PrimePowerEvent) :
    (safePlusDefectScale z event : ℂ) =
      (event.natValue : ℂ) ^ (-(zeroDefect z.1 : ℂ)) := by
  unfold safePlusDefectScale
  simpa only [ofReal_neg, Complex.ofReal_natCast] using
    Complex.ofReal_cpow (Nat.cast_nonneg event.natValue)
      (-zeroDefect z.1)

theorem safeMinusDefectScale_cast
    (z : ZeroPoint) (event : PrimePowerEvent) :
    (safeMinusDefectScale z event : ℂ) =
      (event.natValue : ℂ) ^ ((zeroDefect z.1 : ℝ) : ℂ) := by
  unfold safeMinusDefectScale
  exact Complex.ofReal_cpow
    (Nat.cast_nonneg event.natValue) (zeroDefect z.1)

/-- The plus exponent differs from the center exponent by +a. -/
theorem safeShiftPlus_eq_center_add_defect (s : ℂ) :
    safeShiftPlus s =
      safeShiftCenter s + (zeroDefect s : ℂ) := by
  apply Complex.ext <;>
    simp [safeShiftPlus, safeShiftCenter, zeroDefect]

/-- The minus exponent differs from the center exponent by -a. -/
theorem safeShiftMinus_eq_center_sub_defect (s : ℂ) :
    safeShiftMinus s =
      safeShiftCenter s - (zeroDefect s : ℂ) := by
  apply Complex.ext <;>
    simp [safeShiftMinus, safeShiftCenter, zeroDefect]

/-- Exact factorization of the plus prime-power term. -/
theorem safePlusPrimePowerTerm_factor
    (z : ZeroPoint) (event : PrimePowerEvent) :
    safePlusPrimePowerTerm z event =
      safeCenterPrimePowerTerm z event *
        (safePlusDefectScale z event : ℂ) := by
  unfold safePlusPrimePowerTerm safeCenterPrimePowerTerm
    vonMangoldtDirichletTerm
  rw [LSeries.term_def₀ (by simp), LSeries.term_def₀ (by simp)]
  have hq : (event.natValue : ℂ) ≠ 0 := by
    exact_mod_cast event.natValue_ne_zero
  have hexp :
      -safeShiftPlus z.1 =
        -safeShiftCenter z.1 + (-(zeroDefect z.1 : ℂ)) := by
    rw [safeShiftPlus_eq_center_add_defect]
    ring
  rw [hexp, Complex.cpow_add _ _ hq, ← safePlusDefectScale_cast]
  ring

/-- Exact factorization of the minus prime-power term. -/
theorem safeMinusPrimePowerTerm_factor
    (z : ZeroPoint) (event : PrimePowerEvent) :
    safeMinusPrimePowerTerm z event =
      safeCenterPrimePowerTerm z event *
        (safeMinusDefectScale z event : ℂ) := by
  unfold safeMinusPrimePowerTerm safeCenterPrimePowerTerm
    vonMangoldtDirichletTerm
  rw [LSeries.term_def₀ (by simp), LSeries.term_def₀ (by simp)]
  have hq : (event.natValue : ℂ) ≠ 0 := by
    exact_mod_cast event.natValue_ne_zero
  have hexp :
      -safeShiftMinus z.1 =
        -safeShiftCenter z.1 + ((zeroDefect z.1 : ℝ) : ℂ) := by
    rw [safeShiftMinus_eq_center_sub_defect]
    ring
  rw [hexp, Complex.cpow_add _ _ hq, ← safeMinusDefectScale_cast]
  ring

/-- Exact reflection-even factorization. -/
theorem safeEvenPrimePowerTerm_factor
    (z : ZeroPoint) (event : PrimePowerEvent) :
    safeEvenPrimePowerTerm z event =
      safeCenterPrimePowerTerm z event *
        (safeEvenDefectScale z event : ℂ) := by
  rw [safeEvenPrimePowerTerm, safePlusPrimePowerTerm_factor,
    safeMinusPrimePowerTerm_factor]
  unfold safeEvenDefectScale
  push_cast
  ring

/-- Exact reflection-odd factorization. -/
theorem safeOddPrimePowerTerm_factor
    (z : ZeroPoint) (event : PrimePowerEvent) :
    safeOddPrimePowerTerm z event =
      safeCenterPrimePowerTerm z event *
        (safeOddDefectScale z event : ℂ) := by
  rw [safeOddPrimePowerTerm, safePlusPrimePowerTerm_factor,
    safeMinusPrimePowerTerm_factor]
  unfold safeOddDefectScale
  push_cast
  ring

theorem safeEvenDefectScale_eq_one_of_zeroDefect
    (z : ZeroPoint) (event : PrimePowerEvent)
    (ha : zeroDefect z.1 = 0) :
    safeEvenDefectScale z event = 1 := by
  simp [safeEvenDefectScale, safePlusDefectScale,
    safeMinusDefectScale, ha]

theorem safeOddDefectScale_eq_zero_of_zeroDefect
    (z : ZeroPoint) (event : PrimePowerEvent)
    (ha : zeroDefect z.1 = 0) :
    safeOddDefectScale z event = 0 := by
  simp [safeOddDefectScale, safePlusDefectScale,
    safeMinusDefectScale, ha]

/-- The real even coordinate is the center real part times a real defect scale. -/
theorem safeEvenPrimePowerTerm_re_factor
    (z : ZeroPoint) (event : PrimePowerEvent) :
    (safeEvenPrimePowerTerm z event).re =
      (safeCenterPrimePowerTerm z event).re *
        safeEvenDefectScale z event := by
  rw [safeEvenPrimePowerTerm_factor]
  simp

/-- The imaginary odd coordinate is the center imaginary part times a real defect scale. -/
theorem safeOddPrimePowerTerm_im_factor
    (z : ZeroPoint) (event : PrimePowerEvent) :
    (safeOddPrimePowerTerm z event).im =
      (safeCenterPrimePowerTerm z event).im *
        safeOddDefectScale z event := by
  rw [safeOddPrimePowerTerm_factor]
  simp

end GRWTSK.RiemannHypothesis
```
