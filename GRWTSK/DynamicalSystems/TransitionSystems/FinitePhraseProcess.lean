/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Finset.Basic
import Mathlib.Data.Set.Basic
import Lean.Elab.Tactic.Omega
import Mathlib.Tactic.NormNum

/-!
# Finite phrase processes

This module formalizes the finite mathematics used by the phrase-process pilot:
a weighted transition system with a decreasing natural-valued potential, the
unique gluing law for function-valued local sections, an exact finite codec, a
certificate-relative reconstruction, and a non-identity correction that
preserves the declared frame-and-role observations while changing its recorded
proposition.

Concrete Unicode segmentation remains an owner-side computation. The natural
symbol costs below are inputs to this formal model, not a claim that Lean has
reimplemented UAX #29. The model carries no publication, execution, or editing
authority.

Human mathematical direction: grwtsk contributors.
Formal implementation: OpenAI Codex.
-/

namespace GRWTSK.FinitePhraseProcess

/-! ## Weighted paths and the stopping certificate -/

structure WeightedEdge (Q : Type*) where
  source : Q
  target : Q
  cost : ℕ
deriving DecidableEq, Repr

inductive Path {Q E : Type*} (edge : E → WeightedEdge Q) : Q → Q → ℕ → Prop where
  | nil (q : Q) : Path edge q q 0
  | cons (e : E) {terminal cost}
      (tail : Path edge (edge e).target terminal cost) :
      Path edge (edge e).source terminal ((edge e).cost + cost)

theorem Path.cost_add_potential_le {Q E : Type*} {edge : E → WeightedEdge Q}
    (potential : Q → ℕ)
    (decreases : ∀ e, (edge e).cost + potential (edge e).target ≤
      potential (edge e).source) :
    ∀ {entry terminal cost}, Path edge entry terminal cost →
      cost + potential terminal ≤ potential entry := by
  intro entry terminal cost path
  induction path with
  | nil q => simp
  | cons e tail ih =>
      have step := decreases e
      omega

theorem Path.cost_le_entry_potential {Q E : Type*} {edge : E → WeightedEdge Q}
    (potential : Q → ℕ)
    (decreases : ∀ e, (edge e).cost + potential (edge e).target ≤
      potential (edge e).source)
    {entry terminal cost} (path : Path edge entry terminal cost)
    (terminal_zero : potential terminal = 0) :
    cost ≤ potential entry := by
  have bounded := path.cost_add_potential_le potential decreases
  simpa [terminal_zero] using bounded

theorem positive_loop_obstructs_potential {Q : Type*} (edge : WeightedEdge Q)
    (loop : edge.target = edge.source) (positive : 0 < edge.cost) :
    ¬ ∃ potential : Q → ℕ,
      edge.cost + potential edge.target ≤ potential edge.source := by
  rintro ⟨potential, decreases⟩
  rw [loop] at decreases
  omega

/-! ## Function sections form a sheaf on a covered context -/

abbrev Section {X : Type*} (A : Type*) (openSet : Set X) :=
  ∀ x, x ∈ openSet → A

def Section.restrict {X A : Type*} {larger smaller : Set X}
    (localSection : Section A larger) (included : smaller ⊆ larger) : Section A smaller :=
  fun x member => localSection x (included member)

theorem Section.restrict_identity {X A : Type*} {openSet : Set X}
    (localSection : Section A openSet) :
    localSection.restrict (Set.Subset.rfl) = localSection := by
  rfl

theorem Section.restrict_composition {X A : Type*}
    {largest middle smallest : Set X}
    (localSection : Section A largest) (middleIncluded : middle ⊆ largest)
    (smallestIncluded : smallest ⊆ middle) :
    (localSection.restrict middleIncluded).restrict smallestIncluded =
      localSection.restrict (fun _ member => middleIncluded (smallestIncluded member)) := by
  rfl

structure Cover {X I : Type*} (whole : Set X) (pieces : I → Set X) : Prop where
  included : ∀ i, pieces i ⊆ whole
  complete : ∀ x ∈ whole, ∃ i, x ∈ pieces i

def Compatible {X I A : Type*} {pieces : I → Set X}
    (sections : ∀ i, Section A (pieces i)) : Prop :=
  ∀ i j x (inI : x ∈ pieces i) (inJ : x ∈ pieces j),
    sections i x inI = sections j x inJ

theorem function_sections_unique_gluing {X I A : Type*}
    {whole : Set X} {pieces : I → Set X}
    (cover : Cover whole pieces) (sections : ∀ i, Section A (pieces i))
    (compatible : Compatible sections) :
    ∃! glued : Section A whole,
      ∀ i x (member : x ∈ pieces i),
        glued x (cover.included i member) = sections i x member := by
  classical
  let selected : ∀ x, x ∈ whole → I :=
    fun x member => Classical.choose (cover.complete x member)
  have selected_mem : ∀ x (member : x ∈ whole),
      x ∈ pieces (selected x member) :=
    fun x member => Classical.choose_spec (cover.complete x member)
  let glued : Section A whole :=
    fun x member => sections (selected x member) x (selected_mem x member)
  refine ⟨glued, ?_, ?_⟩
  · intro i x member
    exact compatible (selected x (cover.included i member)) i x
      (selected_mem x (cover.included i member)) member
  · intro other agrees
    funext x member
    obtain ⟨i, inPiece⟩ := cover.complete x member
    exact (agrees i x inPiece).trans
      (compatible i (selected x member) x inPiece (selected_mem x member))

