import Mathematics.Projection.RigidifierObject
import Mathematics.Projection.ExternalRigidifier
import Mathlib.Data.Vector.Basic
import Mathlib.Data.Fintype.Prod
import Mathlib.Data.Fintype.Sum

/-!
# Thin certified source-element router

The active router is a finite dependent family of element objects together
with the actual intrinsic neighborhood membership and cover incidence. Its
route keys, element identities, and materialized paths are independently
injective. It constructs the actual `ExternalRigidifierCert`; the model never
appears in the construction.
-/

namespace Mathematics.Projection

universe u

abbrev SourceRelation (neighborhoodCount : Nat) :=
  Fin neighborhoodCount ⊕
    (Fin neighborhoodCount × Fin neighborhoodCount)

namespace SourceRelation

def membership
    {neighborhoodCount : Nat}
    (neighborhood : Fin neighborhoodCount) :
    SourceRelation neighborhoodCount :=
  Sum.inl neighborhood

def cover
    {neighborhoodCount : Nat}
    (parent child : Fin neighborhoodCount) :
    SourceRelation neighborhoodCount :=
  Sum.inr (parent, child)

end SourceRelation

def sourceSignature
    (sortCount neighborhoodCount : Nat) : StructuralSignature where
  SortType := Fin sortCount
  Relation := SourceRelation neighborhoodCount
  sortFintype := inferInstance
  sortDecidableEq := inferInstance
  relationFintype := inferInstance
  relationDecidableEq := inferInstance
  arity
    | .inl _ => 1
    | .inr _ => 0
  version := 2

def sourceHierarchy
    {sortCount neighborhoodCount objectCount : Nat}
    (objectAt :
      Fin objectCount →
        SourceLabelObject sortCount neighborhoodCount)
    (neighborhoodCover :
      Fin neighborhoodCount → Fin neighborhoodCount → Bool) :
    PolyHierarchy (sourceSignature sortCount neighborhoodCount) where
  Element := Fin objectCount
  elementFintype := inferInstance
  elementDecidableEq := inferInstance
  elementSort := fun element ↦ (objectAt element).claim.declaredSort
  isNode := fun _ ↦ True
  isNodeDecidable := fun _ ↦ inferInstance
  fact := fun authority relation arguments ↦
    match authority, relation with
    | .intrinsicFact, .inl neighborhood =>
        (objectAt (arguments ⟨0, by simp [sourceSignature]⟩)).claim.incidence.bits.getLsb
          neighborhood = true
    | .intrinsicFact, .inr (parent, child) =>
        neighborhoodCover parent child = true
    | .externalCertifiedFact, _ => False
  factDecidable := by
    intro authority relation arguments
    cases authority <;> cases relation <;> infer_instance
  projectionLawVersion := 2
  normalized := rfl

structure SourceRouter
    (sortCount neighborhoodCount objectCount : Nat) where
  objectAt :
    Fin objectCount → SourceLabelObject sortCount neighborhoodCount
  routeKey_injective :
    Function.Injective fun element ↦ (objectAt element).key
  elementId_injective :
    Function.Injective fun element ↦ (objectAt element).elementId
  canonicalPath_injective :
    Function.Injective fun element ↦
      (objectAt element).canonicalPath.toLower
  neighborhoodCover :
    Fin neighborhoodCount → Fin neighborhoodCount → Bool

namespace SourceRouter

variable {sortCount neighborhoodCount objectCount : Nat}

def ofVector
    (objects :
      List.Vector
        (SourceLabelObject sortCount neighborhoodCount) objectCount)
    (routeKeysUnique :
      (objects.map SourceLabelObject.key).toList.Nodup)
    (elementIdsUnique :
      (objects.map SourceLabelObject.elementId).toList.Nodup)
    (canonicalPathsUnique :
      (objects.map fun object ↦
        object.canonicalPath.toLower).toList.Nodup)
    (neighborhoodCover :
      Fin neighborhoodCount → Fin neighborhoodCount → Bool) :
    SourceRouter sortCount neighborhoodCount objectCount where
  objectAt := objects.get
  routeKey_injective := by
    have mapped :
        Function.Injective (objects.map SourceLabelObject.key).get :=
      (List.Vector.nodup_iff_injective_get
        (v := objects.map SourceLabelObject.key)).mp routeKeysUnique
    intro left right equality
    apply mapped
    simpa [List.Vector.get_map] using equality
  neighborhoodCover := neighborhoodCover
  elementId_injective := by
    have mapped :
        Function.Injective (objects.map SourceLabelObject.elementId).get :=
      (List.Vector.nodup_iff_injective_get
        (v := objects.map SourceLabelObject.elementId)).mp
          elementIdsUnique
    intro left right equality
    apply mapped
    simpa [List.Vector.get_map] using equality
  canonicalPath_injective := by
    have mapped :
        Function.Injective
          (objects.map fun object ↦
            object.canonicalPath.toLower).get :=
      (List.Vector.nodup_iff_injective_get
        (v := objects.map fun object ↦
          object.canonicalPath.toLower)).mp canonicalPathsUnique
    intro left right equality
    apply mapped
    simpa [List.Vector.get_map] using equality

