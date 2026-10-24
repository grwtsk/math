# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.IndependentExactHeadTailAudit.Variantd181944e40713897258e58a96371a2c92c802078eb29143dc1641537d9822f16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a34e98d88692f48ce511dbf262db6678e3494913` · SHA-256 `8d7a5b31eb1b9a1450b7f885a11564035afa5822bec4ed1573b534d3725b65be`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceExactHeadTailConsumer.Variant2262065bfcd29b99c1ffd4f26fa37f75768e5b536336b64df32ed0599532df1a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2262065bfcd29b99c1ffd4f26fa37f75768e5b536336b64df32ed0599532df1a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SourceExactHeadTailConsumer.Variant2262065bfcd29b99c1ffd4f26fa37f75768e5b536336b64df32ed0599532df1a","mathematical_subject":"Foundations.Unclassified","original_sha256":"2262065bfcd29b99c1ffd4f26fa37f75768e5b536336b64df32ed0599532df1a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/xi-analysis/independent-head-consumer/IndependentExactHeadTailAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceExactHeadTailConsumer


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceExactHeadTailConsumer.Variant2262065bfcd29b99c1ffd4f26fa37f75768e5b536336b64df32ed0599532df1a

#check RH16ExactHeadTail.exactHeadAtomBudget
#print axioms RH16ExactHeadTail.exactHeadAtomBudget

#check RH16ExactHeadTail.exactHeadResidualBudget
#print axioms RH16ExactHeadTail.exactHeadResidualBudget

#check RH16ExactHeadTail.exactHeadAtomBudget_nonneg
#print axioms RH16ExactHeadTail.exactHeadAtomBudget_nonneg

#check RH16ExactHeadTail.remainingAtomWork_eq_gamma_head_tail
#print axioms RH16ExactHeadTail.remainingAtomWork_eq_gamma_head_tail

#check RH16ExactHeadTail.remaining_lower_of_exact_head_tail
#print axioms RH16ExactHeadTail.remaining_lower_of_exact_head_tail

#check RH16ExactHeadTail.atom_witness_of_exact_head_tail
#print axioms RH16ExactHeadTail.atom_witness_of_exact_head_tail

#check RH16ExactHeadTail.all_real_lower_of_exact_head_tail
#print axioms RH16ExactHeadTail.all_real_lower_of_exact_head_tail

#check RH16ExactHeadTail.estimate_of_exact_head_tail
#print axioms RH16ExactHeadTail.estimate_of_exact_head_tail

#check RH16ExactHeadTail.residual_upper_of_exact_head_tail
#print axioms RH16ExactHeadTail.residual_upper_of_exact_head_tail

#check RH16ExactHeadTail.leading_upper_of_exact_head_tail
#print axioms RH16ExactHeadTail.leading_upper_of_exact_head_tail

#check RH16ExactHeadTail.all_real_lower_of_exact_head_mean
#print axioms RH16ExactHeadTail.all_real_lower_of_exact_head_mean

#check RH16ExactHeadTail.estimate_of_exact_head_mean
#print axioms RH16ExactHeadTail.estimate_of_exact_head_mean

#check RH16ExactHeadTail.residual_upper_of_exact_head_mean
#print axioms RH16ExactHeadTail.residual_upper_of_exact_head_mean

#check RH16ExactHeadTail.leading_upper_of_exact_head_mean
#print axioms RH16ExactHeadTail.leading_upper_of_exact_head_mean

#print RH16ExactHeadTail.exactHeadAtomBudget

#print RH16ExactHeadTail.exactHeadResidualBudget

#print RH16ExactXiHead.actualXiHeadJ

#print RH16ExactXiHead.exactHeadErrorBudget

#print RH16FiniteGammaReturn.gammaTraceFloor

#print RH16CompleteXiComplement.calibratedRadius

#print RH16ExactEnergyMean.exactMeanTailBudget

#print RH16ActualF7Mean.actualF7MeanBound

```