/-! ## Frames and a concrete compatible cover -/

inductive Participant where
  | narrator
  | beloved
deriving DecidableEq, Repr

inductive Register where
  | contemplative
  | formal
  | bridge
deriving DecidableEq, Repr

structure Frame where
  speaker : Participant
  addressee : Participant
  distinct : speaker ≠ addressee
  register : Register
  continuationOpen : Bool
deriving Repr

def pivotFrame : Frame where
  speaker := .narrator
  addressee := .beloved
  distinct := by decide
  register := .contemplative
  continuationOpen := true

inductive ContextPoint where
  | speaker
  | addressee
  | relation
  | continuation
deriving DecidableEq, Repr

inductive BindingValue where
  | participant (value : Participant)
  | relation (name : String)
  | continuation (isOpen : Bool)
deriving DecidableEq, Repr

def pivotSection : Section BindingValue (Set.univ : Set ContextPoint) :=
  fun point _ => match point with
    | .speaker => .participant .narrator
    | .addressee => .participant .beloved
    | .relation => .relation "love"
    | .continuation => .continuation true

inductive PivotOpen where
  | participants
  | assertion
deriving DecidableEq, Repr

def pivotPiece : PivotOpen → Set ContextPoint
  | .participants => {point | point ≠ .continuation}
  | .assertion => {point | point = .relation ∨ point = .continuation}

theorem pivotCover : Cover Set.univ pivotPiece := by
  constructor
  · intro i point member
    simp
  · intro point member
    cases point with
    | speaker => exact ⟨.participants, by simp [pivotPiece]⟩
    | addressee => exact ⟨.participants, by simp [pivotPiece]⟩
    | relation => exact ⟨.assertion, by simp [pivotPiece]⟩
    | continuation => exact ⟨.assertion, by simp [pivotPiece]⟩

def pivotLocalSection (openSet : PivotOpen) : Section BindingValue (pivotPiece openSet) :=
  pivotSection.restrict (pivotCover.included openSet)

theorem pivotLocalCompatible : Compatible pivotLocalSection := by
  intro i j point inI inJ
  rfl

theorem pivot_unique_gluing :
    ∃! glued : Section BindingValue (Set.univ : Set ContextPoint),
      ∀ i point (member : point ∈ pivotPiece i),
        glued point (pivotCover.included i member) = pivotLocalSection i point member :=
  function_sections_unique_gluing pivotCover pivotLocalSection pivotLocalCompatible

structure FrameTransport (input output : Frame) : Prop where
  speaker_preserved : output.speaker = input.speaker
  addressee_preserved : output.addressee = input.addressee
  continuation_preserved : output.continuationOpen = input.continuationOpen

theorem FrameTransport.identity (frame : Frame) : FrameTransport frame frame :=
  ⟨rfl, rfl, rfl⟩

theorem FrameTransport.compose {first second third : Frame}
    (left : FrameTransport first second) (right : FrameTransport second third) :
    FrameTransport first third :=
  ⟨right.speaker_preserved.trans left.speaker_preserved,
    right.addressee_preserved.trans left.addressee_preserved,
    right.continuation_preserved.trans left.continuation_preserved⟩

theorem frame_transport_identity (frame : Frame) : FrameTransport frame frame :=
  FrameTransport.identity frame

theorem frame_transport_composition {first second third : Frame}
    (left : FrameTransport first second) (right : FrameTransport second third) :
    FrameTransport first third :=
  left.compose right

theorem frame_transport_cocycle {first second third fourth : Frame}
    (firstStep : FrameTransport first second)
    (secondStep : FrameTransport second third)
    (thirdStep : FrameTransport third fourth) :
    (firstStep.compose secondStep).compose thirdStep =
      firstStep.compose (secondStep.compose thirdStep) := by
  rfl

def bridgeFrame : Frame where
  speaker := .narrator
  addressee := .beloved
  distinct := by decide
  register := .bridge
  continuationOpen := true

theorem pivot_to_bridge_transport : FrameTransport pivotFrame bridgeFrame := by
  exact ⟨rfl, rfl, rfl⟩

/-! ## Exact codec, structural reconstruction, and wording change -/

inductive ClaimScope where
  | contemplative
  | structural
deriving DecidableEq, Repr

structure PhraseCore where
  wording : String
  speaker : Participant
  addressee : Participant
  relation : String
  continuationOpen : Bool
  scope : ClaimScope
deriving DecidableEq, Repr

structure EncodedCore where
  wording : String
  speaker : Participant
  addressee : Participant
  relation : String
  continuationOpen : Bool
  scope : ClaimScope
deriving DecidableEq, Repr

def encode (phrase : PhraseCore) : EncodedCore where
  wording := phrase.wording
  speaker := phrase.speaker
  addressee := phrase.addressee
  relation := phrase.relation
  continuationOpen := phrase.continuationOpen
  scope := phrase.scope

