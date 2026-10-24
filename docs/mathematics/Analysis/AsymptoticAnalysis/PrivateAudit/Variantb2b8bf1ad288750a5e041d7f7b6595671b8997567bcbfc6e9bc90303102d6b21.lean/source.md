# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.PrivateAudit.Variantb2b8bf1ad288750a5e041d7f7b6595671b8997567bcbfc6e9bc90303102d6b21

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7fca2029802df7905dccecdde57994eeb44bcaf0` · SHA-256 `c172aa781d37edfc440e6e858d7c74955aaf4ae229096d8349828718ee3515a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.AsymptoticAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.AsymptoticAnalysis.SourceHigherPrimePowerCoefficients.Variant6ec8e289940982b2428e2d804c20a41fee07419906710a58b49d5b9d528e1352","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6ec8e289940982b2428e2d804c20a41fee07419906710a58b49d5b9d528e1352","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.AsymptoticsAndSeries.SourceCorpus.SourceHigherPrimePowerCoefficients.Variant6ec8e289940982b2428e2d804c20a41fee07419906710a58b49d5b9d528e1352","mathematical_subject":"Analysis.AsymptoticsAndSeries","original_sha256":"6ec8e289940982b2428e2d804c20a41fee07419906710a58b49d5b9d528e1352","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle9/higher-coefficients/private-Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceHigherPrimePowerCoefficients


namespace GRWTSK.Analysis.AsymptoticAnalysis.SourceHigherPrimePowerCoefficients.Variant6ec8e289940982b2428e2d804c20a41fee07419906710a58b49d5b9d528e1352

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceHigherPrimePowerCoefficients

#check HigherPrimePowerIndex
#print axioms HigherPrimePowerIndex
#check higherAtomExponent
#print axioms higherAtomExponent
#check higherAtomNatural
#print axioms higherAtomNatural
#check primeRatio
#print axioms primeRatio
#check higherAtomWeight
#print axioms higherAtomWeight
#check higherAtomShift
#print axioms higherAtomShift
#check higherAtomExponent_ge_three
#print axioms higherAtomExponent_ge_three
#check higherAtomExponent_ne_zero
#print axioms higherAtomExponent_ne_zero
#check higherAtomNatural_ge_two
#print axioms higherAtomNatural_ge_two
#check higherAtomNatural_injective
#print axioms higherAtomNatural_injective
#check primeRatio_pos
#print axioms primeRatio_pos
#check primeRatio_nonneg
#print axioms primeRatio_nonneg
#check primeRatio_le_three_quarters
#print axioms primeRatio_le_three_quarters
#check primeRatio_lt_one
#print axioms primeRatio_lt_one
#check higherAtomWeight_pos
#print axioms higherAtomWeight_pos
#check higherAtomWeight_nonneg
#print axioms higherAtomWeight_nonneg
#check higherAtomShift_pos
#print axioms higherAtomShift_pos
#check higherAtomWeight_eq_mangoldtCoefficient
#print axioms higherAtomWeight_eq_mangoldtCoefficient
#check higherAtomShift_eq_log
#print axioms higherAtomShift_eq_log
#check primeHigherMass
#print axioms primeHigherMass
#check prime_higherAtomWeight_hasSum
#print axioms prime_higherAtomWeight_hasSum
#check prime_higherAtomWeight_summable
#print axioms prime_higherAtomWeight_summable
#check primeHigherMass_nonneg
#print axioms primeHigherMass_nonneg
#check primeHigherMass_le_pseries
#print axioms primeHigherMass_le_pseries
#check primePSeries_summable
#print axioms primePSeries_summable
#check primeHigherMass_summable
#print axioms primeHigherMass_summable
#check higherAtomWeight_summable
#print axioms higherAtomWeight_summable
#check higherBaseline
#print axioms higherBaseline
#check higherBaseline_eq_primeMass
#print axioms higherBaseline_eq_primeMass
#check higherBaseline_nonneg
#print axioms higherBaseline_nonneg
#check higher_two_cube_weight_pos
#print axioms higher_two_cube_weight_pos
#check higherBaseline_pos
#print axioms higherBaseline_pos
#check higherBaseline_le_pseries
#print axioms higherBaseline_le_pseries
#check higherBaseline_le_budget
#print axioms higherBaseline_le_budget
```
