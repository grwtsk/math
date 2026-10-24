# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DAFRefinement.Variantad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1225823c83dfe0bb84082bfdaf9eb4d542ed892a` · SHA-256 `ad0b4db44ad472c8bf8b9b20bc17ee52adc40343a5951a7b6f0f19ab05d3300b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import DAF.Refinement
import BitMatrix.Core.Basic

/-!
# Binary-matrix instance of framework refinement

The array-backed `BitMatrix.ArrayBacked` representation is connected to declarative
`BitMatrix` through `toMatrix`.  This module packages the existing unary refinement
theorem as a `DAF.Refinement`: validity is intrinsic in the dependent array
size field, abstraction is `toMatrix`, and optimized mapping commutes with the
declarative operation.

This does not identify raw array structure or proof fields observationally;
implementation values are compared only through their declarative meaning.
-/

namespace BitMatrix.Adapters

/-- Declarative pointwise-map transition system. -/
def mapSpecSystem (m n : Nat) : DAF.System where
  Input := Bool → Bool
  State := BitMatrix m n
  Resolution := PUnit
  Observation := fun _ => BitMatrix m n
  step f matrix := BitMatrix.map f matrix
  observe := fun _ matrix => matrix

/-- Array-backed pointwise-map transition system observed through `toMatrix`. -/
def mapImplSystem (m n : Nat) : DAF.System where
  Input := Bool → Bool
  State := BitMatrix.ArrayBacked m n
  Resolution := PUnit
  Observation := fun _ => BitMatrix m n
  step f matrix := matrix.mapInPlace f
  observe := fun _ matrix => matrix.toMatrix

/-- The optimized unary matrix implementation refines its declarative system. -/
def mapRefinement (m n : Nat) :
    DAF.Refinement (mapSpecSystem m n) (mapImplSystem m n) where
  Valid := fun _ => True
  abstract := BitMatrix.ArrayBacked.toMatrix
  mapInput := id
  mapResolution := id
  mapObservation := fun _ => id
  valid_step := by intros; trivial
  step_sound := by
    intro f matrix _
    exact matrix.mapInPlace_spec f
  observe_sound := by intros; rfl

@[simp]
theorem mapRefinement_abstract
    (matrix : BitMatrix.ArrayBacked m n) :
    (mapRefinement m n).abstract matrix = matrix.toMatrix :=
  rfl

@[simp]
theorem mapRefinement_step_sound
    (f : Bool → Bool)
    (matrix : BitMatrix.ArrayBacked m n) :
    (mapRefinement m n).abstract
        ((mapImplSystem m n).step f matrix) =
      (mapSpecSystem m n).step f
        ((mapRefinement m n).abstract matrix) :=
  (mapRefinement m n).step_sound f matrix trivial

/-- Existing pointwise refinement is equality through the framework abstraction. -/
theorem refines_iff_abstract_eq
    (matrix : BitMatrix.ArrayBacked m n)
    (specification : BitMatrix m n) :
    BitMatrix.Refines matrix specification ↔
      (mapRefinement m n).abstract matrix = specification :=
  Iff.rfl

end BitMatrix.Adapters
```