def decode (encoded : EncodedCore) : PhraseCore where
  wording := encoded.wording
  speaker := encoded.speaker
  addressee := encoded.addressee
  relation := encoded.relation
  continuationOpen := encoded.continuationOpen
  scope := encoded.scope

theorem decode_encode (phrase : PhraseCore) : decode (encode phrase) = phrase := by
  cases phrase
  rfl

theorem encode_decode (encoded : EncodedCore) : encode (decode encoded) = encoded := by
  cases encoded
  rfl

structure FrameRoleObservations where
  speaker : Participant
  addressee : Participant
  relation : String
  continuationOpen : Bool
  scope : ClaimScope
deriving DecidableEq, Repr

def observeFrameRole (phrase : PhraseCore) : FrameRoleObservations where
  speaker := phrase.speaker
  addressee := phrase.addressee
  relation := phrase.relation
  continuationOpen := phrase.continuationOpen
  scope := phrase.scope

def FrameRoleEquivalent (left right : PhraseCore) : Prop :=
  observeFrameRole left = observeFrameRole right

def reconstruct (observations : FrameRoleObservations) : PhraseCore where
  wording := match observations.scope with
    | .contemplative => "I keep the relation open."
    | .structural => "The potential bounds the admitted path."
  speaker := observations.speaker
  addressee := observations.addressee
  relation := observations.relation
  continuationOpen := observations.continuationOpen
  scope := observations.scope

theorem observe_reconstruct (observations : FrameRoleObservations) :
    observeFrameRole (reconstruct observations) = observations := by
  cases observations
  rfl

theorem reconstruct_observe_equivalent (phrase : PhraseCore) :
    FrameRoleEquivalent (reconstruct (observeFrameRole phrase)) phrase :=
  observe_reconstruct (observeFrameRole phrase)

theorem observation_separation (left right : PhraseCore) :
    observeFrameRole left = observeFrameRole right ↔ FrameRoleEquivalent left right :=
  Iff.rfl

structure SufficientRepresentation (Q : Type*) where
  compress : PhraseCore → Q
  reconstruct : Q → PhraseCore
  certificate : ∀ source,
    FrameRoleEquivalent (reconstruct (compress source)) source

def factorToFrameRole {Q : Type*} (representation : SufficientRepresentation Q) :
    Q → FrameRoleObservations :=
  fun compressed => observeFrameRole (representation.reconstruct compressed)

theorem frame_role_universal_factorization {Q : Type*}
    (representation : SufficientRepresentation Q) (source : PhraseCore) :
    factorToFrameRole representation (representation.compress source) =
      observeFrameRole source :=
  representation.certificate source

theorem frame_role_factor_unique_on_carrier {Q : Type*}
    (representation : SufficientRepresentation Q)
    (candidate : Q → FrameRoleObservations)
    (candidateFactors : ∀ source,
      candidate (representation.compress source) = observeFrameRole source)
    (source : PhraseCore) :
    candidate (representation.compress source) =
      factorToFrameRole representation (representation.compress source) := by
  rw [candidateFactors, frame_role_universal_factorization]

structure StructuralQuine where
  quotedCore : String
  compress : PhraseCore → FrameRoleObservations
  reconstruct : FrameRoleObservations → PhraseCore
  exactCarrier : ∀ compressed, compress (reconstruct compressed) = compressed
  certificateReconstruction : ∀ source,
    FrameRoleEquivalent (reconstruct (compress source)) source
  separation : ∀ left right,
    compress left = compress right ↔ FrameRoleEquivalent left right

def pilotStructuralQuine : StructuralQuine where
  quotedCore :=
    "observe speaker addressee relation continuation scope; reconstruct canonical wording"
  compress := observeFrameRole
  reconstruct := reconstruct
  exactCarrier := observe_reconstruct
  certificateReconstruction := reconstruct_observe_equivalent
  separation := observation_separation

theorem pilot_quine_exact_carrier (compressed : FrameRoleObservations) :
    pilotStructuralQuine.compress
      (pilotStructuralQuine.reconstruct compressed) = compressed :=
  pilotStructuralQuine.exactCarrier compressed

theorem pilot_quine_certificate_reconstruction (source : PhraseCore) :
    FrameRoleEquivalent
      (pilotStructuralQuine.reconstruct (pilotStructuralQuine.compress source)) source :=
  pilotStructuralQuine.certificateReconstruction source

theorem pilot_quine_separation (left right : PhraseCore) :
    pilotStructuralQuine.compress left = pilotStructuralQuine.compress right ↔
      FrameRoleEquivalent left right :=
  pilotStructuralQuine.separation left right

def pilotRepresentation : SufficientRepresentation FrameRoleObservations where
  compress := observeFrameRole
  reconstruct := reconstruct
  certificate := reconstruct_observe_equivalent

theorem pilot_quine_universal_factorization (source : PhraseCore) :
    factorToFrameRole pilotRepresentation (pilotRepresentation.compress source) =
      observeFrameRole source :=
  frame_role_universal_factorization pilotRepresentation source

