# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Witness.Variant4e42810d709326b7fe2af3a0a6994ae5a21186605d4adf76e9220aad6e908ac0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f97953a28d5dad62353258e0f42cb3d7584c6ed` · SHA-256 `067abc0de5fcf9c49eb9b8fc45987f2c184274272cdae92b3a3242d301c07056`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CollapseWitness.Variant1f3513d87b5ac1dd268f918df67b7a4752f757afe685eed09da2cd8d2044f23d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1f3513d87b5ac1dd268f918df67b7a4752f757afe685eed09da2cd8d2044f23d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CollapseWitness.Variant1f3513d87b5ac1dd268f918df67b7a4752f757afe685eed09da2cd8d2044f23d","mathematical_subject":"Computation.DataStructures","original_sha256":"1f3513d87b5ac1dd268f918df67b7a4752f757afe685eed09da2cd8d2044f23d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/Atom/Witness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.Atom.Block

/-! # Auditable witnesses for rejected source cuts -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CollapseWitness.Variant1f3513d87b5ac1dd268f918df67b7a4752f757afe685eed09da2cd8d2044f23d

namespace MathDiscovery.Atom

open MathDiscovery

structure CollapseWitness where
  id : CollapseWitnessId
  atomId : SourceAtomId
  leftCommands : Array SourceCommandId
  rightCommands : Array SourceCommandId
  reason : CollapseReasonKind
  provider : Option SourceCommandId
  consumer : Option SourceCommandId
  failingDeclaration : Option ExtractorDeclarationId
  baselineDigest : Digest
  candidateDigest : Digest
  diagnostic : String
  replayCommand : String
  witnessDigest : Digest
  reproduced : Bool
  deriving DecidableEq, Repr

def CollapseWitness.Valid (witness : CollapseWitness) : Prop :=
  witness.id.Valid ∧ witness.leftCommands.size > 0 ∧
    witness.rightCommands.size > 0 ∧ witness.diagnostic ≠ "" ∧
    witness.replayCommand ≠ "" ∧ witness.witnessDigest.Valid ∧
    witness.reproduced = true

end MathDiscovery.Atom
```
