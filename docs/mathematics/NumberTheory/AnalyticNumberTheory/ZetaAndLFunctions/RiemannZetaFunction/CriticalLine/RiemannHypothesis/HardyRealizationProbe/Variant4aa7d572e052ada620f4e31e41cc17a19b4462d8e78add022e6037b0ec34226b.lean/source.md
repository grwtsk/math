# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HardyRealizationProbe.Variant4aa7d572e052ada620f4e31e41cc17a19b4462d8e78add022e6037b0ec34226b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8cd71ad4d835e6557b7ad6c737124d7a87afb62e` · SHA-256 `5dd26f1f7f61f3ea5989516ce3c2b32e73d59fd1071d027489f966c322c4d1c1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.VerticalLine.Variant73c4dca9167cde1bf8065fadc0bd3dcad6ae46278276427973908406e16added","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"73c4dca9167cde1bf8065fadc0bd3dcad6ae46278276427973908406e16added","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.VerticalLine.Variant73c4dca9167cde1bf8065fadc0bd3dcad6ae46278276427973908406e16added","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"73c4dca9167cde1bf8065fadc0bd3dcad6ae46278276427973908406e16added","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/source-controller-admission/HardyRealizationProbe.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Zeta23.WeilEF.VerticalLine
import Mathlib.Analysis.Fourier.LpSpace
import FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.VerticalLine.Variant73c4dca9167cde1bf8065fadc0bd3dcad6ae46278276427973908406e16added

set_option pp.universes true
#check @Zeta23.WeilEF.vertical_line_shift
#print axioms Zeta23.WeilEF.vertical_line_shift
#check @Zeta23.WeilEF.integrable_line
#print axioms Zeta23.WeilEF.integrable_line
#check @MeasureTheory.Lp.fourierTransformₗᵢ
#check @MeasureTheory.Lp.fourierInv_toTemperedDistribution_eq
#check @ae_eq_of_integral_contDiff_smul_eq
#check @VectorFourier.integral_bilin_fourierIntegral_eq_flip
#check @FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension.restriction
#check @FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension.restriction_ae
#check @FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExtension.zeroExtension_ae
```
