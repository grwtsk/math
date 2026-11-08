/-
Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
AI-assisted source proof candidate. Independent review NOT_RUN.
LEAN_ELABORATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ArithmeticAlgebraicGeometryDiophantineGeometry.EllipticFrobeniusFixedOrderPort
import Mathlib.FieldTheory.Finite.Basic
import Mathlib.FieldTheory.Finite.Extension
import Mathlib.FieldTheory.AlgebraicClosure
import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point
import Mathlib

/-!
# Genuine q-Frobenius on the native geometric elliptic point group

The previous `FrobeniusCharacteristicPort.action` was an *arbitrary supplied*
`W.Point ≃+ W.Point`. We do NOT identify it by name with Frobenius.
Instead take the ACTUAL finite base field K, its algebraic closure L, and
Mathlib's `FiniteField.frobeniusAlgEquivOfAlgebraic K L`, whose action on
L is x ↦ x^(Fintype.card K). This is a K-algebra automorphism, hence fixes
all coefficient values from K. The existing Mathlib elliptic
`WeierstrassCurve.Affine.Point.map` then induces the actual q-power
coordinate action on the base-changed affine group, preserving the point
at infinity and the true Weierstrass group law. No invented point law,
independent edge permutation or split spectral roots are used.

For each k, the ring/point action is induced from the k-th algebra
power, not an independently assigned permutation. The true fixed locus
of that map is a type below; its equality with E(F_(q^k)) depends on
identifying the fixed FIELD {x in L | x^(q^k)=x} with the unique finite
extension of cardinality q^k, then transporting affine solution points
and infinity. The mathematical proof is as follows:

  For each k>0 let F_k={x∈L | x^(q^k)=x}. Frobenius^k is an automorphism, so F_k
  is a subfield containing K. X^(q^k)-X has derivative -1 in char p,
  so is separable; it splits in L, and its degree is q^k. Thus it has
  exactly q^k distinct roots, exactly F_k. The map on affine points
  sends (x,y) to (x^(q^k),y^(q^k)); a point is fixed iff x,y∈F_k.
  The unique point at infinity is fixed. Consequently
             E(F_k) ≃ Fix(Frob_q^k on E(L))
  with original curve equations, group law and source points retained.

The ring automorphism and actual elliptic group map are Lean candidates;
the complete fixed-field cardinality and group-equivalence argument
above is WRITTEN mathematics, not yet elaborated as a Lean equivalence.
The `ExtensionFixedFieldSource` below separates the exact remaining
identification, rather than silently assuming a new point count.

Important: even this geometric comparison alone does NOT imply
`ExtensionCountSource`: the additional degree formula
  deg(1-Frob_q^k)=q^k+1-(alpha^k+beta^k)
and separability of 1-Frob_q^k must be returned from genuine elliptic
isogeny geometry. That is a different input from stochastic/spin energy
positivity. Characteristic-primary nonreduced group schemes also differ
from the geometric point group. See Silverman (2009), V.2.3--2.4;
source pin: math main inspected bf343e1edff8dd4b0140baf6a6bbcda9bfe2a576,
Mathlib d13f23b723b8a846827a245b89c10fc7d3f11612.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GenuineGeometricFrobenius

variable {K : Type*} [Field K] [Fintype K] [DecidableEq K]

/-- The actual algebraic closure; not a selected finite torsion class. -/
abbrev Closure (K : Type*) [Field K] := AlgebraicClosure K

/-- The source Mathlib q-Frobenius algebra automorphism, not an arbitrary
    additive equivalence of elliptic point sets. -/
noncomputable def fieldFrobenius : Closure K ≃ₐ[K] Closure K :=
  FiniteField.frobeniusAlgEquivOfAlgebraic K (Closure K)

/-- The underlying function is literally raising to the number of
    elements of K. -/
theorem fieldFrobenius_apply (x : Closure K) :
    fieldFrobenius (K := K) x = x ^ Fintype.card K := by
  exact congrFun (FiniteField.coe_frobeniusAlgEquivOfAlgebraic K (Closure K)) x

/-- The q-Frobenius fixes the native base-field coefficients. -/
theorem fieldFrobenius_base (x : K) :
    fieldFrobenius (K := K) (algebraMap K (Closure K) x) =
      algebraMap K (Closure K) x :=
  (fieldFrobenius (K := K)).commutes x

/-- The exact k-th power in the *same* Galois group, not a new field map. -/
noncomputable def fieldFrobeniusPower (k : ℕ) : Closure K ≃ₐ[K] Closure K :=
  fieldFrobenius (K := K) ^ k

/-- On the SAME algebraic closure, the actual k-th Frobenius really is
    x ↦ x^(q^k), including for k=0. -/
theorem fieldFrobeniusPower_apply (k : ℕ) (x : Closure K) :
    fieldFrobeniusPower (K := K) k x =
      x ^ ((Fintype.card K) ^ k) := by
  simpa only [fieldFrobeniusPower, fieldFrobenius, AlgEquiv.coe_pow] using
    congrFun (FiniteField.coe_frobeniusAlgEquivOfAlgebraic_iterate
      K (Closure K) k) x

