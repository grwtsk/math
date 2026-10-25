# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.Syntax.Variantc568288dce9cce43b2e038d9ab5ad5e44602e02594fef155c2f64dfb30a5ded6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `33b6de2375adbd7bb27f6588754372fef41a2c4d` · SHA-256 `7c1e357e0cf6c7b757c39a98564d34d975fd16466896a1797ff9c34171c4a4e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.FundamentalSequenceId.Variantc9ea270ebd59d8193fc949667e2e648788427072d84ee984d20285ea9c8b3649","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c9ea270ebd59d8193fc949667e2e648788427072d84ee984d20285ea9c8b3649","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.FundamentalSequenceId.Variantc9ea270ebd59d8193fc949667e2e648788427072d84ee984d20285ea9c8b3649","mathematical_subject":"Logic.SetTheory","original_sha256":"c9ea270ebd59d8193fc949667e2e648788427072d84ee984d20285ea9c8b3649","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/OrdinalTally/Syntax.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-!
# Admitted ordinal-tally syntax

Limit syntax contains only a registered sequence identifier.  There is no
constructor carrying an arbitrary function from naturals to codes.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.FundamentalSequenceId.Variantc9ea270ebd59d8193fc949667e2e648788427072d84ee984d20285ea9c8b3649

namespace Mathematics.StratifiedBoundary

structure FundamentalSequenceId where
  value : String
deriving DecidableEq, Repr

inductive OrdinalTally where
  | tall (magnitude : Nat)
  | succ (predecessor : OrdinalTally)
  | block
      (exponent : OrdinalTally)
      (coefficient : Nat)
      (remainder : OrdinalTally)
  | registeredLimit (sequenceId : FundamentalSequenceId)
deriving DecidableEq, Repr

def OrdinalTally.isRegisteredLimit : OrdinalTally → Bool
  | .registeredLimit _ => true
  | _ => false

end Mathematics.StratifiedBoundary
```
