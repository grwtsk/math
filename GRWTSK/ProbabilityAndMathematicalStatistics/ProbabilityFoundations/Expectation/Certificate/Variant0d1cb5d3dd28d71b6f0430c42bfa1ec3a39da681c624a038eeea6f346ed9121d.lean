-- corpus-organization-transform:v1
-- Mathematical subject: ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.TraceCompensationEvidence.Variant789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Probability.MomentsAndRandomVariables.SourceCorpus.TraceCompensationEvidence.Variant789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a","mathematical_subject":"Probability.MomentsAndRandomVariables","original_sha256":"789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/SemiLocalDefect/ResidueDeflection/Certificate.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.SemiLocalDefect.ResidueDeflection.TraceResidual
import Mathematics.SemiLocalDefect.ResidueDeflection.Tuple

/-!
# Polarized residue-deflection certificate

The certificate bundles the immutable graph cut, complete safe bypass data,
phase cocycle and holonomy, positive transport, packet covariance, and either
exact or bounded trace compensation.
-/


namespace GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.Expectation.TraceCompensationEvidence.Variant789f3f0f52df3d6d5cb23ae4557d5dba5e07fb5e76b4bb08e8847c4026f83f2a

namespace Mathematics.SemiLocalDefect.ResidueDeflection

open Mathematics.GraphAccess

universe uTest uChart uWall

inductive TraceCompensationEvidence
    {graph : GraphCut}
    {cut : ResidueDeflectionCut graph}
    {model : OperatorModel}
    {Test : Type uTest}
    (system :
      PolarTraceSystem cut model Test)
  | exact
      (certificate :
        ExactTraceCompensation system)
  | residual
      (certificate :
        ResidualTraceCompensation system)

structure ResidueDeflectionCertificate
    (graph : GraphCut)
    (model : OperatorModel)
    (Test : Type uTest)
    (Chart : Type uChart)
    (Wall : Type uWall) where
  cut : ResidueDeflectionCut graph
  cocycle : DeflectionCocycle Chart Wall
  arcLeftChart : Arc graph → Chart
  arcRightChart : Arc graph → Chart
  arcOverlap :
    ∀ arc,
      cocycle.overlaps
        (arcLeftChart arc)
        (arcRightChart arc)
  tupleLength : Nat
  protectedTotal : ZMod 3
  tupleStabilizer :
    TupleConstraintStabilizer
      tupleLength protectedTotal
  traceSystem :
    PolarTraceSystem cut model Test
  cocycle_phase :
    ∀ arc,
      cocycle.transition
          (arcLeftChart arc)
          (arcRightChart arc) =
        traceSystem.polarized.phase.phase arc
  bypassWall : cut.Bypass → Wall
  bypassWall_is_defect :
    ∀ bypass,
      cocycle.isModuloThreeWall
        (bypassWall bypass)
  compensation :
    TraceCompensationEvidence traceSystem
  digest : CertificateDigest

structure ExactResidueDeflectionCertificate
    (graph : GraphCut)
    (model : OperatorModel)
    (Test : Type uTest)
    (Chart : Type uChart)
    (Wall : Type uWall) where
  cut : ResidueDeflectionCut graph
  cocycle : DeflectionCocycle Chart Wall
  arcLeftChart : Arc graph → Chart
  arcRightChart : Arc graph → Chart
  arcOverlap :
    ∀ arc,
      cocycle.overlaps
        (arcLeftChart arc)
        (arcRightChart arc)
  tupleLength : Nat
  protectedTotal : ZMod 3
  tupleStabilizer :
    TupleConstraintStabilizer
      tupleLength protectedTotal
  traceSystem :
    PolarTraceSystem cut model Test
  cocycle_phase :
    ∀ arc,
      cocycle.transition
          (arcLeftChart arc)
          (arcRightChart arc) =
        traceSystem.polarized.phase.phase arc
  bypassWall : cut.Bypass → Wall
  bypassWall_is_defect :
    ∀ bypass,
      cocycle.isModuloThreeWall
        (bypassWall bypass)
  exactCompensation :
    ExactTraceCompensation traceSystem
  digest : CertificateDigest

