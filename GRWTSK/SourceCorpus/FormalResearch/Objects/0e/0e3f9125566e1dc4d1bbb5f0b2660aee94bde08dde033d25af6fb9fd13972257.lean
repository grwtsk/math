/-!
# Compile-time AST labeling certificates

Generated labels and rename plans are deterministic metadata only.  They do not
create theorem authority and they are externalized from source mutation.
-/

namespace Presentation
namespace AstLabeling

structure AstLabelingCertificate where
  deterministicLabels : Prop
  deterministicLabelsProof : deterministicLabels
  declarationIdentityPreserved : Prop
  declarationIdentityProof : declarationIdentityPreserved
  namespaceBoundaryPreserved : Prop
  namespaceBoundaryProof : namespaceBoundaryPreserved
  renamePlanExternalized : Prop
  renamePlanExternalizedProof : renamePlanExternalized
  noTheoremAuthorityCreated : Prop
  noAuthorityCreatedProof : noTheoremAuthorityCreated

theorem compile_time_ast_labeling_sound
    (L : AstLabelingCertificate) :
    L.deterministicLabels ∧
    L.declarationIdentityPreserved ∧
    L.namespaceBoundaryPreserved ∧
    L.renamePlanExternalized ∧
    L.noTheoremAuthorityCreated :=
  by
    exact
      ⟨L.deterministicLabelsProof,
       L.declarationIdentityProof,
       L.namespaceBoundaryProof,
       L.renamePlanExternalizedProof,
       L.noAuthorityCreatedProof⟩

def GeneratedRenamePlanCreatesTheoremAuthority (_L : AstLabelingCertificate) : Prop :=
  False

theorem generated_rename_plan_not_theorem_authority
    (L : AstLabelingCertificate) :
    ¬ GeneratedRenamePlanCreatesTheoremAuthority L := by
  intro h
  exact h

/--
Finite metadata for deterministic theorem skeleton generation.  An unproved
skeleton is scaffold syntax only; it is not a checked Lean proof term.
-/
structure GeneratedTheoremSkeletonBatch where
  batchHash : Nat
  generatedNameCount : Nat
  unresolvedObligationCount : Nat
  deterministic : Prop
  deterministicProof : deterministic
  namesPreserveIdentity : Prop
  namesPreserveIdentityProof : namesPreserveIdentity
  unprovedSkeletonsOwnNoAuthority : Prop
  noAuthorityProof : unprovedSkeletonsOwnNoAuthority

def GeneratedTheoremSkeletonOwnsProof
    (_G : GeneratedTheoremSkeletonBatch) : Prop :=
  False

/-- Generated theorem skeletons remain scaffold metadata until Lean checks real proofs. -/
theorem generated_theorem_skeletons_not_authority
    (G : GeneratedTheoremSkeletonBatch) :
    G.deterministic ∧
    G.namesPreserveIdentity ∧
    G.unprovedSkeletonsOwnNoAuthority := by
  exact
    ⟨G.deterministicProof,
     G.namesPreserveIdentityProof,
     G.noAuthorityProof⟩

theorem generated_theorem_skeleton_owns_no_proof
    (G : GeneratedTheoremSkeletonBatch) :
    ¬ GeneratedTheoremSkeletonOwnsProof G := by
  intro h
  exact h

end AstLabeling
end Presentation
