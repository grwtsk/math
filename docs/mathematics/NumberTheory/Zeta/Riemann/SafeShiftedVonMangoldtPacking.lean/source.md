# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftedVonMangoldtPacking

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3208c773b8b78c8d5bf3c3e5af061a39ed34588` · SHA-256 `1c540f2d46134aaa662634cf353a2b5f03120fe8bd4e48905fba4e22d3a9317a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT.
Mathlib results retain upstream authorship and Apache-2.0 license. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SourceSensitivePackingNoGo
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalZeroDivisor
import GRWTSK.NumberTheory.Zeta.Riemann.ZeroSymmetry
import GRWTSK.NumberTheory.Zeta.Riemann.PinnedVonMangoldtCoefficientSource
import Mathlib.NumberTheory.LSeries.Basic
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Safe shifted von Mangoldt source attached to an actual zeta zero

For a nontrivial zero

  s = 1/2 + a + i t,

define two safe Dirichlet evaluation points

  zPlus  = 2 + a + i t,
  zMinus = 2 - a + i t.

Because every nontrivial zero satisfies 0 < Re(s) < 1, both safe points have
real part > 1.  Thus the von Mangoldt Dirichlet series and its identification
with -zeta'/zeta are available at both points from the pinned Mathlib source.

Critical-line reflection sends a -> -a while retaining t, so it swaps zPlus
and zMinus.  This gives a source-faithful, zero-sensitive arithmetic parameter
without evaluating a prime Dirichlet series inside the critical strip.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED /
SAFE_SHIFTED_VON_MANGOLDT_SOURCE_DEFINED / QUARTIC_COMPARISON_OPEN.
-/

namespace GRWTSK.RiemannHypothesis

open Complex
open CanonicalZeroDivisor

/-- Horizontal defect from the critical line. -/
def zeroDefect (s : ℂ) : ℝ :=
  s.re - 1 / 2

/-- Safe right-half-plane point carrying +a and the original height t. -/
def safeShiftPlus (s : ℂ) : ℂ :=
  ((2 + zeroDefect s : ℝ) : ℂ) + s.im * I

/-- Safe right-half-plane point carrying -a and the original height t. -/
def safeShiftMinus (s : ℂ) : ℂ :=
  ((2 - zeroDefect s : ℝ) : ℂ) + s.im * I

@[simp]
theorem safeShiftPlus_re (s : ℂ) :
    (safeShiftPlus s).re = 2 + zeroDefect s := by
  simp [safeShiftPlus]

@[simp]
theorem safeShiftMinus_re (s : ℂ) :
    (safeShiftMinus s).re = 2 - zeroDefect s := by
  simp [safeShiftMinus]

@[simp]
theorem safeShiftPlus_im (s : ℂ) :
    (safeShiftPlus s).im = s.im := by
  simp [safeShiftPlus]

@[simp]
theorem safeShiftMinus_im (s : ℂ) :
    (safeShiftMinus s).im = s.im := by
  simp [safeShiftMinus]

/-- Both safe shifts remain in the exact Dirichlet-series half-plane. -/
theorem safeShiftPlus_one_lt_re (z : ZeroPoint) :
    1 < (safeShiftPlus z.1).re := by
  have hs := z.2.mem_critical_strip
  simp [safeShiftPlus_re, zeroDefect]
  linarith

theorem safeShiftMinus_one_lt_re (z : ZeroPoint) :
    1 < (safeShiftMinus z.1).re := by
  have hs := z.2.mem_critical_strip
  simp [safeShiftMinus_re, zeroDefect]
  linarith

/-- Critical reflection negates the horizontal defect. -/
theorem zeroDefect_criticalReflection (s : ℂ) :
    zeroDefect (criticalReflection s) = -zeroDefect s := by
  simp [zeroDefect, criticalReflection]
  ring

/-- Critical reflection swaps the two safe Dirichlet evaluation points. -/
theorem safeShiftPlus_criticalReflection (s : ℂ) :
    safeShiftPlus (criticalReflection s) = safeShiftMinus s := by
  apply Complex.ext <;>
    simp [safeShiftPlus, safeShiftMinus, zeroDefect, criticalReflection]; ring