inductive BoundProposition where
  | averageDeterminesBound
  | potentialDeterminesEnvelope
deriving DecidableEq, Repr

structure PropositionCorrection where
  source : PhraseCore
  target : PhraseCore
  prior : BoundProposition
  revised : BoundProposition
  frameRolePreserved : FrameRoleEquivalent source target
  propositionChanged : prior ≠ revised

def sourceExplanation : PhraseCore where
  wording := "The bound is an average."
  speaker := .narrator
  addressee := .beloved
  relation := "explain-bound"
  continuationOpen := false
  scope := .structural

def revisedExplanation : PhraseCore where
  wording := "The upper envelope follows from the potential, not from an average."
  speaker := .narrator
  addressee := .beloved
  relation := "explain-bound"
  continuationOpen := false
  scope := .structural

def clarifyBound (phrase : PhraseCore) : PhraseCore :=
  { phrase with wording :=
      if phrase.wording = "The bound is an average." then
        "The upper envelope follows from the potential, not from an average."
      else phrase.wording }

theorem clarify_source_is_revision : clarifyBound sourceExplanation = revisedExplanation := by
  decide

theorem source_and_revision_are_not_exact : sourceExplanation ≠ revisedExplanation := by
  decide

theorem source_and_revision_preserve_frame_role :
    FrameRoleEquivalent sourceExplanation revisedExplanation := by
  rfl

def boundCorrection : PropositionCorrection where
  source := sourceExplanation
  target := revisedExplanation
  prior := .averageDeterminesBound
  revised := .potentialDeterminesEnvelope
  frameRolePreserved := source_and_revision_preserve_frame_role
  propositionChanged := by decide

theorem bound_correction_changes_proposition :
    boundCorrection.prior ≠ boundCorrection.revised :=
  boundCorrection.propositionChanged

theorem clarify_transition_congruence {left right : PhraseCore}
    (equivalent : FrameRoleEquivalent left right) :
    FrameRoleEquivalent (clarifyBound left) (clarifyBound right) := by
  exact equivalent

def inducedClarify (compressed : FrameRoleObservations) : FrameRoleObservations :=
  observeFrameRole (clarifyBound (reconstruct compressed))

theorem induced_clarify_commutes (phrase : PhraseCore) :
    inducedClarify (observeFrameRole phrase) = observeFrameRole (clarifyBound phrase) := by
  rfl

inductive ProcessOp where
  | quoteSelfCore
  | inspect
  | reconstruct
  | clarify
  | compose
  | project
deriving DecidableEq, Repr

def interpret : ProcessOp → PhraseCore → PhraseCore
  | .quoteSelfCore, phrase => phrase
  | .inspect, phrase => phrase
  | .reconstruct, phrase => reconstruct (observeFrameRole phrase)
  | .clarify, phrase => clarifyBound phrase
  | .compose, phrase => phrase
  | .project, phrase => reconstruct (observeFrameRole phrase)

theorem interpreter_preserves_structure (operation : ProcessOp) (phrase : PhraseCore) :
    FrameRoleEquivalent (interpret operation phrase) phrase := by
  cases operation with
  | quoteSelfCore => rfl
  | inspect => rfl
  | reconstruct => exact reconstruct_observe_equivalent phrase
  | clarify => rfl
  | compose => rfl
  | project => exact reconstruct_observe_equivalent phrase

inductive TransportProcessOp where
  | quoteSelfCore
  | reconstruct
  | applyClarification
  | compose
  | project
deriving DecidableEq, Repr

def lowerTransportOperation : TransportProcessOp → ProcessOp
  | .quoteSelfCore => .quoteSelfCore
  | .reconstruct => .reconstruct
  | .applyClarification => .clarify
  | .compose => .compose
  | .project => .project

def interpretTransport (operation : TransportProcessOp) (phrase : PhraseCore) : PhraseCore :=
  interpret (lowerTransportOperation operation) phrase

theorem transport_interpreter_correspondence
    (operation : TransportProcessOp) (phrase : PhraseCore) :
    interpretTransport operation phrase =
      interpret (lowerTransportOperation operation) phrase := by
  rfl

/-! The transport interpreter above records the legacy single-core projection.
The executable process below carries the finite quoted syntax, ordered
components, and projected observations explicitly, so quotation and composition
are observable operations rather than identity cases. -/

structure ExecutableProcessState where
  current : PhraseCore
  quotedCore : Option String
  components : List PhraseCore
  projected : Option FrameRoleObservations
deriving DecidableEq, Repr

def initialProcessState (phrase : PhraseCore) : ExecutableProcessState where
  current := phrase
  quotedCore := none
  components := [phrase]
  projected := none

inductive ExecutableProcessOp where
  | quoteSelfCore
  | reconstruct
  | applyClarification
  | compose (right : PhraseCore) (separator : String)
  | project
deriving DecidableEq, Repr

def executeProcess : ExecutableProcessOp → ExecutableProcessState → ExecutableProcessState
  | .quoteSelfCore, state =>
      { state with quotedCore := some pilotStructuralQuine.quotedCore }
  | .reconstruct, state =>
      { state with current := reconstruct (observeFrameRole state.current) }
  | .applyClarification, state =>
      { state with current := clarifyBound state.current }
  | .compose right separator, state =>
      { state with
        current := { state.current with
          wording := state.current.wording ++ separator ++ right.wording }
        components := state.components ++ [right] }
  | .project, state =>
      { state with projected := some (observeFrameRole state.current) }

