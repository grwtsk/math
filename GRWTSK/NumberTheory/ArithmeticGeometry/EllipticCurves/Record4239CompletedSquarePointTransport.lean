/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical source and attribution: grwtsk contributors.
Upstream Mathlib and Michael Stoll work retains original authorship and licences.

SOURCE_PROOF_CANDIDATE / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NativeTwoTorsion
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

/-!
# Actual rational-point transport across the completed-square model

For ICARM record #4239 the admissible coordinate change takes the genuine
normalized elliptic curve `Y² = x³ + x²/4 - A*x + B` to the original
`y² + x*y = x³ - A*x + B` by `y = Y - x/2`.

We construct both functions between Mathlib's *actual nonsingular point
types* and prove they are inverse as sets.  We additionally establish the
literal coordinate identities that a group-law transport must respect.

The `Equiv` below is NOT an `AddEquiv`.  No claim is made that it
preserves point addition until the separate source-faithful tangent/chord
slope calculation has been formalized.  Therefore no existing Rank32
descent evidence, Stoll `μ`, or finite generation has been transported.
-/

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

/-- The two actual Mathlib equations agree under the inverse
completed-square coordinate map. -/
theorem completedSquare_to_native_equation_iff (x Y : ℚ) :
    nativeCurve.toAffine.Equation x (Y - x / 2) ↔
      nativeCompletedSquareCurve.toAffine.Equation x Y := by
  rw [nativeEquation_iff, nativeCompletedSquare_coordinate_iff]
  simp only [sub_add_cancel]

/-- The equation comparison in the original-to-normalized direction. -/
theorem native_to_completedSquare_equation_iff (x y : ℚ) :
    nativeCompletedSquareCurve.toAffine.Equation x (y + x / 2) ↔
      nativeCurve.toAffine.Equation x y :=
  ((nativeEquation_iff x y).trans
    (nativeCompletedSquare_coordinate_iff x y)).symm

/-- The actual point map from the normalized model to the original
record curve; sends infinity to infinity and (x,Y) to (x,Y-x/2). -/
noncomputable def completedSquareToNativePoint :
    nativeCompletedSquareCurve.toAffine.Point →
      nativeCurve.toAffine.Point
  | .zero => .zero
  | .some x Y h =>
      .some x (Y - x / 2)
        (WeierstrassCurve.Affine.equation_iff_nonsingular.mp
          ((completedSquare_to_native_equation_iff x Y).mpr
            (WeierstrassCurve.Affine.equation_iff_nonsingular.mpr h)))

/-- The inverse point map from the native curve to the completed-square
model, taking (x,y) to (x,y+x/2). -/
noncomputable def nativeToCompletedSquarePoint :
    nativeCurve.toAffine.Point →
      nativeCompletedSquareCurve.toAffine.Point
  | .zero => .zero
  | .some x y h =>
      .some x (y + x / 2)
        (WeierstrassCurve.Affine.equation_iff_nonsingular.mp
          ((native_to_completedSquare_equation_iff x y).mpr
            (WeierstrassCurve.Affine.equation_iff_nonsingular.mpr h)))

@[simp] theorem completedSquareToNativePoint_zero :
    completedSquareToNativePoint 0 = 0 := rfl

@[simp] theorem nativeToCompletedSquarePoint_zero :
    nativeToCompletedSquarePoint 0 = 0 := rfl

/-- A genuine bijection of the *complete rational-point carriers*, not
merely a matching of the 32 listed point coordinates.
Its group-homomorphism law is still a separate missing supplier. -/
noncomputable def completedSquarePointEquiv :
    nativeCompletedSquareCurve.toAffine.Point ≃
      nativeCurve.toAffine.Point where
  toFun := completedSquareToNativePoint
  invFun := nativeToCompletedSquarePoint
  left_inv := by
    intro P
    cases P with
    | zero => rfl
    | some x Y h =>
      change (WeierstrassCurve.Affine.Point.some x
        ((Y - x / 2) + x / 2) _) =
        WeierstrassCurve.Affine.Point.some x Y h
      simp only [sub_add_cancel]
  right_inv := by
    intro P
    cases P with
    | zero => rfl
    | some x y h =>
      change (WeierstrassCurve.Affine.Point.some x
        ((y + x / 2) - x / 2) _) =
        WeierstrassCurve.Affine.Point.some x y h
      simp only [add_sub_cancel_right]

