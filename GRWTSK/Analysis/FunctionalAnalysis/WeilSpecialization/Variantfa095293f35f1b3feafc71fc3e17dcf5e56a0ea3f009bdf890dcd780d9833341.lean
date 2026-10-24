-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.WeilTraceCorrespondence.Variant066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.WeilTraceCorrespondence.Variant066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Arithmetic/WeilSpecialization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic.TraceInvariance

/-!
# Weil-form specialization

The convolution-square interface identifies a separately supplied Weil
functional with the arithmetic trace; it does not manufacture that identity.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.WeilTraceCorrespondence.Variant066adf8a9140bcf086587735cc93a01304c026433f67853bf78c0ad0f51bf239

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic

open Mathematics.GraphAccess

universe
  uHilbert uPacketTest uArithmeticTest
  uConvolutionTest

structure WeilTraceCorrespondence
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
    (arithmetic :
      ArithmeticTraceCorrespondence system) where
  ConvolutionTest :
    graph.Node → Type uConvolutionTest
  starSquare :
    ∀ node,
      ConvolutionTest node →
        arithmetic.ArithmeticTest node
  admissible :
    ∀ node,
      ConvolutionTest node → Prop
  weilFunctional :
    ∀ node,
      arithmetic.ArithmeticTest node → ℝ
  arithmeticTrace_eq_weil :
    ∀ node test,
      arithmetic.arithmeticTrace node test =
        weilFunctional node test
  digest : CertificateDigest

theorem weilFunctional_invariant_of_exactCompensation
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
    (arithmetic :
      ArithmeticTraceCorrespondence system)
    (correspondence :
      WeilTraceCorrespondence arithmetic)
    (traceExact :
      Trace.ExactTraceCompensation system)
    (arithmeticExact :
      ExactArithmeticTransport
        arithmetic)
    (arc : Arc graph)
    (test :
      arithmetic.ArithmeticTest arc.tail)
    (safe : cut.safeArc arc = true) :
    correspondence.weilFunctional arc.head
        (arithmetic.transportTest
          arc test) =
      correspondence.weilFunctional
        arc.tail test := by
  rw [
    ← correspondence.arithmeticTrace_eq_weil,
    ← correspondence.arithmeticTrace_eq_weil
  ]
  exact
    arithmeticTrace_invariant_of_exactCompensation
      system arithmetic
      traceExact arithmeticExact arc test safe

end Mathematics.SemiLocalDefect.ResidueDeflection.Arithmetic
