-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NsContinuationMapsExistIfSupplied.Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.Algorithms.SourceCorpus.NsContinuationMapsExistIfSupplied.Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6","mathematical_subject":"Computation.Algorithms","original_sha256":"416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/Theorem/GrandChallenge/NavierStokes.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.GrandChallenge.NavierStokes.SmoothContinuation
import Folder.GrandChallenge.NavierStokes.NonBlowupObstruction
import Folder.GrandChallenge.NavierStokes.TaoSorting

/-!
# Folder.Theorem.GrandChallenge.NavierStokes

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports Navier-Stokes branch contract facts.
Ontology: proof.grand_challenge_navier_stokes
Pivot role: flow
Zero typology: blowup-obstruction
Contract boundary: theorem-wrapper
Composite stack role: grand-challenge
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.NsContinuationMapsExistIfSupplied.Variant416ea96f9367e667516ffaa8c28103285a5726c8fbdc24b839fc01c895612ed6

namespace Folder
namespace Theorem
namespace GrandChallenge

theorem ns_continuation_maps_exist_if_supplied
    (S : Folder.GrandChallenge.NavierStokes.SmoothContinuation) :
    S.continuationMapsExist :=
  Folder.GrandChallenge.NavierStokes.ns_continuation_maps_exist_if_supplied S

theorem ns_preserves_true_nonlinearity_if_supplied
    (S : Folder.GrandChallenge.NavierStokes.SmoothContinuation) :
    S.preservesTrueNavierStokesNonlinearity :=
  Folder.GrandChallenge.NavierStokes.ns_preserves_true_nonlinearity_if_supplied S

theorem ns_blowup_obstruction_if_supplied
    (O : Folder.GrandChallenge.NavierStokes.NonBlowupObstruction) :
    O.obstructionNonzeroIfBlowup :=
  Folder.GrandChallenge.NavierStokes.ns_blowup_obstruction_if_supplied O

theorem critical_norm_bounded_if_supplied
    (C : Folder.GrandChallenge.NavierStokes.CriticalControlCertificate) :
    C.criticalNormBounded :=
  Folder.GrandChallenge.NavierStokes.critical_norm_bounded_if_supplied C

theorem critical_control_preserves_true_nonlinearity_if_supplied
    (C : Folder.GrandChallenge.NavierStokes.CriticalControlCertificate) :
    C.preservesTrueNonlinearity :=
  Folder.GrandChallenge.NavierStokes.critical_control_preserves_true_nonlinearity_if_supplied
    C

theorem quantitative_regularity_control_if_supplied
    (C : Folder.GrandChallenge.NavierStokes.CriticalControlCertificate) :
    C.quantitativeRegularityControl :=
  Folder.GrandChallenge.NavierStokes.quantitative_regularity_control_if_supplied C

theorem averaged_blowup_warning_if_supplied
    (W : Folder.GrandChallenge.NavierStokes.AveragedBlowupWarning) :
    W.energyCancellationAloneInsufficient :=
  Folder.GrandChallenge.NavierStokes.averaged_blowup_warning_if_supplied W

theorem tao_sorting_if_supplied
    (T : Folder.GrandChallenge.NavierStokes.TaoSortingContract)
    (h1 : T.criticalControl.criticalNormBounded)
    (h2 : T.criticalControl.preservesTrueNonlinearity)
    (h3 : T.criticalControl.quantitativeRegularityControl) :
    Folder.GrandChallenge.NavierStokes.NonGlitchStream T.frame :=
  Folder.GrandChallenge.NavierStokes.tao_sorting_if_supplied T h1 h2 h3

theorem tao_gap_charts_glitch_candidate_if_supplied
    (T : Folder.GrandChallenge.NavierStokes.TaoSortingContract)
    (hgap :
      Folder.GrandChallenge.NavierStokes.CriticalControlGap
        T.criticalControl) :
    Folder.GrandChallenge.NavierStokes.GlitchCandidate T.frame :=
  Folder.GrandChallenge.NavierStokes.tao_gap_charts_glitch_candidate_if_supplied
    T hgap

end GrandChallenge
end Theorem
end Folder
