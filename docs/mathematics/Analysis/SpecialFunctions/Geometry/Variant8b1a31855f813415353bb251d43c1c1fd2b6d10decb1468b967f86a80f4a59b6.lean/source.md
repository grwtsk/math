# Complete source: GRWTSK.Analysis.SpecialFunctions.Geometry.Variant8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e16fb87fa61e790b8dc29b84a5051a1858bea006` · SHA-256 `8b1a31855f813415353bb251d43c1c1fd2b6d10decb1468b967f86a80f4a59b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.AbelReynolds.Symmetry
import Mathlib.Algebra.Group.Action.Basic
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Analysis.SpecialFunctions.Log.Basic

/-!
# Independent geometric coordinates and fixed return

Reciprocal scale, perspective amplification, and symmetry phase are distinct
types.  The exact return criterion is a group-action stabilizer equation, not
a proximity test.
-/

namespace Mathematics.AbelReynolds

structure ReciprocalScaleExponent where
  value : ℝ

structure PerspectiveExponent where
  value : ℝ

structure SymmetryPhase (Group : Type*) where
  value : Group
  deriving DecidableEq, Repr

noncomputable def reciprocalRadius
    (exponent : ReciprocalScaleExponent) : ℝ :=
  Real.exp (-exponent.value)

structure PerspectiveBound where
  operatorNorm : ℝ
  nonnegative : 0 ≤ operatorNorm
  contractive : operatorNorm < 1
  increment : PerspectiveExponent
  incrementCorrect :
    increment.value = -Real.log (1 - operatorNorm)

structure GeometricStage (Group : Type*) where
  index : Nat
  reciprocal : ReciprocalScaleExponent
  perspective : PerspectiveExponent
  phase : SymmetryPhase Group
  focalDigest : String
  cellDigest : String

def Stabilizes
    {Group Point : Type*}
    [SMul Group Point]
    (groupElement : Group)
    (point : Point) : Prop :=
  groupElement • point = point

theorem fixed_return_iff_relative_stabilizes
    {G Point : Type*}
    [Group G]
    [MulAction G Point]
    (symmetry : Point → Point)
    (groupSymmetry : G ≃* G)
    (compatible :
      ∀ groupElement point,
        symmetry (groupElement • point) =
          groupSymmetry groupElement • symmetry point)
    (point : Point)
    (pointFixed : symmetry point = point)
    (phase : G) :
    symmetry (phase • point) = phase • point ↔
      Stabilizes (phase⁻¹ * groupSymmetry phase) point := by
  constructor
  · intro fixed
    have transported :
        groupSymmetry phase • point = phase • point := by
      calc
        groupSymmetry phase • point =
            groupSymmetry phase • symmetry point := by rw [pointFixed]
        _ = symmetry (phase • point) := by
          rw [compatible]
        _ = phase • point := fixed
    calc
      (phase⁻¹ * groupSymmetry phase) • point =
          phase⁻¹ • (groupSymmetry phase • point) := by
            rw [mul_smul]
      _ = phase⁻¹ • (phase • point) := by rw [transported]
      _ = point := by simp [smul_smul]
  · intro stabilizes
    have transported := congrArg (fun value => phase • value) stabilizes
    have phaseEqual :
        groupSymmetry phase • point = phase • point := by
      simpa [Stabilizes, smul_smul] using transported
    calc
      symmetry (phase • point) =
          groupSymmetry phase • symmetry point :=
        compatible phase point
      _ = groupSymmetry phase • point := by rw [pointFixed]
      _ = phase • point := phaseEqual

structure GeometricReflectionCertificate
    (Algebraic Geometric : Type*) where
  encode : Algebraic → Geometric
  algebraicSymmetry : Involution Algebraic
  geometricSymmetry : Involution Geometric
  equivariant :
    ∀ value,
      encode (algebraicSymmetry.act value) =
        geometricSymmetry.act (encode value)
  reflectsEquality : Function.Injective encode

end Mathematics.AbelReynolds
```
