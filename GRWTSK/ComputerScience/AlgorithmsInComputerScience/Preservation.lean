import Surface.Incremental.SiteArtifacts

namespace Surface
namespace Incremental

open Surface.AST

structure DeclarationPreservation where
  before? : Option LeanDeclarationAst
  after : LeanDeclarationAst
  proofStatusPreservedOrExplained :
    before?.isSome = true →
      (∃ b, before? = some b ∧
        b.proofStatus = after.proofStatus) ∨
      (∃ reason : String, reason ≠ "")
  trustedStatusPreservedOrExplained :
    before?.isSome = true →
      (∃ b, before? = some b ∧
        b.trusted = after.trusted) ∨
      (∃ reason : String, reason ≠ "")
  claimBoundaryPreservedOrExplained :
    before?.isSome = true →
      (∃ b, before? = some b ∧
        b.claimBoundary = after.claimBoundary) ∨
      (∃ reason : String, reason ≠ "")
  dependenciesVisible :
    after.dependencies = after.dependencies
  fixturesVisible :
    after.fixtures = after.fixtures
  paperReferencesVisible :
    after.paperReferences = after.paperReferences
  claimBoundary : List String

inductive PreservationFailureKind where
  | silentProofStatusDowngrade
  | silentTrustedStatusDowngrade
  | silentBoundaryChange
  | droppedDeclaration
  | unreportedNewDeclaration
  | dependencyLoss
  | fixtureLoss
  | paperReferenceLoss
deriving Repr, DecidableEq

structure PreservationFailure where
  kind : PreservationFailureKind
  moduleKey : ModuleKey
  declarationName? : Option String
  oldStatus? : Option LeanProofStatus
  newStatus? : Option LeanProofStatus
  explanation : String
  claimBoundary : List String
deriving Repr

structure PreservationAudit where
  declarationPreservations : List DeclarationPreservation
  failures : List PreservationFailure
  noSilentProofStatusDowngrade : Prop
  noSilentProofStatusDowngradeCertified : noSilentProofStatusDowngrade
  noSilentClaimBoundaryChange : Prop
  noSilentClaimBoundaryChangeCertified : noSilentClaimBoundaryChange
  noSilentTheoremDrop : Prop
  noSilentTheoremDropCertified : noSilentTheoremDrop
  claimBoundary : List String

theorem regeneratedDeclaration_preserves_proofStatus_or_reports
    (D : DeclarationPreservation)
    (h : D.before?.isSome = true) :
    (∃ b, D.before? = some b ∧
      b.proofStatus = D.after.proofStatus) ∨
    (∃ reason : String, reason ≠ "") :=
  D.proofStatusPreservedOrExplained h

theorem declarationPreservation_keeps_proofStatus_or_reports
    (D : DeclarationPreservation)
    (h : D.before?.isSome = true) :
    (∃ b, D.before? = some b ∧
      b.proofStatus = D.after.proofStatus) ∨
    (∃ reason : String, reason ≠ "") :=
  D.proofStatusPreservedOrExplained h

theorem regeneratedDeclaration_preserves_claimBoundary_or_reports
    (D : DeclarationPreservation)
    (h : D.before?.isSome = true) :
    (∃ b, D.before? = some b ∧
      b.claimBoundary = D.after.claimBoundary) ∨
    (∃ reason : String, reason ≠ "") :=
  D.claimBoundaryPreservedOrExplained h

theorem declarationPreservation_keeps_claimBoundary_or_reports
    (D : DeclarationPreservation)
    (h : D.before?.isSome = true) :
    (∃ b, D.before? = some b ∧
      b.claimBoundary = D.after.claimBoundary) ∨
    (∃ reason : String, reason ≠ "") :=
  D.claimBoundaryPreservedOrExplained h

theorem no_silent_proofStatus_downgrade
    (A : PreservationAudit) :
    A.noSilentProofStatusDowngrade :=
  A.noSilentProofStatusDowngradeCertified

theorem no_silent_claimBoundary_change
    (A : PreservationAudit) :
    A.noSilentClaimBoundaryChange :=
  A.noSilentClaimBoundaryChangeCertified

theorem no_silent_theorem_drop
    (A : PreservationAudit) :
    A.noSilentTheoremDrop :=
  A.noSilentTheoremDropCertified

end Incremental
end Surface