theorem execute_quote_self_core_materializes_description (state : ExecutableProcessState) :
    (executeProcess .quoteSelfCore state).quotedCore =
      some pilotStructuralQuine.quotedCore := by
  rfl

theorem execute_compose_materializes_order
    (state : ExecutableProcessState) (right : PhraseCore) (separator : String) :
    (executeProcess (.compose right separator) state).current.wording =
        state.current.wording ++ separator ++ right.wording ∧
      (executeProcess (.compose right separator) state).components =
        state.components ++ [right] := by
  exact ⟨rfl, rfl⟩

theorem execute_project_materializes_observations (state : ExecutableProcessState) :
    (executeProcess .project state).projected = some (observeFrameRole state.current) := by
  rfl

/-! ## Executable finite pilot -/

inductive PilotPhrase where
  | pivot
  | contemplative
  | sourceExplanation
  | formalExplanation
  | transitionFirst
  | transitionSecond
deriving DecidableEq, Repr

def pilotText : PilotPhrase → String
  | .pivot => "I love you:"
  | .contemplative => "I cannot illuminate the whole table."
  | .sourceExplanation => "The bound is an average."
  | .formalExplanation =>
      "The upper envelope follows from the potential, not from an average."
  | .transitionFirst => "I cannot illuminate the whole table."
  | .transitionSecond => "I can move the lamp."

def pilotRelation : PilotPhrase → String
  | .pivot => "love"
  | .contemplative => "illuminate"
  | .sourceExplanation => "explain-bound"
  | .formalExplanation => "explain-bound"
  | .transitionFirst => "illuminate"
  | .transitionSecond => "move-lamp"

def pilotContinuationOpen : PilotPhrase → Bool
  | .pivot | .contemplative | .transitionFirst | .transitionSecond => true
  | .sourceExplanation | .formalExplanation => false

def pilotSectionFor (phrase : PilotPhrase) :
    Section BindingValue (Set.univ : Set ContextPoint) :=
  fun point _ => match point with
    | .speaker => .participant .narrator
    | .addressee => .participant .beloved
    | .relation => .relation (pilotRelation phrase)
    | .continuation => .continuation (pilotContinuationOpen phrase)

def pilotLocalSectionFor (phrase : PilotPhrase) (openSet : PivotOpen) :
    Section BindingValue (pivotPiece openSet) :=
  (pilotSectionFor phrase).restrict (pivotCover.included openSet)

theorem pilot_local_compatible (phrase : PilotPhrase) :
    Compatible (pilotLocalSectionFor phrase) := by
  intro i j point inI inJ
  rfl

theorem pilot_phrase_unique_gluing (phrase : PilotPhrase) :
    ∃! glued : Section BindingValue (Set.univ : Set ContextPoint),
      ∀ i point (member : point ∈ pivotPiece i),
        glued point (pivotCover.included i member) =
          pilotLocalSectionFor phrase i point member :=
  function_sections_unique_gluing pivotCover (pilotLocalSectionFor phrase)
    (pilot_local_compatible phrase)

structure LampComposition where
  first : PilotPhrase
  second : PilotPhrase
  separator : String
  speaker : Participant
  addressee : Participant
  continuationOpen : Bool
  orderedActions : List String
deriving DecidableEq, Repr

def lampComposition : LampComposition where
  first := .transitionFirst
  second := .transitionSecond
  separator := " "
  speaker := .narrator
  addressee := .beloved
  continuationOpen := true
  orderedActions := ["illuminate", "move-lamp"]

def LampComposition.Valid (composition : LampComposition) : Prop :=
  composition.first = .transitionFirst ∧
  composition.second = .transitionSecond ∧
  composition.separator = " " ∧
  composition.speaker = .narrator ∧
  composition.addressee = .beloved ∧
  composition.continuationOpen = true ∧
  composition.orderedActions = ["illuminate", "move-lamp"] ∧
  pilotRelation composition.first = composition.orderedActions.head? ∧
  pilotRelation composition.second = composition.orderedActions.getLast? ∧
  pilotRelation composition.first ≠ pilotRelation composition.second

theorem lamp_composition_application : lampComposition.Valid := by
  simp [LampComposition.Valid, lampComposition, pilotRelation]

theorem lamp_composition_preserves_shared_bindings :
    pilotSectionFor lampComposition.first .speaker (by simp) =
        .participant lampComposition.speaker ∧
      pilotSectionFor lampComposition.second .speaker (by simp) =
        .participant lampComposition.speaker ∧
      pilotSectionFor lampComposition.first .addressee (by simp) =
        .participant lampComposition.addressee ∧
      pilotSectionFor lampComposition.second .addressee (by simp) =
        .participant lampComposition.addressee ∧
      pilotSectionFor lampComposition.first .continuation (by simp) =
        .continuation lampComposition.continuationOpen ∧
      pilotSectionFor lampComposition.second .continuation (by simp) =
        .continuation lampComposition.continuationOpen := by
  decide

