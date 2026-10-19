import Surface.CosmeticSurgery.Core

/-!
# Conditional oriented Dehn-filling presentations

This module isolates the geometric input needed to make oriented Dehn filling
independent of a chosen boundary gluing map.  It does not construct a solid
torus, a boundary torus, or a smooth gluing.  A concrete three-manifold model
must supply an `OrientedFillingPresentationCapability` whose presentation type
retains all of those data, including orientation reversal and the marked image
of the solid-torus meridian.

The comparison supplied by the capability is stronger than an abstract
homeomorphism of the resulting closed manifolds: its `FixedOnExterior`
predicate records that it is the identity on the common knot exterior.  The
meridional reconstruction theorem likewise requires an explicit presentation
coming from the original tubular neighbourhood of the knot.
-/

namespace Surface.CosmeticSurgery

universe u v

/--
Geometric presentation semantics for oriented filling in one abstract knot
model.  Values of `Gluing K r` are required by the supplying model to be
orientation-reversing solid-torus gluings whose meridian is the marked slope
`r`; this requirement is exposed as separate predicates rather than hidden in
the resulting manifold type.
-/
structure OrientedFillingPresentationCapability
    (T : OrientedKnotFillingTheory.{u}) where
  Gluing : (K : T.Knot) → T.Slope K → Type v
  OrientationReversing : {K : T.Knot} → {r : T.Slope K} →
    Gluing K r → Prop
  MeridianMapsToMarkedSlope : {K : T.Knot} → {r : T.Slope K} →
    Gluing K r → Prop
  valid_orientation : ∀ {K r} (g : Gluing K r), OrientationReversing g
  valid_meridian_image : ∀ {K r} (g : Gluing K r),
    MeridianMapsToMarkedSlope g

  /-- The closed manifold literally produced by a selected gluing presentation. -/
  presentedManifold : ∀ {K : T.Knot} {r : T.Slope K},
    Gluing K r → T.ClosedManifold
  /-- Each presented filling is identified with the canonical filling indexed by its slope. -/
  presentationIdentifiesFilling : ∀ {K : T.Knot} {r : T.Slope K}
      (g : Gluing K r),
    T.OrientedHomeomorphism (presentedManifold g) (T.Filling K r)

  /-- The selected comparison is required to be fixed on the common exterior. -/
  FixedOnExterior : ∀ {K : T.Knot} {r : T.Slope K}
      {left right : Gluing K r},
    T.OrientedHomeomorphism (presentedManifold left) (presentedManifold right) → Prop
  comparePresentations : ∀ {K r} (left right : Gluing K r),
    T.OrientedHomeomorphism (presentedManifold left) (presentedManifold right)
  compare_fixed_on_exterior : ∀ {K r} (left right : Gluing K r),
    FixedOnExterior (comparePresentations left right)

  /-- A distinguished closed manifold interpreted by the supplier as oriented `S^3`. -/
  sphereThree : T.ClosedManifold
  /-- A presentation using the knot's original tubular neighbourhood. -/
  OriginalNeighborhoodPresentation : T.Knot → Type v
  originalGluing : ∀ {K},
    OriginalNeighborhoodPresentation K → Gluing K (T.meridian K)
  originalNeighbourhoodReconstructsSphere : ∀ {K},
    (P : OriginalNeighborhoodPresentation K) →
      T.OrientedHomeomorphism (presentedManifold (originalGluing P)) sphereThree

namespace OrientedFillingPresentationCapability

variable {T : OrientedKnotFillingTheory.{u}}

/-- Every supplied gluing presentation is explicitly orientation reversing. -/
theorem orientation_reversing
    (C : OrientedFillingPresentationCapability.{u, v} T)
    {K : T.Knot} {r : T.Slope K}
    (g : C.Gluing K r) :
    C.OrientationReversing g :=
  C.valid_orientation g

/-- Every supplied solid-torus meridian has the selected marked slope as image. -/
theorem meridian_maps_to_marked_slope
    (C : OrientedFillingPresentationCapability.{u, v} T)
    {K : T.Knot} {r : T.Slope K}
    (g : C.Gluing K r) :
    C.MeridianMapsToMarkedSlope g :=
  C.valid_meridian_image g

/--
Two orientation-reversing solid-torus gluings representing the same marked
slope determine an orientation-preserving comparison of the canonical filling.
-/
def same_marked_slope_homeomorphism
    (C : OrientedFillingPresentationCapability.{u, v} T)
    {K : T.Knot} {r : T.Slope K}
    (left right : C.Gluing K r) :
    T.OrientedHomeomorphism (C.presentedManifold left)
      (C.presentedManifold right) :=
  C.comparePresentations left right

/-- The presentation comparison is the identity on the common exterior. -/
theorem same_marked_slope_homeomorphism_fixed_on_exterior
    (C : OrientedFillingPresentationCapability.{u, v} T)
    {K : T.Knot} {r : T.Slope K}
    (left right : C.Gluing K r) :
    C.FixedOnExterior (C.same_marked_slope_homeomorphism left right) :=
  C.compare_fixed_on_exterior left right

/--
The meridional filling is oriented-homeomorphic to the supplier's `S^3`,
conditional on an original-neighbourhood presentation.
-/
def meridional_filling_homeomorphism_sphereThree
    (C : OrientedFillingPresentationCapability.{u, v} T)
    {K : T.Knot}
    (P : C.OriginalNeighborhoodPresentation K) :
    T.OrientedHomeomorphism (T.Filling K (T.meridian K)) C.sphereThree :=
  T.homeomorphismTrans
    (T.homeomorphismSymm (C.presentationIdentifiesFilling (C.originalGluing P)))
    (C.originalNeighbourhoodReconstructsSphere P)

/-- An original-neighbourhood presentation is itself a valid meridional gluing. -/
theorem original_gluing_is_valid
    (C : OrientedFillingPresentationCapability.{u, v} T)
    {K : T.Knot}
    (P : C.OriginalNeighborhoodPresentation K) :
    C.OrientationReversing (C.originalGluing P) ∧
      C.MeridianMapsToMarkedSlope (C.originalGluing P) :=
  ⟨C.valid_orientation _, C.valid_meridian_image _⟩

end OrientedFillingPresentationCapability

end Surface.CosmeticSurgery
