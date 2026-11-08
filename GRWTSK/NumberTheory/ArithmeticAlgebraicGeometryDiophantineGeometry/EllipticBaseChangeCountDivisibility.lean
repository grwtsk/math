/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Local mathematical attribution: grwtsk contributors.
AI-assisted source formalization candidate.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN / INDEPENDENT_ANALYTICAL_REVIEW_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticExtensionCountDivisibility
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.EllipticNativeAffineHassePort
import Mathlib.GroupTheory.Coset.Card
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point
import Mathlib

/-!
# Genuine elliptic base-change subgroup and extension order divisibility

## Unconditional geometric route and exact carriers

On the ACTUAL Mathlib Weierstrass affine-or-infinity point group, a field
extension K -> L induces the existing `WeierstrassCurve.Affine.Point.baseChange`
additive homomorphism. Since the underlying field algebra map is injective,
Mathlib's existing `Affine.Point.map_injective` supplies injectivity of
this point homomorphism. Lagrange's theorem is already present as
`AddSubgroup.card_dvd_of_injective`: therefore the cardinality of the
base point group divides the cardinality of the extension point group.
No Frobenius, Hasse, generic spin diffusion or cohomology is required.
For finite fields both orders are true finite cardinalities; the
calculation also retains Nat.card semantics on general field extensions.

This is a *different proof route* from the integer recurrence argument
in `EllipticExtensionCountDivisibility.lean`. Both agree on a real
extension-count family only after a separate native point-count/trace
return, i.e. the repository's original `ExtensionCountSource`.
They establish a necessary divisibility condition, not the missing
Frobenius characteristic equation, Hasse or finite-field RH.

A naive reverse divisibility is false: e.g. E(F_5) has 9 points but
E(F_25) has 27 points on y²=x³+x+1; 27 does not divide 9.
A fixed finite n-torsion subgroup is not the full group at every
extension and can never substitute for the complete count source.

Mathlib source: actual `WeierstrassCurve.Affine.Point.baseChange` and
`map_injective` in Affine/Point.lean and the exact cardinal Lagrange
lemma `AddSubgroup.card_dvd_of_injective` in Coset/Card.lean,
all at pinned Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
Inspected `grwtsk/math@66ce6c37233dc58874f8f50f3d6dfce0e6e7a77b`.
The geometric result is standard Lagrange theory; novelty not claimed.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.BaseChangeCountDivisibility

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.NativeAffineHasse
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExtensionCountDivisibility

universe u v
variable {K : Type u} [Field K] [DecidableEq K]
variable {L : Type v} [Field L] [DecidableEq L] [Algebra K L]
variable (W : WeierstrassCurve K) [W.toAffine.IsElliptic]
variable [(W.baseChange L).toAffine.IsElliptic]

/-- The original, non-synthetic field-extension homomorphism of actual
elliptic curve points, including the point at infinity. -/
noncomputable def nativeBaseChange :
    (W.toAffine⁄K).Point →+ (W.toAffine⁄L).Point :=
  WeierstrassCurve.Affine.Point.baseChange K L

/-- Field extension injectivity gives point injectivity, with no
additional assumptions about character, torsion or extension degree. -/
theorem nativeBaseChange_injective : Function.Injective (nativeBaseChange (K := K) (L := L) W) := by
  unfold nativeBaseChange
  exact WeierstrassCurve.Affine.Point.map_injective

/-- The geometric base-point group divides the extension-point group
by the literal additive group law and Lagrange, not an assumed trace. -/
theorem nativeAffineCard_dvd_extensionCard :
    Nat.card (W.toAffine⁄K).Point ∣ Nat.card (W.toAffine⁄L).Point := by
  exact AddSubgroup.card_dvd_of_injective
    (nativeBaseChange (K := K) (L := L) W) (nativeBaseChange_injective (K := K) (L := L) W)

/-- Count the native projective E(K), not a fictitious affine-only set:
use the **existing** exact projective-to-affine AddEquiv. -/
theorem nativeProjectiveCard_dvd_extensionCard [W.IsElliptic] :
    Nat.card W.Point ∣ Nat.card (W.toAffine⁄L).Point := by
  rw [NativeAffineHasse.nativeCard_eq_affineCard W]
  simpa using (nativeAffineCard_dvd_extensionCard (K := K) (L := L) W)

/-- If an exact source identifies N and a chosen extension count with
these real geometric point sets, transfer geometric Lagrange directly
to the same integers as the trace recurrence. This interface is
intentionally conditional on both source comparisons. -/
theorem nativeLagrange_return (N extensionCount : ℕ)
    (hbase : N = Nat.card (W.toAffine⁄K).Point)
    (hextension : extensionCount = Nat.card (W.toAffine⁄L).Point) :
    N ∣ extensionCount := by
  rw [hbase, hextension]
  exact nativeAffineCard_dvd_extensionCard (K := K) (L := L) W

/-! ## Genuine intermediate-field tower, retaining the original model -/

section IntermediateTower

variable {M : Type*} [Field M] [DecidableEq M]
variable [Algebra K M] [Algebra M L] [IsScalarTower K M L]
variable [(W.baseChange M).toAffine.IsElliptic]

/-- For every genuine tower K -> M -> L, the *middle-field* elliptic
point group injects into the upper-field group. Thus every finite
extension tower has divisibility of its successive group orders,
without requiring a Frobenius/trace-source comparison. -/
theorem intermediateCard_dvd_upperCard :
    Nat.card (W.toAffine⁄M).Point ∣ Nat.card (W.toAffine⁄L).Point := by
  let f : (W.toAffine⁄M).Point →+ (W.toAffine⁄L).Point :=
    WeierstrassCurve.Affine.Point.baseChange M L
  have hf : Function.Injective f := by
    unfold f
    exact WeierstrassCurve.Affine.Point.map_injective
  exact AddSubgroup.card_dvd_of_injective f hf

end IntermediateTower

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.BaseChangeCountDivisibility