/-- The involution on the original curve agrees with the normalized
involution under the exact inverse-square coordinate change. -/
theorem completedSquare_negY_compat (x Y : ℚ) :
    nativeCurve.toAffine.negY x (Y - x / 2) =
      nativeCompletedSquareCurve.toAffine.negY x Y - x / 2 := by
  simp [WeierstrassCurve.Affine.negY, nativeCurve,
    nativeCompletedSquareCurve_eq]
  ring

/-- At any formal line slope, the third-point x-coordinate formula is
compatible with the adjusted slope `ℓ - 1/2`.  This does not assert
the *actual* tangent/chord slopes satisfy that equality. -/
theorem completedSquare_addX_compat (x₁ x₂ ℓ : ℚ) :
    nativeCurve.toAffine.addX x₁ x₂ (ℓ - 1 / 2) =
      nativeCompletedSquareCurve.toAffine.addX x₁ x₂ ℓ := by
  simp [WeierstrassCurve.Affine.addX, nativeCurve,
    nativeCompletedSquareCurve_eq]
  ring

/-- The corresponding y-coordinate formula, conditional on using the
adjusted slope.  Actual tangent/chord slope compatibility and a proof
of additive functoriality remain the next exact obligations. -/
theorem completedSquare_addY_compat (x₁ x₂ Y₁ ℓ : ℚ) :
    nativeCurve.toAffine.addY x₁ x₂ (Y₁ - x₁ / 2) (ℓ - 1 / 2) =
      nativeCompletedSquareCurve.toAffine.addY x₁ x₂ Y₁ ℓ -
        nativeCompletedSquareCurve.toAffine.addX x₁ x₂ ℓ / 2 := by
  simp [WeierstrassCurve.Affine.addY,
    WeierstrassCurve.Affine.negAddY,
    WeierstrassCurve.Affine.negY,
    WeierstrassCurve.Affine.addX, nativeCurve,
    nativeCompletedSquareCurve_eq]
  ring


/-!
## Actual secant, tangent, and vertical-line slope boundaries

Mathlib's total slope convention returns zero on a vertical line.
Consequently the formula nativeSlope = normalizedSlope - 1/2 is valid
only for the two NONVERTICAL branches. The vertical branch is handled
separately rather than smuggling an invalid global shift into map_add.
-/

/-- For distinct x-coordinates, secant slopes differ by one half.
No elliptic equation is required for this algebraic coordinate identity. -/
theorem completedSquare_secant_slope_compat
    (x₁ x₂ Y₁ Y₂ : ℚ) (hx : x₁ ≠ x₂) :
    nativeCurve.toAffine.slope x₁ x₂
        (Y₁ - x₁ / 2) (Y₂ - x₂ / 2) =
      nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂ -
        1 / 2 := by
  rw [(nativeCurve.toAffine).slope_of_X_ne hx,
    (nativeCompletedSquareCurve.toAffine).slope_of_X_ne hx]
  have hden : x₁ - x₂ ≠ 0 := sub_ne_zero.mpr hx
  field_simp [hden]
  ring

/-- At a nonvertical tangent, genuine derivative slopes differ by half.
The nonvertical hypothesis is indispensable for the total slope. -/
theorem completedSquare_tangent_slope_compat
    (x Y : ℚ)
    (hy : Y ≠ nativeCompletedSquareCurve.toAffine.negY x Y) :
    nativeCurve.toAffine.slope x x
        (Y - x / 2) (Y - x / 2) =
      nativeCompletedSquareCurve.toAffine.slope x x Y Y -
        1 / 2 := by
  have hnative :
      Y - x / 2 ≠ nativeCurve.toAffine.negY x (Y - x / 2) := by
    intro h
    apply hy
    rw [completedSquare_negY_compat] at h
    linarith
  have hY : Y ≠ 0 := by
    intro hz
    apply hy
    simp [WeierstrassCurve.Affine.negY,
      nativeCompletedSquareCurve_eq, hz]
  rw [(nativeCurve.toAffine).slope_of_Y_ne rfl hnative,
    (nativeCompletedSquareCurve.toAffine).slope_of_Y_ne rfl hy]
  simp only [WeierstrassCurve.Affine.negY,
    nativeCurve, nativeCompletedSquareCurve_eq]
  field_simp [hY]
  ring

