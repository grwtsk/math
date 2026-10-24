# Complete source: GRWTSK.LinearAlgebra.FinitePositiveHodgeProjectors

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc65e76f80cf4686e787fac5d0c4afdfe68ff950` · SHA-256 `4ded495a007235748f597d6ffc373a193fa52d7c0fa6c8b4faf6da6c2ff8ad16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

namespace GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat

open GRWTSK.LinearAlgebra.FramedFiberPort

universe u

variable {ι : Type u}

/-- The coordinate projector selected by a Boolean mask. -/
def coordinateProjector (mask : ι → Bool) :
    (ι → ℝ) →ₗ[ℝ] (ι → ℝ) where
  toFun x i := if mask i = true then x i else 0
  map_add' x y := by
    ext i
    by_cases h : mask i = true <;> simp [h]
  map_smul' r x := by
    ext i
    by_cases h : mask i = true <;> simp [h]

/-- The complementary coordinate projector. -/
def coordinateComplement (mask : ι → Bool) :
    (ι → ℝ) →ₗ[ℝ] (ι → ℝ) where
  toFun x i := if mask i = true then 0 else x i
  map_add' x y := by
    ext i
    by_cases h : mask i = true <;> simp [h]
  map_smul' r x := by
    ext i
    by_cases h : mask i = true <;> simp [h]

@[simp]
theorem coordinateProjector_apply (mask : ι → Bool) (x : ι → ℝ) (i : ι) :
    coordinateProjector mask x i = if mask i = true then x i else 0 := rfl

@[simp]
theorem coordinateComplement_apply (mask : ι → Bool) (x : ι → ℝ) (i : ι) :
    coordinateComplement mask x i = if mask i = true then 0 else x i := rfl

/-- The selected coordinate map is idempotent. -/
theorem coordinateProjector_idempotent (mask : ι → Bool) :
    (coordinateProjector mask).comp (coordinateProjector mask) =
      coordinateProjector mask := by
  ext x i
  by_cases h : mask i = true <;>
    simp [coordinateProjector, LinearMap.comp_apply, h]

/-- The complementary coordinate map is idempotent. -/
theorem coordinateComplement_idempotent (mask : ι → Bool) :
    (coordinateComplement mask).comp (coordinateComplement mask) =
      coordinateComplement mask := by
  ext x i
  by_cases h : mask i = true <;>
    simp [coordinateComplement, LinearMap.comp_apply, h]

/-- The selected and complementary coordinate projectors are orthogonal. -/
theorem coordinateProjector_complement_zero (mask : ι → Bool) :
    (coordinateProjector mask).comp (coordinateComplement mask) = 0 := by
  ext x i
  by_cases h : mask i = true <;>
    simp [coordinateProjector, coordinateComplement, LinearMap.comp_apply, h]

/-- The two coordinate projectors reconstruct the identity. -/
theorem coordinateProjector_add_complement (mask : ι → Bool) :
    coordinateProjector mask + coordinateComplement mask = LinearMap.id := by
  ext x i
  by_cases h : mask i = true <;>
    simp [coordinateProjector, coordinateComplement, h]

/-- Coordinate projectors commute with every diagonal differential. -/
theorem coordinateProjector_diagonal_comm (mask : ι → Bool) (a : ι → ℝ) :
    (coordinateProjector mask).comp (diagonal a) =
      (diagonal a).comp (coordinateProjector mask) := by
  ext x i
  by_cases h : mask i = true <;>
    simp [coordinateProjector, diagonal, LinearMap.comp_apply, h]

/-- Coordinate complements commute with every diagonal differential. -/
theorem coordinateComplement_diagonal_comm (mask : ι → Bool) (a : ι → ℝ) :
    (coordinateComplement mask).comp (diagonal a) =
      (diagonal a).comp (coordinateComplement mask) := by
  ext x i
  by_cases h : mask i = true <;>
    simp [coordinateComplement, diagonal, LinearMap.comp_apply, h]

/-- The Boolean coordinate split defines a concrete Hodge projector. -/
def coordinateSplitHodgeProjector (a : ι → ℝ) (mask : ι → Bool) :
    HodgeProjector (positiveDiagonalHodge a) where
  p0 := coordinateProjector mask
  p1 := coordinateProjector mask
  p0_idempotent := coordinateProjector_idempotent mask
  p1_idempotent := coordinateProjector_idempotent mask
  delta_comm := coordinateProjector_diagonal_comm mask a
  deltaStar_comm := coordinateProjector_diagonal_comm mask a

/-- Coordinate projectors commute with the exact finite heat flow. -/
theorem coordinateProjector_heat_comm
    (a : ι → ℝ) (mask : ι → Bool) (t : ℝ) :
    (coordinateProjector mask).comp (heat a t) =
      (heat a t).comp (coordinateProjector mask) := by
  ext x i
  by_cases h : mask i = true <;>
    simp [coordinateProjector, heat, functionalCalculus, diagonal,
      LinearMap.comp_apply, h]

/-- The positive diagonal Hodge energy splits exactly across the coordinate sectors. -/
theorem energy_coordinate_split [Fintype ι]
    (a x : ι → ℝ) (mask : ι → Bool) :
    energy a x =
      energy a (coordinateProjector mask x) +
        energy a (coordinateComplement mask x) := by
  unfold energy dot
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro i _
  by_cases h : mask i = true <;>
    simp [coordinateProjector, coordinateComplement, diagonal, h]

end GRWTSK.LinearAlgebra.FinitePositiveHodgeHeat
```
