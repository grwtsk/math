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
certificate-relative reconstruction, and a non-identity wording transformation
that preserves the declared structural observations.

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

structure StructuralObservations where
  speaker : Participant
  addressee : Participant
  relation : String
  continuationOpen : Bool
  scope : ClaimScope
deriving DecidableEq, Repr

def observe (phrase : PhraseCore) : StructuralObservations where
  speaker := phrase.speaker
  addressee := phrase.addressee
  relation := phrase.relation
  continuationOpen := phrase.continuationOpen
  scope := phrase.scope

def StructuralEquivalent (left right : PhraseCore) : Prop :=
  observe left = observe right

def reconstruct (observations : StructuralObservations) : PhraseCore where
  wording := match observations.scope with
    | .contemplative => "I keep the relation open."
    | .structural => "The potential bounds the admitted path."
  speaker := observations.speaker
  addressee := observations.addressee
  relation := observations.relation
  continuationOpen := observations.continuationOpen
  scope := observations.scope

theorem observe_reconstruct (observations : StructuralObservations) :
    observe (reconstruct observations) = observations := by
  cases observations
  rfl

theorem reconstruct_observe_equivalent (phrase : PhraseCore) :
    StructuralEquivalent (reconstruct (observe phrase)) phrase :=
  observe_reconstruct (observe phrase)

theorem observation_minimality (left right : PhraseCore) :
    observe left = observe right ↔ StructuralEquivalent left right :=
  Iff.rfl

structure StructuralQuine where
  quotedCore : String
  compress : PhraseCore → StructuralObservations
  reconstruct : StructuralObservations → PhraseCore
  exactCarrier : ∀ compressed, compress (reconstruct compressed) = compressed
  certificateReconstruction : ∀ source,
    StructuralEquivalent (reconstruct (compress source)) source
  minimality : ∀ left right,
    compress left = compress right ↔ StructuralEquivalent left right

def pilotStructuralQuine : StructuralQuine where
  quotedCore :=
    "observe speaker addressee relation continuation scope; reconstruct canonical wording"
  compress := observe
  reconstruct := reconstruct
  exactCarrier := observe_reconstruct
  certificateReconstruction := reconstruct_observe_equivalent
  minimality := observation_minimality

theorem pilot_quine_exact_carrier (compressed : StructuralObservations) :
    pilotStructuralQuine.compress
      (pilotStructuralQuine.reconstruct compressed) = compressed :=
  pilotStructuralQuine.exactCarrier compressed

theorem pilot_quine_certificate_reconstruction (source : PhraseCore) :
    StructuralEquivalent
      (pilotStructuralQuine.reconstruct (pilotStructuralQuine.compress source)) source :=
  pilotStructuralQuine.certificateReconstruction source

theorem pilot_quine_minimality (left right : PhraseCore) :
    pilotStructuralQuine.compress left = pilotStructuralQuine.compress right ↔
      StructuralEquivalent left right :=
  pilotStructuralQuine.minimality left right

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

theorem source_and_revision_are_structurally_equivalent :
    StructuralEquivalent sourceExplanation revisedExplanation := by
  rfl

theorem clarify_transition_congruence {left right : PhraseCore}
    (equivalent : StructuralEquivalent left right) :
    StructuralEquivalent (clarifyBound left) (clarifyBound right) := by
  exact equivalent

def inducedClarify (compressed : StructuralObservations) : StructuralObservations :=
  observe (clarifyBound (reconstruct compressed))

theorem induced_clarify_commutes (phrase : PhraseCore) :
    inducedClarify (observe phrase) = observe (clarifyBound phrase) := by
  rfl

inductive ProcessOp where
  | inspect
  | reconstruct
  | clarify
  | project
deriving DecidableEq, Repr

def interpret : ProcessOp → PhraseCore → PhraseCore
  | .inspect, phrase => phrase
  | .reconstruct, phrase => reconstruct (observe phrase)
  | .clarify, phrase => clarifyBound phrase
  | .project, phrase => reconstruct (observe phrase)

theorem interpreter_preserves_structure (operation : ProcessOp) (phrase : PhraseCore) :
    StructuralEquivalent (interpret operation phrase) phrase := by
  cases operation with
  | inspect => rfl
  | reconstruct => exact reconstruct_observe_equivalent phrase
  | clarify => rfl
  | project => exact reconstruct_observe_equivalent phrase

/-! ## Executable finite pilot -/

inductive PilotPhrase where
  | pivot
  | contemplative
  | formalExplanation
  | transitionFirst
  | transitionSecond
deriving DecidableEq, Repr

def pilotText : PilotPhrase → String
  | .pivot => "I love you:"
  | .contemplative => "I cannot illuminate the whole table."
  | .formalExplanation =>
      "The upper envelope follows from the potential, not from an average."
  | .transitionFirst => "I cannot illuminate the whole table."
  | .transitionSecond => "I can move the lamp."

/-- These ASCII pilot costs are independently recomputed by the owner metric. -/
def pilotSymbols : PilotPhrase → ℕ
  | .pivot => 11
  | .contemplative => 36
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
  | formalEntry
  | formalBoundary
  | transitionEntry
  | transitionMiddle
  | transitionBoundary
deriving DecidableEq, Repr

inductive PilotEdge where
  | pivot
  | contemplative
  | formalExplanation
  | transitionFirst
  | transitionSecond
deriving DecidableEq, Repr

def pilotEdge : PilotEdge → WeightedEdge PilotState
  | .pivot => ⟨.pivotEntry, .pivotBoundary, 11⟩
  | .contemplative => ⟨.contemplativeEntry, .contemplativeBoundary, 36⟩
  | .formalExplanation => ⟨.formalEntry, .formalBoundary, 67⟩
  | .transitionFirst => ⟨.transitionEntry, .transitionMiddle, 37⟩
  | .transitionSecond => ⟨.transitionMiddle, .transitionBoundary, 20⟩

def potential : PilotState → ℕ
  | .pivotEntry => 11
  | .pivotBoundary => 0
  | .contemplativeEntry => 36
  | .contemplativeBoundary => 0
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
  | formalExplanation
  | bridgeImage
  | bridgeConsequence
deriving DecidableEq, Repr

def abstractTransition : ConcreteTransition → PilotEdge
  | .pivotAssertion => .pivot
  | .contemplativeImage => .contemplative
  | .formalExplanation => .formalExplanation
  | .bridgeImage => .transitionFirst
  | .bridgeConsequence => .transitionSecond

def transitionPhrase : ConcreteTransition → PilotPhrase
  | .pivotAssertion => .pivot
  | .contemplativeImage => .contemplative
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

theorem formal_stopping_envelope : 67 ≤ potential .formalEntry := by
  exact formalPath.cost_le_entry_potential potential pilot_potential_decreases rfl

theorem transitional_pair_stopping_envelope : 57 ≤ potential .transitionEntry := by
  exact transitionPath.cost_le_entry_potential potential pilot_potential_decreases rfl

theorem pilot_contract (phrase : PilotPhrase) :
    11 ≤ pilotSymbols phrase ∧
      pilotSymbols phrase ≤ match phrase with
        | .pivot => potential .pivotEntry
        | .contemplative => potential .contemplativeEntry
        | .formalExplanation => potential .formalEntry
        | .transitionFirst => potential .transitionEntry
        | .transitionSecond => potential .transitionMiddle := by
  cases phrase <;> decide

end GRWTSK.FinitePhraseProcess
