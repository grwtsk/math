/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.DynamicNeighborhoodCache
import Mathlib

/-!
# Native-voice playback, word focus and a hard time/length clamp

A story is a checked finite walk. A text reconstruction witness binds the
phrase-sized spoken strings to that walk, while a positive-duration vector
supplies ESTIMATED (not measured) milliseconds for its phrase slots.

The end clamp is an exact prefix bound and a separate hard elapsed-time bound.
Voice events include a generation stamp: cancelled or stale speech callbacks
must not advance the story or change its focused word. Playback can only
advance within the clamp. A changed clamp cancels playback and updates the
cursor, without changing the checked source, polynomial trees, or prime groups.

The external browser speech synthesizer is an implementation of an interface;
this Lean model proves no speech timing or phoneme-to-text synchronization for
that external synthesizer. Browser word-boundary events are only observations.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage

/-- Phrase text and optional exact word-piece boundaries; pieces may include
whitespace, enabling exact byte-level reconstruction of the line. -/
structure SpokenPhrase where
  sourceText : String
  wordPieces : List String
  reconstructs : String.join wordPieces = sourceText
  estimatedMs : ℕ
  estimatedMs_pos : 0 < estimatedMs

/-- External native system-speech contract: the caller does not force a
synthetic speaker identity or pretend to prove the voice engine's output. -/
structure NativeVoiceRequest where
  text : String
  cadence : ℚ
  pitch : ℚ
  volume : ℚ
  systemDefault : Bool

/-- A literal array of phrase strings is anchored to the checked walk. -/
structure NarrationPlan where
  checked : CheckedWalk
  phrases : List SpokenPhrase
  exactSource : phrases.map SpokenPhrase.sourceText =
    walkWords checked.input.edges

namespace NarrationPlan

def phraseCount (plan : NarrationPlan) : ℕ := plan.phrases.length

def estimatedTimes (plan : NarrationPlan) : List ℕ :=
  plan.phrases.map SpokenPhrase.estimatedMs

/-- The predicted duration of a prefix; not a clock or actual TTS duration. -/
def estimatedPrefixMs (plan : NarrationPlan) (count : ℕ) : ℕ :=
  ((plan.estimatedTimes).take count).sum

/-- The source phrase order is unchanged by budget-related prefix selection. -/
theorem prefix_reconstructs (plan : NarrationPlan) (count : ℕ) :
    (plan.phrases.take count).map SpokenPhrase.sourceText ++
      (plan.phrases.drop count).map SpokenPhrase.sourceText =
        walkWords plan.checked.input.edges := by
  rw [← List.map_append, List.take_append_drop, plan.exactSource]

end NarrationPlan

/-- Clamp values are meaningful only relative to this exact source plan.
The duration is a hard budget while the phrase count limits automatic advance. -/
structure TimeClamp (plan : NarrationPlan) where
  endExclusive : ℕ
  end_pos : 0 < endExclusive
  end_le : endExclusive ≤ plan.phraseCount
  hardMs : ℕ
  hardMs_pos : 0 < hardMs

/-- Set the hard clock budget to the estimated selected story-prefix length.
The caller must separately choose a positive estimate. -/
def TimeClamp.fromEstimate (plan : NarrationPlan) (count : ℕ)
    (hpos : 0 < count) (hle : count ≤ plan.phraseCount)
    (htime : 0 < plan.estimatedPrefixMs count) : TimeClamp plan where
  endExclusive := count
  end_pos := hpos
  end_le := hle
  hardMs := plan.estimatedPrefixMs count
  hardMs_pos := htime

/-- The displayed story is a source-ordered prefix, never a new phrase queue. -/
def TimeClamp.visibleSource {plan : NarrationPlan}
    (clamp : TimeClamp plan) : List String :=
  (plan.phrases.take clamp.endExclusive).map SpokenPhrase.sourceText

/-- Word focus is an observed character offset within the current utterance.
A browser may also provide no boundary events; focus then remains optional. -/
structure WordBoundary where
  start : ℕ
  finish : ℕ
  start_lt_finish : start < finish

def WordBoundary.Contains (span : WordBoundary) (offset : ℕ) : Prop :=
  span.start ≤ offset ∧ offset < span.finish

/-- A playback cursor includes a cancellation generation for asynchronous
native voice callbacks. It has no authority to rewrite phrase source text. -/
structure StoryPlayback {plan : NarrationPlan} (clamp : TimeClamp plan) where
  phraseIndex : ℕ
  inClamp : phraseIndex < clamp.endExclusive
  playing : Bool
  generation : ℕ
  focusedChar : Option ℕ

namespace StoryPlayback

/-- Start from the beginning; a browser user gesture supplies voice permission. -/
def initial {plan : NarrationPlan} (clamp : TimeClamp plan) :
    StoryPlayback clamp where
  phraseIndex := 0
  inClamp := clamp.end_pos
  playing := false
  generation := 0
  focusedChar := none

/-- End the current session, invalidating every previously emitted event. -/
def cancel {plan : NarrationPlan} {clamp : TimeClamp plan}
    (state : StoryPlayback clamp) : StoryPlayback clamp :=
  { state with playing := false
    generation := state.generation + 1
    focusedChar := none }

