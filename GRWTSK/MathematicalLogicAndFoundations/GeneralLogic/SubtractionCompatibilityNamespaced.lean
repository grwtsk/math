-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SubtractionCompatibilityStatement.Variantbc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"bc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SubtractionCompatibilityStatement.Variantbc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612","mathematical_subject":"Foundations.Unclassified","original_sha256":"bc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/CommonNotions/SubtractionCompatibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.CorpusElement

/-!
# Common notion: subtracting equals from equals
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SubtractionCompatibilityStatement.Variantbc80c9713b668f3c301337a6e6e324d0901b64baa1b033de2171cacd61035612

namespace Mathematics.Geometry.CommonNotions

open Mathematics.Discovery

def SubtractionCompatibilityStatement : Prop :=
  ∀ (α : Type) [Sub α] (first first' second second' : α),
    first = first' →
    second = second' →
      first - second = first' - second'

def subtractionCompatibilityOpenElement :
    OpenConjectureElement SubtractionCompatibilityStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:subtraction-compatibility" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Subtracting equals from equals preserves equality"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.SubtractionCompatibilityStatement"
  leanDeclarationName_nonempty := by
    decide

def subtractionOperationDependency :
    DependencyEdge subtractionCompatibilityOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:subtraction-compatibility:sub"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "Sub.sub"
  role := .statementVocabulary

def subtractionEqualityDependency :
    DependencyEdge subtractionCompatibilityOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:subtraction-compatibility:eq-rec"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "Eq.rec"
  role := .proof

def subtractionCompatibilitySeed :
    EuclideanSeed SubtractionCompatibilityStatement where
  proposal := subtractionCompatibilityOpenElement
  provenance := [
    HistoricalProvenance.commonNotion
      3
      (by decide)
      "Common notion 3"
  ]
  dependencies := [
    subtractionOperationDependency,
    subtractionEqualityDependency
  ]

theorem subtractionCompatibility :
    SubtractionCompatibilityStatement := by
  intro α _ first first' second second' firstEqual secondEqual
  cases firstEqual
  cases secondEqual
  rfl

def subtractionCompatibilityTheoremElement :
    LeanTheoremElement subtractionCompatibilityOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:common-notion:subtraction-compatibility" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := subtractionCompatibilityOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := subtractionCompatibility

def subtractionCompatibilityCorpusItem :
    KernelProvedEuclideanItem subtractionCompatibilitySeed where
  theoremElement := subtractionCompatibilityTheoremElement

end Mathematics.Geometry.CommonNotions