theorem safeShiftMinus_criticalReflection (s : ℂ) :
    safeShiftMinus (criticalReflection s) = safeShiftPlus s := by
  apply Complex.ext <;>
    simp [safeShiftPlus, safeShiftMinus, zeroDefect, criticalReflection]; ring

/-- Exact complex von Mangoldt term at one natural source label and one safe
evaluation point. -/
def vonMangoldtDirichletTerm (w : ℂ) (q : ℕ) : ℂ :=
  LSeries.term
    (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ)) w q

/-- Plus-shift term attached to one actual zero and one canonical prime power. -/
def safePlusPrimePowerTerm (z : ZeroPoint) (event : PrimePowerEvent) : ℂ :=
  vonMangoldtDirichletTerm (safeShiftPlus z.1) event.natValue

/-- Minus-shift term attached to one actual zero and one canonical prime power. -/
def safeMinusPrimePowerTerm (z : ZeroPoint) (event : PrimePowerEvent) : ℂ :=
  vonMangoldtDirichletTerm (safeShiftMinus z.1) event.natValue

/-- The plus-shift series is exactly the pinned negative logarithmic derivative. -/
theorem safeShiftPlus_lseries_eq_neg_logDeriv (z : ZeroPoint) :
    LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ))
        (safeShiftPlus z.1) =
      -deriv riemannZeta (safeShiftPlus z.1) /
        riemannZeta (safeShiftPlus z.1) :=
  pinned_vonMangoldt_lseries_eq_neg_logDeriv
    (safeShiftPlus_one_lt_re z)

/-- The minus-shift series is exactly the pinned negative logarithmic derivative. -/
theorem safeShiftMinus_lseries_eq_neg_logDeriv (z : ZeroPoint) :
    LSeries (fun n : ℕ => (ArithmeticFunction.vonMangoldt n : ℂ))
        (safeShiftMinus z.1) =
      -deriv riemannZeta (safeShiftMinus z.1) /
        riemannZeta (safeShiftMinus z.1) :=
  pinned_vonMangoldt_lseries_eq_neg_logDeriv
    (safeShiftMinus_one_lt_re z)

/-- Source-sensitive planar point obtained from the real and imaginary parts
of the exact plus-shift von Mangoldt Dirichlet term. -/
def safeShiftPrimePowerPoint (z : ZeroPoint)
    (event : PrimePowerEvent) : PackingPoint :=
  ⟨(safePlusPrimePowerTerm z event).re,
    (safePlusPrimePowerTerm z event).im⟩

/-- The safe shifted point family is a concrete instance of the corrected
source-sensitive architecture. -/
def safeShiftPointFamily :
    SourceSensitivePrimePowerPointFamily ZeroPoint where
  point := safeShiftPrimePowerPoint
  sourceId := "pinned Mathlib von Mangoldt Dirichlet term"
  revision := pinnedVonMangoldtSource.revision
  normalization := "safe shift zPlus=2+(Re(s)-1/2)+i Im(s)"

/-- Concrete positive packing sequence attached to one actual nontrivial zero. -/
def safeShiftPackingSequence (z : ZeroPoint) :
    SequentialThreePointPrimePacking :=
  safeShiftPointFamily.sequence z

theorem safeShiftPackingSequence_valueAt_nonnegative
    (z : ZeroPoint) (n : ℕ) :
    0 ≤ (safeShiftPackingSequence z).valueAt n :=
  safeShiftPointFamily.valueAt_nonnegative z n

/-- Reflection swaps the safe plus source with the safe minus source before
the planar Gram is formed. -/
theorem reflected_plus_term_eq_minus_term
    (z : ZeroPoint) (event : PrimePowerEvent) :
    vonMangoldtDirichletTerm
        (safeShiftPlus (criticalReflection z.1)) event.natValue =
      safeMinusPrimePowerTerm z event := by
  rw [safeShiftPlus_criticalReflection]
  rfl

end GRWTSK.RiemannHypothesis
```
