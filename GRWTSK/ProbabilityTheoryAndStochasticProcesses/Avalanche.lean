import BitMatrix.Dynamics.Avalanche

/-!
# Concrete avalanche tests

The permutation below swaps `011` and `100` and fixes the other six three-bit
vectors.  Exact finite evaluation proves that it is bijective and has perfect
SAC marginals, while two output-flip coordinates remain perfectly correlated.
Thus marginal avalanche balance does not imply joint independence.
-/

namespace BitMatrix.Tests.Avalanche

open BitMatrix.Reduction.SAT
open BitMatrix.Dynamics.Avalanche

/-- The three-bit vector `011`, with coordinates read from index `0` upward. -/
def bits011 : Bits 3 :=
  fun i => i.val != 0

/-- The three-bit vector `100`, with coordinates read from index `0` upward. -/
def bits100 : Bits 3 :=
  fun i => i.val == 0

/-- Swap `011` and `100`, fixing every other three-bit vector. -/
def swap011100 (x : Bits 3) : Bits 3 :=
  if x = bits011 then
    bits100
  else if x = bits100 then
    bits011
  else
    x

/-- The concrete swap is its own inverse. -/
theorem swap011100_involutive : Function.Involutive swap011100 := by
  unfold Function.Involutive
  native_decide

/-- Every involution is bijective. -/
theorem swap011100_bijective : Function.Bijective swap011100 :=
  swap011100_involutive.bijective

example : StrictSAC swap011100 := by
  unfold StrictSAC
  native_decide

example : sacScore swap011100 = 1 := by
  native_decide

example : varianceScore swap011100 = 1 := by
  native_decide

/--
For input direction zero, output-flip coordinates one and two always agree,
so their unnormalized sign correlation is the maximal value eight.
-/
example :
    correlationNumerator swap011100
      (0 : Fin 3) (1 : Fin 3) (2 : Fin 3) = 8 := by
  native_decide

example :
    correlationNumerator swap011100
      (0 : Fin 3) (1 : Fin 3) (2 : Fin 3) ≠ 0 := by
  native_decide

/-! The width-three random-function weight law is `1/8, 3/8, 3/8, 1/8`. -/

example : functionWeightMass 3 0 = 1 / 8 := by native_decide
example : functionWeightMass 3 1 = 3 / 8 := by native_decide
example : functionWeightMass 3 2 = 3 / 8 := by native_decide
example : functionWeightMass 3 3 = 1 / 8 := by native_decide

/-! The width-three permutation law is `0, 3/7, 3/7, 1/7`. -/

example : permutationWeightMass 3 0 = 0 := by native_decide
example : permutationWeightMass 3 1 = 3 / 7 := by native_decide
example : permutationWeightMass 3 2 = 3 / 7 := by native_decide
example : permutationWeightMass 3 3 = 1 / 7 := by native_decide

/-! Concrete checks of the identity-map counterexample and Jacobian image. -/

example : sacScore (id : Bits 3 → Bits 3) = 0 :=
  identity_sacScore (by decide)

example : varianceScore (id : Bits 3 → Bits 3) = 0 :=
  identity_varianceScore (by decide)

example :
    (jacobianQuantizer (id : Bits 3 → Bits 3)).effectiveStates.card = 1 :=
  identity_jacobian_effectiveStates_card

end BitMatrix.Tests.Avalanche
