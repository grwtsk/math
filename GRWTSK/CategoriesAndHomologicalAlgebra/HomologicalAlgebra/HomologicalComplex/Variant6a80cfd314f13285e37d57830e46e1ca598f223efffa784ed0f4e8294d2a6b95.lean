-- corpus-organization-transform:v1
-- Mathematical subject: CategoriesAndHomologicalAlgebra.HomologicalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.SeparatingFamily.Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.HomologicalAlgebra.SourceCorpus.SeparatingFamily.Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c","mathematical_subject":"Algebra.HomologicalAlgebra","original_sha256":"d3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/CategoryTheory/Generator/HomologicalComplex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Joël Riou. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Joël Riou
-/
import Mathlib.Algebra.Homology.Double
import Mathlib.Algebra.Homology.HomologicalComplexLimits
import Mathlib.CategoryTheory.Generator.Basic

/-!
# Generators of the category of homological complexes

Let `c : ComplexShape ι` be a complex shape with no loop.
If a category `C` has a separator, then `HomologicalComplex C c`
has a separating family, and a separator when suitable coproducts exist.

-/


namespace GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.SeparatingFamily.Variantd3c97cd5eddc468a0eeae0a06480aef678949d02e4fa2a329c56324ca7a0cb5c

universe t w v u

open CategoryTheory Limits

namespace HomologicalComplex

variable {C : Type u} [Category.{v} C] {ι : Type w} (c : ComplexShape ι) [c.HasNoLoop]

section

variable [HasZeroMorphisms C] [HasZeroObject C]

variable {α : Type t} {X : α → C} (hX : IsSeparating (Set.range X))

variable (X) in
/-- If `X : α → C` is a separating family, and `c : ComplexShape ι` has no loop,
then this is a separating family indexed by `α × ι` in `HomologicalComplex C c`,
which consists of homological complexes that are nonzero in at most
two (consecutive) degrees. -/
noncomputable def separatingFamily (j : α × ι) : HomologicalComplex C c :=
  evalCompCoyonedaCorepresentative c (X j.1) j.2

include hX in
lemma isSeparating_separatingFamily :
    IsSeparating (Set.range (separatingFamily c X)) := by
  intro K L f g h
  ext j
  apply hX
  rintro _ ⟨a, rfl⟩ p
  have H := evalCompCoyonedaCorepresentable c (X a) j
  apply H.homEquiv.symm.injective
  simpa only [H.homEquiv_symm_comp] using h _ ⟨⟨a, j⟩, rfl⟩ (H.homEquiv.symm p)

end

variable [HasCoproductsOfShape ι C] [Preadditive C] [HasZeroObject C]

lemma isSeparator_coproduct_separatingFamily {X : C} (hX : IsSeparator X) :
    IsSeparator (∐ (fun i ↦ separatingFamily c (fun (_ : Unit) ↦ X) ⟨⟨⟩, i⟩)) := by
  let φ (i : ι) := separatingFamily c (fun (_ : Unit) ↦ X) ⟨⟨⟩, i⟩
  refine isSeparator_of_isColimit_cofan
    (isSeparating_separatingFamily c (X := fun (_ : Unit) ↦ X) (by simpa using hX))
      (c := Cofan.mk (∐ φ) (fun ⟨_, i⟩ ↦ Sigma.ι φ i)) ?_
  exact IsColimit.ofWhiskerEquivalence
    (Discrete.equivalence (Equiv.punitProd.{0} ι).symm) (coproductIsCoproduct φ)

instance [HasSeparator C] : HasSeparator (HomologicalComplex C c) :=
  ⟨_, isSeparator_coproduct_separatingFamily c (isSeparator_separator C)⟩

end HomologicalComplex
