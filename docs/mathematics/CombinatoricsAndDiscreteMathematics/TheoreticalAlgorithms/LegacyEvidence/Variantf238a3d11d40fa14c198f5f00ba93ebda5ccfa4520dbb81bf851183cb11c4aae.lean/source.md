# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LegacyEvidence.Variantf238a3d11d40fa14c198f5f00ba93ebda5ccfa4520dbb81bf851183cb11c4aae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b94cc00d3d0856147f9222e52b638155d07c0f0e` · SHA-256 `a1eb769eeec9c95e71d05a78054653b5290943e7e04965c4ee1947171df1f4cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LegacyClassificationKind.Variant735eb42833e9c3512bb83344f789363cf2d4f4b6c068a2b6ff153416cdfcfcc9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"735eb42833e9c3512bb83344f789363cf2d4f4b6c068a2b6ff153416cdfcfcc9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.LegacyClassificationKind.Variant735eb42833e9c3512bb83344f789363cf2d4f4b6c068a2b6ff153416cdfcfcc9","mathematical_subject":"Computation.DataStructures","original_sha256":"735eb42833e9c3512bb83344f789363cf2d4f4b6c068a2b6ff153416cdfcfcc9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Projection/LegacyEvidence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Concept.PointUniverse
import Mathematics.SourceAnalysis.AbstractSourceAddress

/-!
# Legacy classifications as source-relative evidence

Inherited books, folders, taxonomies, and labels remain inspectable
projections.  They may guide navigation but cannot construct global semantic
identity.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.LegacyClassificationKind.Variant735eb42833e9c3512bb83344f789363cf2d4f4b6c068a2b6ff153416cdfcfcc9

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
