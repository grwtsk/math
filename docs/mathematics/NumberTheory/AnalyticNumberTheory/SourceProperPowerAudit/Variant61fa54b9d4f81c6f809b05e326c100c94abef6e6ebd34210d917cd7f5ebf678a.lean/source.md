# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.SourceProperPowerAudit.Variant61fa54b9d4f81c6f809b05e326c100c94abef6e6ebd34210d917cd7f5ebf678a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0c6cc37eadb7dcfc36350d50d66fcff2eb911c6a` · SHA-256 `d303b573fe2b44dd2e11bf48a52386e24ed3afd8014d79b6fa72e0b0cfe8a7ee`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.SourceProperPowerDiagonal.Variant537ed3fd280c368c2973a48e78eebdcf47d5d6c2430127c7a7cd8af0001a0817","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"537ed3fd280c368c2973a48e78eebdcf47d5d6c2430127c7a7cd8af0001a0817","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.AnalyticNumberTheory.SourceCorpus.SourceProperPowerDiagonal.Variant537ed3fd280c368c2973a48e78eebdcf47d5d6c2430127c7a7cd8af0001a0817","mathematical_subject":"NumberTheory.AnalyticNumberTheory","original_sha256":"537ed3fd280c368c2973a48e78eebdcf47d5d6c2430127c7a7cd8af0001a0817","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/xi-analysis/proper-power-tail-native/SourceProperPowerAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceProperPowerDiagonal

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.SourceProperPowerDiagonal.Variant537ed3fd280c368c2973a48e78eebdcf47d5d6c2430127c7a7cd8af0001a0817

set_option pp.all true
set_option pp.universes true
#check RH16ProperPowerCell.powerTailBudget
#print axioms RH16ProperPowerCell.powerTailBudget
#check RH16ProperPowerCell.log_le_half_sub_inv
#print axioms RH16ProperPowerCell.log_le_half_sub_inv
#check RH16ProperPowerCell.powerTailBudget_nonneg
#print axioms RH16ProperPowerCell.powerTailBudget_nonneg
#check RH16ProperPowerCell.integer_cell_le
#print axioms RH16ProperPowerCell.integer_cell_le
#check RH16ProperPowerCell.finite_integer_tail_le
#print axioms RH16ProperPowerCell.finite_integer_tail_le
#check RH16ProperPowerCell.finite_integer_tail_budget
#print axioms RH16ProperPowerCell.finite_integer_tail_budget
#check RH16ProperPowerInventory.tailProperMass
#print axioms RH16ProperPowerInventory.tailProperMass
#check RH16ProperPowerInventory.properExponentInventory
#print axioms RH16ProperPowerInventory.properExponentInventory
#check RH16ProperPowerInventory.tailProperMass_nonneg
#print axioms RH16ProperPowerInventory.tailProperMass_nonneg
#check RH16ProperPowerInventory.tailProperMass_eq_exponent_sum
#print axioms RH16ProperPowerInventory.tailProperMass_eq_exponent_sum
#check RH16ProperPowerInventory.finite_geometric_proper_le
#print axioms RH16ProperPowerInventory.finite_geometric_proper_le
#check RH16ProperPowerInventory.tailProperMass_le_budget
#print axioms RH16ProperPowerInventory.tailProperMass_le_budget
#check RH16ProperPowerMertens.tailProperMass_one_eq
#print axioms RH16ProperPowerMertens.tailProperMass_one_eq
#check RH16ProperPowerMertens.weighted_difference_le_three_halves
#print axioms RH16ProperPowerMertens.weighted_difference_le_three_halves
#check RH16ProperPowerMertens.weightedPrime_sub_log_bounds
#print axioms RH16ProperPowerMertens.weightedPrime_sub_log_bounds
#check RH16ProperPowerMertens.weightedPrime_mertens_real_fixed
#print axioms RH16ProperPowerMertens.weightedPrime_mertens_real_fixed
#check RH16ProperPowerMertens.weightedPrime_logcutoff_fixed
#print axioms RH16ProperPowerMertens.weightedPrime_logcutoff_fixed
#check RH16ProperPowerDiagonal.actual_primeLogError_fixed
#print axioms RH16ProperPowerDiagonal.actual_primeLogError_fixed
#check RH16ProperPowerDiagonal.powerTailBudget_antitone
#print axioms RH16ProperPowerDiagonal.powerTailBudget_antitone
#check RH16ProperPowerDiagonal.diagonal_coefficient_error_le_tail
#print axioms RH16ProperPowerDiagonal.diagonal_coefficient_error_le_tail
#check RH16ProperPowerDiagonal.actual_diagonal_minus_prime_le_budget
#print axioms RH16ProperPowerDiagonal.actual_diagonal_minus_prime_le_budget
#check RH16ProperPowerDiagonal.actual_diagonal_minus_prime_tail
#print axioms RH16ProperPowerDiagonal.actual_diagonal_minus_prime_tail
```
