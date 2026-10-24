# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Audit.Variantd8ff31d8bf9fbb8bd135188b1ec19e305bb5dd218fbb5ae095cf0d6652568aec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `93c500e1baa6dda177d764d998402d13a7c2b58b` · SHA-256 `cc74d301ad9921955d21b6cc490ca90bfdf6f3b5ef277eeb76f2223775a1ec53`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalSecondAbel.Variante00f3958115d1c954d9003b2da756ce9d448fed39504327cbc50aa4a60f6b1dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e00f3958115d1c954d9003b2da756ce9d448fed39504327cbc50aa4a60f6b1dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.SourceCriticalSecondAbel.Variante00f3958115d1c954d9003b2da756ce9d448fed39504327cbc50aa4a60f6b1dc","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e00f3958115d1c954d9003b2da756ce9d448fed39504327cbc50aa4a60f6b1dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle20/principal-second-abel/canonical/exact-type-axiom-audit/Audit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCriticalSecondAbel.Variante00f3958115d1c954d9003b2da756ce9d448fed39504327cbc50aa4a60f6b1dc

set_option linter.hashCommand false
open FormalResearch.RiemannHypothesis.SourceCriticalSecondAbel

#check @criticalPrimeTest_contDiff_two
#print axioms criticalPrimeTest_contDiff_two
#check @criticalPrimeTest_deriv_lipschitz
#print axioms criticalPrimeTest_deriv_lipschitz
#check @pairedTailTest_deriv_absolutelyContinuous
#print axioms pairedTailTest_deriv_absolutelyContinuous
#check @criticalRemovedPairedWork_eq_cumulative_work
#print axioms criticalRemovedPairedWork_eq_cumulative_work
#check @criticalRemovedPairedWork_eq_second_abel
#print axioms criticalRemovedPairedWork_eq_second_abel
```
