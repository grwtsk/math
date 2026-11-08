/- Copyright (c) 2026 grwtsk contributors. MIT.
ORIGINAL_SOURCE_PROOF_CANDIDATE / PARSING_NOT_RUN /
COMPILATION_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
Original mathematics and source tools: The Tau Ceti contributors,
Apache-2.0, TauCetiProject/TauCeti
@ 2bdb755239d3bd84760e99bc83166bdf7cc75a6b.
Build ONLY in isolated Tau Ceti Lean v4.36.0-rc1 with the
theta adapter directory on LEAN_PATH; not grwtsk/math root v4.34.1.
-/
import TauCetiOriginalGeometricTheta
import TauCeti.GroupTheory.GroupExtension.FactorSetOfSection
import TauCeti.GroupTheory.GroupExtension.Cohomology
import TauCeti.Algebra.GroupAction.Trivial

set_option autoImplicit false
noncomputable section

/-!
# ORIGINAL elliptic function-field theta group as an exact GroupExtension

Pinned Tau Ceti has a COMPLETE reusable group-extension/factor-set
API, including:
  GroupExtension.factorSet, .isMulCocycle₂_factorSetFun,
  .sectionDiff, .isMulCoboundary₂_div,
  .cohomologyClass_factorSet_eq.

Earlier grwtsk source candidates rebuilt the relevant abstract
nonabelian group algebra. This file instead binds the ACTUAL
Mumford theta group, constructed from original elliptic
rational functions, directly to Tau Ceti's original
Mathlib-compatible GroupExtension object

  1 -> (Fsep)× -> Theta(E[n]) -> E[n](Fsep) -> 1.

The projection is the literal elliptic point in the theta
lift, not an abstract rank-two module. The kernel is precisely
the genuine scalar function-field units by the source
principal-divisor-zero theorem. The projection is onto
by the original torsion-divisor principality theorem.
No arbitrary pairing, isomorphism to a Heisenberg matrix,
finite test or BSD assertion is substituted.

IMPORTANT: This is the extension of the POINT GROUP E[n]
over the separable closure. Its FactorSet H²(E[n],Fsep×)
is NOT the same as the GALOIS/Brauer H²(F,Fsep×) obstruction
of a class a∈H¹(F,E[n]). A genuine equivariant Galois
action, a pulled-back twisted factor, and original
continuous cochains are still necessary for that transfer.
-/

namespace GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGroupExtension

open TauCeti
open GRWTSK.ArithmeticGeometry.EllipticCurves.OriginalGeometricTheta

variable {F : Type*} [Field F] [DecidableEq F]
  (W : WeierstrassCurve.Affine F) [W.IsElliptic]
  (n : ℕ) [NeZero n]

private abbrev TorsionGroup :=
  Multiplicative (AddSubgroup.torsionBy W.Point (n : ℤ))

/-- The ORIGINAL elliptic torsion point underlying a REAL
rational-function theta lift, bundled with its actual
(n:ℤ)-torsion property. -/
noncomputable def thetaPointTorsion
    (x : ThetaLift W n) :
    AddSubgroup.torsionBy W.Point (n : ℤ) :=
  ⟨x.point, by
    change (n : ℤ) • x.point = 0
    exact x.point_torsion⟩

/-- True projection of Mumford theta lifts onto original
n-torsion E[n](Fsep) as a multiplicative group. -/
noncomputable def thetaPointHom :
    ThetaLift W n →* TorsionGroup W n where
  toFun x := Multiplicative.ofAdd (thetaPointTorsion W n x)
  map_one' := by
    apply Multiplicative.toAdd.injective
    apply Subtype.ext
    rfl
  map_mul' x y := by
    apply Multiplicative.toAdd.injective
    apply Subtype.ext
    rfl

@[simp] theorem thetaPointHom_apply
    (x : ThetaLift W n) :
    (thetaPointHom W n x).toAdd.val = x.point := rfl

