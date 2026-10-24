# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.EquilateralTriangle.Variant688a94ec10e8ca20aaf3b7c34c9040aff55787dd060287de2c9072aad828e1bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `783b63cb96de0e1e4d77938d15462b7cf3452a06` · SHA-256 `ec0764b060bc181df1cd66b0a450c4d3c60ae7b5cf63519289dceab39dde563c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.EquilateralTriangleExactStatement.Variant837fadff98f829e91eb026f535a3e24b0cd0e01be0d1ba2d35323a4524e38abb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"837fadff98f829e91eb026f535a3e24b0cd0e01be0d1ba2d35323a4524e38abb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.EquilateralTriangleExactStatement.Variant837fadff98f829e91eb026f535a3e24b0cd0e01be0d1ba2d35323a4524e38abb","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"837fadff98f829e91eb026f535a3e24b0cd0e01be0d1ba2d35323a4524e38abb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/ConstructionConsequences/EquilateralTriangle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["lake_or_runtime_control","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Construction
import Mathematics.Geometry.CorpusElement

/-!
# Exact consequence of an equilateral-triangle constructor

Historical coordinate: Book I, proposition 1.  The theorem consumes an explicit
constructor certificate and proves only its fixed equilateral consequence.
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.EquilateralTriangleExactStatement.Variant837fadff98f829e91eb026f535a3e24b0cd0e01be0d1ba2d35323a4524e38abb

namespace Mathematics.Geometry.ConstructionConsequences

open Mathematics.Discovery

def EquilateralTriangleExactStatement : Prop :=
  ∀ (Point : Type)
    (congruence : CongruenceSignature Point)
    (constructor : EquilateralTriangleConstructor Point congruence)
    (base : Segment Point),
      IsEquilateral congruence {
        first := base.start
        second := base.finish
        third := constructor.apex base
      }

def equilateralTriangleExactOpenElement :
    OpenConjectureElement EquilateralTriangleExactStatement where
  elementId := {
    id := { value := "open:geometry:construction:equilateral-triangle-exact" }
  }
  elementId_valid := by
    simp [StableId.Valid]
  name := "An exact equilateral constructor yields three congruent sides"
  name_nonempty := by
    decide
  leanDeclarationName :=
    "Mathematics.Geometry.ConstructionConsequences.EquilateralTriangleExactStatement"
  leanDeclarationName_nonempty := by
    decide

def equilateralCongruenceDependency :
    DependencyEdge equilateralTriangleExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:equilateral:congruence"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .congruence congruenceAssumptionId
  role := .statementVocabulary

def equilateralConstructionDependency :
    DependencyEdge equilateralTriangleExactOpenElement.elementId.id where
  edgeId := {
    value := "dependency:geometry:construction:equilateral:certificate"
  }
  edgeId_valid := by
    simp [StableId.Valid]
  target := .assumption .construction constructionAssumptionId
  role := .constructionCertificate

def equilateralTriangleExactSeed :
    EuclideanSeed EquilateralTriangleExactStatement where
  proposal := equilateralTriangleExactOpenElement
  provenance := [
    HistoricalProvenance.bookProposition
      .one
      1
      (by decide)
      "Book I, proposition 1"
      "Conditional exactness consequence; compass intersection existence is not claimed."
  ]
  dependencies := [
    equilateralCongruenceDependency,
    equilateralConstructionDependency
  ]

theorem equilateralTriangleExact :
    EquilateralTriangleExactStatement := by
  intro Point congruence constructor base
  constructor
  · exact constructor.firstSideCongruent base
  · exact constructor.secondSideCongruent base

def equilateralTriangleExactTheoremElement :
    LeanTheoremElement equilateralTriangleExactOpenElement where
  theoremElementId := {
    id := { value := "theorem:geometry:construction:equilateral-triangle-exact" }
  }
  theoremElementId_valid := by
    simp [StableId.Valid]
  sourceSeedId := equilateralTriangleExactOpenElement.elementId.id
  sourceSeed_bound := rfl
  proof := equilateralTriangleExact

def equilateralTriangleExactCorpusItem :
    KernelProvedEuclideanItem equilateralTriangleExactSeed where
  theoremElement := equilateralTriangleExactTheoremElement

end Mathematics.Geometry.ConstructionConsequences
```
