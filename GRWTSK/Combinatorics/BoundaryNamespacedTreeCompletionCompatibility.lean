-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TreeCompletionCompatibility.Variant12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TreeCompletionCompatibility.Variant12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/BinaryFrontier/Refinement/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.BinaryFrontier.Completion.Core
import Mathematics.BinaryFrontier.Obstruction.MUS
import Mathematics.BinaryFrontier.Refinement.Tree

/-!
# First infeasible refinement boundary

This is the first layer that combines structural refinement with completion
semantics.  Boundary uniqueness is branch-relative and remains an explicit
certificate obligation.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TreeCompletionCompatibility.Variant12a6ae47ccdc251fd87c0c9d3e3679347102ac1a5a0e70a1c5ec3f0b76385967

namespace Mathematics.BinaryFrontier.Refinement

open Mathematics.BinaryFrontier
open Mathematics.BinaryFrontier.Completion

universe uNode uFull uConstraint

structure TreeCompletionCompatibility
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    (tree :
      BinaryRefinementTree Node width)
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics
        (PartialBitfield width)
        Full Constraint) where
  edge_refines :
    ∀ {parentNode childNode},
      tree.parent childNode = some parentNode →
      semantics.refines
        (tree.state parentNode)
        (tree.state childNode)

structure FirstInfeasibleBoundary
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    (tree :
      BinaryRefinementTree Node width)
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    (semantics :
      Semantics
        (PartialBitfield width)
        Full Constraint)
    (constraints : Finset Constraint)
    (node : Node) where
  infeasible :
    semantics.Infeasible
      constraints (tree.state node)
  root_or_parent_feasible :
    node = tree.root ∨
      ∃ parentNode,
        tree.parent node = some parentNode ∧
        semantics.Feasible
          constraints
          (tree.state parentNode)

structure RootedBranch
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    (tree :
      BinaryRefinementTree Node width) where
  nodes : List Node
  nonempty : nodes ≠ []
  nodup : nodes.Nodup
  startsAtRoot :
    nodes.head? = some tree.root
  parentAdjacent :
    nodes.Chain'
      (fun parentNode childNode =>
        tree.parent childNode =
          some parentNode)

structure FailedBranchBoundaryCertificate
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics
        (PartialBitfield width)
        Full Constraint}
    {constraints : Finset Constraint}
    (branch : RootedBranch tree) where
  boundaryNode : Node
  boundaryMember :
    boundaryNode ∈ branch.nodes
  boundary :
    FirstInfeasibleBoundary
      tree semantics constraints boundaryNode
  uniqueOnBranch :
    ∀ candidate,
      candidate ∈ branch.nodes →
      FirstInfeasibleBoundary
        tree semantics constraints candidate →
      candidate = boundaryNode

theorem failed_branch_has_first_infeasible
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics
        (PartialBitfield width)
        Full Constraint}
    {constraints : Finset Constraint}
    {branch : RootedBranch tree}
    (certificate :
      FailedBranchBoundaryCertificate branch) :
    ∃ node ∈ branch.nodes,
      FirstInfeasibleBoundary
        tree semantics constraints node :=
  ⟨certificate.boundaryNode,
    certificate.boundaryMember,
    certificate.boundary⟩

theorem first_infeasible_unique_on_branch
    {Node : Type uNode}
    [Fintype Node]
    [DecidableEq Node]
    {width : Nat}
    {tree :
      BinaryRefinementTree Node width}
    {Full : Type uFull}
    {Constraint : Type uConstraint}
    {semantics :
      Semantics
        (PartialBitfield width)
        Full Constraint}
    {constraints : Finset Constraint}
    {branch : RootedBranch tree}
    (certificate :
      FailedBranchBoundaryCertificate branch)
    {candidate : Node}
    (candidateMember :
      candidate ∈ branch.nodes)
    (candidateBoundary :
      FirstInfeasibleBoundary
        tree semantics constraints candidate) :
    candidate = certificate.boundaryNode :=
  certificate.uniqueOnBranch
    candidate candidateMember candidateBoundary

end Mathematics.BinaryFrontier.Refinement
