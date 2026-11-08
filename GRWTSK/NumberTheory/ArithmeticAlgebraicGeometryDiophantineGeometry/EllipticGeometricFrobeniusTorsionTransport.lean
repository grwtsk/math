/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
Local mathematical attribution: grwtsk contributors.
AI-assisted formalization candidate; independent review NOT_RUN.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticGenuineGeometricFrobenius
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticExactTorsionFrobeniusClasses
import Mathlib

/-!
# Actual Frobenius automorphisms on every geometric elliptic torsion class

## The first missing source-to-consumer connection

The actual q^k-Frobenius point map already exists in
`GenuineGeometricFrobenius.geometricPointFrobeniusPower`, derived from the
native Mathlib finite-field Galois algebra equivalence and the genuine
Weierstrass point map. The older all-torsion spin and heat files consume an
ARBITRARY `W.Point ≃+ W.Point` instead. It is not legitimate to identify those
inputs by name. This module constructs the particular equivalence from the
actual q^k-coordinate Frobenius, then returns it to the *unchanged*
`TorsionFrobeniusSpin.torsionTransport`, `ExactTorsionFrobenius.exactTransport`,
`ExactTorsionFrobenius.exactOrbitKernel`, and
`ExactTorsionFrobenius.exactMagneticForm` consumers.

The base field is literally K, the coefficient extension is literally
`Closure K = AlgebraicClosure K`, and the curve is the original native
`W.baseChange (Closure K)`. Inverse Frobenius is the actual inverse
`fieldFrobeniusPower k |>.symm` at the coordinate field level. All
integer torsion orders n, including n divisible by the characteristic,
are permitted as geometric POINT classes. No finite-flat p-torsion group
scheme is identified with the points.

## Mathematical proof

