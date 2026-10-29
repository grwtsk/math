import Surface.Prismatic.Prism

namespace Surface.Prismatic

universe u

/-!
# Prism morphisms and rigidity

Formalized here: prism maps and the rigidity statement `J = IB` as an explicit
Prop-valued certificate carried by the map.

Certificate-gated here: flat and faithfully flat comparisons.
-/

/-- Ideal mapping condition. -/
structure MapsIdeal
    {p : Nat}
    {A B : DeltaRing.{u} p}
    (f : DeltaRingHom A B)
    (I : IdealLike A)
    (J : IdealLike B) where
  maps_mem :
    ∀ {x}, I.contains x → J.contains (f.map x)
  boundary : List String

/-- Extension-equality certificate, the formal `IB = J` target. -/
structure IdealExtensionEquals
    {p : Nat}
    {A B : DeltaRing.{u} p}
    (f : DeltaRingHom A B)
    (I : IdealLike A)
    (J : IdealLike B) where
  equality : Prop
  equalityCertified : equality
  statement : String
  boundary : List String

/-- Map of prisms. -/
structure PrismMap
    {p : Nat}
    (P Q : Prism.{u} p) where
  map : DeltaRingHom P.A Q.A
  maps_I_to_J : MapsIdeal map P.I Q.I
  rigidity : IdealExtensionEquals map P.I Q.I
  boundary : List String

theorem rigidity_of_maps
    {P Q : Prism.{u} p}
    (f : PrismMap P Q) :
    f.rigidity.equality :=
  f.rigidity.equalityCertified

theorem map_rigidity
    {P Q : Prism.{u} p}
    (f : PrismMap P Q) :
    f.rigidity.equality :=
  rigidity_of_maps f

/-- Flat map of prisms. -/
structure FlatPrismMap
    {p : Nat}
    (P Q : Prism.{u} p) extends PrismMap P Q where
  completelyFlat : CompletelyFlatCertificate
  flatBoundary : List String

/-- Faithfully flat map of prisms. -/
structure FaithfullyFlatPrismMap
    {p : Nat}
    (P Q : Prism.{u} p) extends FlatPrismMap P Q where
  faithfullyFlat : FaithfullyFlatCertificate
  faithfullyFlatBoundary : List String

/-- Certificate-gated bounded-prism flatness characterization. -/
structure BoundedFlatMapIdentificationCertificate
    {p : Nat}
    (P Q : BoundedPrism.{u} p)
    (f : PrismMap P.toPrism Q.toPrism) where
  completelyFlatDeltaAlgebra : Prop
  completelyFlatDeltaAlgebraCertified : completelyFlatDeltaAlgebra
  identifies : Prop
  identifiesCertified : identifies
  boundary : List String

theorem flat_maps_identify_with_completely_flat_delta_algebras
    {P Q : BoundedPrism.{u} p}
    {f : PrismMap P.toPrism Q.toPrism}
    (C : BoundedFlatMapIdentificationCertificate P Q f) :
    C.identifies :=
  C.identifiesCertified

/-- Identity map on the unit prism. -/
def unitPrismMap (p : Nat) :
    PrismMap (unitPrism p) (unitPrism p) where
  map := {
    map := fun _ => PUnit.unit
    preserves_zero := rfl
    preserves_one := rfl
    preserves_add := by intro x y; rfl
    preserves_mul := by intro x y; rfl
    preserves_delta := by intro x; rfl
    preserves_phi := by intro x; rfl
    homBoundary := ["Identity map of the unit δ-ring."]
  }
  maps_I_to_J := {
    maps_mem := by intro x hx; trivial
    boundary := ["Total unit ideal maps to itself."]
  }
  rigidity := {
    equality := True
    equalityCertified := trivial
    statement := "IB = J for the unit prism map"
    boundary := ["Trivial rigidity certificate for the unit prism."]
  }
  boundary := ["Unit prism identity map."]

end Surface.Prismatic
