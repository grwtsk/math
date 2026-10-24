# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Evidence.Variant32d53d53bf6be5f788e2087854079cc925cddbaaf004ed8437309c56df955a9c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ebb383c86a5475ea3c9592b447a00b9a80a1c679` · SHA-256 `4acea5bcaece9121c8f81ba7152f85981d36ca1560ff2c2e17fb57ee1cb539a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InterpretationAuthority.Variant2673212d8c44b2c927e3247fa298d0f9e3742054117fdcc9f78acdfbd2c42511","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2673212d8c44b2c927e3247fa298d0f9e3742054117fdcc9f78acdfbd2c42511","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.InterpretationAuthority.Variant2673212d8c44b2c927e3247fa298d0f9e3742054117fdcc9f78acdfbd2c42511","mathematical_subject":"Computation.DataStructures","original_sha256":"2673212d8c44b2c927e3247fa298d0f9e3742054117fdcc9f78acdfbd2c42511","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/revoked-artifacts/source-structure/2487c9da77d9d8ececb8ffd882948a360b9125bba2b28ca69972182b0e8e2352/failed-candidates/post-application-e89443c73810dcdf/MathDiscovery/ProofStrategy/Evidence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import MathDiscovery.ProofStrategy.Observation

/-! # Interpreted proof-strategy evidence -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.InterpretationAuthority.Variant2673212d8c44b2c927e3247fa298d0f9e3742054117fdcc9f78acdfbd2c42511

namespace MathDiscovery.ProofStrategy

open MathDiscovery MathDiscovery.Extractor

inductive InterpretationAuthority
  | reviewedClassification
  | compiledMotifInterpretation
  | heuristicInference
  deriving DecidableEq, Inhabited

structure StrategyEvidence where
  id : ProofObservationId
  theoremId : DeclarationId
  strategy : Kind
  motifObservationIds : List ProofObservationId
  proofPaths : List (List Nat)
  authority : InterpretationAuthority
  ambiguities : List String
  digest : Digest
  deriving DecidableEq

namespace StrategyEvidence

def Valid (evidence : StrategyEvidence) : Prop :=
  evidence.id.Valid ∧
  evidence.theoremId.Valid ∧
  evidence.strategy.id.Valid ∧
  evidence.motifObservationIds.Nodup ∧
  evidence.motifObservationIds ≠ [] ∧
  evidence.digest.Valid

end StrategyEvidence

end MathDiscovery.ProofStrategy
```