/-- Every base-field coefficient is also fixed by every k-th power. -/
theorem fieldFrobeniusPower_base (k : ℕ) (x : K) :
    fieldFrobeniusPower (K := K) k (algebraMap K (Closure K) x) =
      algebraMap K (Closure K) x :=
  (fieldFrobeniusPower (K := K) k).commutes x

variable (W : WeierstrassCurve K)
variable [W.toAffine.IsElliptic]
variable [(W.baseChange (Closure K)).toAffine.IsElliptic]

/-- Source-exact q-Frobenius group endomorphism on genuinely geometric
    affine-or-infinity elliptic points. Point.map implements the actual
    coordinate-field map and respects the native Weierstrass addition. -/
noncomputable def geometricPointFrobenius :
    (W.baseChange (Closure K)).toAffine.Point →+
      (W.baseChange (Closure K)).toAffine.Point :=
  WeierstrassCurve.Affine.Point.map
    (fieldFrobenius (K := K)).toAlgHom

/-- The actual k-th algebra-power induces the k-th geometric-coordinate
    Frobenius source (this is not a Markov heat kernel). -/
noncomputable def geometricPointFrobeniusPower (k : ℕ) :
    (W.baseChange (Closure K)).toAffine.Point →+
      (W.baseChange (Closure K)).toAffine.Point :=
  WeierstrassCurve.Affine.Point.map
    (fieldFrobeniusPower (K := K) k).toAlgHom

/-- The infinity/identity point is fixed by every power. -/
theorem geometricPointFrobeniusPower_zero (k : ℕ) :
    geometricPointFrobeniusPower W k 0 = 0 := by
  exact map_zero (geometricPointFrobeniusPower W k)

/-- Field-level automorphisms yield injective maps on genuine elliptic
    points. This source lemma does not assume any finite torsion order. -/
theorem geometricPointFrobeniusPower_injective (k : ℕ) :
    Function.Injective (geometricPointFrobeniusPower W k) := by
  unfold geometricPointFrobeniusPower
  exact WeierstrassCurve.Affine.Point.map_injective

/-- Base-change of a rational affine-or-infinity point from the fixed
    finite base K into its algebraic closure, using Mathlib's existing
    actual point homomorphism. -/
noncomputable def baseRationalPointMap :
    (W.toAffine⁄K).Point →+
      (W.toAffine⁄Closure K).Point :=
  WeierstrassCurve.Affine.Point.baseChange K (Closure K)

/-- The genuine q-power algebraic-coordinate Frobenius fixes every
    base-rational point after its exact Mathlib point-base-change map. -/
theorem baseRationalPointMap_fixed (k : ℕ)
    (P : (W.toAffine⁄K).Point) :
    geometricPointFrobeniusPower W k (baseRationalPointMap W P) =
      baseRationalPointMap W P := by
  simpa [geometricPointFrobeniusPower, baseRationalPointMap] using
    (WeierstrassCurve.Affine.Point.map_baseChange
      (W' := W.toAffine)
      (f := (fieldFrobeniusPower (K := K) k).toAlgHom) P)

/-- These are *literal* geometric points fixed by native coordinate
    Frobenius^k, not a copy of E(F_(q^k)) by fiat. -/
def GeometricFixedFiber (k : ℕ) : Type _ :=
  {P : (W.baseChange (Closure K)).toAffine.Point //
    geometricPointFrobeniusPower W k P = P}

/-- Identity/infinity is an actual member of every fixed-point locus. -/
noncomputable def fixedInfinity (k : ℕ) : GeometricFixedFiber W k :=
  ⟨0, geometricPointFrobeniusPower_zero W k⟩

/-- A field-level SOURCE PORT for the exact field-of-definition return.
    Its defining conditions are not implied merely by the name of a
    finite extension. The written field-root argument above explains
    the remaining Lean proof obligation. -/
structure ExtensionFixedFieldSource (M : Type*) [Field M] [Fintype M]
    [Algebra K M] (k : ℕ) where
  embedding : M →ₐ[K] Closure K
  cardinality : Fintype.card M = (Fintype.card K) ^ k
  exact_image : ∀ x : Closure K,
    fieldFrobeniusPower (K := K) k x = x ↔
      ∃ y : M, embedding y = x

/-- The source fixed field contains exactly q^k elements once the
    *complete* fixed-image proof is supplied. -/
theorem extensionFixedField_card (M : Type*) [Field M] [Fintype M]
    [Algebra K M] (k : ℕ)
    (S : ExtensionFixedFieldSource (K := K) M k) :
    Fintype.card M = (Fintype.card K) ^ k :=
  S.cardinality

end GRWTSK.NumberTheory.ArithmeticGeometry.EllipticCurves.GenuineGeometricFrobenius