/-- Complete nonvertical comparison on actual equation points.
The same-x case uses the curve equation to identify the two ordinates;
no unrelated pair is silently treated as a tangent. -/
theorem completedSquare_nonvertical_slope_compat
    (x₁ x₂ Y₁ Y₂ : ℚ)
    (h₁ : nativeCompletedSquareCurve.toAffine.Equation x₁ Y₁)
    (h₂ : nativeCompletedSquareCurve.toAffine.Equation x₂ Y₂)
    (hxy : ¬(x₁ = x₂ ∧
      Y₁ = nativeCompletedSquareCurve.toAffine.negY x₂ Y₂)) :
    nativeCurve.toAffine.slope x₁ x₂
        (Y₁ - x₁ / 2) (Y₂ - x₂ / 2) =
      nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂ -
        1 / 2 := by
  by_cases hx : x₁ = x₂
  · have hy : Y₁ ≠ nativeCompletedSquareCurve.toAffine.negY x₂ Y₂ :=
      fun h => hxy ⟨hx, h⟩
    have hsame : Y₁ = Y₂ :=
      (nativeCompletedSquareCurve.toAffine).Y_eq_of_Y_ne h₁ h₂ hx hy
    subst x₂
    subst Y₂
    exact completedSquare_tangent_slope_compat x₁ Y₁ hy
  · exact completedSquare_secant_slope_compat x₁ x₂ Y₁ Y₂ hx

/-- For the exceptional vertical branch both total slopes are zero,
so the minus-one-half shift MUST NOT be applied. Addition instead
returns the identity and must be transported directly. -/
theorem completedSquare_vertical_slopes_zero
    (x₁ x₂ Y₁ Y₂ : ℚ)
    (hx : x₁ = x₂)
    (hy : Y₁ = nativeCompletedSquareCurve.toAffine.negY x₂ Y₂) :
    nativeCurve.toAffine.slope x₁ x₂
        (Y₁ - x₁ / 2) (Y₂ - x₂ / 2) = 0 ∧
      nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂ = 0 := by
  have hnative :
      Y₁ - x₁ / 2 =
        nativeCurve.toAffine.negY x₂ (Y₂ - x₂ / 2) := by
    rw [completedSquare_negY_compat, hx, hy]
  exact ⟨(nativeCurve.toAffine).slope_of_Y_eq hx hnative,
    (nativeCompletedSquareCurve.toAffine).slope_of_Y_eq hx hy⟩


/-- A rigorous obstruction to the tempting unqualified half-slope
transport. At a vertical pair, Mathlib's total slopes are both zero,
and in characteristic zero, zero cannot equal zero minus one half. -/
theorem completedSquare_vertical_global_shift_false
    (x₁ x₂ Y₁ Y₂ : ℚ)
    (hx : x₁ = x₂)
    (hy : Y₁ = nativeCompletedSquareCurve.toAffine.negY x₂ Y₂) :
    ¬ (nativeCurve.toAffine.slope x₁ x₂
          (Y₁ - x₁ / 2) (Y₂ - x₂ / 2) =
        nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂ -
          1 / 2) := by
  obtain ⟨h₁, h₂⟩ :=
    completedSquare_vertical_slopes_zero x₁ x₂ Y₁ Y₂ hx hy
  rw [h₁, h₂]
  norm_num

/-- The new point-carrier equivalence sends each actual published
normalized rational point to its original native rational point.
No group-law preservation or independent-point theorem is inferred. -/
theorem completedSquarePointEquiv_sourcePoint (i : Fin 32) :
    completedSquarePointEquiv (nativeCompletedSquarePoint i) =
      nativePoint i := by
  change (WeierstrassCurve.Affine.Point.some (pointX i)
    ((pointY i + pointX i / 2) - pointX i / 2) _) =
      WeierstrassCurve.Affine.Point.some (pointX i) (pointY i) _
  simp only [add_sub_cancel_right]

/-- The carrier map does preserve the elliptic negation involution,
an independently verified algebraic prerequisite for an additive map.
It does not yet show preservation of point addition. -/
theorem completedSquareToNativePoint_neg
    (P : nativeCompletedSquareCurve.toAffine.Point) :
    completedSquareToNativePoint (-P) =
      -completedSquareToNativePoint P := by
  cases P with
  | zero => rfl
  | some x Y h =>
    change (WeierstrassCurve.Affine.Point.some x
      (nativeCompletedSquareCurve.toAffine.negY x Y - x / 2) _) =
      WeierstrassCurve.Affine.Point.some x
        (nativeCurve.toAffine.negY x (Y - x / 2)) _
    rw [completedSquare_negY_compat]



