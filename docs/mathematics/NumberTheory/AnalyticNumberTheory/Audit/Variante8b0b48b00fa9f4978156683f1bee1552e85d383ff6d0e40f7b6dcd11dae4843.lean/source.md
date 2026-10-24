# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.Audit.Variante8b0b48b00fa9f4978156683f1bee1552e85d383ff6d0e40f7b6dcd11dae4843

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bce2323f127249a959926efad4f6e1d51e9b68f` · SHA-256 `7f23fa02f9272022671e42c0c2b527382d5688a4bba7280181fb655c8b81b8d3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SourceDivisorGramRefinement.Varianta59b22dc4134d93fe4929a79db2ceb65de07e1b791712d73dd851536cb7dcacd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a59b22dc4134d93fe4929a79db2ceb65de07e1b791712d73dd851536cb7dcacd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SourceDivisorGramRefinement.Varianta59b22dc4134d93fe4929a79db2ceb65de07e1b791712d73dd851536cb7dcacd","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"a59b22dc4134d93fe4929a79db2ceb65de07e1b791712d73dd851536cb7dcacd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle4/regent-divisor-gram/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceDivisorGramRefinement

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SourceDivisorGramRefinement.Varianta59b22dc4134d93fe4929a79db2ceb65de07e1b791712d73dd851536cb7dcacd

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceDivisorGramRefinement
#check patternImage
#print axioms patternImage
#check patternFiber
#print axioms patternFiber
#check divisorPattern_mem_image
#print axioms divisorPattern_mem_image
#check mem_patternFiber
#print axioms mem_patternFiber
#check patternImage_restriction
#print axioms patternImage_restriction
#check patternComparison
#print axioms patternComparison
#check patternComparison_val
#print axioms patternComparison_val
#check patternComparison_surjective
#print axioms patternComparison_surjective
#check patternComparison_comp
#print axioms patternComparison_comp
#check patternComparison_refl
#print axioms patternComparison_refl
#check patternFiber_refinement
#print axioms patternFiber_refinement
#check patternFiber_disjoint
#print axioms patternFiber_disjoint
#check sum_patternFibers
#print axioms sum_patternFibers
#check sectorCoordinates
#print axioms sectorCoordinates
#check sum_sectorCoordinates
#print axioms sum_sectorCoordinates
#check sectorCoordinates_refinement
#print axioms sectorCoordinates_refinement
#check sectorState
#print axioms sectorState
#check sectorState_mem
#print axioms sectorState_mem
#check sectorCoordinates_embedChannel
#print axioms sectorCoordinates_embedChannel
#check sectorState_embedChannel
#print axioms sectorState_embedChannel
#check synthesis_eq_sum_sectorStates
#print axioms synthesis_eq_sum_sectorStates
#check sectorState_refinement
#print axioms sectorState_refinement
#check gramSectorBlock
#print axioms gramSectorBlock
#check reflectedSectorBlock
#print axioms reflectedSectorBlock
#check gramSectorBlock_eq_inner
#print axioms gramSectorBlock_eq_inner
#check reflectedSectorBlock_eq_inner
#print axioms reflectedSectorBlock_eq_inner
#check synthesis_inner_eq_sector_blocks
#print axioms synthesis_inner_eq_sector_blocks
#check synthesis_reflected_inner_eq_sector_blocks
#print axioms synthesis_reflected_inner_eq_sector_blocks
#check gramSectorBlock_refinement
#print axioms gramSectorBlock_refinement
#check reflectedSectorBlock_refinement
#print axioms reflectedSectorBlock_refinement
#check actual_centeredCoefficient_eq_pattern
#print axioms actual_centeredCoefficient_eq_pattern
#check actual_mangoldt_state_eq_sectors
#print axioms actual_mangoldt_state_eq_sectors
#check actual_centered_state_eq_sectors
#print axioms actual_centered_state_eq_sectors
#check actual_mangoldt_sector_eq_full_fiber
#print axioms actual_mangoldt_sector_eq_full_fiber
#check actual_centered_sector_eq_full_fiber
#print axioms actual_centered_sector_eq_full_fiber
#check actual_reflected_sector_eq_full_fiber
#print axioms actual_reflected_sector_eq_full_fiber
#check actual_centered_sector_eq_pattern_weighted_fiber
#print axioms actual_centered_sector_eq_pattern_weighted_fiber
#check classifiedReadout
#print axioms classifiedReadout
#check classifiedReadout_eq_arithmeticReadout
#print axioms classifiedReadout_eq_arithmeticReadout
#check classifiedReadout_eq_covariance
#print axioms classifiedReadout_eq_covariance
#check classifiedReadout_disclosure_invariant
#print axioms classifiedReadout_disclosure_invariant
#check classifiedReadout_eq_original_counterterms
#print axioms classifiedReadout_eq_original_counterterms
#check classifiedReadout_eq_divisor_remainders
#print axioms classifiedReadout_eq_divisor_remainders
#check offDiagonalSectorBlock
#print axioms offDiagonalSectorBlock
#check sum_offDiagonalSectorBlocks
#print axioms sum_offDiagonalSectorBlocks
#check classifiedReadout_eq_offDiagonal_blocks
#print axioms classifiedReadout_eq_offDiagonal_blocks
#check classifiedReadout_tail_iff_original_target
#print axioms classifiedReadout_tail_iff_original_target
#check same_pattern_distinct_arithmetic_indices
#print axioms same_pattern_distinct_arithmetic_indices
```
