# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StructuralIsomorphism.Variante456fd3399af3567754471b3ea18911b538637545b45fefb9079957c8fb1de04

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc720e345e3983bd612cb886d4a0fa2853e6e004` · SHA-256 `425a58df9a9bcde776cebc0b000e1cba52e67f31b362d559b67be8ae708e1f8b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntrinsicLabel.Variant822a1b12c5ab85069df8f6ebb690b534dffe4c6ef8ada65dda38099f16e86bf6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"822a1b12c5ab85069df8f6ebb690b534dffe4c6ef8ada65dda38099f16e86bf6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IntrinsicLabel.Variant822a1b12c5ab85069df8f6ebb690b534dffe4c6ef8ada65dda38099f16e86bf6","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"822a1b12c5ab85069df8f6ebb690b534dffe4c6ef8ada65dda38099f16e86bf6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/StructuralIsomorphism.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Projection.PolyHierarchy
import Mathlib.Data.Set.Basic

/-!
# Structural isomorphisms and intrinsic element orbits

Every admitted relation and authority class is preserved.  Labels, paths,
serialization positions, and model scores are absent unless they have first
been admitted as externally certified facts.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IntrinsicLabel.Variant822a1b12c5ab85069df8f6ebb690b534dffe4c6ef8ada65dda38099f16e86bf6

namespace Mathematics.Projection

universe u v w₁ w₂ w₃

variable {signature : StructuralSignature}

def PreservesStructure
    (left : PolyHierarchy signature)
    (right : PolyHierarchy signature)
    (equivalence : left.Element ≃ right.Element) : Prop :=
  (∀ element,
      left.elementSort element = right.elementSort (equivalence element)) ∧
  (∀ element,
      left.isNode element ↔ right.isNode (equivalence element)) ∧
  (∀ authority relation arguments,
      left.fact authority relation arguments ↔
        right.fact authority relation
          (fun index ↦ equivalence (arguments index)))

/-- A sort- and fact-preserving bijection of complete finite structures. -/
def StructuralIso
    (left : PolyHierarchy signature)
    (right : PolyHierarchy signature) : Type _ :=
  {equivalence : left.Element ≃ right.Element //
    PreservesStructure left right equivalence}

namespace StructuralIso

variable {left middle right : PolyHierarchy signature}

instance : CoeFun (StructuralIso left right) (fun _ ↦ left.Element → right.Element) :=
  ⟨fun isomorphism ↦ isomorphism.1⟩

@[ext]
theorem ext
    {first second : StructuralIso left right}
    (pointwise : ∀ element, first element = second element) :
    first = second :=
  Subtype.ext (Equiv.ext pointwise)

def refl (hierarchy : PolyHierarchy signature) :
    StructuralIso hierarchy hierarchy :=
  ⟨Equiv.refl _, by
    refine ⟨?_, ?_, ?_⟩
    · intro element
      rfl
    · intro element
      rfl
    · intro authority relation arguments
      rfl⟩

def trans
    (first : StructuralIso left middle)
    (second : StructuralIso middle right) :
    StructuralIso left right :=
  ⟨first.1.trans second.1, by
    refine ⟨?_, ?_, ?_⟩
    · intro element
      exact (first.2.1 element).trans (second.2.1 (first element))
    · intro element
      exact (first.2.2.1 element).trans (second.2.2.1 (first element))
    · intro authority relation arguments
      exact
        (first.2.2.2 authority relation arguments).trans
          (second.2.2.2 authority relation
            (fun index ↦ first (arguments index)))⟩

def symm (isomorphism : StructuralIso left right) :
    StructuralIso right left :=
  ⟨isomorphism.1.symm, by
    refine ⟨?_, ?_, ?_⟩
    · intro element
      simpa using
        (isomorphism.2.1 (isomorphism.1.symm element)).symm
    · intro element
      simpa using
        (isomorphism.2.2.1 (isomorphism.1.symm element)).symm
    · intro authority relation arguments
      simpa using
        (isomorphism.2.2.2 authority relation
          (fun index ↦ isomorphism.1.symm (arguments index))).symm⟩

@[simp]
theorem refl_apply
    (hierarchy : PolyHierarchy signature)
    (element : hierarchy.Element) :
    refl hierarchy element = element :=
  rfl

@[simp]
theorem trans_apply
    (first : StructuralIso left middle)
    (second : StructuralIso middle right)
    (element : left.Element) :
    first.trans second element = second (first element) :=
  rfl

@[simp]
theorem symm_apply_apply
    (isomorphism : StructuralIso left right)
    (element : left.Element) :
    isomorphism.symm (isomorphism element) = element :=
  isomorphism.1.symm_apply_apply element

@[simp]
theorem apply_symm_apply
    (isomorphism : StructuralIso left right)
    (element : right.Element) :
    isomorphism (isomorphism.symm element) = element :=
  isomorphism.1.apply_symm_apply element

end StructuralIso

/-- The complete structural automorphism type. -/
abbrev Aut (hierarchy : PolyHierarchy signature) :=
  StructuralIso hierarchy hierarchy

/-- The intrinsic orbit of an element under every structural automorphism. -/
def elementOrbit
    (hierarchy : PolyHierarchy signature)
    (element : hierarchy.Element) : Set hierarchy.Element :=
  {image | ∃ automorphism : Aut hierarchy, automorphism element = image}

theorem element_mem_orbit
    (hierarchy : PolyHierarchy signature)
    (element : hierarchy.Element) :
    element ∈ elementOrbit hierarchy element :=
  ⟨StructuralIso.refl hierarchy, rfl⟩

/-- An intrinsic label is invariant under the complete automorphism action. -/
structure IntrinsicLabel
    (hierarchy : PolyHierarchy signature)
    (Label : Type w₃) where
  label : hierarchy.Element → Label
  invariant :
    ∀ automorphism : Aut hierarchy,
      ∀ element,
        label (automorphism element) = label element

/-- Elements in one intrinsic orbit cannot receive distinct intrinsic labels. -/
theorem intrinsic_label_obstruction
    {hierarchy : PolyHierarchy signature}
    {Label : Type w₃}
    (labeling : IntrinsicLabel hierarchy Label)
    {left right : hierarchy.Element}
    (sameOrbit : right ∈ elementOrbit hierarchy left) :
    labeling.label right = labeling.label left := by
  rcases sameOrbit with ⟨automorphism, rfl⟩
  exact labeling.invariant automorphism left

end Mathematics.Projection
```
