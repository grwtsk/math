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