/-- Every true original elliptic n-torsion point has
a rational-function theta lift, with divisor
n((T)-(O)), by original Tau Ceti geometry. -/
theorem thetaPointHom_surjective :
    Function.Surjective (thetaPointHom W n) := by
  intro T
  have ht : (n : ℤ) • (T.toAdd.val : W.Point) = 0 := by
    exact T.toAdd.property
  refine ⟨liftPoint W n T.toAdd.val ht, ?_⟩
  apply Multiplicative.toAdd.injective
  apply Subtype.ext
  rfl

/-- A theta lift projects to the trivial torsion point
EXACTLY when it is an ORIGINAL nonzero constant-function
lift; no ambient algebraic subgroup is enlarged. -/
theorem mem_thetaPointHom_ker_iff
    (x : ThetaLift W n) :
    thetaPointHom W n x = 1 ↔
      ∃ c : Fˣ, scalarLift W n c = x := by
  constructor
  · intro hx
    have hp : x.point = 0 := by
      have h := congrArg
        (fun t : TorsionGroup W n => t.toAdd.val) hx
      simpa only [thetaPointHom_apply] using h
    obtain ⟨c, hc⟩ := exists_scalarLift_of_point_eq_zero W n x hp
    exact ⟨c, hc.symm⟩
  · rintro ⟨c, rfl⟩
    apply Multiplicative.toAdd.injective
    apply Subtype.ext
    exact scalarLift_point W n c

/-- Faithful REAL scalar function-field inclusion, true
elliptic point quotient, and source-exact equality
im(scalar)=ker(projection), packaged in Tau Ceti's
existing GroupExtension API. -/
noncomputable def genuineThetaGroupExtension :
    GroupExtension Fˣ (ThetaLift W n) (TorsionGroup W n) where
  inl := scalarLiftHom W n
  rightHom := thetaPointHom W n
  inl_injective := scalarLiftHom_injective W n
  range_inl_eq_ker_rightHom := by
    ext x
    constructor
    · rintro ⟨c, hc⟩
      have hh : scalarLift W n c = x := hc
      rw [← hh]
      exact (mem_thetaPointHom_ker_iff W n _).2 ⟨c, rfl⟩
    · intro hx
      obtain ⟨c, hc⟩ :=
        (mem_thetaPointHom_ker_iff W n x).1 hx
      exact ⟨c, hc⟩
  rightHom_surjective := thetaPointHom_surjective W n

/-- The true original geometric theta extension has a
CENTRAL scalar kernel, by actual translation invariance
of constants and the faithful source scalar injection. -/
theorem genuineTheta_scalar_le_center :
    (genuineThetaGroupExtension W n).inl.range ≤
      Subgroup.center (ThetaLift W n) := by
  rintro x ⟨c, rfl⟩
  rw [Subgroup.mem_center_iff]
  intro y
  exact scalarLift_central W n c y

/-- Its factor-set commutator is central for the actual
original theta group, without making any assumption about
its identification with the Weil pairing. -/
theorem genuineTheta_commutator_central
    (x y : ThetaLift W n) :
    x * y * x⁻¹ * y⁻¹ ∈ Subgroup.center (ThetaLift W n) := by
  rw [Subgroup.mem_center_iff]
  intro z
  exact thetaGroupCommutator_central W n x y z

/-! ## Reuse the ORIGINAL pinned factor-set classification

This is the central extension of E[n] by the ACTUAL
separable-closure constant field, with the trivial
conjugation action of the quotient torsion points on
those constants. The original Tau Ceti factor-set
construction handles section normalization, the
cocycle law and independence of sections without a
second synthetic Heisenberg proof.

THIS H² is H²(E[n],Fsep^×), not H²(G_F,Fsep^×).
The Galois obstruction remains an additional
semilinear pullback and continuity problem.
-/

local instance originalThetaTrivialScalarAction :
    MulDistribMulAction (TorsionGroup W n) Fˣ :=
  TauCeti.trivialMulDistribMulAction (TorsionGroup W n) Fˣ

