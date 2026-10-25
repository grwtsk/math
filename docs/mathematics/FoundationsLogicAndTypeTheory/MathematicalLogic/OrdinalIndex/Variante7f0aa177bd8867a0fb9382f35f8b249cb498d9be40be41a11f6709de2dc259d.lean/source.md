# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.OrdinalIndex.Variante7f0aa177bd8867a0fb9382f35f8b249cb498d9be40be41a11f6709de2dc259d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b8dd0b1ba291f1e25fbb5048b171272e41ff156` · SHA-256 `d82047a5a2ed9e8378b231a870f33e4b9f41ae52768d8f0cf55d1b2c714075e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StratifiedFrontierIndex.Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.StratifiedFrontierIndex.Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496","mathematical_subject":"Logic.Foundations","original_sha256":"440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/Frontier/OrdinalIndex.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.Frontier.LocalRank
import Mathematics.StratifiedBoundary.OrdinalTally.Syntax

/-!
# Stratum-dominant finite frontier indices

Persistent identity is intentionally absent from the address record.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StratifiedFrontierIndex.Variant440d43a7d823cd7ccc5249b6208c8b78682c55672cdb4aec3f0a910e9f4e0496

namespace Mathematics.StratifiedBoundary

structure StratifiedFrontierIndex where
  profileId : String
  stratum : OrdinalTally
  localRank : Nat
deriving DecidableEq, Repr

def finiteFrontierIndex
    {Frontier : Type u}
    (profileId : String)
    (stratum : OrdinalTally)
    (ranker : FiniteLocalRank Frontier)
    (record : Frontier) : StratifiedFrontierIndex where
  profileId := profileId
  stratum := stratum
  localRank := ranker.rank record

theorem stratified_frontier_index_injective
    {Frontier : Type u}
    (profileId : String)
    (stratum : OrdinalTally)
    (ranker : FiniteLocalRank Frontier) :
    Function.Injective
      (finiteFrontierIndex profileId stratum ranker) := by
  intro left right equalIndex
  apply ranker.injective
  exact congrArg StratifiedFrontierIndex.localRank equalIndex

structure IndexedPersistentLineage where
  persistentIdentity : String
  occurrenceIndex : StratifiedFrontierIndex
  predecessorIndexRef : Option String

end Mathematics.StratifiedBoundary
```
