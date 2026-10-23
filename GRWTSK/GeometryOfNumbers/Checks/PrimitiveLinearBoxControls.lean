/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI. -/
import GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel
import GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.ExceptionalSetGeometryLatticeInput
import Mathlib.Tactic

set_option autoImplicit false

/-!
# Controls for the primitive linear-box foundation

These controls separate coefficient primitivity, variable primitivity,
positive denominator handling, anisotropic scaling, and the still-open finite
lattice estimate.

SOURCE_DRAFT / NOT_RUN / NOT_KERNEL_AUDITED.
-/

namespace GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearBoxControls

open GRWTSK.GeometryOfNumbers.PrimitiveLinearBoxCount
open GRWTSK.GeometryOfNumbers.PrimitiveLinearKernel

/-- A minimal positive primitive data set. -/
def unitData : Data where
  a := 1
  b := 1
  c := 1
  X := 2
  Y := 2
  Z := 2
  a_pos := by norm_num
  b_pos := by norm_num
  c_pos := by norm_num
  X_pos := by norm_num
  Y_pos := by norm_num
  Z_pos := by norm_num
  coefficientPrimitive := by norm_num

/-- The only positive solution of `x+y=z` in the two-box is `(1,1,2)`. -/
theorem unitData_count_control :
    unitData.primitivePositiveSolutionCount = 1 := by
  decide

/-- The counted point is primitive and satisfies the exact equation. -/
theorem unitData_member_control :
    ((1, 1, 2) : Point) ∈ unitData.primitivePositiveSolutions := by
  decide

/-- Coefficient gcd one does not force every equation solution to be a
primitive variable triple. -/
theorem coefficient_primitive_not_variable_primitive_control :
    Nat.gcd (Nat.gcd 1 1) 1 = 1 ∧
      1 * 2 + 1 * 2 = 1 * 4 ∧
      ¬ Data.VariablePrimitive ((2, 2, 4) : Point) := by
  norm_num [Data.VariablePrimitive]

/-- The primitive point and its nonprimitive double lie on the same rational
ray; primitive-ray control is therefore a substantive part of the target
finite theorem. -/
theorem primitive_ray_control :
    Data.VariablePrimitive ((1, 1, 2) : Point) ∧
      ¬ Data.VariablePrimitive ((2, 2, 4) : Point) := by
  norm_num [Data.VariablePrimitive]

/-- The integral coefficient kernel is saturated under a nonzero scale. -/
theorem saturated_kernel_control
    {point : IntPoint}
    (scaled : scalePoint 7 point ∈ linearKernel 2 3 5) :
    point ∈ linearKernel 2 3 5 :=
  mem_linearKernel_of_scalePoint_mem (by norm_num) scaled

/-- A primitive coefficient vector has an explicit preimage of one. -/
theorem primitive_normal_control :
    coefficientHom 2 3 5 (primitiveNormalWitness 2 3 5) = 1 := by
  exact coefficientHom_primitiveNormalWitness (by norm_num)

/-- The coefficient functional for a primitive normal vector is onto. -/
theorem primitive_normal_surjective_control :
    Function.Surjective (coefficientHom 2 3 5) :=
  coefficientHom_surjective (by norm_num)

/-- Lopsided boxes retain the largest scaled coordinate instead of being
silently replaced by a cube. -/
def lopsidedData : Data where
  a := 1
  b := 1
  c := 1
  X := 100
  Y := 1
  Z := 101
  a_pos := by norm_num
  b_pos := by norm_num
  c_pos := by norm_num
  X_pos := by norm_num
  Y_pos := by norm_num
  Z_pos := by norm_num
  coefficientPrimitive := by norm_num

@[simp] theorem lopsided_scaleHeight_control :
    lopsidedData.scaleHeight = 101 := by
  norm_num [lopsidedData, Data.scaleHeight]

/-- Natural-number truncating division cannot replace the real quotient in the
Heath--Brown normalization. -/
theorem natural_division_rejected_control :
    (1 / 2 : ℕ) = 0 ∧ (0 : ℝ) < (1 : ℝ) / 2 := by
  norm_num

/-- Positivity of the denominator is an explicit theorem, not an implicit
convention for division by zero. -/
theorem denominator_positive_control :
    0 < lopsidedData.scaleHeight :=
  lopsidedData.scaleHeight_pos

/-- The exact finite target remains unproved merely because its proposition has
been named. -/
theorem named_bound_not_automatic_control :
    ¬ unitData.PrimitiveLinearBoxBoundAt 0 := by
  unfold Data.PrimitiveLinearBoxBoundAt
  norm_num [unitData_count_control]

end GRWTSK.GeometryOfNumbers.Checks.PrimitiveLinearBoxControls
