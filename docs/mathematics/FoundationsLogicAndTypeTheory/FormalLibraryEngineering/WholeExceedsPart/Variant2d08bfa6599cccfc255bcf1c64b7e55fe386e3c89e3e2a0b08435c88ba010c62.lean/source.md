# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WholeExceedsPart.Variant2d08bfa6599cccfc255bcf1c64b7e55fe386e3c89e3e2a0b08435c88ba010c62

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `40d62213853c5592719c5ebe7e9d748152302026` · SHA-256 `cbe61f877881a9871fa972d5a39d43d23d2ec24552d799faf35b598c9abad19f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WholeExceedsPartStatement.Variantcfd7dad38a3e586e2f8828062a2637a617d8f6d21ff5efee62c8e86ba8b4ef0f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cfd7dad38a3e586e2f8828062a2637a617d8f6d21ff5efee62c8e86ba8b4ef0f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.WholeExceedsPartStatement.Variantcfd7dad38a3e586e2f8828062a2637a617d8f6d21ff5efee62c8e86ba8b4ef0f","mathematical_subject":"Foundations.Unclassified","original_sha256":"cfd7dad38a3e586e2f8828062a2637a617d8f6d21ff5efee62c8e86ba8b4ef0f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/CommonNotions/WholeExceedsPart.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.CorpusElement

/-!
# Common notion: a whole exceeds a positive added part

The initial kernel theorem is intentionally narrow: natural-number magnitudes.
It does not claim an unqualified order law for every geometric magnitude.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WholeExceedsPartStatement.Variantcfd7dad38a3e586e2f8828062a2637a617d8f6d21ff5efee62c8e86ba8b4ef0f

namespace Mathematics.Geometry.CommonNotions

open Mathematics.Discovery

def WholeExceedsPartStatement : Prop :=
  ∀ whole added : Nat,
    0 < added →
      whole < whole + added

def wholeExceedsPartOpenElement :
    OpenConjectureElement WholeExceedsPartStatement where
  elementId := {
    id := { value := "open:geometry:common-notion:whole-exceeds-part" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "A natural magnitude is smaller than a positive extension"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.CommonNotions.WholeExceedsPartStatement"
  leanDeclarationName_nonempty := by
    decide

def wholeExceedsPartDependency :
    DependencyEdge wholeExceedsPartOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:common-notion:whole-exceeds-part:nat-add"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .kernelPrimitive "Nat.lt_add_of_pos_right"
  role := .proof

def wholeExceedsPartSeed :
    EuclideanSeed WholeExceedsPartStatement where
  proposal := wholeExceedsPartOpenElement
  provenance := [
    HistoricalProvenance.commonNotion
      5
      (by decide)
      "Common notion 5"
  ]
  dependencies := [wholeExceedsPartDependency]

theorem wholeExceedsPart :
    WholeExceedsPartStatement := by
  intro whole added positive
  exact Nat.lt_add_of_pos_right positive

def wholeExceedsPartTheoremElement :
    LeanTheoremElement wholeExceedsPartOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:common-notion:whole-exceeds-part" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := wholeExceedsPartOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := wholeExceedsPart

def wholeExceedsPartCorpusItem :
    KernelProvedEuclideanItem wholeExceedsPartSeed where
  theoremElement := wholeExceedsPartTheoremElement

end Mathematics.Geometry.CommonNotions
```
