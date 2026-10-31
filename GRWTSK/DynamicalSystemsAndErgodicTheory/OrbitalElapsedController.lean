/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.ElapsedWindowCompression
import Mathlib

/-!
# Model-bound orbital controller for a shared elapsed-time rail

One visible rail has three logical controls: the playback cursor and lower/upper
spent-time boundaries. The time boundaries change a root-preserving phrase model;
the cursor only changes playback. Both spent sectors are accounted for exactly.
The drag chart uses a non-wrapping semicircle, not a physical fluid orbit or a
claimed prismatic cohomology construction. This is a limited geometric analogy
to the phase/rank controls in the polygon-lab and ellipsoid work.

A model-level rebuilder consumes a new elapsed window and produces an admissible
phrase projection. It is bound to the controller itself, not merely to a UI
widget or a disconnected cache. An elapsed edit retains the source, environment
and active phrase, resets playback and advances the cancellation generation.
The producer's ability to choose good English is an input, not a theorem.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage

/-- The exact source model whose revisions should survive a timing-only edit. -/
structure ControllerEnvironment where
  master : MasterSensoryInput
  phrase : ℕ → PhraseProsodyInput
  forest : PolynomialForest

/-- A total bounded producer that satisfies the time-dependent word budget. -/
structure RootBudgetRebuilder (walk : RootedWalk) (totalMs : ℕ) where
  extraWords : ℕ
  produce : (w : ElapsedCompressionWindow totalMs) →
    RootPreservingExpansion walk
  fits : ∀ w, (produce w).wordBudget ≤
    elapsedWordBudget w walk.checked.input.edges.length extraWords

/-- A correctly typed fallback: one root for each phrase, for every window. -/
def RootBudgetRebuilder.rootOnly (walk : RootedWalk) (totalMs : ℕ)
    (extraWords : ℕ) : RootBudgetRebuilder walk totalMs where
  extraWords := extraWords
  produce := fun _ => RootPreservingExpansion.rootOnly walk
  fits := by
    intro w
    rw [RootPreservingExpansion.rootOnly_budget]
    exact roots_always_funded w _ _

/-- Rebuild the exact model to which the controller is assigned. -/
def RootBudgetRebuilder.buildModel {walk : RootedWalk} {totalMs : ℕ}
    (rebuild : RootBudgetRebuilder walk totalMs)
    (w : ElapsedCompressionWindow totalMs) :
    TimeBudgetedStory walk totalMs where
  window := w
  maxContextWords := rebuild.extraWords
  projection := rebuild.produce w
  withinBudget := rebuild.fits w

/-- Three gestures on one rail; only the two ends spend time. -/
inductive RailHandle where
  | lower | upper | playback
  deriving DecidableEq, Repr

/-- The chart uses a half orbit [0, π] to avoid two screen positions with
identical phases. Actual pointer projection belongs to the browser adapter. -/
def semicircleAngle (timeMs horizonMs : ℕ) : ℝ :=
  Real.pi * (timeMs : ℝ) / (horizonMs : ℝ)

/-- Safe lower update: at least one millisecond remains before the upper end. -/
def ElapsedCompressionWindow.moveLower {totalMs : ℕ}
    (w : ElapsedCompressionWindow totalMs) (requested : ℕ) :
    ElapsedCompressionWindow totalMs where
  lowerMs := min requested (w.upperMs - 1)
  upperMs := w.upperMs
  lower_lt_upper := by
    have h := w.lower_lt_upper
    omega
  upper_le_total := w.upper_le_total

/-- Safe upper update: at least one millisecond remains after the lower end. -/
def ElapsedCompressionWindow.moveUpper {totalMs : ℕ}
    (w : ElapsedCompressionWindow totalMs) (requested : ℕ) :
    ElapsedCompressionWindow totalMs where
  lowerMs := w.lowerMs
  upperMs := min totalMs (max (w.lowerMs + 1) requested)
  lower_lt_upper := by
    have h := w.lower_lt_upper
    have ht := w.upper_le_total
    omega
  upper_le_total := by
    have h := w.lower_lt_upper
    have ht := w.upper_le_total
    omega

/-- One actual model, one active phrase, one playback clock, one cache identity. -/
structure OrbitalElapsedController (walk : RootedWalk) (totalMs : ℕ) where
  environment : ControllerEnvironment
  rebuilder : RootBudgetRebuilder walk totalMs
  model : TimeBudgetedStory walk totalMs
  coherentBudget : model.maxContextWords = rebuilder.extraWords
  playback : PlaybackProgress model.window
  active : Fin walk.checked.input.edges.length
  generation : ℕ

namespace OrbitalElapsedController

/-- Constructor makes the initial model via the same assigned producer. -/
def initial {walk : RootedWalk} {totalMs : ℕ}
    (environment : ControllerEnvironment)
    (rebuilder : RootBudgetRebuilder walk totalMs)
    (window : ElapsedCompressionWindow totalMs)
    (active : Fin walk.checked.input.edges.length) :
    OrbitalElapsedController walk totalMs :=
  { environment := environment
    rebuilder := rebuilder
    model := rebuilder.buildModel window
    coherentBudget := rfl
    playback := ⟨0, Nat.zero_le _⟩
    active := active
    generation := 0 }

