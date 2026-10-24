# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Trust.Variant5511cf42886bb3a9f0cd3f9f3847f1bfb7ff0ce8774fc971d89b8d1ab1bace51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2ed7036abf383125bdefb8bd323a5cc7b384d22e` · SHA-256 `5511cf42886bb3a9f0cd3f9f3847f1bfb7ff0ce8774fc971d89b8d1ab1bace51`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Data.Finset.Basic

/-!
# Local replay and temporary interfaces

Provenance survives loss of an interface. Successful local descent requires local
checker acceptance and no live external dependency. Four phases encode only
control flow; their algebra never proves the object proposition being researched.
-/

namespace FormalResearch.SUCAS

/-- Live external premises and immutable historical provenance use different fields. -/
abbrev DependencySet := Finset String

/-- Historical source identities do not imply live logical dependencies. -/
abbrev ProvenanceSet := Finset String

/-- An external observation records a fact about an interface, not a local theorem. -/
structure ExternalObservation where
  /-- Interface identity. -/
  interfaceIdentity : String
  /-- Source and historical context. -/
  provenance : ProvenanceSet
  /-- Exact untrusted observation payload. -/
  payload : String
  deriving DecidableEq

/-- A remote checker result remains a candidate in the receiving jurisdiction. -/
structure ExternalCertificateCandidate where
  /-- Exact target identity that the candidate purports to establish. -/
  targetIdentity : String
  /-- Untrusted serialized candidate. -/
  payload : String
  /-- Historical interface evidence. -/
  provenance : ProvenanceSet
  /-- Premises still requiring an external interface. -/
  liveDependencies : DependencySet
  deriving DecidableEq

/-- Translation carries an exact local candidate, never a proof from a remote success bit. -/
structure CertificateTranslation (Certificate : Type*) where
  /-- Untrusted original candidate. -/
  externalCandidate : ExternalCertificateCandidate
  /-- Target identity understood by the receiving checker. -/
  localTargetIdentity : String
  /-- Local certificate proposed for independent checking. -/
  certificate : Certificate
  /-- Exact source-target correspondence is required separately. -/
  targetPreserved : localTargetIdentity = externalCandidate.targetIdentity
  /-- Remaining live premises after translation. -/
  liveDependencies : DependencySet
  /-- Preserved history, regardless of whether dependencies have disappeared. -/
  provenance : ProvenanceSet

/-- A receiving jurisdiction owns its predicate and proves its own checker sound. -/
structure LocalJurisdiction (Certificate : Type*) where
  /-- Immutable target identity of this checker. -/
  targetIdentity : String
  /-- Object-level meaning checked locally. -/
  statement : Prop
  /-- Exact local checking function. -/
  accepts : Certificate → Bool
  /-- Soundness is a Lean proof, not runtime metadata or a phase flag. -/
  sound : ∀ certificate, accepts certificate = true → statement

/-- An operational local replay result retains certificate, dependencies, and provenance. -/
structure LocalReplayResult (Certificate : Type*) where
  /-- Source-target binding and concrete translated input. -/
  translation : CertificateTranslation Certificate
  /-- Actual checker observation, subsequently compared against the local function. -/
  checkerAccepted : Bool

/-- Successful descent requires actual local acceptance, exact scope, and no live interface. -/
def SuccessfulDescent {Certificate : Type*} (jurisdiction : LocalJurisdiction Certificate)
    (result : LocalReplayResult Certificate) : Prop :=
  result.translation.localTargetIdentity = jurisdiction.targetIdentity ∧
    result.checkerAccepted = jurisdiction.accepts result.translation.certificate ∧
    result.checkerAccepted = true ∧ result.translation.liveDependencies = ∅

/-- The only object statement produced here comes from a locally sound checking function. -/
theorem successfulDescent_statement {Certificate : Type*}
    (jurisdiction : LocalJurisdiction Certificate) (result : LocalReplayResult Certificate)
    (success : SuccessfulDescent jurisdiction result) : jurisdiction.statement := by
  apply jurisdiction.sound result.translation.certificate
  exact success.2.1.symm.trans success.2.2.1

/-- No nonempty live dependency set survives successful descent. -/
theorem successfulDescent_no_live_dependencies {Certificate : Type*}
    (jurisdiction : LocalJurisdiction Certificate) (result : LocalReplayResult Certificate)
    (success : SuccessfulDescent jurisdiction result) :
    result.translation.liveDependencies = ∅ :=
  success.2.2.2

/-- A local rejection cannot be repaired by a remote success flag or provenance record. -/
theorem local_rejection_blocks_descent {Certificate : Type*}
    (jurisdiction : LocalJurisdiction Certificate) (result : LocalReplayResult Certificate)
    (rejected : jurisdiction.accepts result.translation.certificate = false) :
    ¬SuccessfulDescent jurisdiction result := by
  intro success
  have accepted := success.2.1.symm.trans success.2.2.1
  rw [rejected] at accepted
  cases accepted

/-- Retaining a live interface blocks descent even when the checker accepted a candidate. -/
theorem live_dependency_blocks_descent {Certificate : Type*}
    (jurisdiction : LocalJurisdiction Certificate) (result : LocalReplayResult Certificate)
    (live : result.translation.liveDependencies ≠ ∅) :
    ¬SuccessfulDescent jurisdiction result :=
  fun success => live success.2.2.2

/-- Empty live dependencies and nonempty provenance can coexist without any contradiction. -/
theorem vanished_dependency_can_retain_provenance (source : String) :
    ∃ (dependencies : DependencySet) (provenance : ProvenanceSet),
      dependencies = ∅ ∧ source ∈ provenance :=
  ⟨∅, {source}, rfl, Finset.mem_singleton_self source⟩

/-- Four phases name strategy control states only. -/
inductive TrustPhase where
  /-- The currently certified local unresolved frontier. -/
  | frontier
  /-- A selected obligation/intuitive attempt. -/
  | selection
  /-- Exposure to a covering interface or candidate external decision. -/
  | exposure
  /-- A local descent attempt awaiting an independent checker. -/
  | descent
  deriving DecidableEq

/-- A quarter turn in strategy control flow; it carries no proof constructor. -/
def TrustPhase.next : TrustPhase → TrustPhase
  | .frontier => .selection
  | .selection => .exposure
  | .exposure => .descent
  | .descent => .frontier

/-- Four quarter turns close the algebraic strategy cycle. -/
theorem TrustPhase.four_turns (phase : TrustPhase) :
    phase.next.next.next.next = phase := by
  cases phase <;> rfl

/-- The half-turn is an involution on control states. -/
theorem TrustPhase.half_turn_involutive :
    Function.Involutive (fun phase : TrustPhase => phase.next.next) := by
  intro phase
  exact phase.four_turns

/-- Algebraic closure cannot certify an arbitrary proposition. -/
theorem trust_phase_closure_does_not_imply_truth :
    ¬(∀ proposition : Prop, ∀ phase : TrustPhase,
      phase.next.next.next.next = phase → proposition) := by
  intro h
  exact h False .frontier (TrustPhase.four_turns .frontier)

end FormalResearch.SUCAS
```