/-- A supported native-voice start must be an explicit transition. -/
def play {plan : NarrationPlan} {clamp : TimeClamp plan}
    (state : StoryPlayback clamp) : StoryPlayback clamp :=
  { state with playing := true, generation := state.generation + 1 }

/-- The phrase index advances only if the next index belongs to the clamp. -/
def advance {plan : NarrationPlan} {clamp : TimeClamp plan}
    (state : StoryPlayback clamp) : StoryPlayback clamp :=
  if h : state.phraseIndex + 1 < clamp.endExclusive then
    { state with phraseIndex := state.phraseIndex + 1,
      inClamp := h, focusedChar := none }
  else
    { state with playing := false, focusedChar := none }

/-- Stale TTS callbacks cannot advance a changed playback session. -/
def onEnd {plan : NarrationPlan} {clamp : TimeClamp plan}
    (state : StoryPlayback clamp) (eventGeneration : ℕ) :
    StoryPlayback clamp :=
  if state.playing = true ∧ eventGeneration = state.generation then
    state.advance
  else state

/-- Focus changes only from a current, live native-voice event. -/
def onBoundary {plan : NarrationPlan} {clamp : TimeClamp plan}
    (state : StoryPlayback clamp) (eventGeneration offset : ℕ) :
    StoryPlayback clamp :=
  if state.playing = true ∧ eventGeneration = state.generation then
    { state with focusedChar := some offset }
  else state

theorem stale_boundary_ignored {plan : NarrationPlan}
    {clamp : TimeClamp plan} (state : StoryPlayback clamp)
    (oldToken offset : ℕ) (hstale : oldToken ≠ state.generation) :
    state.onBoundary oldToken offset = state := by
  simp [onBoundary, hstale]

theorem stale_end_ignored {plan : NarrationPlan}
    {clamp : TimeClamp plan} (state : StoryPlayback clamp)
    (oldToken : ℕ) (hstale : oldToken ≠ state.generation) :
    state.onEnd oldToken = state := by
  simp [onEnd, hstale]

/-- A previous-generation token is stale immediately after cancellation. -/
theorem cancel_invalidates_previous {plan : NarrationPlan}
    {clamp : TimeClamp plan} (state : StoryPlayback clamp) :
    state.generation ≠ state.cancel.generation := by
  simp [cancel]

/-- Deadline is a second hard gate, independent of phrase-end callbacks. -/
def enforceDeadline {plan : NarrationPlan} {clamp : TimeClamp plan}
    (state : StoryPlayback clamp) (elapsedMs : ℕ) :
    StoryPlayback clamp :=
  if clamp.hardMs ≤ elapsedMs then state.cancel else state

theorem deadline_stops {plan : NarrationPlan}
    {clamp : TimeClamp plan} (state : StoryPlayback clamp)
    (elapsedMs : ℕ) (h : clamp.hardMs ≤ elapsedMs) :
    (state.enforceDeadline elapsedMs).playing = false := by
  simp [enforceDeadline, h, cancel]

/-- Moving the end handle creates a new typed clamp and stops audio. -/
def reClamp {plan : NarrationPlan} {old : TimeClamp plan}
    (state : StoryPlayback old) (fresh : TimeClamp plan) :
    StoryPlayback fresh where
  phraseIndex := min state.phraseIndex (fresh.endExclusive - 1)
  inClamp := by
    have h := fresh.end_pos
    omega
  playing := false
  generation := state.generation + 1
  focusedChar := none

theorem reclamp_stops {plan : NarrationPlan} {old : TimeClamp plan}
    (state : StoryPlayback old) (fresh : TimeClamp plan) :
    (state.reClamp fresh).playing = false := rfl

end StoryPlayback

/-! ## Clock changes invalidate playback without rewriting the forest -/

structure NarrationClockRevision where
  globalModel : ℕ
  phraseModel : ℕ → ℕ
  lengthControl : ℕ

/-- Changing story length preserves all semantic feature and tree revisions. -/
def NarrationClockRevision.changeLength (revision : NarrationClockRevision) :
    NarrationClockRevision :=
  { revision with lengthControl := revision.lengthControl + 1 }

theorem changeLength_preserves_global (revision : NarrationClockRevision) :
    revision.changeLength.globalModel = revision.globalModel := rfl

theorem changeLength_preserves_phrase (revision : NarrationClockRevision)
    (i : ℕ) :
    revision.changeLength.phraseModel i = revision.phraseModel i := rfl

/-!
Browser implementation responsibilities (not pure Lean theorems):
- use speechSynthesis / SpeechSynthesisUtterance with default system voice;
- register a user-initiated play event before voice playback;
- report word boundary offsets when the engine supplies them;
- estimate optional fallback focus without claiming true phonetic alignment;
- stop/suppress stale events on navigation, clamp or setting changes;
- enforce actual elapsed wall-clock deadline and stop at clamp boundary;
- serialize no audio or personal speech data into the shared phrase cache.
-/

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
