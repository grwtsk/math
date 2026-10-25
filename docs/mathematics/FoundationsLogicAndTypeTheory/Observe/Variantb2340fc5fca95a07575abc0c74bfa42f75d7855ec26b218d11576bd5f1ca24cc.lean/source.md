# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.Observe.Variantb2340fc5fca95a07575abc0c74bfa42f75d7855ec26b218d11576bd5f1ca24cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0cc8462a5258922da924d4f621309a0867c53e5d` · SHA-256 `169bebc81e116c5d09857331a9329b5d28af7896475030b93885ecb605197dd0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.Euclid.Variantcd6b347b36eee7aebb9702b3e918caf8c2324d8b9de8c2a391e54fc018c468ac","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cd6b347b36eee7aebb9702b3e918caf8c2324d8b9de8c2a391e54fc018c468ac","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Euclid.Variantcd6b347b36eee7aebb9702b3e918caf8c2324d8b9de8c2a391e54fc018c468ac","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"cd6b347b36eee7aebb9702b3e918caf8c2324d8b9de8c2a391e54fc018c468ac","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/MathlibTest/observe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Nat.Prime.Factorial
import Mathlib.Data.Nat.Factorial.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.Euclid.Variantcd6b347b36eee7aebb9702b3e918caf8c2324d8b9de8c2a391e54fc018c468ac

open Nat

set_option maxHeartbeats 7000 in
theorem euclid (n : ℕ) : ∃ N, n < N ∧ N.Prime := by
  let N := n.factorial + 1
  let p := minFac N
  use p
  have prime : p.Prime := by
    apply minFac_prime
    observe : n.factorial > 0
    omega
  constructor
  · by_contra!
    observe : p ∣ n.factorial
    observe : p ∣ N
    observe : p ∣ 1
    observe : ¬ p ∣ 1
    contradiction
  · exact prime
```