theorem lamp_composition_retains_ordered_distinct_actions :
    lampComposition.orderedActions = ["illuminate", "move-lamp"] ∧
      pilotRelation lampComposition.first = "illuminate" ∧
      pilotRelation lampComposition.second = "move-lamp" ∧
      pilotRelation lampComposition.first ≠ pilotRelation lampComposition.second := by
  decide

theorem lamp_pair_unique_local_gluing :
    (∃! firstGlued : Section BindingValue (Set.univ : Set ContextPoint),
      ∀ i point (member : point ∈ pivotPiece i),
        firstGlued point (pivotCover.included i member) =
          pilotLocalSectionFor lampComposition.first i point member) ∧
    (∃! secondGlued : Section BindingValue (Set.univ : Set ContextPoint),
      ∀ i point (member : point ∈ pivotPiece i),
        secondGlued point (pivotCover.included i member) =
          pilotLocalSectionFor lampComposition.second i point member) := by
  exact ⟨pilot_phrase_unique_gluing lampComposition.first,
    pilot_phrase_unique_gluing lampComposition.second⟩

/-! A single section for the lamp pair.  The two phrase opens overlap on the
speaker, addressee, and open continuation.  Their action points are disjoint,
so the glued section retains both actions in authored order instead of
collapsing them into one relation field. -/

inductive LampPoint where
  | speaker
  | addressee
  | firstAction
  | secondAction
  | continuation
deriving DecidableEq, Repr

inductive LampOpen where
  | firstPhrase
  | secondPhrase
deriving DecidableEq, Repr

def lampPiece : LampOpen → Set LampPoint
  | .firstPhrase => { point | point ≠ .secondAction }
  | .secondPhrase => { point | point ≠ .firstAction }

theorem lampCover : Cover Set.univ lampPiece := by
  constructor
  · intro i point member
    simp
  · intro point member
    cases point with
    | secondAction => exact ⟨.secondPhrase, by simp [lampPiece]⟩
    | _ => exact ⟨.firstPhrase, by simp [lampPiece]⟩

def lampPairSection : Section BindingValue (Set.univ : Set LampPoint) :=
  fun point _ => match point with
    | .speaker => .participant .narrator
    | .addressee => .participant .beloved
    | .firstAction => .relation "illuminate"
    | .secondAction => .relation "move-lamp"
    | .continuation => .continuation true

def lampPairLocalSection (openSet : LampOpen) : Section BindingValue (lampPiece openSet) :=
  lampPairSection.restrict (lampCover.included openSet)

theorem lamp_pair_local_compatible : Compatible lampPairLocalSection := by
  intro i j point inI inJ
  rfl

theorem lamp_pair_joint_unique_gluing :
    ∃! glued : Section BindingValue (Set.univ : Set LampPoint),
      ∀ i point (member : point ∈ lampPiece i),
        glued point (lampCover.included i member) =
          lampPairLocalSection i point member :=
  function_sections_unique_gluing lampCover lampPairLocalSection
    lamp_pair_local_compatible

theorem lamp_pair_joint_gluing_retains_actions :
    lampPairSection .firstAction (by simp) = .relation "illuminate" ∧
      lampPairSection .secondAction (by simp) = .relation "move-lamp" := by
  decide

def phraseCoreFor : PilotPhrase → PhraseCore
  | phrase =>
      { wording := pilotText phrase
        speaker := .narrator
        addressee := .beloved
        relation := pilotRelation phrase
        continuationOpen := pilotContinuationOpen phrase
        scope := if phrase = .sourceExplanation ∨ phrase = .formalExplanation then
          .structural else .contemplative }

def executedLampComposition : ExecutableProcessState :=
  executeProcess
    (.compose (phraseCoreFor .transitionSecond) lampComposition.separator)
    (initialProcessState (phraseCoreFor .transitionFirst))

theorem lamp_process_execution_is_substantive :
    executedLampComposition.current.wording =
        "I cannot illuminate the whole table. I can move the lamp." ∧
      executedLampComposition.components =
        [phraseCoreFor .transitionFirst, phraseCoreFor .transitionSecond] := by
  decide

theorem quoted_process_execution_is_substantive :
    (executeProcess .quoteSelfCore
      (initialProcessState (phraseCoreFor .pivot))).quotedCore =
        some pilotStructuralQuine.quotedCore := by
  rfl

inductive LampRealization where
  | authored
  | compact
  | speakerShift
deriving DecidableEq, Repr

def lampRealizationText : LampRealization → String
  | .authored => "I cannot illuminate the whole table. I can move the lamp."
  | .compact => "I cannot light the whole table. I can move the lamp."
  | .speakerShift => "You cannot light the whole table. I can move the lamp."

def lampRealizationSpeaker : LampRealization → Participant
  | .authored | .compact => .narrator
  | .speakerShift => .beloved

def lampRealizationSymbols : LampRealization → ℕ
  | .authored => 57
  | .compact => 52
  | .speakerShift => 54

inductive LampChoiceState where
  | entry
  | boundary
deriving DecidableEq, Repr

