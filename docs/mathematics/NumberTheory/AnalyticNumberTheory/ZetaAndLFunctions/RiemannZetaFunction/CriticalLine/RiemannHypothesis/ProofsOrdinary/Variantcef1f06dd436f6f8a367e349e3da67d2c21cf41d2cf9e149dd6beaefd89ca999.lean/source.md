# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ProofsOrdinary.Variantcef1f06dd436f6f8a367e349e3da67d2c21cf41d2cf9e149dd6beaefd89ca999

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8299c2570b6f926d199fe97033af29aee0cf257d` · SHA-256 `45ca53cb4360b57e7eaeb1bb30b0fd9ac424a4b70e4e95048901813e8824a18f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiClosedKernelHyperbola.Variant2bd0673bd63b5a3232bb89a045f05064015b3dd431d7ebdf6881003a0b804547","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2bd0673bd63b5a3232bb89a045f05064015b3dd431d7ebdf6881003a0b804547","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceActualXiClosedKernelHyperbola.Variant2bd0673bd63b5a3232bb89a045f05064015b3dd431d7ebdf6881003a0b804547","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"2bd0673bd63b5a3232bb89a045f05064015b3dd431d7ebdf6881003a0b804547","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-signed-next/actual-xi-closed-kernel-hyperbola/ProofsOrdinary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualXiClosedKernelHyperbola

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualXiClosedKernelHyperbola.Variant2bd0673bd63b5a3232bb89a045f05064015b3dd431d7ebdf6881003a0b804547

set_option pp.maxSteps 1000000
set_option pp.proofs true
set_option pp.all true
set_option pp.fullNames false
#print FormalResearch.RiemannHypothesis.SourceActualXiClosedKernelHyperbola.actualClosedXiAtomKernel
#print FormalResearch.RiemannHypothesis.SourceActualXiClosedKernelHyperbola.actualClosedMangoldtXiPair
#print FormalResearch.RiemannHypothesis.SourceActualXiClosedKernelHyperbola.actualClosedMobiusXiHyperbola
#print FormalResearch.RiemannHypothesis.SourceActualXiClosedKernelHyperbola.actualPsi_eq_moebius_log_hyperbola
#print FormalResearch.RiemannHypothesis.SourceActualXiClosedKernelHyperbola.actualClosedMangoldtXiPair_eq_half_sub_psi
#print FormalResearch.RiemannHypothesis.SourceActualXiClosedKernelHyperbola.actualClosedMangoldtXiPair_eq_joint_hyperbola
#print FormalResearch.RiemannHypothesis.SourceActualXiClosedKernelHyperbola.actualClosedXiAtomKernel_touching
#print FormalResearch.RiemannHypothesis.SourceActualXiClosedKernelHyperbola.actualClosedMangoldtXiPair_on_closed_cell
#print FormalResearch.RiemannHypothesis.SourceActualXiClosedKernelHyperbola.actualAnchoredXiTailPrimitive_eq_closed_pair
```
