# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqualityTransitivity.Variant11549ee5509981ea29c43d89a2836ec855d1c1ee453a4aa98f2bde997a3a5dab

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2eadca242366b5f925e6c028bb50cf72e3cc9eda` · SHA-256 `6b16503b8ff2ab0e0fe8417c691fbc4edc3498e6d1048147d66d815ce5cbde5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqualityTransitivityStatement.Variantb1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.EqualityTransitivityStatement.Variantb1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0","mathematical_subject":"Foundations.Unclassified","original_sha256":"b1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/CommonNotions/EqualityTransitivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.CorpusElement

/-!
# Common notion: equality transitivity

Historical coordinate: common notion 1.  The coordinate is provenance; the
closed proposition below is the mathematical object.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EqualityTransitivityStatement.Variantb1047f72c1ddda641b7c8659dc21575d5509f1dc018b7fea555daad96dbe81f0

namespace Mathematics.Geometry.CommonNotions

open Mathematics.Discovery

def EqualityTransitivityStatement : Prop :=
  ∀ (α : Type) (first second third : α),
    first = second →
    second = third →
      first = third

def equalityTransitivityOpenElement :
    OpenConjectureElement EqualityTransitivityStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:equality-transitivity" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Equality is transitive"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.EqualityTransitivityStatement"
  leanDeclarationName_nonempty := by
    decide

def equalityTransitivityDependency :
    DependencyEdge equalityTransitivityOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:equality-transitivity:eq-trans"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "Eq.trans"
  role := .proof

def equalityTransitivitySeed :
    EuclideanSeed EqualityTransitivityStatement where
  proposal := equalityTransitivityOpenElement
  provenance := [
    HistoricalProvenance.commonNotion
      1
      (by decide)
      "Common notion 1"
  ]
  dependencies := [equalityTransitivityDependency]

theorem equalityTransitivity :
    EqualityTransitivityStatement := by
  intro α first second third firstSecond secondThird
  exact firstSecond.trans secondThird

def equalityTransitivityTheoremElement :
    LeanTheoremElement equalityTransitivityOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:common-notion:equality-transitivity" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := equalityTransitivityOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := equalityTransitivity

def equalityTransitivityCorpusItem :
    KernelProvedEuclideanItem equalityTransitivitySeed where
  theoremElement := equalityTransitivityTheoremElement

end Mathematics.Geometry.CommonNotions
```
