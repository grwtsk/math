-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.SpecialFunctions
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.SpecialFunctions.BohrMollerup.Variantd8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.SpecialFunctions.SourceCorpus.BohrMollerup.Variantd8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53","mathematical_subject":"Analysis.SpecialFunctions","original_sha256":"d8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass4/gamma_review/API.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.SpecialFunctions.Gamma.BohrMollerup
import Mathlib.NumberTheory.Harmonic.EulerMascheroni
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SumIntegralComparisons
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals
import Mathlib.Analysis.PSeries
import Mathlib.Tactic


namespace GRWTSK.Analysis.SpecialFunctions.BohrMollerup.Variantd8e547b6a79faa24f62e3307c7eb245c36a0901d5c63f9adbeacc4917c790c53

#check harmonic
#print harmonic
#check Real.BohrMollerup.logGammaSeq
#check Real.BohrMollerup.tendsto_log_gamma
#check Real.tendsto_harmonic_sub_log
#check Real.tendsto_harmonic_sub_log_add_one
#check Real.tendsto_log_nat_add_one_sub_log
#check Real.log_prod
#check Nat.factorial_eq_prod_range_add_one
#check Finset.prod_range_add_one_eq_factorial
#check hasSum_iff_tendsto_nat_of_nonneg
#check summable_nat_rpow
#check AntitoneOn.tsum_comp_add_le_integral
#check Real.integral_Ioi_rpow_of_lt
#check integral_Ioi_rpow_of_lt
#check Real.le_log_one_add_of_nonneg
#check Real.one_sub_inv_le_log_of_pos
