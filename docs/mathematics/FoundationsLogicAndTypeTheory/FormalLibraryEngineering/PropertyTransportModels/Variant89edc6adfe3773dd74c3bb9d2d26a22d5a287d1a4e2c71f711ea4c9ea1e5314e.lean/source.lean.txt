import Mathematics.Concept.PropertyTransport
import Mathlib.Tactic

/-!
# Property-transport boundary models

The additive path action preserves the proposition `True` but does not
preserve parity.  The integer translation groupoid also supplies a concrete
nonidentity holonomy operator.  These are acceptance models, not analogical
claims about project concepts.
-/

namespace Mathematics.Concept.PropertyTransportModels

/-- A one-object noninvertible path action by natural-number translation. -/
def additivePathAction :
    PathAction Unit (fun _ ↦ Nat) where
  Path := fun _ _ ↦ Nat
  refl := fun _ ↦ 0
  comp := fun first second ↦ first + second
  map := fun path value ↦ value + path
  map_refl := by
    intro _ value
    omega
  map_comp := by
    intro _ _ _ first second value
    omega

/-- The path translating by one. -/
def additiveOnePath : additivePathAction.Path () () := by
  change Nat
  exact 1

/-- The always-true property is preserved. -/
def alwaysProperty :
    FiberProperty Unit (fun _ ↦ Nat) where
  propertyId := { value := "property:always" }
  Holds := fun _ _ ↦ True
  authority := default

/-- Parity is a distinct property on the same fibers. -/
def evenProperty :
    FiberProperty Unit (fun _ ↦ Nat) where
  propertyId := { value := "property:even" }
  Holds := fun _ value ↦ value % 2 = 0
  authority := default

/-- Translation preserves the selected always-true property. -/
theorem alwaysNaturality :
    PropertyNaturality additivePathAction alwaysProperty where
  natural := by
    intro _ _ _ _ _
    trivial

/-- The same action does not preserve parity along every path. -/
theorem no_evenNaturality :
    ¬ PropertyNaturality additivePathAction evenProperty := by
  intro naturality
  have zeroEven : evenProperty.Holds () 0 := by
    change 0 % 2 = 0
    norm_num
  have transported :
      (additivePathAction.map additiveOnePath 0) % 2 = 0 :=
    naturality.natural
      (source := ())
      (target := ())
      additiveOnePath
      0
      zeroEven
  change (0 + 1) % 2 = 0 at transported
  norm_num at transported

/-- One admitted property-specific certificate for the path of length one. -/
def alwaysCertificate :
    CertifiedPreservedProperty additivePathAction
      (source := ())
      (target := ())
      additiveOnePath where
  property := alwaysProperty
  naturality := alwaysNaturality
  authorityAfter := default
  authority_nonincreasing := Profile.noStrongerThan_refl default
  evidenceKind := .provedNaturality
  heuristic_clears_theorem := by
    intro impossible
    cases impossible
  admission := .admitted
  certificateAddress := { bits := 0 }
  dependencyDigest := default

/-- The admitted certificate actually transports its selected proposition. -/
example :
    alwaysCertificate.property.Holds ()
      (additivePathAction.map additiveOnePath 7) :=
  alwaysCertificate.admittedTransports rfl 7 trivial

/-- A one-object groupoid action by integer translations. -/
def translationGroupoidAction :
    PathGroupoidAction Unit (fun _ ↦ Int) where
  Path := fun _ _ ↦ Int
  refl := fun _ ↦ 0
  comp := fun first second ↦ first + second
  map := fun path value ↦ value + path
  map_refl := by
    intro _ value
    omega
  map_comp := by
    intro _ _ _ first second value
    omega
  inv := fun path ↦ -path
  map_inv := by
    intro _ _ path value
    omega

/-- The integer translation loop of displacement one. -/
def translationOnePath :
    translationGroupoidAction.toPathAction.Path () () := by
  change Int
  exact 1

/-- The complete holonomy operator for the unit loop is not the identity. -/
theorem unit_translation_holonomy_nontrivial :
    translationGroupoidAction.holonomy ()
        translationOnePath 0 ≠ 0 := by
  change (0 : Int) + 1 ≠ 0
  norm_num

end Mathematics.Concept.PropertyTransportModels
