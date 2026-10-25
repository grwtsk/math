/-
Copyright (c) 2026 grwtsk contributors. MIT.
The elliptic-curve record and 32 points are due to Noam Elkies,
Zev Klagsbrun, and Samuel Li (ICARM #4239, 2026-10-15).
The genuine Weierstrass group law and its point-negation theorem
are Mathlib results (original authorship and license retained).
Local mathematical formalization: grwtsk contributors.

SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
These Lean proof terms have not been elaborated in the current authoring
environment. Do not promote to a verified theorem before clean replay.
-/
import GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239NegationObstruction
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point
import Mathlib.AlgebraicGeometry.EllipticCurve.NormalForms

/-!
# Native Weierstrass two-torsion obstruction for ICARM record #4239

The inherited arithmetic source fixes the actual equation
    y^2 + x*y = x^3 - A*x + B,
and excludes rational affine points satisfying y = -y-x.
This file constructs *Mathlib's* Weierstrass curve, proves its
discriminant and actual ellipticity, and transports the rational
coordinates to Mathlib's group of nonsingular affine-or-infinity
points. Its central theorem is:

    (2 : ℤ) • P = 0 → P = 0   for all P : nativeCurve.Point.

The proof uses genuine native negation, rather than a supplied group-law
record. It is the exact no-double-kernel supplier consumed by
ModTwoIndependenceDescent and the conditional rank-32 character criterion.

It does NOT:
* assert the 32 points are independent or construct a Mordell-Weil basis;
* construct the Cremona-Brumer x-T descent homomorphism or local characters;
* import Stoll's Lean-4.35 project into this Lean-4.33 repository;
* verify a numerical regulator, exact rank 32, BSD, GRH, or RH.
-/

set_option autoImplicit false
set_option maxRecDepth 16384
set_option maxHeartbeats 0

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239

/-- The *actual* record model in Mathlib's five-coefficient structure.
This is not the historical source-only supplied point-law structure. -/
def nativeCurve : WeierstrassCurve ℚ where
  a₁ := 1
  a₂ := 0
  a₃ := 0
  a₄ := -(A : ℚ)
  a₆ := (B : ℚ)

/-- Source identification for the five-coefficient model. -/
theorem nativeEquation_iff (x y : ℚ) :
    nativeCurve.toAffine.Equation x y ↔ OnRecordModel x y := by
  simp [WeierstrassCurve.Affine.equation_iff, nativeCurve,
    OnRecordModel, sub_eq_add_neg, neg_mul, add_assoc]

/-- The discriminant of the native Mathlib curve is the exact preexisting
integer discriminant, transported through the canonical ℤ → ℚ embedding.
This is a symbolic coefficient identity, not a floating computation. -/
theorem nativeDiscriminant_eq :
    nativeCurve.Δ = (recordDiscriminant : ℚ) := by
  norm_num [nativeCurve, WeierstrassCurve.Δ, WeierstrassCurve.b₂,
    WeierstrassCurve.b₄, WeierstrassCurve.b₆,
    WeierstrassCurve.b₈, recordDiscriminant]

/-- Thus the chosen Mathlib curve is genuinely nonsingular over ℚ. -/
theorem nativeDiscriminant_ne_zero : nativeCurve.Δ ≠ 0 := by
  rw [nativeDiscriminant_eq]
  exact_mod_cast discriminant_ne_zero

/-- Installs exactly the hypothesis under which Mathlib's native
`Point.mk` turns equation witnesses into nonsingular rational points. -/
noncomputable instance : nativeCurve.IsElliptic where
  isUnit := isUnit_iff_ne_zero.mpr nativeDiscriminant_ne_zero


/-!
## Source-identified characteristic-not-two normal form

The completed-square coordinates are (X,Y) = (x,y+x/2).  The exact
admissible Weierstrass change is an arithmetic precursor to Stoll's
`x-T` descent, which is stated for `a₁=a₃=0`.  This does NOT construct
a group-law equivalence between the two point groups, import Stoll's
later-toolchain theorem, or prove finite generation.
-/

/-- Exact admissible change of variables for the published record equation.
Its coordinate map sends a normalized point (x,Y) to (x,Y-x/2). -/
def nativeCompletedSquareChange : WeierstrassCurve.VariableChange ℚ :=
  ⟨1, 0, -(1 / 2 : ℚ), 0⟩

/-- The same published elliptic curve after an admissible change of variables. -/
def nativeCompletedSquareCurve : WeierstrassCurve ℚ :=
  nativeCompletedSquareChange • nativeCurve

/-- Fully determined normalized coefficients, not merely a model with
unspecified characteristic-not-two parameters. -/
theorem nativeCompletedSquareCurve_eq :
    nativeCompletedSquareCurve =
      { a₁ := 0, a₂ := (1 / 4 : ℚ), a₃ := 0,
        a₄ := -(A : ℚ), a₆ := (B : ℚ) } := by
  ext <;> norm_num [nativeCompletedSquareCurve, nativeCompletedSquareChange,
    nativeCurve, WeierstrassCurve.variableChange_def] <;> ring

/-- Genuine ellipticity is preserved by this admissible change. -/
noncomputable instance : nativeCompletedSquareCurve.IsElliptic := by
  change (nativeCompletedSquareChange • nativeCurve).IsElliptic
  infer_instance

/-- Exactly the Stoll-style `y²=f(x)` normal-form prerequisite.
This does not import his x-minus-T descent homomorphism. -/
instance : nativeCompletedSquareCurve.IsCharNeTwoNF where
  a₁ := by rw [nativeCompletedSquareCurve_eq]; rfl
  a₃ := by rw [nativeCompletedSquareCurve_eq]; rfl

/-- Exact affine equation of the normalized native curve. -/
theorem nativeCompletedSquareEquation_iff (x Y : ℚ) :
    nativeCompletedSquareCurve.toAffine.Equation x Y ↔
      Y ^ 2 = x ^ 3 + (1 / 4 : ℚ) * x ^ 2 -
        (A : ℚ) * x + (B : ℚ) := by
  rw [nativeCompletedSquareCurve_eq]
  simp [WeierstrassCurve.Affine.equation_iff]

/-- The coordinate change is reversible on the actual affine equations,
with the source's nontrivial `xy` term accounted for exactly. -/
theorem nativeCompletedSquare_coordinate_iff (x y : ℚ) :
    OnRecordModel x y ↔
      nativeCompletedSquareCurve.toAffine.Equation x (y + x / 2) := by
  rw [nativeCompletedSquareEquation_iff]
  unfold OnRecordModel
  constructor <;> intro h <;> nlinarith [h]

/-- All 32 published rational points are genuine nonsingular points of the
normalized Mathlib curve.  This supplies no independence or local characters. -/
noncomputable def nativeCompletedSquarePoint (i : Fin 32) :
    nativeCompletedSquareCurve.toAffine.Point :=
  WeierstrassCurve.Affine.Point.mk
    ((nativeCompletedSquare_coordinate_iff (pointX i) (pointY i)).mp
      (points_on_record_model i))

/-- Every one of the 32 *source-identified* rational coordinates becomes
a point in Mathlib's genuine elliptic point group, not a bare pair. -/
noncomputable def nativePoint (i : Fin 32) : nativeCurve.toAffine.Point :=
  WeierstrassCurve.Affine.Point.mk
    ((nativeEquation_iff (pointX i) (pointY i)).mpr
      (points_on_record_model i))

/-- Native elliptic negation specializes to the precise source involution. -/
theorem nativeNegY (x y : ℚ) :
    nativeCurve.toAffine.negY x y = -y - x := by
  simp [WeierstrassCurve.Affine.negY, nativeCurve]

/-- A nonidentity native rational point cannot be fixed by negation.
The infinity case is handled separately by the inductive point type.
No local-character homomorphism is assumed. -/
theorem nativePoint_eq_neg_imp_zero
    (P : nativeCurve.toAffine.Point) (hfixed : P = -P) :
    P = 0 := by
  cases P with
  | zero => rfl
  | some x y hxy =>
      have hy : y = nativeCurve.toAffine.negY x y := by
        simpa only [WeierstrassCurve.Affine.Point.neg_some,
          WeierstrassCurve.Affine.Point.some.injEq,
          eq_self_iff_true, true_and] using hfixed
      have hon : OnRecordModel x y :=
        (nativeEquation_iff x y).mp hxy.1
      have hbad : y = -y - x := by
        simpa only [nativeNegY] using hy
      exact (noRationalAffineNegationFixedPoint x y hon hbad).elim

/-- The missing *native* two-torsion supplier. For an additive group,
2P = 0 entails P = -P, and source-faithful coordinate arithmetic rules out
that equality away from infinity. This does NOT require full
torsion-freeness or the analytic Mordell-Weil theorem. -/
theorem nativeNoTwoTorsion
    (P : nativeCurve.toAffine.Point)
    (h : (2 : ℤ) • P = 0) : P = 0 := by
  apply nativePoint_eq_neg_imp_zero P
  apply (add_eq_zero_iff_eq_neg).mp
  simpa only [two_zsmul] using h

/-- The exact quantified form accepted by the existing generic
integer-coefficient descent. -/
theorem nativeNoTwoTorsion_for_descent :
    ∀ P : nativeCurve.toAffine.Point,
      (2 : ℤ) • P = 0 → P = 0 :=
  nativeNoTwoTorsion

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.Record4239