def hierarchy
    (router : SourceRouter sortCount neighborhoodCount objectCount) :
    PolyHierarchy (sourceSignature sortCount neighborhoodCount) :=
  sourceHierarchy router.objectAt router.neighborhoodCover

theorem hierarchy_membership_iff
    (router : SourceRouter sortCount neighborhoodCount objectCount)
    (element : Fin objectCount)
    (neighborhood : Fin neighborhoodCount) :
    router.hierarchy.fact
        .intrinsicFact (SourceRelation.membership neighborhood)
        (fun _ ↦ element) ↔
      (router.objectAt element).claim.incidence.bits.getLsb
        neighborhood = true := by
  rfl

theorem hierarchy_cover_iff
    (router : SourceRouter sortCount neighborhoodCount objectCount)
    (parent child : Fin neighborhoodCount) :
    router.hierarchy.fact
        .intrinsicFact (SourceRelation.cover parent child)
        (fun index ↦ Fin.elim0 index) ↔
      router.neighborhoodCover parent child = true := by
  rfl

/--
The actual external-rigidifier certificate.  Labels are finite router
positions; `routeKey_injective` proves their stable external bitfield
representation is also injective.
-/
def externalRigidifier
    (router : SourceRouter sortCount neighborhoodCount objectCount) :
    ExternalRigidifierCert router.hierarchy where
  Label := Fin objectCount
  labelFintype := inferInstance
  labelDecidableEq := inferInstance
  labelLinearOrder := inferInstance
  predicate := fun label element ↦ label = element
  predicateDecidable := fun _ _ ↦ inferInstance
  declaredSort := fun label ↦
    (router.objectAt label).claim.declaredSort
  projectionRelevant := fun _ ↦ True
  uniqueElement := by
    intro label
    exact ⟨label, rfl, fun element equality ↦ equality.symm⟩
  uniqueLabel := by
    intro element
    exact ⟨element, rfl, fun label equality ↦ equality⟩
  sortCorrect := by
    intro label element equality
    subst element
    rfl
  projectionCoverage := by
    intro element _
    exact ⟨element, rfl⟩
  provenancePredicate := fun _ element ↦
    (router.objectAt element).claim.HasProvenance
  provenanceProof := by
    intro label element equality
    subst label
    exact (router.objectAt element).provenance
  semanticPredicate := fun _ element ↦
    (router.objectAt element).claim.Denotes
  semanticProof := by
    intro label element equality
    subst label
    exact (router.objectAt element).denotation

/-- Exact key lookup; failure means the key is not active in this epoch. -/
noncomputable def lookup
    (router : SourceRouter sortCount neighborhoodCount objectCount)
    (key : RigidKey) :
    Option (Fin objectCount) :=
  (List.finRange objectCount).find? fun element ↦
    decide ((router.objectAt element).key = key)

theorem lookup_sound
    (router : SourceRouter sortCount neighborhoodCount objectCount)
    {key : RigidKey} {element : Fin objectCount}
    (found : router.lookup key = some element) :
    (router.objectAt element).key = key := by
  have found' :
      (List.finRange objectCount).find?
          (fun candidate ↦
            decide ((router.objectAt candidate).key = key)) =
        some element := by
    simpa [lookup] using found
  have selected :
      decide ((router.objectAt element).key = key) = true :=
    @List.find?_some
      (Fin objectCount)
      (fun candidate ↦ decide ((router.objectAt candidate).key = key))
      element
      (List.finRange objectCount)
      found'
  apply of_decide_eq_true
  exact selected

end SourceRouter

end Mathematics.Projection
