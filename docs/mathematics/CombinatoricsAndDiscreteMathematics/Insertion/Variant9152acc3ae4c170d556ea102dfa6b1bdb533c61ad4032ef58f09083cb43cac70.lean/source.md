# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Insertion.Variant9152acc3ae4c170d556ea102dfa6b1bdb533c61ad4032ef58f09083cb43cac70

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b0496ec1bac3282cc12f7e88504a6024fa8760cf` · SHA-256 `851960502523cfd356fc871b9e82159603b4b111bc413d55face51aac0f388d5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeInsertionEdge.Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.PrimeInsertionEdge.Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/WP0/PrimeHorizon/Insertion.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.WP0.PrimeHorizon.Cut

/-!
# One-prime insertion primitive
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.PrimeInsertionEdge.Variant341e2acbf5cab45faa8e3563636ad2de0e8545a169439f5c410a080d89ea7378

namespace Mathematics.SemiLocalDefect.SoninCore

structure PrimeInsertionEdge
    (U : FinitePrimeHorizon) where
  source : PrimeCut U
  prime : U.Prime
  prime_not_mem : prime ∉ source

def PrimeInsertionEdge.target
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    PrimeCut U :=
  insert e.prime e.source

theorem PrimeInsertionEdge.source_subset_target
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    e.source ⊆ e.target := by
  intro p hp
  exact Finset.mem_insert_of_mem hp

@[simp]
theorem PrimeInsertionEdge.prime_mem_target
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    e.prime ∈ e.target := by
  simp [PrimeInsertionEdge.target]

@[simp]
theorem PrimeInsertionEdge.target_card
    {U : FinitePrimeHorizon}
    (e : PrimeInsertionEdge U) :
    e.target.card = e.source.card + 1 := by
  simp [
    PrimeInsertionEdge.target,
    e.prime_not_mem
  ]

end Mathematics.SemiLocalDefect.SoninCore
```