For every k, sigma_k : L ≃_K L is x ↦ x^(#K)^k. Its inverse is
sigma_k^{-1}. Both act on the genuine Weierstrass point equation via
Mathlib `Affine.Point.map`. On the point at infinity the maps are the
identity. On a finite affine point (x,y), their compositions send
(x,y) to (sigma_k^{-1}(sigma_k(x)),sigma_k^{-1}(sigma_k(y)))=(x,y)
and conversely. Nonsingularity is transported because field algebra
maps are injective. Since `Affine.Point.map` preserves addition, the
result is an additive equivalence. The pinned Mathlib projective-to-
affine AddEquiv transports it to the ACTUAL native projective points.
Additive equivalences commute with natural scalar multiplication and
preserve the equation n•P=0 in both directions, so they restrict to the
existing n-torsion kernel and to the existing minimal exact-order class.
The previously established exact-order-to-n-kernel square commutes on
the ORIGINAL point, not just on numerical order labels. When the exact
class has a supplied Fintype instance, its original rational orbit
kernel is nonnegative and column-stochastic, and its magnetic form is
nonnegative and unitary-gauge invariant by the existing source lemmas.

## Boundaries

No algebraic isogeny with a pullback or degree is constructed here.
An actual geometric q-Frobenius additive equivalence does not by itself
prove its characteristic equation, the dual norm, the Hasse bound, the
separable kernel-degree equality, `ExtensionCountSource`, RH or GRH.
Fintype on every geometric n-class is not constructed in this file; the
finite Markov consumers retain that instance as an explicit premise.
The genuine geometric map cannot be replaced by a signed Markov kernel.

Primary mathematics: Silverman, *The Arithmetic of Elliptic Curves*,
second edition, III.6 and V.2 (geometric torsion and Frobenius). Source
comparison: pinned grwtsk/math@93147a9aba4a73dfde7f29b0a8cae81d418f14c3,
GenuineGeometricFrobenius blob 531b35b15fa74d9a29c0f9fdc111e35442ea3064,
ExactTorsionFrobenius blob 8d96c41f567ab2cc359fa0dd11af9935ffda3390,
Mathlib revision d13f23b723b8a846827a245b89c10fc7d3f11612.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GeometricFrobeniusTorsion

open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GenuineGeometricFrobenius
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.TorsionFrobeniusSpin
open GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.ExactTorsionFrobenius

variable {K : Type*} [Field K] [Fintype K] [DecidableEq K]
variable (W : WeierstrassCurve K) [W.toAffine.IsElliptic]
variable [(W.baseChange (Closure K)).toAffine.IsElliptic]

/-- The true inverse field automorphism, carried through the original
Weierstrass point-group functor, not guessed from finite order. -/
noncomputable def inverseGeometricFrobeniusPower (k : ℕ) :
    (W.baseChange (Closure K)).toAffine.Point →+
      (W.baseChange (Closure K)).toAffine.Point :=
  WeierstrassCurve.Affine.Point.map (W' := W.toAffine)
    ((fieldFrobeniusPower (K := K) k).symm).toAlgHom

/-- Applying inverse q^k-Frobenius after q^k-Frobenius preserves the
literal affine coordinates and the distinguished point at infinity. -/
theorem inverseGeometricFrobeniusPower_left (k : ℕ)
    (P : (W.baseChange (Closure K)).toAffine.Point) :
    inverseGeometricFrobeniusPower W k
      (geometricPointFrobeniusPower W k P) = P := by
  classical
  let σ : Closure K ≃ₐ[K] Closure K := fieldFrobeniusPower (K := K) k
  rcases P with _ | ⟨x, y, h⟩
  · rfl
  · change WeierstrassCurve.Affine.Point.map (W' := W.toAffine) σ.symm.toAlgHom
        (WeierstrassCurve.Affine.Point.map (W' := W.toAffine)
          σ.toAlgHom (.some x y h)) = .some x y h
    simp only [WeierstrassCurve.Affine.Point.map_some,
      WeierstrassCurve.Affine.Point.some.injEq]
    exact ⟨σ.symm_apply_apply x, σ.symm_apply_apply y⟩

/-- The reverse composition is identity as well, without any finite
cardinality assumption on the geometric elliptic point group. -/
theorem inverseGeometricFrobeniusPower_right (k : ℕ)
    (P : (W.baseChange (Closure K)).toAffine.Point) :
    geometricPointFrobeniusPower W k
      (inverseGeometricFrobeniusPower W k P) = P := by
  classical
  let σ : Closure K ≃ₐ[K] Closure K := fieldFrobeniusPower (K := K) k
  rcases P with _ | ⟨x, y, h⟩
  · rfl
  · change WeierstrassCurve.Affine.Point.map (W' := W.toAffine) σ.toAlgHom
        (WeierstrassCurve.Affine.Point.map (W' := W.toAffine)
          σ.symm.toAlgHom (.some x y h)) = .some x y h
    simp only [WeierstrassCurve.Affine.Point.map_some,
      WeierstrassCurve.Affine.Point.some.injEq]
    exact ⟨σ.apply_symm_apply x, σ.apply_symm_apply y⟩

/-- The already-defined GENUINE geometric point Frobenius is bijective.
The surjectivity witness is its native coordinate inverse; this is not
finite-set pigeonhole reasoning. -/
theorem geometricPointFrobeniusPower_bijective (k : ℕ) :
    Function.Bijective (geometricPointFrobeniusPower W k) := by
  refine ⟨geometricPointFrobeniusPower_injective W k, ?_⟩
  intro P
  exact ⟨inverseGeometricFrobeniusPower W k P,
    inverseGeometricFrobeniusPower_right W k P⟩

/-- The ACTUAL algebraic-closure q^k-Frobenius as a group automorphism.
This closes the missing adapter to the old arbitrary-AddEquiv consumers. -/
noncomputable def affineFrobeniusPowerAddEquiv (k : ℕ) :
    (W.baseChange (Closure K)).toAffine.Point ≃+
      (W.baseChange (Closure K)).toAffine.Point :=
  AddEquiv.ofBijective (geometricPointFrobeniusPower W k)
    (geometricPointFrobeniusPower_bijective W k)

/-- The new equivalence has EXACTLY the old source q^k-Frobenius
point map as its underlying function. -/
@[simp] theorem affineFrobeniusPowerAddEquiv_apply (k : ℕ)
    (P : (W.baseChange (Closure K)).toAffine.Point) :
    affineFrobeniusPowerAddEquiv W k P =
      geometricPointFrobeniusPower W k P := rfl

/-- Transport via the ACTUAL pinned Mathlib projective-affine group
isomorphism, retaining original point identity and group operation. -/
noncomputable def nativeFrobeniusPowerAddEquiv (k : ℕ) :
    (W.baseChange (Closure K)).Point ≃+
      (W.baseChange (Closure K)).Point := by
  classical
  let e := WeierstrassCurve.Projective.Point.toAffineAddEquiv
    (W.baseChange (Closure K))
  exact (e.trans (affineFrobeniusPowerAddEquiv W k)).trans e.symm

/-- The projective operation is literally the conjugate of q^k-coordinate
Frobenius under the original Mathlib coordinate equivalence. -/
theorem nativeFrobeniusPower_toAffine (k : ℕ)
    (P : (W.baseChange (Closure K)).Point) :
    (WeierstrassCurve.Projective.Point.toAffineAddEquiv
      (W.baseChange (Closure K))) (nativeFrobeniusPowerAddEquiv W k P) =
      geometricPointFrobeniusPower W k
        ((WeierstrassCurve.Projective.Point.toAffineAddEquiv
          (W.baseChange (Closure K))) P) := by
  classical
  simp [nativeFrobeniusPowerAddEquiv, affineFrobeniusPowerAddEquiv_apply]

/-- Restriction to the original geometric n-torsion carrier, including
n divisible by the characteristic and the zero index (the full group). -/
noncomputable def genuineTorsionTransport (k n : ℕ) :
    TorsionLevel (W.baseChange (Closure K)) n ≃
      TorsionLevel (W.baseChange (Closure K)) n :=
  torsionTransport (W.baseChange (Closure K))
    (nativeFrobeniusPowerAddEquiv W k) n

/-- Restriction to exact order n, NOT the whole n-kernel.
Empty classes stay empty; classes do not merge under Frobenius. -/
noncomputable def genuineExactOrderTransport (k n : ℕ) :
    ExactClass (W.baseChange (Closure K)) n ≃
      ExactClass (W.baseChange (Closure K)) n :=
  exactTransport (W.baseChange (Closure K))
    (nativeFrobeniusPowerAddEquiv W k) n

/-- The original exact-class-to-n-kernel comparison commutes on actual
points for the particular genuine q^k-Frobenius. -/
theorem genuineExactOrderTransport_toTorsion (k n : ℕ)
    (P : ExactClass (W.baseChange (Closure K)) n) :
    toTorsionLevel (W.baseChange (Closure K)) n
        (genuineExactOrderTransport W k n P) =
      genuineTorsionTransport W k n
        (toTorsionLevel (W.baseChange (Closure K)) n P) :=
  exactTransport_toTorsionLevel (W.baseChange (Closure K))
    (nativeFrobeniusPowerAddEquiv W k) n P

section FiniteExactOrder

variable {n : ℕ} [Fintype (ExactClass (W.baseChange (Closure K)) n)]

/-- The ORIGINAL column-stochastic source orbit kernel, now instantiated
with actual geometric Frobenius and no arbitrary point permutation. -/
noncomputable def genuineFrobeniusOrbitKernel (k : ℕ) :
    GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.RootHeatState.HeatKernel
      (ExactClass (W.baseChange (Closure K)) n) :=
  exactOrbitKernel (W.baseChange (Closure K)) (n := n)
    (nativeFrobeniusPowerAddEquiv W k)

/-- All iterates preserve mass in the source/target column convention. -/
theorem genuineFrobeniusOrbitKernel_evolve_mass (k steps : ℕ)
    (v : ExactClass (W.baseChange (Closure K)) n → ℚ) :
    (∑ P, (genuineFrobeniusOrbitKernel W (n := n) k).evolve v steps P) =
      ∑ P, v P :=
  exactOrbitKernel_evolve_mass (W.baseChange (Closure K)) (n := n)
    (nativeFrobeniusPowerAddEquiv W k) v steps

/-- Pointwise nonnegative densities stay nonnegative at every stage. -/
theorem genuineFrobeniusOrbitKernel_evolve_nonneg (k steps : ℕ)
    (v : ExactClass (W.baseChange (Closure K)) n → ℚ)
    (hv : ∀ P, 0 ≤ v P) :
    ∀ P, 0 ≤ (genuineFrobeniusOrbitKernel W (n := n) k).evolve v steps P :=
  exactOrbitKernel_evolve_nonneg (W.baseChange (Closure K)) (n := n)
    (nativeFrobeniusPowerAddEquiv W k) v hv steps

/-- Genuine-Frobenius spin energy stays nonnegative. The phases must
still be the supplied source phases, and this statement alone has no
Hasse/Weil explicit-formula consequence. -/
theorem genuineFrobeniusMagneticForm_nonneg (k : ℕ)
    (phase f : ExactClass (W.baseChange (Closure K)) n → ℂ) :
    0 ≤ exactMagneticForm (W.baseChange (Closure K)) (n := n)
      (nativeFrobeniusPowerAddEquiv W k) phase f :=
  exactMagneticForm_nonneg (W.baseChange (Closure K)) (n := n)
    (nativeFrobeniusPowerAddEquiv W k) phase f


/-- Unitary gauge changes preserve the genuine q^k-Frobenius spin
energy on this exact-order class. The source phase, field and gauge
are the ORIGINAL exact-class functions, not a replacement operator. -/
theorem genuineFrobeniusMagneticForm_gauge_invariant (k : ℕ)
    (phase gauge f : ExactClass (W.baseChange (Closure K)) n → ℂ)
    (hg : ∀ P, ‖gauge P‖ = 1) :
    exactMagneticForm (W.baseChange (Closure K)) (n := n)
      (nativeFrobeniusPowerAddEquiv W k)
      (exactPhaseGauge (W.baseChange (Closure K)) (n := n)
        (nativeFrobeniusPowerAddEquiv W k) phase gauge)
      (exactFieldGauge (W.baseChange (Closure K)) (n := n) gauge f) =
    exactMagneticForm (W.baseChange (Closure K)) (n := n)
      (nativeFrobeniusPowerAddEquiv W k) phase f :=
  exactMagneticForm_gauge_invariant (W.baseChange (Closure K)) (n := n)
    (nativeFrobeniusPowerAddEquiv W k) phase gauge f hg

end FiniteExactOrder

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GeometricFrobeniusTorsion
