# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.DynamicalZeta.Variantd8cb463b818e187b3b8346defe890d918b3c224107d506a88d67356890cf4bae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `dca34cc7b6b14bee8606dd3fb90c86c80e8a75d0` · SHA-256 `d8cb463b818e187b3b8346defe890d918b3c224107d506a88d67356890cf4bae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Dynamics.DynamicalZeta
import Mathlib.Logic.Equiv.Fin.Rotate

/-!
# Concrete finite-cycle tests

The three-coordinate rotation acts on eight Boolean states as two fixed points,
one three-cycle of weight-one states, and one three-cycle of weight-two states.
These executable checks validate the exact cycle, fixed-point, Möbius, and
finite Euler-factor interfaces on that decomposition.
-/

namespace BitMatrix.Tests.DynamicalZeta

open BitMatrix.Reduction.SAT
open BitMatrix.Algebra.Symmetry
open BitMatrix.Dynamics.DynamicalZeta
open BitMatrix.Network.Permutation
open scoped BigOperators

/-- The coordinate cycle `0 ↦ 1`, `1 ↦ 2`, `2 ↦ 0`. -/
def zetaRotate3Indices : Equiv.Perm (Fin 3) :=
  finRotate 3

/-- The induced permutation of the eight three-bit states. -/
def zetaRotate3 : BitPerm 3 :=
  coordinatePermutation zetaRotate3Indices

example : cycleCount zetaRotate3 1 = 2 := by
  native_decide

example : cycleCount zetaRotate3 2 = 0 := by
  native_decide

example : cycleCount zetaRotate3 3 = 2 := by
  native_decide

example : fixedPointCount zetaRotate3 1 = 2 := by
  native_decide

example : fixedPointCount zetaRotate3 2 = 2 := by
  native_decide

example : fixedPointCount zetaRotate3 3 = 8 := by
  native_decide

example : fixedPointCount zetaRotate3 6 = 8 := by
  native_decide

example :
    fixedPointCount zetaRotate3 3 =
      ∑ d ∈ Nat.divisors 3, d * cycleCount zetaRotate3 d :=
  fixedPointCount_eq_sum_mul_cycleCount zetaRotate3 (by decide)

example :
    (((3 * cycleCount zetaRotate3 3 : Nat) : ℤ)) =
      ∑ d ∈ Nat.divisors 3,
        (ArithmeticFunction.moebius (3 / d) : ℤ) *
          (fixedPointCount zetaRotate3 d : ℤ) :=
  cycleCount_mobius zetaRotate3 (by decide)

example : cycleEulerFactorData zetaRotate3 1 = 2 := by
  native_decide

example : cycleEulerFactorData zetaRotate3 3 = 2 := by
  native_decide

example : cycleEulerFactorData zetaRotate3 4 = 0 := by
  native_decide

end BitMatrix.Tests.DynamicalZeta
```
