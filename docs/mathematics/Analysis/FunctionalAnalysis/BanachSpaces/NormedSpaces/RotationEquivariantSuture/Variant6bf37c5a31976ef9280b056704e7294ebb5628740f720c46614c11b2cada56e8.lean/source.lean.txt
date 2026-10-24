-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.RotationEquivariantNamingSuture.Variantc5432e67ca43faaa1cf7f7b2ffde36c1ffe7351c170cf6cb0e41964679e48acc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5432e67ca43faaa1cf7f7b2ffde36c1ffe7351c170cf6cb0e41964679e48acc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.NormedSpaces.SourceCorpus.RotationEquivariantNamingSuture.Variantc5432e67ca43faaa1cf7f7b2ffde36c1ffe7351c170cf6cb0e41964679e48acc","mathematical_subject":"Analysis.NormedSpaces","original_sha256":"c5432e67ca43faaa1cf7f7b2ffde36c1ffe7351c170cf6cb0e41964679e48acc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/.surface/oracle/recovery/e7ca3ab08a9941d3b0d081a02fe454bdf10e695cc272c56d32f3ad446cc76aee-superseded-json-wrapper-grid-v1/candidate-tree/Mathematics/Oracle/Naming/RotationEquivariantSuture.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Oracle.Naming.CyclicCharacters
import Mathematics.Oracle.Naming.RotationSignal
import Mathematics.Oracle.Naming.TwistedRotationCohomology

/-!
# Rotation-equivariant naming acceptance

This certificate joins the four independently checked layers without
identifying them: a cyclic orbit witness, an all-face Banach equality, a
twisted event-cohomology witness, and exact canonical naming IR agreement.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.RotationEquivariantNamingSuture.Variantc5432e67ca43faaa1cf7f7b2ffde36c1ffe7351c170cf6cb0e41964679e48acc

namespace Mathematics.Oracle.Naming

variable {n : Nat} [NeZero n]
variable {B : Type*} [NormedAddCommGroup B] [NormedSpace ℝ B] [CompleteSpace B]

/-- Stabilizer membership for the accepted all-face signal. -/
def FaceSignalTurnStabilizes
    (turn : ZMod n) (signal : CubicalFaceSignal n B) : Prop :=
  ∀ face, signal (rotateFace turn face) = signal face

/-- Complete certificate required in addition to a base Oracle/model suture. -/
structure RotationEquivariantNamingSuture (n : Nat) (B : Type*)
    [NeZero n] [NormedAddCommGroup B] [NormedSpace ℝ B] [CompleteSpace B] where
  base : NamingSuture
  rotation : AdmissibleBanachRotation n B
  oracleSignal : CubicalFaceSignal n B
  modelSignal : CubicalFaceSignal n B
  allFacesAgree :
    allDegreeSutured rotation oracleSignal modelSignal
  degreeWeight : Nat → ℝ
  degreeWeightPositive : ∀ k, 0 < degreeWeight k
  eventChange : TwistedOneCochain n B
  eventClosed : TwistedOneCocycle eventChange
  eventExact : TwistedOneCoboundary eventChange
  cycleHolonomy : ZMod n
  cycleHolonomyInStabilizer :
    FaceSignalTurnStabilizes cycleHolonomy modelSignal

/--
The complete naming-suture theorem: one admissible global turn gives exact
all-face equality and zero quantitative residual; the event change is both
closed and exact in the twisted complex; cycle holonomy stabilizes the
accepted signal; and canonical `ElementNameIR` equality is inherited from the
closed-candidate proposal agreement.
-/
theorem rotation_equivariant_naming_suture
    (certificate : RotationEquivariantNamingSuture n B) :
    allDegreeSutured certificate.rotation
        certificate.oracleSignal certificate.modelSignal ∧
      allFaceDirichletResidual 2 certificate.degreeWeight
        certificate.rotation certificate.oracleSignal certificate.modelSignal = 0 ∧
      TwistedOneCocycle certificate.eventChange ∧
      TwistedOneCoboundary certificate.eventChange ∧
      TwistedH1.classOf certificate.eventChange certificate.eventClosed =
        TwistedH1.zero ∧
      FaceSignalTurnStabilizes certificate.cycleHolonomy
        certificate.modelSignal ∧
      certificate.base.model.value = certificate.base.oracle.value := by
  refine ⟨certificate.allFacesAgree, ?_, certificate.eventClosed,
    certificate.eventExact, ?_, certificate.cycleHolonomyInStabilizer, ?_⟩
  · exact dirichletEnergy_zero_of_allDegreeSutured
      2 (by decide) certificate.degreeWeight certificate.rotation
      certificate.oracleSignal certificate.modelSignal certificate.allFacesAgree
  · exact
      (TwistedH1.classOf_eq_zero_iff
        certificate.eventChange certificate.eventClosed).2 certificate.eventExact
  · exact certificate.base.agreement.2

end Mathematics.Oracle.Naming
