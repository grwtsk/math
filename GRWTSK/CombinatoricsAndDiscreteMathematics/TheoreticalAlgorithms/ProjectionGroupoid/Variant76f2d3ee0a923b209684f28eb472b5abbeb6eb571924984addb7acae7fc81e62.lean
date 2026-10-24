-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectionProfile.Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.ProjectionProfile.Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/staged-validation-6c1160a309e689e3/Mathematics/Projection/ProjectionGroupoid.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.IntrinsicScalar
import Mathematics.Projection.MonoHierarchy
import Mathlib.Data.Set.Basic

/-!
# Admissible projection action groupoid

The intrinsic output is an automorphism orbit.  A profile is accepted only with
an equivariance proof; learned scores and serialization order therefore cannot
enter through this interface.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ProjectionProfile.Variant3b75024762c7c1e0d5f0574862a22b5308d9112e8555a833e9b279bbeab413a1

namespace Mathematics.Projection

universe u v w

variable {signature : StructuralSignature}
variable {hierarchy : PolyHierarchy signature}

/-- A versioned, proof-producing admissibility law. -/
structure ProjectionProfile (hierarchy : PolyHierarchy signature) where
  version : Nat
  admissible : MonoHierarchy hierarchy.Element → Prop
  admissibleDecidable : DecidablePred admissible
  equivariant :
    ∀ automorphism : Aut hierarchy,
      ∀ projection,
        admissible projection ↔
          admissible
            (MonoHierarchy.transport automorphism.1 projection)

attribute [instance] ProjectionProfile.admissibleDecidable

def Admissible
    (profile : ProjectionProfile hierarchy)
    (projection : MonoHierarchy hierarchy.Element) : Prop :=
  profile.admissible projection

/-- Morphisms are exactly structural automorphisms carrying one object to another. -/
structure ProjectionMorphism
    (profile : ProjectionProfile hierarchy)
    (source target :
      {projection : MonoHierarchy hierarchy.Element //
        Admissible profile projection}) where
  automorphism : Aut hierarchy
  maps :
    MonoHierarchy.transport automorphism.1 source.1 = target.1

/-- A compact action-groupoid interface: objects plus automorphism morphisms. -/
structure ProjectionGroupoid
    (profile : ProjectionProfile hierarchy) where
  Object :
    Type _ :=
      {projection : MonoHierarchy hierarchy.Element //
        Admissible profile projection}
  objectEquivalence :
    Object ≃
      {projection : MonoHierarchy hierarchy.Element //
        Admissible profile projection}

/-- The complete intrinsic orbit of one admissible monohierarchy. -/
def projectionOrbit
    (projection : MonoHierarchy hierarchy.Element) :
    Set (MonoHierarchy hierarchy.Element) :=
  {image |
    ∃ automorphism : Aut hierarchy,
      MonoHierarchy.transport automorphism.1 projection = image}

theorem projection_mem_orbit
    (projection : MonoHierarchy hierarchy.Element) :
    projection ∈ projectionOrbit projection := by
  refine ⟨StructuralIso.refl hierarchy, ?_⟩
  exact MonoHierarchy.transport_refl projection

/--
An intrinsic selector must be fixed by every automorphism.  Membership in an
orbit alone is not enough.
-/
def IsIntrinsicRepresentative
    (orbit : Set (MonoHierarchy hierarchy.Element))
    (projection : MonoHierarchy hierarchy.Element) : Prop :=
  projection ∈ orbit ∧
    ∀ automorphism : Aut hierarchy,
      MonoHierarchy.transport automorphism.1 projection = projection

/--
A projection law is intrinsic only when admissibility transports through every
structural isomorphism.  Its carrier universe is fixed so the law is an actual
finite-stage object rather than an impredicative family over all universes.
-/
structure IntrinsicProjectionLaw
    (signature : StructuralSignature.{u, v}) where
  profile :
    (hierarchy : PolyHierarchy.{w, u, v} signature) →
      ProjectionProfile hierarchy
  natural :
    ∀ {left right : PolyHierarchy.{w, u, v} signature},
      ∀ isomorphism : StructuralIso left right,
        ∀ projection,
          Admissible (profile left) projection ↔
            Admissible (profile right)
              (MonoHierarchy.transport isomorphism.1 projection)

/-- Structural transport is an exact equivalence of admissible projections. -/
def admissibleProjectionEquiv
    (law : IntrinsicProjectionLaw signature)
    {left right : PolyHierarchy signature}
    (isomorphism : StructuralIso left right) :
    {projection : MonoHierarchy left.Element //
      Admissible (law.profile left) projection} ≃
    {projection : MonoHierarchy right.Element //
      Admissible (law.profile right) projection} where
  toFun := fun projection ↦
    ⟨MonoHierarchy.transport isomorphism.1 projection.1,
      (law.natural isomorphism projection.1).mp projection.2⟩
  invFun := fun projection ↦
    ⟨MonoHierarchy.transport isomorphism.symm.1 projection.1,
      (law.natural isomorphism.symm projection.1).mp projection.2⟩
  left_inv := by
    intro projection
    apply Subtype.ext
    exact
      MonoHierarchy.transport_symm_transport
        isomorphism.1 projection.1
  right_inv := by
    intro projection
    apply Subtype.ext
    exact
      MonoHierarchy.transport_symm_transport
        isomorphism.symm.1 projection.1

/--
The complete intrinsic scalar determines the admissible object space up to
equivalence.  The corresponding automorphism actions are conjugate through the
same structural isomorphism, so this is the object component of the action
groupoid equivalence.
-/
theorem projectionGroupoid_determined
    (classifier : IntrinsicScalarClassifier signature)
    (law : IntrinsicProjectionLaw signature)
    {left right : PolyHierarchy signature}
    (sameScalar :
      intrinsicScalar classifier left =
        intrinsicScalar classifier right) :
    Nonempty (
      {projection : MonoHierarchy left.Element //
        Admissible (law.profile left) projection} ≃
      {projection : MonoHierarchy right.Element //
        Admissible (law.profile right) projection}) := by
  rcases classifier.complete sameScalar with ⟨isomorphism⟩
  exact ⟨admissibleProjectionEquiv law isomorphism⟩

end Mathematics.Projection
