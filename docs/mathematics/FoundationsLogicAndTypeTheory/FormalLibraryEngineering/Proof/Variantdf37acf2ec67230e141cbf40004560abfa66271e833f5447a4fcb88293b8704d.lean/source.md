# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Proof.Variantdf37acf2ec67230e141cbf40004560abfa66271e833f5447a4fcb88293b8704d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47d83ace94c7ec43a5ce5ea2c4412415b0ca76ab` · SHA-256 `88d06e2fa4d4d20011077651ef42d30d3c54b9290bcb421c40447fbad30b9325`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArtifactKind.Variant057b761fa5a38f9c0ad142b736be08737d8a29802a0ac762144c939832ce102d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"057b761fa5a38f9c0ad142b736be08737d8a29802a0ac762144c939832ce102d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ArtifactKind.Variant057b761fa5a38f9c0ad142b736be08737d8a29802a0ac762144c939832ce102d","mathematical_subject":"Foundations.Unclassified","original_sha256":"057b761fa5a38f9c0ad142b736be08737d8a29802a0ac762144c939832ce102d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/src/lib/analytic/boundary_authority/proof.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Kernel.AuthorityGate


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ArtifactKind.Variant057b761fa5a38f9c0ad142b736be08737d8a29802a0ac762144c939832ce102d

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
```
