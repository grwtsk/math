import Presentation.CanvasProjection

/-!
# Prismatic reasoning-surface governance

This module records the application-level contracts for a shared
Presentation-indexed reasoning surface, finite local-to-global proof assembly,
and semantic transport around compatible closed cycles.

The theorems are structural certificate theorems.  They do not prove a user's
mathematical conjecture, turn finite evidence into theorem authority, or let a
rendered interface create authority.  A certificate must carry the relevant
proofs, gluing operation, and flatness witness explicitly.
-/

namespace Presentation

/--
Certificate for the governance invariants of the human-machine reasoning
surface.  The Presentation index and canvas stream anchor the contract to the
same finite projection substrate used by the application.
-/
structure PrismaticReasoningSurfaceCertificate where
  presentationIndex : SpectralProjectionPresentationIndex
  canvasStream : CanvasProjectionStream
  sharedPresentationIdentityProof :
    canvasStream.presentationIndex = presentationIndex
  viewsPreserveSelection : Prop
  viewsPreserveSelectionProof : viewsPreserveSelection
  everyQuestionAnchoredToASet : Prop
  everyQuestionAnchoredToASetProof : everyQuestionAnchoredToASet
  everyReasoningActTraceable : Prop
  everyReasoningActTraceableProof : everyReasoningActTraceable
  gptCandidatesRemainProposals : Prop
  gptCandidatesRemainProposalsProof : gptCandidatesRemainProposals
  counterexamplesRemainVisible : Prop
  counterexamplesRemainVisibleProof : counterexamplesRemainVisible
  leanAcceptedClaimsCarryProof : Prop
  leanAcceptedClaimsProof : leanAcceptedClaimsCarryProof
  reducerMutationsAreWitnessed : Prop
  reducerMutationsAreWitnessedProof : reducerMutationsAreWitnessed
  authorityBoundaryPreserved : Prop
  authorityBoundaryPreservedProof : authorityBoundaryPreserved
  lossRecordsExplicit : Prop
  lossRecordsExplicitProof : lossRecordsExplicit
  noInterfaceElementCreatesAuthority : Prop
  noInterfaceElementCreatesAuthorityProof : noInterfaceElementCreatesAuthority

/-- The canvas stream and the surface carry exactly the same Presentation index. -/
def PrismaticReasoningSurfaceCertificate.sharedPresentationIdentity
    (C : PrismaticReasoningSurfaceCertificate) : Prop :=
  C.canvasStream.presentationIndex = C.presentationIndex

/--
The reasoning surface preserves identity, selection, provenance, proof status,
witness history, loss records, and the authority firewall when its explicit
certificate supplies each governance invariant.
-/
theorem prismatic_human_machine_reasoning_surface_sound
    (C : PrismaticReasoningSurfaceCertificate) :
    C.sharedPresentationIdentity ∧
    C.viewsPreserveSelection ∧
    C.everyQuestionAnchoredToASet ∧
    C.everyReasoningActTraceable ∧
    C.gptCandidatesRemainProposals ∧
    C.counterexamplesRemainVisible ∧
    C.leanAcceptedClaimsCarryProof ∧
    C.reducerMutationsAreWitnessed ∧
    C.authorityBoundaryPreserved ∧
    C.lossRecordsExplicit ∧
    C.noInterfaceElementCreatesAuthority := by
  exact
    ⟨C.sharedPresentationIdentityProof,
     C.viewsPreserveSelectionProof,
     C.everyQuestionAnchoredToASetProof,
     C.everyReasoningActTraceableProof,
     C.gptCandidatesRemainProposalsProof,
     C.counterexamplesRemainVisibleProof,
     C.leanAcceptedClaimsProof,
     C.reducerMutationsAreWitnessedProof,
     C.authorityBoundaryPreservedProof,
     C.lossRecordsExplicitProof,
     C.noInterfaceElementCreatesAuthorityProof⟩

universe u v w

/--
Finite proof-sheaf certificate over an explicit finite list of patches.
`glue` is constructive: compatible proved local sections produce a global
section rather than merely setting a Boolean or status field.
-/
structure FiniteProofSheafCertificate where
  Patch : Type u
  LocalSection : Patch → Type v
  GlobalSection : Type w
  patches : List Patch
  coversSelection : Prop
  everyLocalSectionProved : Prop
  sectionsAgreeOnOverlaps : Prop
  glue :
    coversSelection →
      everyLocalSectionProved →
      sectionsAgreeOnOverlaps →
      GlobalSection

/-- A global proof section exists exactly when its type is inhabited. -/
def FiniteProofSheafCertificate.globalSectionExists
    (C : FiniteProofSheafCertificate) : Prop :=
  Nonempty C.GlobalSection

/-- Proved compatible local sections glue to an actual global section. -/
theorem compatible_local_proof_sections_glue
    (C : FiniteProofSheafCertificate)
    (hCover : C.coversSelection)
    (hLocal : C.everyLocalSectionProved)
    (hOverlap : C.sectionsAgreeOnOverlaps) :
    C.globalSectionExists := by
  exact ⟨C.glue hCover hLocal hOverlap⟩

/--
Certificate for semantic transport.  A cycle enters `ClosedReasoningCycle`
only with a proof that it is both closed and compatible; flatness is supplied
as an explicit witness under chart-and-theorem compatibility.
-/
structure SemanticConnectionCertificate where
  Fiber : Type u
  Cycle : Type v
  rawHolonomy : Cycle → Fiber → Fiber
  cycleClosedAndCompatible : Cycle → Prop
  chartAndTheoremTransportCompatible : Prop
  flatnessWitness :
    chartAndTheoremTransportCompatible →
      ∀ γ, cycleClosedAndCompatible γ → rawHolonomy γ = id

/-- A reasoning cycle paired with its closedness and compatibility witness. -/
def ClosedReasoningCycle
    (C : SemanticConnectionCertificate.{u, v}) : Type v :=
  { γ : C.Cycle // C.cycleClosedAndCompatible γ }

/-- Holonomy restricted to witnessed compatible closed cycles. -/
def SemanticConnectionCertificate.holonomy
    (C : SemanticConnectionCertificate.{u, v})
    (γ : ClosedReasoningCycle C) : C.Fiber → C.Fiber :=
  C.rawHolonomy γ.1

/-- The semantic identity transport is the actual identity function. -/
def SemanticConnectionCertificate.identityTransport
    (C : SemanticConnectionCertificate.{u, v}) : C.Fiber → C.Fiber :=
  id

/-- Compatible chart-and-theorem transport has trivial semantic holonomy. -/
theorem semantic_transport_flat_on_compatible_cycles
    (C : SemanticConnectionCertificate.{u, v})
    (hCompatible : C.chartAndTheoremTransportCompatible)
    (γ : ClosedReasoningCycle C) :
    C.holonomy γ = C.identityTransport := by
  simpa [SemanticConnectionCertificate.holonomy,
    SemanticConnectionCertificate.identityTransport] using
    C.flatnessWitness hCompatible γ.1 γ.2

end Presentation