/-!
## Addition preservation for the actual normalized and native point groups

Unlike the point-set equivalence above, the following proof handles all
three branches of Mathlib's point addition: the identity, an opposite
(vertical) pair, and a nonvertical tangent or secant. The zero-valued
total-slope convention in the vertical branch is never shifted.
-/

/-- Opposite-pair detection is preserved by the completed-square
coordinate transformation, including coincident x-coordinates. -/
theorem completedSquare_opposite_iff
    (x₁ x₂ Y₁ Y₂ : ℚ) :
    (x₁ = x₂ ∧
      Y₁ = nativeCompletedSquareCurve.toAffine.negY x₂ Y₂) ↔
    (x₁ = x₂ ∧
      Y₁ - x₁ / 2 =
        nativeCurve.toAffine.negY x₂ (Y₂ - x₂ / 2)) := by
  constructor
  · rintro ⟨hx, hy⟩
    refine ⟨hx, ?_⟩
    rw [completedSquare_negY_compat, hx, hy]
  · rintro ⟨hx, hy⟩
    refine ⟨hx, ?_⟩
    rw [completedSquare_negY_compat, hx] at hy
    linarith

/-- The x-coordinate of the actual sum agrees with the one in the
normalized model, under the exact nonvertical point hypotheses. -/
theorem completedSquare_actual_addX_compat
    (x₁ x₂ Y₁ Y₂ : ℚ)
    (h₁ : nativeCompletedSquareCurve.toAffine.Equation x₁ Y₁)
    (h₂ : nativeCompletedSquareCurve.toAffine.Equation x₂ Y₂)
    (hxy : ¬(x₁ = x₂ ∧
      Y₁ = nativeCompletedSquareCurve.toAffine.negY x₂ Y₂)) :
    nativeCurve.toAffine.addX x₁ x₂
        (nativeCurve.toAffine.slope x₁ x₂
          (Y₁ - x₁ / 2) (Y₂ - x₂ / 2)) =
      nativeCompletedSquareCurve.toAffine.addX x₁ x₂
        (nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂) := by
  rw [completedSquare_nonvertical_slope_compat x₁ x₂ Y₁ Y₂
    h₁ h₂ hxy]
  exact completedSquare_addX_compat
    x₁ x₂ (nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂)

/-- The y-coordinate of the actual sum is the normalized y-coordinate
minus one half of the resulting x-coordinate, for nonvertical pairs. -/
theorem completedSquare_actual_addY_compat
    (x₁ x₂ Y₁ Y₂ : ℚ)
    (h₁ : nativeCompletedSquareCurve.toAffine.Equation x₁ Y₁)
    (h₂ : nativeCompletedSquareCurve.toAffine.Equation x₂ Y₂)
    (hxy : ¬(x₁ = x₂ ∧
      Y₁ = nativeCompletedSquareCurve.toAffine.negY x₂ Y₂)) :
    nativeCurve.toAffine.addY x₁ x₂ (Y₁ - x₁ / 2)
        (nativeCurve.toAffine.slope x₁ x₂
          (Y₁ - x₁ / 2) (Y₂ - x₂ / 2)) =
      nativeCompletedSquareCurve.toAffine.addY x₁ x₂ Y₁
        (nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂) -
      nativeCompletedSquareCurve.toAffine.addX x₁ x₂
        (nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂) / 2 := by
  rw [completedSquare_nonvertical_slope_compat x₁ x₂ Y₁ Y₂
    h₁ h₂ hxy]
  exact completedSquare_addY_compat x₁ x₂ Y₁
    (nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂)

