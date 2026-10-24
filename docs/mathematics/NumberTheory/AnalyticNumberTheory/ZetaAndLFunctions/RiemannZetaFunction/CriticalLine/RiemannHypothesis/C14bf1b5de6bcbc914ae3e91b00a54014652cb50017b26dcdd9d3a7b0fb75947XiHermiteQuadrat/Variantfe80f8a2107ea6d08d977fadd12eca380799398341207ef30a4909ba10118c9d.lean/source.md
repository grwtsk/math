# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.C14bf1b5de6bcbc914ae3e91b00a54014652cb50017b26dcdd9d3a7b0fb75947XiHermiteQuadrat.Variantfe80f8a2107ea6d08d977fadd12eca380799398341207ef30a4909ba10118c9d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bc3fed002a4744102162cc3a4a9f3aeb881e6e59` · SHA-256 `5fc5b9c35459d74100719265c7f24b838122d24cdeaba61fd3eeff79a1b14b5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiHermiteQuadratic.Variantc14bf1b5de6bcbc914ae3e91b00a54014652cb50017b26dcdd9d3a7b0fb75947","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c14bf1b5de6bcbc914ae3e91b00a54014652cb50017b26dcdd9d3a7b0fb75947","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.XiHermiteQuadratic.Variantc14bf1b5de6bcbc914ae3e91b00a54014652cb50017b26dcdd9d3a7b0fb75947","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c14bf1b5de6bcbc914ae3e91b00a54014652cb50017b26dcdd9d3a7b0fb75947","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/c1/c14bf1b5de6bcbc914ae3e91b00a54014652cb50017b26dcdd9d3a7b0fb75947--XiHermiteQuadraticAudit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.XiHermiteQuadratic

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.XiHermiteQuadratic.Variantc14bf1b5de6bcbc914ae3e91b00a54014652cb50017b26dcdd9d3a7b0fb75947

#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.companion
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.hermiteMatrix
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.companion_charpoly
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.hermiteMatrix_eq
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.hermiteMatrix_isHermitian
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.hermite_square
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.hermite_square_nonneg_iff
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.hermiteMatrix_posSemidef_iff
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.quadratic_root_real_of_nonneg
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.quadratic_nonreal_root_of_neg
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.hermiteMatrix_posSemidef_iff_real_roots
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.imaginary_pair_hermite
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.imaginary_pair_not_posSemidef
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.double_one_hermite
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.double_one_posSemidef
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.double_one_hermite_det
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.double_one_charpoly
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.double_one_nilpotent
#print axioms FormalResearch.RiemannHypothesis.XiHermiteQuadratic.double_one_nilpotent_ne_zero
```
