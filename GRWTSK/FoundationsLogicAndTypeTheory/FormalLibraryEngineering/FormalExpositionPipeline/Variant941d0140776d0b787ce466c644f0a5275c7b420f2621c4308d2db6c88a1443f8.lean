import Folder.Presentation.FormalExpositionPipeline

/-!
# Folder.Theorem.Presentation.FormalExpositionPipeline

Radiation role: theorem-wrapper
BinaryMatrix spine: This module re-exports formal exposition pipeline safety gates.
Ontology: proof.presentation.formal_exposition_pipeline
Pivot role: verification
Zero typology: none
Contract boundary: theorem-wrapper
Composite stack role: presentation
-/

namespace Folder
namespace Theorem
namespace Presentation
namespace FormalExpositionPipeline

theorem ast_traversal_preserves_dependency_edges
    (T : Folder.Presentation.LeanASTExpositionTraversal) :
    T.preservesDependencyEdges :=
  Folder.Presentation.ast_traversal_preserves_dependency_edges T

theorem focused_ast_neighborhood_bounded
    (N : Folder.Presentation.FocusedASTNeighborhood) :
    N.doesNotInferOutsideRadius :=
  Folder.Presentation.focused_ast_neighborhood_bounded N

theorem paper_tree_final_core_referee_determined
    (T : Folder.Presentation.RHFormalPaperTree) :
    T.refereeDeterminesFinalCore :=
  Folder.Presentation.paper_tree_final_core_referee_determined T

theorem paper_tree_no_rh_claim
    (T : Folder.Presentation.RHFormalPaperTree) :
    T.noRHClaim :=
  Folder.Presentation.paper_tree_no_rh_claim T

theorem breadth_to_depth_selects_weak_frontier
    (P : Folder.Presentation.RefereeBreadthToDepthPass) :
    P.selectsWeakFrontier :=
  Folder.Presentation.breadth_to_depth_selects_weak_frontier P

theorem breadth_to_depth_uses_focused_neighborhoods
    (P : Folder.Presentation.RefereeBreadthToDepthPass) :
    P.depthPassUsesFocusedNeighborhoods :=
  Folder.Presentation.breadth_to_depth_uses_focused_neighborhoods P

theorem breadth_to_depth_does_not_settle_unproved_mathematics
    (P : Folder.Presentation.RefereeBreadthToDepthPass) :
    P.doesNotSettleUnprovedMathematics :=
  Folder.Presentation.breadth_to_depth_does_not_settle_unproved_mathematics P

theorem annals_style_gate_has_dependency_audit
    (G : Folder.Presentation.AnnalsStylePaperGate) :
    G.rigorousDependencyAudit :=
  Folder.Presentation.annals_style_gate_has_dependency_audit G

theorem annals_style_gate_has_nonclaim_boundary
    (G : Folder.Presentation.AnnalsStylePaperGate) :
    G.nonclaimBoundaryVisible :=
  Folder.Presentation.annals_style_gate_has_nonclaim_boundary G

theorem formal_paper_project_from_focused_neighborhood
    (P : Folder.Presentation.FormalPaperProject) :
    P.generatedFromFocusedNeighborhood :=
  Folder.Presentation.formal_paper_project_from_focused_neighborhood P

theorem formal_paper_project_source_lean_authoritative
    (P : Folder.Presentation.FormalPaperProject) :
    P.sourceLeanAuthoritative :=
  Folder.Presentation.formal_paper_project_source_lean_authoritative P

theorem notation_conversion_requires_review
    (N : Folder.Presentation.LeanToNotationConversion) :
    N.requiresReviewForPublication :=
  Folder.Presentation.notation_conversion_requires_review N

theorem mlx_template_fill_does_not_create_proofs
    (M : Folder.Presentation.LocalMLXTemplateFillContract) :
    M.doesNotCreateProofs :=
  Folder.Presentation.mlx_template_fill_does_not_create_proofs M

theorem formal_exposition_lean_source_authoritative
    (P : Folder.Presentation.FormalExpositionPipeline) :
    P.leanSourceAuthoritative :=
  Folder.Presentation.formal_exposition_lean_source_authoritative P

theorem formal_exposition_no_contract_promotion
    (P : Folder.Presentation.FormalExpositionPipeline) :
    P.noContractPromotion :=
  Folder.Presentation.formal_exposition_no_contract_promotion P

end FormalExpositionPipeline
end Presentation
end Theorem
end Folder
