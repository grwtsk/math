# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SegmentBisection.Variantbe680a313fe18bd8621f0571937af10eaa5910abf1ae96a27eca76ae30690ab5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `28a3d74e6bcd497389fcf39aa8dec59d2a84baee` · SHA-256 `53ece1ed86aeb075fce7aa8dd573a08d6ce266855043d91d5e8d80996a11952f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SegmentBisectionExactStatement.Variant5403653ebde27a6b0eb4c9a20a216734822368ca24c89d0c7d4fcd684eae8634","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5403653ebde27a6b0eb4c9a20a216734822368ca24c89d0c7d4fcd684eae8634","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SegmentBisectionExactStatement.Variant5403653ebde27a6b0eb4c9a20a216734822368ca24c89d0c7d4fcd684eae8634","mathematical_subject":"Foundations.Unclassified","original_sha256":"5403653ebde27a6b0eb4c9a20a216734822368ca24c89d0c7d4fcd684eae8634","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/ConstructionConsequences/SegmentBisection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Construction
import Mathematics.Geometry.CorpusElement

/-!
# Exact consequence of a segment-bisection constructor

Historical coordinate: Book I, proposition 10.  Betweenness and congruence are
both retained in the conclusion instead of being collapsed into “midpoint.”
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SegmentBisectionExactStatement.Variant5403653ebde27a6b0eb4c9a20a216734822368ca24c89d0c7d4fcd684eae8634

namespace Mathematics.Geometry.ConstructionConsequences

open Mathematics.Discovery

def SegmentBisectionExactStatement : Prop :=
  ∀ (Point : Type)
    (order : OrderSignature Point)
    (congruence : CongruenceSignature Point)
    (constructor : SegmentBisectionConstructor Point order congruence)
    (segment : Segment Point),
      order.between
          segment.start
          (constructor.midpoint segment)
          segment.finish ∧
        congruence.segmentCongruent
          ⟨segment.start, constructor.midpoint segment⟩
          ⟨constructor.midpoint segment, segment.finish⟩

def segmentBisectionExactOpenElement :
    OpenConjectureElement SegmentBisectionExactStatement where
  elementId := {
    id := { value := "open:geometry:construction:segment-bisection-exact" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "An exact bisection constructor returns an interior congruent split"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.ConstructionConsequences.SegmentBisectionExactStatement"
  leanDeclarationName_nonempty := by
    decide

def bisectionOrderDependency :
    DependencyEdge segmentBisectionExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:bisection:order"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .order orderAssumptionId
  role := .statementVocabulary

def bisectionCongruenceDependency :
    DependencyEdge segmentBisectionExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:bisection:congruence"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .congruence congruenceAssumptionId
  role := .statementVocabulary

def bisectionConstructionDependency :
    DependencyEdge segmentBisectionExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:bisection:certificate"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .construction constructionAssumptionId
  role := .constructionCertificate

def segmentBisectionExactSeed :
    EuclideanSeed SegmentBisectionExactStatement where
  proposal := segmentBisectionExactOpenElement
  provenance := [
    HistoricalProvenance.bookProposition
      .one
      10
      (by decide)
      "Book I, proposition 10"
      "Conditional exactness consequence; construction existence is not claimed."
  ]
  dependencies := [
    bisectionOrderDependency,
    bisectionCongruenceDependency,
    bisectionConstructionDependency
  ]

theorem segmentBisectionExact :
    SegmentBisectionExactStatement := by
  intro Point order congruence constructor segment
  exact
    ⟨constructor.midpointBetween segment,
      constructor.halvesCongruent segment⟩

def segmentBisectionExactTheoremElement :
    LeanTheoremElement segmentBisectionExactOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:construction:segment-bisection-exact" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := segmentBisectionExactOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := segmentBisectionExact

def segmentBisectionExactCorpusItem :
    KernelProvedEuclideanItem segmentBisectionExactSeed where
  theoremElement := segmentBisectionExactTheoremElement

end Mathematics.Geometry.ConstructionConsequences
```
