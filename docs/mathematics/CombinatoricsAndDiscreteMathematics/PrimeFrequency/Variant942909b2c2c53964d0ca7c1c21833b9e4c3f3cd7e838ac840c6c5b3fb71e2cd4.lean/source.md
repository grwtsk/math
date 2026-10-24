# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeFrequency.Variant942909b2c2c53964d0ca7c1c21833b9e4c3f3cd7e838ac840c6c5b3fb71e2cd4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0bf17950e30121fc8e6a21d113c60ca72a1e75ff` · SHA-256 `068acd37f4960d807aa86dd8290b81ea9ab04b58fd6ef5273f5a07fea95ca872`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.FrequencyStatus.Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.FrequencyStatus.Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/24/\\/noeoueue-memory-canvas/formal/Noeoueue/Memory/PrimeFrequency.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Prime.Basic
import Mathlib.Data.Finset.Card
import Noeoueue.Memory.TypeGraph


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.FrequencyStatus.Variant3b225e7dfcb7273a8d759587128675a865188a30e961a53e613c00158a68b9a3

namespace Noeoueue.TypeMemory

inductive FrequencyStatus | exact | rounded | residual | unknown
  deriving DecidableEq, Repr

/-- `type-memory://noeoueue/prime-frequency@1` -/
def incidenceCount {alpha} [DecidableEq alpha] (edges : Finset (TheoremHyperedge alpha))
    (t : alpha) : Nat := (edges.filter fun h => t ∈ h.statementSupport).card

def exactAt (theoremCount assignedPrime observed : Nat) : Prop :=
  assignedPrime * observed = theoremCount

theorem failed_target_is_residual {n p c : Nat} (h : p * c ≠ n) : Not (exactAt n p c) := h

end Noeoueue.TypeMemory
```