/-- The central phrase and root ribbon use the SAME current projection. -/
def focused {walk : RootedWalk} {totalMs : ℕ}
    (c : OrbitalElapsedController walk totalMs) : FocusedRootStory walk :=
  c.model.focus c.active

/-- Recompute the source-bound model, but leave the environment untouched. -/
def rewindow {walk : RootedWalk} {totalMs : ℕ}
    (c : OrbitalElapsedController walk totalMs)
    (w : ElapsedCompressionWindow totalMs) :
    OrbitalElapsedController walk totalMs :=
  { environment := c.environment
    rebuilder := c.rebuilder
    model := c.rebuilder.buildModel w
    coherentBudget := rfl
    playback := ⟨0, Nat.zero_le _⟩
    active := c.active
    generation := c.generation + 1 }

/-- Lower/upper move by orbit address, but playback is not a compressor. -/
def dragBoundary {walk : RootedWalk} {totalMs : ℕ}
    (c : OrbitalElapsedController walk totalMs)
    (side : RailHandle) (requestedMs : ℕ) :
    OrbitalElapsedController walk totalMs :=
  match side with
  | .lower => c.rewindow (c.model.window.moveLower requestedMs)
  | .upper => c.rewindow (c.model.window.moveUpper requestedMs)
  | .playback => c

/-- Scrubbing changes only elapsed playback observation. -/
def scrub {walk : RootedWalk} {totalMs : ℕ}
    (c : OrbitalElapsedController walk totalMs)
    (elapsedMs : ℕ) (within : elapsedMs ≤ c.model.window.availableMs) :
    OrbitalElapsedController walk totalMs :=
  { c with playback := ⟨elapsedMs, within⟩ }

/-- Navigation selects a phrase without changing the compression model. -/
def select {walk : RootedWalk} {totalMs : ℕ}
    (c : OrbitalElapsedController walk totalMs)
    (next : Fin walk.checked.input.edges.length) :
    OrbitalElapsedController walk totalMs :=
  { c with active := next }

@[simp] theorem scrub_keeps_model {walk : RootedWalk} {totalMs : ℕ}
    (c : OrbitalElapsedController walk totalMs)
    (ms : ℕ) (bound : ms ≤ c.model.window.availableMs) :
    (c.scrub ms bound).model = c.model := rfl

@[simp] theorem drag_keeps_environment {walk : RootedWalk} {totalMs : ℕ}
    (c : OrbitalElapsedController walk totalMs) (side : RailHandle)
    (ms : ℕ) :
    (c.dragBoundary side ms).environment = c.environment := by
  cases side <;> rfl

@[simp] theorem drag_keeps_focus_index {walk : RootedWalk} {totalMs : ℕ}
    (c : OrbitalElapsedController walk totalMs) (side : RailHandle)
    (ms : ℕ) :
    (c.dragBoundary side ms).active = c.active := by
  cases side <;> rfl

/-- Elapsed edits invalidate speech events and clear playback progress. -/
theorem rewindow_resets_playback {walk : RootedWalk} {totalMs : ℕ}
    (c : OrbitalElapsedController walk totalMs)
    (w : ElapsedCompressionWindow totalMs) :
    (c.rewindow w).playback.elapsedMs = 0 := rfl

theorem rewindow_invalidates_old_generation {walk : RootedWalk}
    {totalMs : ℕ} (c : OrbitalElapsedController walk totalMs)
    (w : ElapsedCompressionWindow totalMs) :
    c.generation ≠ (c.rewindow w).generation := by
  simp [rewindow]

/-- The source forest root inventory is unchanged by all time-window moves. -/
theorem drag_retains_all_roots {walk : RootedWalk} {totalMs : ℕ}
    (c : OrbitalElapsedController walk totalMs)
    (side : RailHandle) (ms : ℕ) :
    (c.dragBoundary side ms).focused.allRoots = walk.emphasisRoots := rfl

/-- The selected active phrase is always taken from the rebuilt model. -/
theorem drag_active_from_model {walk : RootedWalk} {totalMs : ℕ}
    (c : OrbitalElapsedController walk totalMs)
    (side : RailHandle) (ms : ℕ) :
    (c.dragBoundary side ms).focused.activeWords =
      (c.dragBoundary side ms).model.projection.words c.active := by
  cases side <;> rfl

end OrbitalElapsedController

/-!
A runtime controller must adapt pointer drags to a non-wrapping arc on the
one visible bar; clamp the two boundaries so that lower < upper; use a separate
playback cursor; and call the assigned model rebuilder for any true bound edit.
The mathematical source cannot certify actual browser gesture feel, real voice
timing, or visual pixel geometry without an explicit external refinement.
-/

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
