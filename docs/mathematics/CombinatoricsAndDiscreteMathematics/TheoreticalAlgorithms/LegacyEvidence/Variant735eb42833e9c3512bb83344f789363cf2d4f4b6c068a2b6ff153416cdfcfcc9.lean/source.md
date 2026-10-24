# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LegacyEvidence.Variant735eb42833e9c3512bb83344f789363cf2d4f4b6c068a2b6ff153416cdfcfcc9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bca9ca6cf9bf9bf5336675bbb36f650d8c8c1d6` · SHA-256 `735eb42833e9c3512bb83344f789363cf2d4f4b6c068a2b6ff153416cdfcfcc9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Concept.PointUniverse
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Legacy classifications as source-relative evidence

Inherited books, folders, taxonomies, and labels remain inspectable
projections.  They may guide navigation but cannot construct global semantic
identity.
-/

namespace Mathematics.Projection

inductive LegacyClassificationKind
  | filesystemPath
  | namespace
  | bookSection
  | inheritedTaxonomy
  | historicalLabel
  | modelCluster
  deriving DecidableEq, Repr, Inhabited

structure LegacyClassification where
  classificationId : StableId
  kind : LegacyClassificationKind
  source : SourceAnalysis.AbstractSourceAddress
  label : String
  pointIds : List ElementId
  evidenceDigest : Digest
  deriving DecidableEq, Repr

structure LegacyEvidenceProjection where
  projectionId : StableId
  pointUniverse : Concept.PointUniverse
  classifications : List LegacyClassification
  pointReferencesResolve :
    ∀ classification ∈ classifications,
      ∀ pointId ∈ classification.pointIds,
        pointId ∈
          pointUniverse.points.map Concept.MathematicalPoint.pointId
  projectionDigest : Digest

/-- Equal inherited labels provide no point-identity theorem. -/
def LegacyClassification.SameLabel
    (left right : LegacyClassification) : Prop :=
  left.label = right.label

end Mathematics.Projection
```
