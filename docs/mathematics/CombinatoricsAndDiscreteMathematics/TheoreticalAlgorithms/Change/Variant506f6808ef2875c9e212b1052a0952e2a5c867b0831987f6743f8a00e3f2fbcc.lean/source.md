# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Change.Variant506f6808ef2875c9e212b1052a0952e2a5c867b0831987f6743f8a00e3f2fbcc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `64f28f3d0c83af4d4c8997dcd0f79e35cc0594b6` · SHA-256 `ec435e233ab7b1efa975c7a6da5695f78234e171b1c27f29d1f1583831f035a9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RepresentationChange.Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.RepresentationChange.Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a","mathematical_subject":"Computation.DataStructures","original_sha256":"4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Surface/ContinuousAssurance/Index/Change.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Surface.ContinuousAssurance.Authorization
import Surface.ContinuousAssurance.Index.Records

/-!
# Versioned index changes

Index patches bind exact base and proposed roots.  Representation history is
append-only metadata; digest equality is never interpreted as semantic
equivalence.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.RepresentationChange.Variant4e729675838cd883a57505c128d1b1decd566ca9acf1ff96e450a879e4de9c1a

namespace Surface.ContinuousAssurance

/-- One versioned representation transition. -/
structure RepresentationChange where
  identifier : String
  objectId : MathematicalObjectId
  before : RepresentationId
  after : RepresentationId
  beforeVersion : DAF.Version
  afterVersion : DAF.Version
  transformation : TraceableTransformation
  relation : TranslationRelation
  assumptions : List String
  openObligations : List ObligationId

/-- Machine-readable patch against one exact canonical-index root. -/
structure CanonicalIndexPatch where
  identity : PatchIdentity
  expectedBaseRoot : ArtifactIdentity
  proposedRoot : ArtifactIdentity
  operationsRef : ArtifactIdentity
  schemaVersion : DAF.Version
  representationChanges : List RepresentationChange

/-- A patch cannot claim to update a different base root. -/
def CanonicalIndexPatch.AppliesTo
    (patch : CanonicalIndexPatch)
    (root : ArtifactIdentity) : Prop :=
  root = patch.expectedBaseRoot

theorem CanonicalIndexPatch.appliesTo_iff
    (patch : CanonicalIndexPatch)
    (root : ArtifactIdentity) :
    patch.AppliesTo root ↔ root = patch.expectedBaseRoot :=
  Iff.rfl

end Surface.ContinuousAssurance
```
