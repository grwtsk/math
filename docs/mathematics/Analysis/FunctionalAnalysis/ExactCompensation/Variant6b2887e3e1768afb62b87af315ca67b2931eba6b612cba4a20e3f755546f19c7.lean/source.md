# Complete source: GRWTSK.Analysis.FunctionalAnalysis.ExactCompensation.Variant6b2887e3e1768afb62b87af315ca67b2931eba6b612cba4a20e3f755546f19c7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ff3ce82e53bf7e7f30b4fe66f69ae80e0b24196e` · SHA-256 `c4c7c9cf3b6b4f8744ceb21421d5fa2d79e59e3ecd5482f913afab57796596b3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ExactTraceCompensation.Variantda929214a697cb5de918efdd462aa9a66dda971f14d9a37459c15b672fdc34a4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"da929214a697cb5de918efdd462aa9a66dda971f14d9a37459c15b672fdc34a4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.ExactTraceCompensation.Variantda929214a697cb5de918efdd462aa9a66dda971f14d9a37459c15b672fdc34a4","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"da929214a697cb5de918efdd462aa9a66dda971f14d9a37459c15b672fdc34a4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Trace/ExactCompensation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.CompensationBound

/-!
# Exact fixed-Hilbert trace compensation
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ExactTraceCompensation.Variantda929214a697cb5de918efdd462aa9a66dda971f14d9a37459c15b672fdc34a4

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

structure ExactTraceCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test) where
  exact :
    ∀ arc,
      cut.safeArc arc = true →
        system.compensationDefect arc = 0

theorem packetEnergy_invariant_of_exactCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (certificate :
      ExactTraceCompensation system)
    (arc : Arc graph)
    (test : Test)
    (safe : cut.safeArc arc = true) :
    system.packetEnergy arc.head test =
      system.packetEnergy arc.tail test := by
  apply sub_eq_zero.mp
  rw [packetEnergy_difference_eq_compensationDefect
    system arc test safe,
    certificate.exact arc safe,
    system.packet.energy_zero]

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```
