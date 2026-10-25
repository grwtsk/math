# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExternalRigidifier.Variant2fad67e63a6ba1893596f3aab65a56f8431af7d5475d4db04cfec7005a2f3241

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1b12f9a56cb5afe1079aa6f65033c34b6d675080` · SHA-256 `0d8e6338c3b88a1189cfdbafef0e368e80a4dc6641385fc32ebe94587069804b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExternalRigidifierCert.Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.ExternalRigidifierCert.Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0","mathematical_subject":"Logic.Foundations","original_sha256":"b58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/ExternalRigidifier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.IntrinsicRepresentative
import Mathlib.Data.Fintype.Order

/-!
# Kernel-checked external rigidifiers

Gemma and the Oracle may propose correspondences, but only this proof object can
admit them.  The rigid key participates in the theorem; display text remains
metadata unless `semanticProof` establishes its denotation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.ExternalRigidifierCert.Variantb58a1c57a338a4a8c3d216ddbf0d2de18a986ef338f156d71299daed22925cd0

namespace Mathematics.Projection

universe u v w

variable {signature : StructuralSignature}
variable {hierarchy : PolyHierarchy signature}

/-- Complete externally certified bijective labeling of primitive elements. -/
structure ExternalRigidifierCert
    (hierarchy : PolyHierarchy signature) where
  Label : Type w
  labelFintype : Fintype Label
  labelDecidableEq : DecidableEq Label
  labelLinearOrder : LinearOrder Label
  predicate : Label → hierarchy.Element → Prop
  predicateDecidable : ∀ label element, Decidable (predicate label element)
  declaredSort : Label → signature.SortType
  projectionRelevant : hierarchy.Element → Prop
  uniqueElement : ∀ label, ∃! element, predicate label element
  uniqueLabel : ∀ element, ∃! label, predicate label element
  sortCorrect :
    ∀ label element,
      predicate label element →
        hierarchy.elementSort element = declaredSort label
  projectionCoverage :
    ∀ element,
      projectionRelevant element →
        ∃ label, predicate label element
  provenancePredicate : Label → hierarchy.Element → Prop
  provenanceProof :
    ∀ label element,
      predicate label element →
        provenancePredicate label element
  semanticPredicate : Label → hierarchy.Element → Prop
  semanticProof :
    ∀ label element,
      predicate label element →
        semanticPredicate label element

attribute [instance] ExternalRigidifierCert.labelFintype
  ExternalRigidifierCert.labelDecidableEq
  ExternalRigidifierCert.labelLinearOrder
  ExternalRigidifierCert.predicateDecidable

namespace ExternalRigidifierCert

noncomputable def labelValue
    (certificate : ExternalRigidifierCert hierarchy)
    (element : hierarchy.Element) : certificate.Label :=
  Classical.choose (certificate.uniqueLabel element)

theorem labelValue_spec
    (certificate : ExternalRigidifierCert hierarchy)
    (element : hierarchy.Element) :
    certificate.predicate (certificate.labelValue element) element :=
  (Classical.choose_spec (certificate.uniqueLabel element)).1

theorem labelValue_injective
    (certificate : ExternalRigidifierCert hierarchy) :
    Function.Injective certificate.labelValue := by
  intro left right equalLabels
  let label := certificate.labelValue left
  have leftPredicate : certificate.predicate label left :=
    certificate.labelValue_spec left
  have rightPredicate : certificate.predicate label right := by
    simpa [label, equalLabels] using certificate.labelValue_spec right
  rcases certificate.uniqueElement label with
    ⟨witness, witnessPredicate, unique⟩
  exact (unique left leftPredicate).trans (unique right rightPredicate).symm

noncomputable def externalLabel
    (certificate : ExternalRigidifierCert hierarchy) :
    hierarchy.Element ↪ certificate.Label where
  toFun := certificate.labelValue
  inj' := certificate.labelValue_injective

