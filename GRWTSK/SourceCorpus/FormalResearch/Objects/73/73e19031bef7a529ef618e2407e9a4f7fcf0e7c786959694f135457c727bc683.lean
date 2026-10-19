/-!
# Folder.Presentation.FormalExpositionPipeline

Radiation role: presentation-boundary
BinaryMatrix spine: This module records the AST-to-exposition pipeline for generated formal prose.
Ontology: presentation.formal_exposition_pipeline
Pivot role: verification
Zero typology: none
Contract boundary: policy
Composite stack role: presentation
-/

namespace Folder
namespace Presentation

/--
The Lean AST/declaration traversal stage used before exposition is generated.

This is a presentation contract. It does not add mathematical content.
-/
structure LeanASTExpositionTraversal where
  extractsDeclarations : Prop
  extractsDeclarations_holds : extractsDeclarations
  preservesDependencyEdges : Prop
  preservesDependencyEdges_holds : preservesDependencyEdges
  recordsContractBoundaries : Prop
  recordsContractBoundaries_holds : recordsContractBoundaries
  sourceLabel : String

/--
A bounded local neighborhood around a Lean declaration/module node.

This is the unit of focused exposition: render one node together with connected
nodes up to a specified graph distance.
-/
structure FocusedASTNeighborhood where
  rootNodeLabel : String
  graphDistance : Nat
  includesConnectedNodesWithinDistance : Prop
  includesConnectedNodesWithinDistance_holds :
    includesConnectedNodesWithinDistance
  doesNotInferOutsideRadius : Prop
  doesNotInferOutsideRadius_holds : doesNotInferOutsideRadius
  sourceLabel : String

/--
A paper-tree node whose core trunk is the RH canonical path.

The referee chooses or revises which focused neighborhoods belong on the trunk.
Until then, this is a presentation scaffold, not a mathematical proof outline.
-/
structure FormalPaperTreeNode where
  nodeLabel : String
  focusedNeighborhood? : Option FocusedASTNeighborhood
  isRHCorePathCandidate : Prop
  statusLabel : String

/--
Paper-tree scaffold for generated exposition.

The trunk is the path toward RH, but the final route remains TBD by referee
review and by actual theorem construction.
-/
structure RHFormalPaperTree where
  rootTitle : String
  corePath : List FormalPaperTreeNode
  appendixNodes : List FormalPaperTreeNode
  refereeDeterminesFinalCore : Prop
  refereeDeterminesFinalCore_holds : refereeDeterminesFinalCore
  noRHClaim : Prop
  noRHClaim_holds : noRHClaim
  sourceLabel : String

/--
Referee breadth-to-depth policy for formal exposition.

The broad pass asks a referee to identify the weakest frontier in the current
large-scale architecture. The depth pass then renders only bounded graph
neighborhoods around the selected frontier nodes.
-/
structure RefereeBreadthToDepthPass where
  broadRefereePass : Prop
  broadRefereePass_holds : broadRefereePass
  selectsWeakFrontier : Prop
  selectsWeakFrontier_holds : selectsWeakFrontier
  depthPassUsesFocusedNeighborhoods : Prop
  depthPassUsesFocusedNeighborhoods_holds :
    depthPassUsesFocusedNeighborhoods
  doesNotSettleUnprovedMathematics : Prop
  doesNotSettleUnprovedMathematics_holds :
    doesNotSettleUnprovedMathematics
  sourceLabel : String

/--
Annals-style quality gates for a generated paper project.

These gates make the standards explicit. They do not assert journal acceptance;
they record the obligations a generated paper must satisfy before being treated
as publication-grade mathematics.
-/
structure AnnalsStylePaperGate where
  rigorousDependencyAudit : Prop
  rigorousDependencyAudit_holds : rigorousDependencyAudit
  novelAndSignificantContribution : Prop
  novelAndSignificantContribution_holds : novelAndSignificantContribution
  expositionQualityThreshold : Prop
  expositionQualityThreshold_holds : expositionQualityThreshold
  nonclaimBoundaryVisible : Prop
  nonclaimBoundaryVisible_holds : nonclaimBoundaryVisible
  sourceLabel : String

/--
A generated per-paper LaTeX project attached to a paper-tree node.

The paper may pass local formatting and gate-check structure while still being
research documentation rather than a proof of RH.
-/
structure FormalPaperProject where
  title : String
  rootNode : FormalPaperTreeNode
  qualityGate : AnnalsStylePaperGate
  latexProjectLabel : String
  generatedFromFocusedNeighborhood : Prop
  generatedFromFocusedNeighborhood_holds : generatedFromFocusedNeighborhood
  sourceLeanAuthoritative : Prop
  sourceLeanAuthoritative_holds : sourceLeanAuthoritative
  sourceLabel : String

