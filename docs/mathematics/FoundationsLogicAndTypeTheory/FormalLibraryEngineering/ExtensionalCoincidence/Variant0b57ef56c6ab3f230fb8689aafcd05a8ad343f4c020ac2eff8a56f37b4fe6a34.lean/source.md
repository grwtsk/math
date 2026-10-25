# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtensionalCoincidence.Variant0b57ef56c6ab3f230fb8689aafcd05a8ad343f4c020ac2eff8a56f37b4fe6a34

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `46168aa17edcff2251e8dec03bf50564e4b9ab83` · SHA-256 `689e82258581f3de6cd74f63182f89111fb34ac5fc3c65638df3a76ff490c9e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtensionalCoincidenceStatement.Variantcf2e6e1ee7c10fff175df50acb4b6849611342be7c784016d3b2eecf554ee5f4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cf2e6e1ee7c10fff175df50acb4b6849611342be7c784016d3b2eecf554ee5f4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ExtensionalCoincidenceStatement.Variantcf2e6e1ee7c10fff175df50acb4b6849611342be7c784016d3b2eecf554ee5f4","mathematical_subject":"Foundations.Unclassified","original_sha256":"cf2e6e1ee7c10fff175df50acb4b6849611342be7c784016d3b2eecf554ee5f4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/CommonNotions/ExtensionalCoincidence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.CorpusElement

/-!
# Common notion: extensional coincidence

This modern statement interprets coincidence as pointwise equality of maps.
It does not identify visual overlap or numerical proximity with equality.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtensionalCoincidenceStatement.Variantcf2e6e1ee7c10fff175df50acb4b6849611342be7c784016d3b2eecf554ee5f4

namespace Mathematics.Geometry.CommonNotions

open Mathematics.Discovery

def ExtensionalCoincidenceStatement : Prop :=
  ∀ (Domain Codomain : Type)
    (first second : Domain → Codomain),
    (∀ point, first point = second point) →
      first = second

def extensionalCoincidenceOpenElement :
    OpenConjectureElement ExtensionalCoincidenceStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:extensional-coincidence" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "Pointwise coincidence gives extensional equality"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.ExtensionalCoincidenceStatement"
  leanDeclarationName_nonempty := by
    decide

def extensionalCoincidenceDependency :
    DependencyEdge extensionalCoincidenceOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:extensional-coincidence:funext"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "funext"
  role := .proof

def extensionalCoincidenceSeed :
    EuclideanSeed ExtensionalCoincidenceStatement where
  proposal := extensionalCoincidenceOpenElement
  provenance := [
    HistoricalProvenance.commonNotion
      4
      (by decide)
      "Common notion 4"
  ]
  dependencies := [extensionalCoincidenceDependency]

theorem extensionalCoincidence :
    ExtensionalCoincidenceStatement := by
  intro Domain Codomain first second pointwise
  funext point
  exact pointwise point

def extensionalCoincidenceTheoremElement :
    LeanTheoremElement extensionalCoincidenceOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:common-notion:extensional-coincidence" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := extensionalCoincidenceOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := extensionalCoincidence

def extensionalCoincidenceCorpusItem :
    KernelProvedEuclideanItem extensionalCoincidenceSeed where
  theoremElement := extensionalCoincidenceTheoremElement

end Mathematics.Geometry.CommonNotions
```
