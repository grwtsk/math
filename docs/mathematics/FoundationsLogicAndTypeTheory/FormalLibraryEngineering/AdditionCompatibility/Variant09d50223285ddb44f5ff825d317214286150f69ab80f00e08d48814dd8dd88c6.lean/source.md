# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionCompatibility.Variant09d50223285ddb44f5ff825d317214286150f69ab80f00e08d48814dd8dd88c6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e093ff69d03dfc63a8c469cc5d57280102f31edd` · SHA-256 `c5d6ac16fc251a1a77108c9e35812c0f91ae2c5ca2b8b88c33e5173c727e813a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionCompatibilityStatement.Variante7a03a6ddba8c07202912ccff1d6260ff225fcd73ab8e6489d0cd068898a52bc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7a03a6ddba8c07202912ccff1d6260ff225fcd73ab8e6489d0cd068898a52bc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.AdditionCompatibilityStatement.Variante7a03a6ddba8c07202912ccff1d6260ff225fcd73ab8e6489d0cd068898a52bc","mathematical_subject":"Foundations.Unclassified","original_sha256":"e7a03a6ddba8c07202912ccff1d6260ff225fcd73ab8e6489d0cd068898a52bc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/CommonNotions/AdditionCompatibility.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.CorpusElement

/-!
# Common notion: adding equals to equals
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.AdditionCompatibilityStatement.Variante7a03a6ddba8c07202912ccff1d6260ff225fcd73ab8e6489d0cd068898a52bc

namespace Mathematics.Geometry.CommonNotions

open Mathematics.Discovery

def AdditionCompatibilityStatement : Prop :=
  ∀ (α : Type) [Add α] (first first' second second' : α),
    first = first' →
    second = second' →
      first + second = first' + second'

def additionCompatibilityOpenElement :
    OpenConjectureElement AdditionCompatibilityStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:addition-compatibility" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Adding equals to equals preserves equality"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.AdditionCompatibilityStatement"
  leanDeclarationName_nonempty := by
    decide

def additionOperationDependency :
    DependencyEdge additionCompatibilityOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:addition-compatibility:add"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "HAdd.hAdd"
  role := .statementVocabulary

def additionEqualityDependency :
    DependencyEdge additionCompatibilityOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:addition-compatibility:eq-rec"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "Eq.rec"
  role := .proof

def additionCompatibilitySeed :
    EuclideanSeed AdditionCompatibilityStatement where
  proposal := additionCompatibilityOpenElement
  provenance := [
    HistoricalProvenance.commonNotion
      2
      (by decide)
      "Common notion 2"
  ]
  dependencies := [
    additionOperationDependency,
    additionEqualityDependency
  ]

theorem additionCompatibility :
    AdditionCompatibilityStatement := by
  intro α _ first first' second second' firstEqual secondEqual
  cases firstEqual
  cases secondEqual
  rfl

def additionCompatibilityTheoremElement :
    LeanTheoremElement additionCompatibilityOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:common-notion:addition-compatibility" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := additionCompatibilityOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := additionCompatibility

def additionCompatibilityCorpusItem :
    KernelProvedEuclideanItem additionCompatibilitySeed where
  theoremElement := additionCompatibilityTheoremElement

end Mathematics.Geometry.CommonNotions
```
