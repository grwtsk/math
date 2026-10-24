# Complete source: GRWTSK.Analysis.FunctionalAnalysis.TransportDifference.Variant69fb890bb5a14e15b889ea68750ca5d4e5d4b02d063269d1638e84a31371a289

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `8d0ac3dc6c4cc8a2d1dc4d3ee5be9c34ba183a0c` · SHA-256 `3c5a95bd29b3a2c4854432f9774e8f2b176629bd81f293ee074301ed10288cf4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ArithmeticTraceCorrespondenceTransportDifference.Variantb6b364d4478ff0a975e8ac29fc94ff31f57d26a9b586a4815c4eefbf78f44a5e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6b364d4478ff0a975e8ac29fc94ff31f57d26a9b586a4815c4eefbf78f44a5e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.ArithmeticTraceCorrespondenceTransportDifference.Variantb6b364d4478ff0a975e8ac29fc94ff31f57d26a9b586a4815c4eefbf78f44a5e","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"b6b364d4478ff0a975e8ac29fc94ff31f57d26a9b586a4815c4eefbf78f44a5e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Arithmetic/TransportDifference.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.TraceCorrespondence
import Mathlib.Tactic.Ring

/-!
# Arithmetic transport differences
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ArithmeticTraceCorrespondenceTransportDifference.Variantb6b364d4478ff0a975e8ac29fc94ff31f57d26a9b586a4815c4eefbf78f44a5e

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic

open Mathematics.GraphAccess

universe uHilbert uPacketTest uArithmeticTest

def ArithmeticTraceCorrespondence.transportDifference
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest}
    (correspondence :
      ArithmeticTraceCorrespondence system)
    (field :
      ∀ node,
        correspondence.ArithmeticTest node →
          ℝ)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail) :
    ℝ :=
  field arc.head
      (correspondence.transportTest arc test) -
    field arc.tail test

def ArithmeticTraceCorrespondence.arithmeticDisplacement
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    {system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest}
    (correspondence :
      ArithmeticTraceCorrespondence system)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail) :
    ℝ :=
  correspondence.arithmeticTrace arc.head
      (correspondence.transportTest arc test) -
    correspondence.arithmeticTrace
      arc.tail test

theorem arithmeticDisplacement_eq
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {PacketTest : Type uPacketTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      Trace.PolarTraceSystem
        cut Hilbert PacketTest)
    (correspondence :
      ArithmeticTraceCorrespondence system)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    correspondence.arithmeticDisplacement
        arc test =
      correspondence.transportDifference
          correspondence.mainTerm arc test +
        system.packet.energy arc.tail
          (system.compensationDefect arc)
          (correspondence.packetCode
            arc.tail test) +
        correspondence.transportDifference
          correspondence.regularizationResidual
          arc test +
        correspondence.transportDifference
          correspondence.bitfieldResidual
          arc test +
        correspondence.transportDifference
          correspondence.correspondenceResidual
          arc test := by
  unfold ArithmeticTraceCorrespondence.arithmeticDisplacement
  rw [
    correspondence.traceIdentity
      arc.head
      (correspondence.transportTest arc test),
    correspondence.traceIdentity arc.tail test,
    correspondence.packetCode_transport arc test
  ]
  have packetDifference :=
    Trace.packetEnergy_difference_eq_compensationDefect
      system arc
      (correspondence.packetCode arc.tail test)
      safe
  rw [← packetDifference]
  unfold ArithmeticTraceCorrespondence.transportDifference
  ring

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
```