/--
Automated Lean-to-notation conversion for exposition.

The converter is a documentation aid; Lean source remains authoritative.
-/
structure LeanToNotationConversion where
  generatedFromLeanSyntax : Prop
  generatedFromLeanSyntax_holds : generatedFromLeanSyntax
  requiresReviewForPublication : Prop
  requiresReviewForPublication_holds : requiresReviewForPublication
  sourceLabel : String

/--
Template filling by a local MLX model.

The model may fill `{{ templates }}` for exposition, but it is not allowed to
invent theorem dependencies or upgrade contracts into proofs.
-/
structure LocalMLXTemplateFillContract where
  modelLabel : String
  fillsTemplatesOnly : Prop
  fillsTemplatesOnly_holds : fillsTemplatesOnly
  annalsStyleTarget : Prop
  annalsStyleTarget_holds : annalsStyleTarget
  doesNotCreateProofs : Prop
  doesNotCreateProofs_holds : doesNotCreateProofs
  sourceLabel : String

/--
End-to-end formal exposition pipeline.

The intended path is:

Lean AST -> notation conversion -> strict `{{ template }}` filling -> reviewed
formal exposition.
-/
structure FormalExpositionPipeline where
  traversal : LeanASTExpositionTraversal
  notationConversion : LeanToNotationConversion
  templateFill : LocalMLXTemplateFillContract
  leanSourceAuthoritative : Prop
  leanSourceAuthoritative_holds : leanSourceAuthoritative
  noContractPromotion : Prop
  noContractPromotion_holds : noContractPromotion
  sourceLabel : String

theorem ast_traversal_preserves_dependency_edges
    (T : LeanASTExpositionTraversal) :
    T.preservesDependencyEdges :=
  T.preservesDependencyEdges_holds

theorem focused_ast_neighborhood_bounded
    (N : FocusedASTNeighborhood) :
    N.doesNotInferOutsideRadius :=
  N.doesNotInferOutsideRadius_holds

theorem paper_tree_final_core_referee_determined
    (T : RHFormalPaperTree) :
    T.refereeDeterminesFinalCore :=
  T.refereeDeterminesFinalCore_holds

theorem paper_tree_no_rh_claim
    (T : RHFormalPaperTree) :
    T.noRHClaim :=
  T.noRHClaim_holds

theorem breadth_to_depth_selects_weak_frontier
    (P : RefereeBreadthToDepthPass) :
    P.selectsWeakFrontier :=
  P.selectsWeakFrontier_holds

theorem breadth_to_depth_uses_focused_neighborhoods
    (P : RefereeBreadthToDepthPass) :
    P.depthPassUsesFocusedNeighborhoods :=
  P.depthPassUsesFocusedNeighborhoods_holds

theorem breadth_to_depth_does_not_settle_unproved_mathematics
    (P : RefereeBreadthToDepthPass) :
    P.doesNotSettleUnprovedMathematics :=
  P.doesNotSettleUnprovedMathematics_holds

theorem annals_style_gate_has_dependency_audit
    (G : AnnalsStylePaperGate) :
    G.rigorousDependencyAudit :=
  G.rigorousDependencyAudit_holds

theorem annals_style_gate_has_nonclaim_boundary
    (G : AnnalsStylePaperGate) :
    G.nonclaimBoundaryVisible :=
  G.nonclaimBoundaryVisible_holds

theorem formal_paper_project_from_focused_neighborhood
    (P : FormalPaperProject) :
    P.generatedFromFocusedNeighborhood :=
  P.generatedFromFocusedNeighborhood_holds

theorem formal_paper_project_source_lean_authoritative
    (P : FormalPaperProject) :
    P.sourceLeanAuthoritative :=
  P.sourceLeanAuthoritative_holds

theorem notation_conversion_requires_review
    (N : LeanToNotationConversion) :
    N.requiresReviewForPublication :=
  N.requiresReviewForPublication_holds

theorem mlx_template_fill_does_not_create_proofs
    (M : LocalMLXTemplateFillContract) :
    M.doesNotCreateProofs :=
  M.doesNotCreateProofs_holds

theorem formal_exposition_lean_source_authoritative
    (P : FormalExpositionPipeline) :
    P.leanSourceAuthoritative :=
  P.leanSourceAuthoritative_holds

theorem formal_exposition_no_contract_promotion
    (P : FormalExpositionPipeline) :
    P.noContractPromotion :=
  P.noContractPromotion_holds

end Presentation
end Folder
