# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.HalfHarmonicZetaIndependentTypes.Variant1ba5db78115c2d08d150a6645038a39a66c0bbcec0f0be64edb1827bc5c0194a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `56501ec301543d7973e5959de871f7af45718b23` · SHA-256 `93f346729fccaa0b6e30aa3085a03c0ab506e1e63f71fdfe53b3e8821b02d445`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualHalfHarmonicZeta.Variantc2164de5173c521f547e8ba499fccd6ff619ae6532b3a7f88544636e071c958c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c2164de5173c521f547e8ba499fccd6ff619ae6532b3a7f88544636e071c958c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.SourceActualHalfHarmonicZeta.Variantc2164de5173c521f547e8ba499fccd6ff619ae6532b3a7f88544636e071c958c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"c2164de5173c521f547e8ba499fccd6ff619ae6532b3a7f88544636e071c958c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/rh16-continuation-20261006-critical-complement/independent-half-harmonic-zeta/HalfHarmonicZetaIndependentTypes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceActualHalfHarmonicZeta

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceActualHalfHarmonicZeta.Variantc2164de5173c521f547e8ba499fccd6ff619ae6532b3a7f88544636e071c958c

set_option autoImplicit false
open FormalResearch.RiemannHypothesis.SourceActualHalfHarmonicZeta
#check halfHarmonicFractionalTail
#print axioms halfHarmonicFractionalTail
#check finiteHalfHarmonic_eq_sqrt_zeta_tail
#print axioms finiteHalfHarmonic_eq_sqrt_zeta_tail
#check halfHarmonicFractionalTail_bounds
#print axioms halfHarmonicFractionalTail_bounds
#check finiteHalfHarmonic_sub_sqrt_zeta_abs_le
#print axioms finiteHalfHarmonic_sub_sqrt_zeta_abs_le
```