theorem exact_certificate_trace_conservation
    {graph : GraphCut}
    {model : OperatorModel}
    {Test : Type uTest}
    {Chart : Type uChart}
    {Wall : Type uWall}
    (certificate :
      ExactResidueDeflectionCertificate
        graph model Test Chart Wall)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (test : Test) :
    polarPacketEnergy
        certificate.traceSystem target test =
      polarPacketEnergy
        certificate.traceSystem source test :=
  traceConserved_on_path
    certificate.traceSystem
    certificate.exactCompensation
    path test

theorem exact_certificate_defect_holonomy
    {graph : GraphCut}
    {model : OperatorModel}
    {Test : Type uTest}
    {Chart : Type uChart}
    {Wall : Type uWall}
    (certificate :
      ExactResidueDeflectionCertificate
        graph model Test Chart Wall)
    (bypass : certificate.cut.Bypass)
    (residue : Residue3) :
    DeflectionPath.transportResidue
        certificate.traceSystem.polarized.phase.phase
        (certificate.cut.defectLoop bypass)
        residue =
      residue.reflect :=
  PhaseTransport.defectLoop_reflects
    certificate.traceSystem.polarized.phase
    bypass residue

theorem exact_certificate_amplitude_positive
    {graph : GraphCut}
    {model : OperatorModel}
    {Test : Type uTest}
    {Chart : Type uChart}
    {Wall : Type uWall}
    (certificate :
      ExactResidueDeflectionCertificate
        graph model Test Chart Wall)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (polarizedSection : PolarizedSection) :
    0 <
      (polarizedSection.transport
        certificate.traceSystem.polarized
        path).amplitude.value :=
  PolarizedSection.transport_amplitude_positive
    certificate.traceSystem.polarized
    path polarizedSection

theorem exact_certificate_rule_three
    {graph : GraphCut}
    {model : OperatorModel}
    {Test : Type uTest}
    {Chart : Type uChart}
    {Wall : Type uWall}
    (certificate :
      ExactResidueDeflectionCertificate
        graph model Test Chart Wall)
    {source target : graph.Node}
    (path :
      DeflectionPath graph source target)
    (safePath :
      path.AllArcs
        (fun arc =>
          certificate.cut.safeArc arc = true))
    (reflected :
      path.phaseProduct
          certificate.traceSystem.polarized.phase.phase =
        .reflect)
    (polarizedSection : PolarizedSection)
    (test : Test) :
    path.AllArcs
        (fun arc =>
          certificate.cut.safeArc arc = true) ∧
      0 <
        (polarizedSection.transport
          certificate.traceSystem.polarized
          path).amplitude.value ∧
      (polarizedSection.transport
        certificate.traceSystem.polarized
        path).phaseResidue.Safe ∧
      (polarizedSection.transport
          certificate.traceSystem.polarized
          path).phaseResidue =
        polarizedSection.phaseResidue.reflect ∧
      polarPacketEnergy
          certificate.traceSystem target test =
        polarPacketEnergy
          certificate.traceSystem source test := by
  refine ⟨safePath, ?_, ?_, ?_, ?_⟩
  · exact
      exact_certificate_amplitude_positive
        certificate path polarizedSection
  · exact
      (polarizedSection.transport
        certificate.traceSystem.polarized
        path).phaseSafe
  · change
      path.transportResidue
          certificate.traceSystem.polarized.phase.phase
          polarizedSection.phaseResidue =
        polarizedSection.phaseResidue.reflect
    unfold DeflectionPath.transportResidue
    rw [reflected]
    rfl
  · exact
      exact_certificate_trace_conservation
        certificate path test

end Mathematics.SemiLocalDefect.ResidueDeflection
