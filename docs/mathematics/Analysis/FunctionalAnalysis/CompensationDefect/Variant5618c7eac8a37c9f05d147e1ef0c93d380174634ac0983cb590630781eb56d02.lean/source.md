# Complete source: GRWTSK.Analysis.FunctionalAnalysis.CompensationDefect.Variant5618c7eac8a37c9f05d147e1ef0c93d380174634ac0983cb590630781eb56d02

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ba4590a096b9496a94be5275c91d03c41c98383e` · SHA-256 `a1bedabd428c5c6dfb86a4b5da2f6d207a89950e04d9b9727028f97df4fe76c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PolarTraceSystemCompensationDefect.Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.PolarTraceSystemCompensationDefect.Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Trace/CompensationDefect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.PolarTraceSystem

/-!
# Local compensation defect

The defect is literally `T* D_next T - D_current`.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.PolarTraceSystemCompensationDefect.Variant474fadf534ae95210556c6a0292e6f667dcd805f67cee7c7b3ed08bceec97368

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

noncomputable def PolarTraceSystem.compensationDefect
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (arc : Arc graph) :
    HilbertEnd Hilbert :=
  operatorPullback
      (system.transport arc)
      (system.defect arc.head) -
    system.defect arc.tail

theorem packetEnergy_difference_eq_compensationDefect
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    (arc : Arc graph)
    (test : Test)
    (safe : cut.safeArc arc = true) :
    system.packetEnergy arc.head test -
        system.packetEnergy arc.tail test =
      system.packet.energy arc.tail
        (system.compensationDefect arc)
        test := by
  unfold PolarTraceSystem.packetEnergy
  rw [system.packetCovariant
    arc (system.defect arc.head) test safe]
  exact
    (system.packet.energy_sub
      arc.tail
      (operatorPullback
        (system.transport arc)
        (system.defect arc.head))
      (system.defect arc.tail)
      test).symm

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
```
