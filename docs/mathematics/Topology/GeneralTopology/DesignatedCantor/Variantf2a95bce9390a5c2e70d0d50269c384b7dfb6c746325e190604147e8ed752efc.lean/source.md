# Complete source: GRWTSK.Topology.GeneralTopology.DesignatedCantor.Variantf2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db76e875edbb15d76590db6ff2a08ed47cc14282` · SHA-256 `f2a95bce9390a5c2e70d0d50269c384b7dfb6c746325e190604147e8ed752efc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import BitMatrix.Carrier.BooleanSpace
import Mathlib.Topology.Instances.CantorSet

/-!
# Analytic designated Cantor representation

This is the concrete exact-real specialization of the project scalar.  It is
Mathlib's middle-thirds Cantor subset of `Real`, not a floating approximation
or a symbolic replacement.  Mathlib proves that its chosen `{0,2}` ternary
sequence is unique and supplies the inverse digit map and homeomorphism.
-/

namespace BitMatrix.Topology

open Real

/-- Convert a Boolean stream to the selected ternary digits `0` and `2`. -/
def designatedTernaryExpansion
    (stream : BitMatrix.Carrier.BitStream) : Nat → Fin 3 :=
  fun index => if stream index then 2 else 0

theorem designatedTernaryExpansion_ne_one
    (stream : BitMatrix.Carrier.BitStream)
    (index : Nat) :
    designatedTernaryExpansion stream index ≠ 1 := by
  cases bit : stream index <;> simp [designatedTernaryExpansion, bit]

theorem designatedTernaryExpansion_value
    (stream : BitMatrix.Carrier.BitStream)
    (index : Nat) :
    (designatedTernaryExpansion stream index : Nat) =
      if stream index then 2 else 0 := by
  cases bit : stream index <;> simp [designatedTernaryExpansion, bit]

/-- The exact real series `Theta(b) = sum 2*b(n)/3^(n+1)`. -/
noncomputable def designatedCantorScalar
    (stream : BitMatrix.Carrier.BitStream) : Real :=
  Real.ofDigits (designatedTernaryExpansion stream)

theorem designatedCantorScalar_series
    (stream : BitMatrix.Carrier.BitStream) :
    designatedCantorScalar stream =
      ∑' index : Nat,
        (if stream index then (2 : Real) else 0) / (3 : Real) ^ (index + 1) := by
  simp only [designatedCantorScalar, Real.ofDigits, Real.ofDigitsTerm, div_eq_mul_inv]
  apply tsum_congr
  intro index
  by_cases bit : stream index <;>
    simp [designatedTernaryExpansion, bit]

theorem designatedCantorScalar_mem_cantorSet
    (stream : BitMatrix.Carrier.BitStream) :
    designatedCantorScalar stream ∈ cantorSet :=
  ofDigits_zero_two_sequence_mem_cantorSet
    (designatedTernaryExpansion_ne_one stream)

theorem designatedCantorScalar_injective :
    Function.Injective designatedCantorScalar := by
  intro left right equality
  have digitEquality := ofDigits_zero_two_sequence_unique
    (designatedTernaryExpansion_ne_one left)
    (designatedTernaryExpansion_ne_one right)
    equality
  funext index
  have atIndex := congrFun digitEquality index
  by_cases leftBit : left index <;> by_cases rightBit : right index <;>
    simp [designatedTernaryExpansion, leftBit, rightBit] at atIndex ⊢

/-- The actual middle-thirds Cantor subset of `Real`. -/
abbrev ExactCantorScalar := cantorSet

/-- Exact analytic representation with Mathlib's designated digit inverse. -/
noncomputable def analyticCantorRepresentation :
    BitMatrix.Carrier.DesignatedCantorRepresentation where
  Scalar := ExactCantorScalar
  theta := cantorSetEquivNatToBool.symm

@[simp]
theorem analyticCantorRepresentation_theta_val
    (stream : BitMatrix.Carrier.BitStream) :
    ((show ExactCantorScalar from
      analyticCantorRepresentation.theta stream) : Real) =
      designatedCantorScalar stream := by
  change Real.ofDigits (fun index => cond (stream index) 2 0) =
    Real.ofDigits (designatedTernaryExpansion stream)
  congr 1
  funext index
  cases bit : stream index <;>
    simp [designatedTernaryExpansion, bit]

@[simp]
theorem analyticCantorRepresentation_digits_theta
    (stream : BitMatrix.Carrier.BitStream) :
    analyticCantorRepresentation.digits
      (analyticCantorRepresentation.theta stream) = stream :=
  analyticCantorRepresentation.digits_theta stream

@[simp]
theorem analyticCantorRepresentation_theta_digits
    (scalar : analyticCantorRepresentation.Scalar) :
    analyticCantorRepresentation.theta
      (analyticCantorRepresentation.digits scalar) = scalar :=
  analyticCantorRepresentation.theta_digits scalar

theorem analyticCantorRepresentation_unique
    (left right : BitMatrix.Carrier.BitStream)
    (equality : ((show ExactCantorScalar from
      analyticCantorRepresentation.theta left) : Real) =
      ((show ExactCantorScalar from
        analyticCantorRepresentation.theta right) : Real)) :
    left = right :=
  designatedCantorScalar_injective (by
    simpa only [analyticCantorRepresentation_theta_val] using equality)

/-- The exact representation is also Mathlib's canonical Cantor homeomorphism. -/
noncomputable def analyticCantorHomeomorphism :
    BitMatrix.Carrier.BitStream ≃ₜ ExactCantorScalar :=
  cantorSetHomeomorphNatToBool.symm

theorem analyticCantorHomeomorphism_toEquiv :
    analyticCantorHomeomorphism.toEquiv =
      analyticCantorRepresentation.theta :=
  rfl

end BitMatrix.Topology
```
