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
