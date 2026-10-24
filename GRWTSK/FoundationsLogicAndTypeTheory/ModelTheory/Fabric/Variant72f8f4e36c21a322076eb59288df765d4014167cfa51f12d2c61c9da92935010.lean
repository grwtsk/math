-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.ModelTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.CosimplicialValue.Variantae5c9cf06fe9313eda751ce74883eb84789a94317a1b472fd7570517817524b9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ae5c9cf06fe9313eda751ce74883eb84789a94317a1b472fd7570517817524b9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.ModelTheory.SourceCorpus.CosimplicialValue.Variantae5c9cf06fe9313eda751ce74883eb84789a94317a1b472fd7570517817524b9","mathematical_subject":"Logic.ModelTheory","original_sha256":"ae5c9cf06fe9313eda751ce74883eb84789a94317a1b472fd7570517817524b9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/DAF/Prismatic/Fabric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import DAF.Prismatic.Interface

/-!
# Cosimplicial prismatic values

Applying a contravariant prismatic theory to a simplicial arithmetic source
produces a cosimplicial target object.  The opposite-category plumbing below
is definitional: a source map `X ⟶ Y` induces a map from the value of `Y`
to the value of `X`.  This module does not assert descent or homotopy
correctness.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.ModelTheory.CosimplicialValue.Variantae5c9cf06fe9313eda751ce74883eb84789a94317a1b472fd7570517817524b9

namespace DAF.Prismatic

open CategoryTheory
open CategoryTheory.Functor

namespace Theory

/-- Contravariant application of a prismatic theory degree by degree. -/
def cosimplicialValue
    (P : Theory)
    (X : SimplicialObject P.DerivedAlg) :
    CosimplicialObject P.Target :=
  X.rightOp ⋙ P.value

/-- A simplicial source map induces a reverse-direction cosimplicial map. -/
def cosimplicialValueMap
    (P : Theory)
    {X Y : SimplicialObject P.DerivedAlg}
    (f : X ⟶ Y) :
    P.cosimplicialValue Y ⟶ P.cosimplicialValue X :=
  whiskerRight f.rightOp P.value

@[simp]
theorem cosimplicialValueMap_id
    (P : Theory)
    (X : SimplicialObject P.DerivedAlg) :
    P.cosimplicialValueMap (𝟙 X) =
      𝟙 (P.cosimplicialValue X) := by
  ext q
  simp [cosimplicialValueMap, cosimplicialValue]

theorem cosimplicialValueMap_comp
    (P : Theory)
    {X Y Z : SimplicialObject P.DerivedAlg}
    (f : X ⟶ Y)
    (g : Y ⟶ Z) :
    P.cosimplicialValueMap (f ≫ g) =
      P.cosimplicialValueMap g ≫ P.cosimplicialValueMap f := by
  ext q
  simp [cosimplicialValueMap, cosimplicialValue]

end Theory

end DAF.Prismatic
