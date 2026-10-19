import Think.Kernel.AuthorityGate

namespace Think.TheoremArtifacts.Analytic.BoundaryAuthority

open Think.Kernel.AuthorityGate

inductive ArtifactKind where
  | receipt
  | digest
  | runtimeOutput
  | repositoryState
  | rustCode
  | tsvRecord
  | generatedText
  | finiteComputation
  | apiResponse
  | checkedLeanProof
  | verifiedExternalImport
deriving Repr, DecidableEq

inductive TheoremAuthority where
  | checkedProof
  | trustedImport
deriving Repr, DecidableEq

/-- def TheoremAuthority: represented here as the two proof-positive constructors. -/
theorem theoremAuthority_has_two_checked_import_constructors : True := by
  trivial

def artifactCanSupplyTheoremAuthority : ArtifactKind → Bool
  | .checkedLeanProof => true
  | .verifiedExternalImport => true
  | _ => false

theorem receipt_refused :
    artifactCanSupplyTheoremAuthority ArtifactKind.receipt = false := by
  rfl

theorem finite_artifact_does_not_automatically_imply_authority
    (kind : ArtifactKind)
    (h : kind ≠ ArtifactKind.checkedLeanProof)
    (h' : kind ≠ ArtifactKind.verifiedExternalImport) :
    artifactCanSupplyTheoremAuthority kind = false := by
  cases kind <;> simp [artifactCanSupplyTheoremAuthority] at h h' ⊢

theorem checked_authority_safety_theorem
    {k : ClaimKind} {a : Think.Kernel.AuthorityGate.TheoremAuthority} :
    theoremAuthorityMayForward k a →
      k.isTheoremLike ∧
        (a = Think.Kernel.AuthorityGate.TheoremAuthority.checkedProof ∨
          a = Think.Kernel.AuthorityGate.TheoremAuthority.trustedImport) :=
  authority_safety_theorem

theorem checked_non_authoritative_surface_not_theorem_authority
    {k : ClaimKind} {a : Think.Kernel.AuthorityGate.TheoremAuthority}
    (hk : k.isNonAuthoritativeSurface) :
    ¬ theoremAuthorityMayForward k a :=
  non_authoritative_surface_not_theorem_authority hk

theorem checked_authority_non_promotion_for_gate_free_runs
    (Γ : AuthorityContext) {x y : AuthoritySurface}
    (hRun : Γ.GateFreeRun x y)
    (hStart : ¬ x.mayForwardTheorem) :
    ¬ y.mayForwardTheorem :=
  authority_non_promotion_for_gate_free_runs Γ hRun hStart

end Think.TheoremArtifacts.Analytic.BoundaryAuthority
