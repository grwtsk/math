-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.ExactArithmeticTransport.Varianted5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ed5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.ExactArithmeticTransport.Varianted5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"ed5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Arithmetic/TraceInvariance.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.TransportBudget

/-!
# Exact arithmetic trace invariance

Exact packet compensation is insufficient on its own: every non-packet term
must also be invariant, and the correspondence residual must vanish.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.ExactArithmeticTransport.Varianted5431065a67280847623d74e2a70468c2fbcb751a06db7cd45b2177f289fea7

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic

open Mathematics.GraphAccess

universe uHilbert uPacketTest uArithmeticTest

structure ExactArithmeticTransport
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
      ArithmeticTraceCorrespondence system) where
  mainInvariant :
    ∀ arc test,
      cut.safeArc arc = true →
        correspondence.mainTerm arc.head
            (correspondence.transportTest
              arc test) =
          correspondence.mainTerm arc.tail test
  regularizationInvariant :
    ∀ arc test,
      cut.safeArc arc = true →
        correspondence.regularizationResidual
            arc.head
            (correspondence.transportTest
              arc test) =
          correspondence.regularizationResidual
            arc.tail test
  bitfieldInvariant :
    ∀ arc test,
      cut.safeArc arc = true →
        correspondence.bitfieldResidual arc.head
            (correspondence.transportTest
              arc test) =
          correspondence.bitfieldResidual
            arc.tail test
  correspondenceExact :
    ∀ node test,
      correspondence.correspondenceResidual
        node test = 0

theorem arithmeticTrace_invariant_of_exactCompensation
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
    (traceExact :
      Trace.ExactTraceCompensation system)
    (arithmeticExact :
      ExactArithmeticTransport correspondence)
    (arc : Arc graph)
    (test :
      correspondence.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    correspondence.arithmeticTrace arc.head
        (correspondence.transportTest arc test) =
      correspondence.arithmeticTrace
        arc.tail test := by
  apply sub_eq_zero.mp
  change
    correspondence.arithmeticDisplacement
      arc test = 0
  rw [arithmeticDisplacement_eq
    system correspondence arc test safe]
  have mainZero :
      correspondence.transportDifference
          correspondence.mainTerm arc test = 0 :=
    sub_eq_zero.mpr
      (arithmeticExact.mainInvariant
        arc test safe)
  have regularizationZero :
      correspondence.transportDifference
          correspondence.regularizationResidual
          arc test = 0 :=
    sub_eq_zero.mpr
      (arithmeticExact.regularizationInvariant
        arc test safe)
  have bitfieldZero :
      correspondence.transportDifference
          correspondence.bitfieldResidual
          arc test = 0 :=
    sub_eq_zero.mpr
      (arithmeticExact.bitfieldInvariant
        arc test safe)
  have correspondenceZero :
      correspondence.transportDifference
          correspondence.correspondenceResidual
          arc test = 0 := by
    unfold ArithmeticTraceCorrespondence.transportDifference
    rw [
      arithmeticExact.correspondenceExact,
      arithmeticExact.correspondenceExact,
      sub_self
    ]
  rw [
    mainZero,
    regularizationZero,
    bitfieldZero,
    correspondenceZero,
    traceExact.exact arc safe,
    system.packet.energy_zero
  ]
  simp

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