/-- The completed-square map preserves *actual* elliptic-curve addition,
including the point at infinity and the opposite-pair case. No additive
homomorphism structure was assumed or introduced as a proof input. -/
theorem completedSquareToNativePoint_add
    (P Q : nativeCompletedSquareCurve.toAffine.Point) :
    completedSquareToNativePoint (P + Q) =
      completedSquareToNativePoint P + completedSquareToNativePoint Q := by
  cases P with
  | zero =>
    simp only [zero_add, completedSquareToNativePoint_zero]
  | some x₁ Y₁ h₁ =>
    cases Q with
    | zero =>
      simp only [add_zero, completedSquareToNativePoint_zero]
    | some x₂ Y₂ h₂ =>
      by_cases hxy : x₁ = x₂ ∧
          Y₁ = nativeCompletedSquareCurve.toAffine.negY x₂ Y₂
      · have hnative := (completedSquare_opposite_iff x₁ x₂ Y₁ Y₂).mp hxy
        change completedSquareToNativePoint
            (WeierstrassCurve.Affine.Point.some x₁ Y₁ h₁ +
              WeierstrassCurve.Affine.Point.some x₂ Y₂ h₂) =
          (WeierstrassCurve.Affine.Point.some
            x₁ (Y₁ - x₁ / 2) _ +
            WeierstrassCurve.Affine.Point.some
              x₂ (Y₂ - x₂ / 2) _)
        rw [WeierstrassCurve.Affine.Point.add_of_Y_eq hxy.1 hxy.2,
            WeierstrassCurve.Affine.Point.add_of_Y_eq hnative.1 hnative.2]
        rfl
      · have hnative : ¬(x₁ = x₂ ∧
            Y₁ - x₁ / 2 =
              nativeCurve.toAffine.negY x₂ (Y₂ - x₂ / 2)) := by
          intro h
          exact hxy ((completedSquare_opposite_iff x₁ x₂ Y₁ Y₂).mpr h)
        have hxcompat := completedSquare_actual_addX_compat
          x₁ x₂ Y₁ Y₂ h₁.1 h₂.1 hxy
        have hycompat := completedSquare_actual_addY_compat
          x₁ x₂ Y₁ Y₂ h₁.1 h₂.1 hxy
        change completedSquareToNativePoint
            (WeierstrassCurve.Affine.Point.some x₁ Y₁ h₁ +
              WeierstrassCurve.Affine.Point.some x₂ Y₂ h₂) =
          (WeierstrassCurve.Affine.Point.some
            x₁ (Y₁ - x₁ / 2) _ +
            WeierstrassCurve.Affine.Point.some
              x₂ (Y₂ - x₂ / 2) _)
        rw [WeierstrassCurve.Affine.Point.add_some hxy,
            WeierstrassCurve.Affine.Point.add_some hnative]
        change
          (WeierstrassCurve.Affine.Point.some
            (nativeCompletedSquareCurve.toAffine.addX x₁ x₂
              (nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂))
            (nativeCompletedSquareCurve.toAffine.addY x₁ x₂ Y₁
              (nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂) -
              nativeCompletedSquareCurve.toAffine.addX x₁ x₂
                (nativeCompletedSquareCurve.toAffine.slope x₁ x₂ Y₁ Y₂) / 2) _) =
          (WeierstrassCurve.Affine.Point.some
            (nativeCurve.toAffine.addX x₁ x₂
              (nativeCurve.toAffine.slope x₁ x₂
                (Y₁ - x₁ / 2) (Y₂ - x₂ / 2)))
            (nativeCurve.toAffine.addY x₁ x₂ (Y₁ - x₁ / 2)
              (nativeCurve.toAffine.slope x₁ x₂
                (Y₁ - x₁ / 2) (Y₂ - x₂ / 2))) _)
        rw [hxcompat, hycompat]

/-- The original rational elliptic-curve group and its exact completed-
square normalization are additively equivalent. This is a source-level
proof candidate for the previously missing algebraic transport. -/
noncomputable def completedSquarePointAddEquiv :
    nativeCompletedSquareCurve.toAffine.Point ≃+
      nativeCurve.toAffine.Point where
  toFun := completedSquareToNativePoint
  invFun := nativeToCompletedSquarePoint
  left_inv := completedSquarePointEquiv.left_inv
  right_inv := completedSquarePointEquiv.right_inv
  map_add' := completedSquareToNativePoint_add

/-- The additive equivalence respects every source-identified rational
point, preserving its original curve and its ordering. -/
theorem completedSquarePointAddEquiv_sourcePoint (i : Fin 32) :
    completedSquarePointAddEquiv (nativeCompletedSquarePoint i) =
      nativePoint i :=
  completedSquarePointEquiv_sourcePoint i


end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