inductive LampChoiceEdge where
  | authored
  | compact
deriving DecidableEq, Repr

def lampChoiceEdge : LampChoiceEdge → WeightedEdge LampChoiceState
  | .authored => ⟨.entry, .boundary, 57⟩
  | .compact => ⟨.entry, .boundary, 52⟩

def lampEdgeRealization : LampChoiceEdge → LampRealization
  | .authored => .authored
  | .compact => .compact

def lampRealizationAdmitted (realization : LampRealization) : Prop :=
  ∃ edge, lampEdgeRealization edge = realization

def lampChoicePotential : LampChoiceState → ℕ
  | .entry => 57
  | .boundary => 0

theorem lamp_choice_potential_decreases (edge : LampChoiceEdge) :
    (lampChoiceEdge edge).cost + lampChoicePotential (lampChoiceEdge edge).target ≤
      lampChoicePotential (lampChoiceEdge edge).source := by
  cases edge <;> decide

theorem lamp_choice_path (edge : LampChoiceEdge) :
    Path lampChoiceEdge .entry .boundary (lampChoiceEdge edge).cost := by
  cases edge with
  | authored =>
      exact Path.cons (edge := lampChoiceEdge) .authored
        (Path.nil (edge := lampChoiceEdge) LampChoiceState.boundary)
  | compact =>
      exact Path.cons (edge := lampChoiceEdge) .compact
        (Path.nil (edge := lampChoiceEdge) LampChoiceState.boundary)

theorem lamp_choice_cost_realizes_symbols (edge : LampChoiceEdge) :
    (lampChoiceEdge edge).cost = lampRealizationSymbols (lampEdgeRealization edge) := by
  cases edge <;> rfl

theorem lamp_realization_scalar_lengths (realization : LampRealization) :
    (lampRealizationText realization).length = lampRealizationSymbols realization := by
  cases realization <;> decide

theorem two_legal_lamp_realizations :
    LampRealization.authored ≠ .compact ∧
      lampRealizationAdmitted .authored ∧
      lampRealizationAdmitted .compact := by
  exact ⟨by decide, ⟨.authored, rfl⟩, ⟨.compact, rfl⟩⟩

theorem lamp_realization_class_envelope {realization : LampRealization}
    (admitted : lampRealizationAdmitted realization) :
    lampRealizationSymbols realization ≤ lampChoicePotential .entry := by
  obtain ⟨edge, rfl⟩ := admitted
  rw [← lamp_choice_cost_realizes_symbols]
  exact (lamp_choice_path edge).cost_le_entry_potential lampChoicePotential
    lamp_choice_potential_decreases rfl

theorem speaker_shift_rejected :
    ¬ lampRealizationAdmitted .speakerShift := by
  intro admitted
  obtain ⟨edge, equality⟩ := admitted
  cases edge <;> cases equality

/-- These ASCII pilot costs are independently recomputed by the owner metric. -/
def pilotSymbols : PilotPhrase → ℕ
  | .pivot => 11
  | .contemplative => 36
  | .sourceExplanation => 24
  | .formalExplanation => 67
  | .transitionFirst => 36
  | .transitionSecond => 20

theorem pilot_text_scalar_length (phrase : PilotPhrase) :
    (pilotText phrase).length = pilotSymbols phrase := by
  cases phrase <;> decide

theorem pilot_symbol_floor (phrase : PilotPhrase) : 11 ≤ pilotSymbols phrase := by
  cases phrase <;> decide

def dynamicalUnits (symbols : ℕ) : ℚ := symbols / 11

theorem one_symbol_unit : dynamicalUnits 1 = (1 : ℚ) / 11 := by
  rfl

theorem anchor_unit : dynamicalUnits (pilotSymbols .pivot) = 1 := by
  norm_num [dynamicalUnits, pilotSymbols]

def advanceProcess (current : ℚ) (phrase : PilotPhrase) : ℚ :=
  current + dynamicalUnits (pilotSymbols phrase)

theorem pivot_advances_one_unit (current : ℚ) :
    advanceProcess current .pivot = current + 1 := by
  simp [advanceProcess, anchor_unit]

inductive PilotState where
  | pivotEntry
  | pivotBoundary
  | contemplativeEntry
  | contemplativeBoundary
  | sourceEntry
  | sourceBoundary
  | formalEntry
  | formalBoundary
  | transitionEntry
  | transitionMiddle
  | transitionBoundary
deriving DecidableEq, Repr

inductive PilotEdge where
  | pivot
  | contemplative
  | sourceExplanation
  | formalExplanation
  | transitionFirst
  | transitionSecond
deriving DecidableEq, Repr

def pilotEdge : PilotEdge → WeightedEdge PilotState
  | .pivot => ⟨.pivotEntry, .pivotBoundary, 11⟩
  | .contemplative => ⟨.contemplativeEntry, .contemplativeBoundary, 36⟩
  | .sourceExplanation => ⟨.sourceEntry, .sourceBoundary, 24⟩
  | .formalExplanation => ⟨.formalEntry, .formalBoundary, 67⟩
  | .transitionFirst => ⟨.transitionEntry, .transitionMiddle, 37⟩
  | .transitionSecond => ⟨.transitionMiddle, .transitionBoundary, 20⟩

