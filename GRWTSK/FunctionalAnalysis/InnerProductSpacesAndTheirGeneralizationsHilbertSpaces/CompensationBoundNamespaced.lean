-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.TraceCompensationBudget.Variantcac7aaa9627c631df68e8637d981daa924982202915f1cb09380cab8623815fe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cac7aaa9627c631df68e8637d981daa924982202915f1cb09380cab8623815fe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.TraceCompensationBudget.Variantcac7aaa9627c631df68e8637d981daa924982202915f1cb09380cab8623815fe","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"cac7aaa9627c631df68e8637d981daa924982202915f1cb09380cab8623815fe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Trace/CompensationBound.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.Trace.CompensationDefect

/-!
# Local trace-compensation bounds
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.TraceCompensationBudget.Variantcac7aaa9627c631df68e8637d981daa924982202915f1cb09380cab8623815fe

namespace Mathematics.SemiLocalDefect.ResidueDeflection.Trace

open Mathematics.GraphAccess

universe uHilbert uTest

structure TraceCompensationBudget
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test) where
  budget : Arc graph → ℝ
  budget_nonnegative :
    ∀ arc,
      0 ≤ budget arc
  defect_norm_le :
    ∀ arc,
      cut.safeArc arc = true →
        ‖system.compensationDefect arc‖ ≤
          budget arc

structure PositiveTraceCompensation
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {Hilbert : Type uHilbert}
    {Test : Type uTest}
    [NormedAddCommGroup Hilbert]
    [InnerProductSpace ℂ Hilbert]
    [CompleteSpace Hilbert]
    (system :
      PolarTraceSystem cut Hilbert Test) where
  positive :
    ∀ arc,
      cut.safeArc arc = true →
        (system.compensationDefect arc).IsPositive

theorem packetEnergy_compensation_bound
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
      TraceCompensationBudget system)
    (arc : Arc graph)
    (test : Test)
    (safe : cut.safeArc arc = true) :
    abs
        (system.packetEnergy arc.head test -
          system.packetEnergy arc.tail test) ≤
      certificate.budget arc *
        system.packet.packetNormSq
          arc.tail test := by
  rw [packetEnergy_difference_eq_compensationDefect
    system arc test safe]
  exact le_trans
    (system.packet.abs_energy_le
      arc.tail
      (system.compensationDefect arc)
      test)
    (mul_le_mul_of_nonneg_right
      (certificate.defect_norm_le arc safe)
      (system.packet.packetNormSq_nonnegative
        arc.tail test))

theorem packetEnergy_monotone_of_positiveCompensation
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
      PositiveTraceCompensation system)
    (arc : Arc graph)
    (test : Test)
    (safe : cut.safeArc arc = true) :
    system.packetEnergy arc.tail test ≤
      system.packetEnergy arc.head test := by
  apply sub_nonneg.mp
  rw [packetEnergy_difference_eq_compensationDefect
    system arc test safe]
  exact system.packet.energy_nonnegative
    arc.tail
    (system.compensationDefect arc)
    test
    (certificate.positive arc safe)

end Mathematics.SemiLocalDefect.ResidueDeflection.Trace
