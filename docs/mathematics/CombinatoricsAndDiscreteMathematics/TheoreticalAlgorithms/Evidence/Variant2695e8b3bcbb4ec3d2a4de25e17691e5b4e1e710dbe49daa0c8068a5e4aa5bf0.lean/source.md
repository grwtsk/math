# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Evidence.Variant2695e8b3bcbb4ec3d2a4de25e17691e5b4e1e710dbe49daa0c8068a5e4aa5bf0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `edc1388d4ebbbaa80b013d6d12262586bcfa4531` · SHA-256 `bdc4baca7e162eeb377de83f8887ba35acb1fdbfcb16dafda8180dd0ef02470b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NamingEvidence.Variant42b95959a1b2de5fee9321941c22071b9583b83f2be3c69df2fd8e01afdd7497","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"42b95959a1b2de5fee9321941c22071b9583b83f2be3c69df2fd8e01afdd7497","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.NamingEvidence.Variant42b95959a1b2de5fee9321941c22071b9583b83f2be3c69df2fd8e01afdd7497","mathematical_subject":"Computation.DataStructures","original_sha256":"42b95959a1b2de5fee9321941c22071b9583b83f2be3c69df2fd8e01afdd7497","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-04463a67b33c2e29/MathDiscovery/Oracle/Naming/Evidence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Oracle.Naming.Name
import MathDiscovery.Core.Id

/-! # Exact evidence packets for deterministic naming -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NamingEvidence.Variant42b95959a1b2de5fee9321941c22071b9583b83f2be3c69df2fd8e01afdd7497

namespace MathDiscovery.Oracle.Naming

open MathDiscovery

structure NamingEvidence where
  atomId : SourceAtomId
  language : PointLanguage
  declarationNames : Array String
  declarationKinds : Array String
  typeSummaries : Array String
  conceptCoordinates : Array String
  taxonomyCoordinates : Array String
  publicInputs : Array String
  publicOutputs : Array String
  generatedCompanions : Array String
  providerKinds : Array String
  supportIds : Array String
  evidenceDigest : Digest
  deriving DecidableEq, Repr

def NamingEvidence.Supports (evidence : NamingEvidence) (supportId : String) : Prop :=
  supportId ∈ evidence.supportIds

def NamingEvidence.StableFor (evidence : NamingEvidence) (atomId : SourceAtomId) : Prop :=
  evidence.atomId = atomId

end MathDiscovery.Oracle.Naming
```