def potential : PilotState → ℕ
  | .pivotEntry => 11
  | .pivotBoundary => 0
  | .contemplativeEntry => 36
  | .contemplativeBoundary => 0
  | .sourceEntry => 24
  | .sourceBoundary => 0
  | .formalEntry => 67
  | .formalBoundary => 0
  | .transitionEntry => 57
  | .transitionMiddle => 20
  | .transitionBoundary => 0

theorem pilot_potential_decreases (edge : PilotEdge) :
    (pilotEdge edge).cost + potential (pilotEdge edge).target ≤
      potential (pilotEdge edge).source := by
  cases edge <;> decide

inductive ConcreteTransition where
  | pivotAssertion
  | contemplativeImage
  | sourceExplanation
  | formalExplanation
  | bridgeImage
  | bridgeConsequence
deriving DecidableEq, Repr

def abstractTransition : ConcreteTransition → PilotEdge
  | .pivotAssertion => .pivot
  | .contemplativeImage => .contemplative
  | .sourceExplanation => .sourceExplanation
  | .formalExplanation => .formalExplanation
  | .bridgeImage => .transitionFirst
  | .bridgeConsequence => .transitionSecond

def transitionPhrase : ConcreteTransition → PilotPhrase
  | .pivotAssertion => .pivot
  | .contemplativeImage => .contemplative
  | .sourceExplanation => .sourceExplanation
  | .formalExplanation => .formalExplanation
  | .bridgeImage => .transitionFirst
  | .bridgeConsequence => .transitionSecond

def assemblySeparatorSymbols : ConcreteTransition → ℕ
  | .bridgeImage => 1
  | _ => 0

theorem concrete_transition_coverage (transition : ConcreteTransition) :
    ∃ edge, abstractTransition transition = edge :=
  ⟨abstractTransition transition, rfl⟩

theorem concrete_transition_cost_coverage (transition : ConcreteTransition) :
    (pilotEdge (abstractTransition transition)).cost =
      pilotSymbols (transitionPhrase transition) + assemblySeparatorSymbols transition := by
  cases transition <;> rfl

theorem pivotPath : Path pilotEdge .pivotEntry .pivotBoundary 11 := by
  simpa [pilotEdge] using
    (Path.cons (edge := pilotEdge) PilotEdge.pivot
      (Path.nil (edge := pilotEdge) PilotState.pivotBoundary))

theorem contemplativePath :
    Path pilotEdge .contemplativeEntry .contemplativeBoundary 36 := by
  simpa [pilotEdge] using
    (Path.cons (edge := pilotEdge) PilotEdge.contemplative
      (Path.nil (edge := pilotEdge) PilotState.contemplativeBoundary))

theorem sourceExplanationPath :
    Path pilotEdge .sourceEntry .sourceBoundary 24 := by
  simpa [pilotEdge] using
    (Path.cons (edge := pilotEdge) PilotEdge.sourceExplanation
      (Path.nil (edge := pilotEdge) PilotState.sourceBoundary))

theorem formalPath : Path pilotEdge .formalEntry .formalBoundary 67 := by
  simpa [pilotEdge] using
    (Path.cons (edge := pilotEdge) PilotEdge.formalExplanation
      (Path.nil (edge := pilotEdge) PilotState.formalBoundary))

theorem transitionPath : Path pilotEdge .transitionEntry .transitionBoundary 57 := by
  simpa [pilotEdge] using
    (Path.cons (edge := pilotEdge) PilotEdge.transitionFirst
      (Path.cons (edge := pilotEdge) PilotEdge.transitionSecond
        (Path.nil (edge := pilotEdge) PilotState.transitionBoundary)))

theorem pivot_stopping_envelope : 11 ≤ potential .pivotEntry := by
  exact pivotPath.cost_le_entry_potential potential pilot_potential_decreases rfl

theorem contemplative_stopping_envelope : 36 ≤ potential .contemplativeEntry := by
  exact contemplativePath.cost_le_entry_potential potential pilot_potential_decreases rfl

theorem source_explanation_stopping_envelope : 24 ≤ potential .sourceEntry := by
  exact sourceExplanationPath.cost_le_entry_potential potential pilot_potential_decreases rfl

theorem formal_stopping_envelope : 67 ≤ potential .formalEntry := by
  exact formalPath.cost_le_entry_potential potential pilot_potential_decreases rfl

theorem transitional_pair_stopping_envelope : 57 ≤ potential .transitionEntry := by
  exact transitionPath.cost_le_entry_potential potential pilot_potential_decreases rfl

theorem pilot_contract (phrase : PilotPhrase) :
    11 ≤ pilotSymbols phrase ∧
      pilotSymbols phrase ≤ match phrase with
        | .pivot => potential .pivotEntry
        | .contemplative => potential .contemplativeEntry
        | .sourceExplanation => potential .sourceEntry
        | .formalExplanation => potential .formalEntry
        | .transitionFirst => potential .transitionEntry
        | .transitionSecond => potential .transitionMiddle := by
  cases phrase <;> decide

end GRWTSK.FinitePhraseProcess