theorem externalLabel_surjective
    (certificate : ExternalRigidifierCert hierarchy) :
    Function.Surjective certificate.externalLabel := by
  intro label
  rcases certificate.uniqueElement label with
    ⟨element, elementPredicate, _⟩
  have selectedPredicate :=
    certificate.labelValue_spec element
  rcases certificate.uniqueLabel element with
    ⟨witness, witnessPredicate, unique⟩
  have selectedEqualsLabel :
      certificate.labelValue element = label :=
    (unique (certificate.labelValue element) selectedPredicate).trans
      (unique label elementPredicate).symm
  exact ⟨element, selectedEqualsLabel⟩

noncomputable def externalLabelEquiv
    (certificate : ExternalRigidifierCert hierarchy) :
    hierarchy.Element ≃ certificate.Label :=
  Equiv.ofBijective certificate.externalLabel
    ⟨certificate.externalLabel.injective,
      certificate.externalLabel_surjective⟩

end ExternalRigidifierCert

/-- Automorphisms of the augmented structure must fix every rigid label. -/
def RigidifiedAut
    (certificate : ExternalRigidifierCert hierarchy) : Type _ :=
  {automorphism : Aut hierarchy //
    ∀ element,
      certificate.externalLabel (automorphism element) =
        certificate.externalLabel element}

namespace RigidifiedAut

instance (certificate : ExternalRigidifierCert hierarchy) :
    CoeFun (RigidifiedAut certificate)
      (fun _ ↦ hierarchy.Element → hierarchy.Element) :=
  ⟨fun automorphism ↦ automorphism.1.1⟩

theorem fixesEveryElement
    (certificate : ExternalRigidifierCert hierarchy)
    (automorphism : RigidifiedAut certificate)
    (element : hierarchy.Element) :
    automorphism element = element :=
  certificate.externalLabel.injective (automorphism.2 element)

/-- Injective certified labels annihilate the complete automorphism action. -/
theorem rigidifiedAut_trivial
    (certificate : ExternalRigidifierCert hierarchy) :
    Subsingleton (RigidifiedAut certificate) := by
  constructor
  intro left right
  apply Subtype.ext
  apply StructuralIso.ext
  intro element
  exact
    (fixesEveryElement certificate left element).trans
      (fixesEveryElement certificate right element).symm

def rigidifiedElementOrbit
    (certificate : ExternalRigidifierCert hierarchy)
    (element : hierarchy.Element) : Set hierarchy.Element :=
  {image |
    ∃ automorphism : RigidifiedAut certificate,
      automorphism element = image}

theorem rigidified_element_orbit_singleton
    (certificate : ExternalRigidifierCert hierarchy)
    (element : hierarchy.Element) :
    rigidifiedElementOrbit certificate element = {element} := by
  ext image
  constructor
  · rintro ⟨automorphism, mapped⟩
    rw [fixesEveryElement certificate automorphism element] at mapped
    simp [mapped]
  · intro member
    have imageEqualsElement : image = element := by
      simpa using member
    subst image
    exact
      ⟨⟨StructuralIso.refl hierarchy, fun _ ↦ rfl⟩, rfl⟩

def rigidifiedProjectionOrbit
    (certificate : ExternalRigidifierCert hierarchy)
    (projection : MonoHierarchy hierarchy.Element) :
    Set (MonoHierarchy hierarchy.Element) :=
  {image |
    ∃ automorphism : RigidifiedAut certificate,
      MonoHierarchy.transport automorphism.1.1 projection = image}

theorem rigidified_projection_orbit_singleton
    (certificate : ExternalRigidifierCert hierarchy)
    (projection : MonoHierarchy hierarchy.Element) :
    rigidifiedProjectionOrbit certificate projection = {projection} := by
  ext image
  constructor
  · rintro ⟨automorphism, mapped⟩
    have automorphismIsIdentity :
        automorphism.1 = StructuralIso.refl hierarchy := by
      apply StructuralIso.ext
      exact fixesEveryElement certificate automorphism
    rw [automorphismIsIdentity] at mapped
    have projectionEqualsImage : projection = image := by
      simpa [StructuralIso.refl] using mapped
    simp [projectionEqualsImage]
  · intro member
    have imageEqualsProjection : image = projection := by
      simpa using member
    subst image
    exact
      ⟨⟨StructuralIso.refl hierarchy, fun _ ↦ rfl⟩,
        by
          simp [StructuralIso.refl]⟩

end RigidifiedAut

end Mathematics.Projection
```