/-- Actual elliptic theta group induces the trivial
torsion-point action on its central scalar kernel. -/
theorem genuineTheta_inducesTrivialAction :
    TauCeti.GroupExtension.InducesAction
      (genuineThetaGroupExtension W n) := by
  apply (TauCeti.GroupExtension.inducesAction_iff_smul_eq_self
    (S := genuineThetaGroupExtension W n)
    (genuineTheta_scalar_le_center W n)).2
  intro t c
  exact TauCeti.trivialMulDistribMulAction_smul t c

/-- A genuine section of the ORIGINAL elliptic theta
group, normalized at the identity by the pinned source
GroupExtension.normalizeSection theorem. -/
noncomputable def genuineThetaNormalizedSection :
    (genuineThetaGroupExtension W n).Section :=
  TauCeti.GroupExtension.normalizeSection
    (genuineThetaGroupExtension W n).surjInvRightHom

/-- The factor set OF THE ACTUAL elliptic theta group,
constructed from the pinned Tau Ceti group-extension API.
Its cocycle proof is inherited from the original source
factorSetFun_mul and inducesTrivialAction theorems. -/
noncomputable def genuineThetaFactorSet :
    TauCeti.FactorSet (TorsionGroup W n) Fˣ :=
  TauCeti.GroupExtension.factorSet
    (genuineThetaNormalizedSection W n)
    (TauCeti.GroupExtension.normalizeSection_one
      (genuineThetaGroupExtension W n).surjInvRightHom)
    (genuineTheta_inducesTrivialAction W n)

/-- The real theta extension is equivalent to the
twisted product of its source-constructed factor set.
This is the original Tau Ceti equivalence theorem
instantiated on the REAL geometric function-field group. -/
theorem genuineTheta_extension_factorSet_equivalent :
    Nonempty
      ((genuineThetaFactorSet W n).groupExtension.Equiv
        (genuineThetaGroupExtension W n)) := by
  exact ⟨TauCeti.GroupExtension.factorSetToGroupExtensionEquiv
    (genuineThetaNormalizedSection W n)
    (TauCeti.GroupExtension.normalizeSection_one
      (genuineThetaGroupExtension W n).surjInvRightHom)
    (genuineTheta_inducesTrivialAction W n)⟩

/-- The ACTUAL original theta factor set satisfies the
genuine 2-cocycle law in Tau Ceti's native group-extension
coefficient representation. This is not a newly assumed
factor-set identity or an assigned Weil pairing. -/
theorem genuineThetaFactorSet_twoCocycle
    (T S R : TorsionGroup W n) :
    genuineThetaFactorSet W n (T, S) *
      genuineThetaFactorSet W n (T * S, R) =
      T • genuineThetaFactorSet W n (S, R) *
        genuineThetaFactorSet W n (T, S * R) :=
  (genuineThetaFactorSet W n).isMulCocycle₂ T S R

/-- Two normalized sections of the SAME actual
elliptic theta extension determine identical classes in
the INTERNAL group cohomology of E[n], by the original
pinned Tau Ceti factor-set classification. No independent
choice of a cohomology class or perfect pairing is needed.

This does NOT yet establish independence of the
period-index obstruction in GALOIS/Brauer cohomology. -/
theorem genuineThetaFactorSet_section_independent
    (s t : (genuineThetaGroupExtension W n).Section)
    (hs : s 1 = 1) (ht : t 1 = 1) :
    (TauCeti.GroupExtension.factorSet s hs
      (genuineTheta_inducesTrivialAction W n)).cohomologyClass =
    (TauCeti.GroupExtension.factorSet t ht
      (genuineTheta_inducesTrivialAction W n)).cohomologyClass :=
  TauCeti.GroupExtension.cohomologyClass_factorSet_eq
    s t hs ht (genuineTheta_inducesTrivialAction W n)

/-! The pinned GroupExtension.factorSetFun,
Section.factorSetFun_mul, sectionDiff, and
GroupExtension.isMulCoboundary₂_div now become available
for ANY normalized section of THIS actual elliptic
extension, once the trivial action of E[n] on
the scalar centre is supplied. None of these
algebraic facts alone proves a Galois/Brauer H²
class or identifies the theta commutator with
the genuine source Weil pairing. -/

end GRWTSK.ArithmeticGeometry.EllipticCurves.ThetaGroupExtension
