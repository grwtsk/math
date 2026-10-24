-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PathTransportGain.Variant2e9ef48da17da6a20722619787a7ca357064d1dcee1c24d1596eeba129a862c8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e9ef48da17da6a20722619787a7ca357064d1dcee1c24d1596eeba129a862c8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.PathTransportGain.Variant2e9ef48da17da6a20722619787a7ca357064d1dcee1c24d1596eeba129a862c8","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"2e9ef48da17da6a20722619787a7ca357064d1dcee1c24d1596eeba129a862c8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Trace/TransportGain.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.PathCompensation
import Mathlib.Tactic.Ring

/-!
# Pathwise transport gain

Packet norms propagate through the actual transport norms.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.PathTransportGain.Variant2e9ef48da17da6a20722619787a7ca357064d1dcee1c24d1596eeba129a862c8

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

noncomputable def pathTransportGain
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    {source target : graph.Node} :
    DeflectionPath graph source target → ℝ
  | .nil _ => 1
  | .cons arc rest =>
      ‖system.transport arc‖ ^ 2 *
        pathTransportGain system rest

theorem pathTransportGain_nonnegative
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target) :
    0 ≤ pathTransportGain system path := by
  induction path with
  | nil =>
      exact zero_le_one
  | cons arc rest induction =>
      exact mul_nonneg (sq_nonneg _) induction

theorem packetNorm_path_transport
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test)
    (safe :
      path.AllArcs
        (fun arc =>
          cut.safeArc arc = true)) :
    system.packet.packetNormSq target test ≤
      pathTransportGain system path *
        system.packet.packetNormSq source test := by
  induction path with
  | nil =>
      simp [pathTransportGain]
  | cons arc rest induction =>
      rcases safe with ⟨arcSafe, restSafe⟩
      have localTransport :=
        system.packetNormTransport
          arc test arcSafe
      have downstream :=
        induction restSafe
      calc
        system.packet.packetNormSq _ test ≤
            pathTransportGain system rest *
              system.packet.packetNormSq
                arc.head test :=
          downstream
        _ ≤
            pathTransportGain system rest *
              (‖system.transport arc‖ ^ 2 *
                system.packet.packetNormSq
                  arc.tail test) :=
          mul_le_mul_of_nonneg_left
            localTransport
            (pathTransportGain_nonnegative
              system rest)
        _ =
            pathTransportGain system
                (.cons arc rest) *
              system.packet.packetNormSq
                arc.tail test := by
          simp [pathTransportGain]
          ring

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
