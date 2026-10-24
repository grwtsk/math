# Complete source: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictRatioBridge

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eaf691ebf79f7b8ef6697b1d2a5ad30ebf48caf7` · SHA-256 `6683bede5b776dcda035d9d577504ce280f14d257751e8bdc83efabbfa93f4e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local attribution: grwtsk contributors.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
Not imported into the public root.
-/
import GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCofactorZeroSign
import Mathlib.Tactic

/-!
# Strict weighted-average separation from a reciprocal pivot

A useful general algebraic interface for positive weighted integrals:
if the right-supported distribution has reciprocal mean below a pivot,
while the left-supported distribution has reciprocal mean above it,
then their normalized reciprocal moments are strictly ordered.

The strict moment gap hypotheses are NOT supplied here by support
inclusion alone. In particular the stage-three/stage-four integral
inequalities remain a separate analytic obligation. This source is not
a Guinand--Weil transport or RH result.
-/
set_option autoImplicit false

namespace GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictRatioBridge

open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentBombieriMomentRankObstruction
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentCofactorZeroSign
open GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentThreeTentMomentCorrection

/-- Strict inequalities against the same reciprocal pivot imply a strict
ordering of normalized moments, with all denominators explicitly positive. -/
theorem strict_ratio_of_pivot_gaps
    (oLeft oRight rLeft rRight pivot : ℝ)
    (hLeft : 0 < oLeft) (hRight : 0 < oRight)
    (hBelow : rRight < pivot * oRight)
    (hAbove : pivot * oLeft < rLeft) :
    rRight / oRight < rLeft / oLeft := by
  have hr : rRight / oRight < pivot := by
    apply (div_lt_iff₀ hRight).2
    nlinarith
  have hl : pivot < rLeft / oLeft := by
    apply (lt_div_iff₀ hLeft).2
    nlinarith
  exact lt_trans hr hl

/-- A precise analytic interface: strict support-derived moment gaps
for the ACTUAL stage-three/four tents discharge the cofactor sign
premise without any numerical approximation. -/
theorem cofactorZero_ne_zero_of_stage_pivot_gaps
    (pivot : ℝ)
    (hRight :
      realMultiplicativeMoment 2 <
        pivot * realOrdinaryMoment 2)
    (hLeft :
      pivot * realOrdinaryMoment 1 <
        realMultiplicativeMoment 1) :
    cofactorZero ≠ 0 := by
  have hratio :=
    strict_ratio_of_pivot_gaps
      (realOrdinaryMoment 1) (realOrdinaryMoment 2)
      (realMultiplicativeMoment 1) (realMultiplicativeMoment 2)
      pivot
      (realOrdinaryMoment_pos 1) (realOrdinaryMoment_pos 2)
      hRight hLeft
  exact cofactorZero_ne_zero_of_ratio_order hratio

end GRWTSK.NumberTheory.Zeta.Riemann.CanonicalSquareTentStrictRatioBridge
```
