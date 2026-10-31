/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / PARSING_NOT_RUN / COMPILATION_NOT_RUN /
KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.ActivePhraseCompression
import Mathlib

/-!
# Elapsed-time-window compression, disjoint from playback progress

The progress bar is an observation of playback only. Compression acts instead
through a two-ended elapsed-time window [lowerMs, upperMs] within a fixed
uncompressed duration. The left and right discarded durations are the SPENT
regions; their combined expenditure shortens the available duration.

The story's relative minimum still contains every source phrase's emphasis
root. A shortening budget can remove optional context from each phrase, but
never omit a root occurrence or change source order. The checked original walk
stays in the shared cache for exact restoration. Changing an elapsed window
does not rebuild the semantic Master model or the phrase polynomial forest.

Time values here are mathematical natural-number durations in milliseconds.
Native voice durations, synchrony, user-interface clocks, and true minimal
linguistic description length are not inferred from this source model.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage

/-- A strictly nonempty, doubly bounded elapsed-time allocation. -/
structure ElapsedCompressionWindow (totalMs : ℕ) where
  lowerMs : ℕ
  upperMs : ℕ
  lower_lt_upper : lowerMs < upperMs
  upper_le_total : upperMs ≤ totalMs

namespace ElapsedCompressionWindow

def spentBelow {totalMs : ℕ} (w : ElapsedCompressionWindow totalMs) : ℕ :=
  w.lowerMs

def spentAbove {totalMs : ℕ} (w : ElapsedCompressionWindow totalMs) : ℕ :=
  totalMs - w.upperMs

def availableMs {totalMs : ℕ} (w : ElapsedCompressionWindow totalMs) : ℕ :=
  w.upperMs - w.lowerMs

theorem available_pos {totalMs : ℕ} (w : ElapsedCompressionWindow totalMs) :
    0 < w.availableMs := by
  dsimp [availableMs]
  omega

/-- Both discarded ends plus the retained interval equal the original time. -/
theorem spent_conservation {totalMs : ℕ}
    (w : ElapsedCompressionWindow totalMs) :
    w.spentBelow + w.availableMs + w.spentAbove = totalMs := by
  dsimp [spentBelow, spentAbove, availableMs]
  omega

theorem available_le_total {totalMs : ℕ}
    (w : ElapsedCompressionWindow totalMs) :
    w.availableMs ≤ totalMs := by
  dsimp [availableMs]
  omega

/-- This is a real use of BOTH handles: a larger lower cut or a smaller upper
cut shrinks the retained time window without touching playback progress. -/
def Tightens {totalMs : ℕ}
    (old new : ElapsedCompressionWindow totalMs) : Prop :=
  old.lowerMs ≤ new.lowerMs ∧ new.upperMs ≤ old.upperMs

theorem available_antitone {totalMs : ℕ}
    (old new : ElapsedCompressionWindow totalMs)
    (h : Tightens old new) :
    new.availableMs ≤ old.availableMs := by
  rcases h with ⟨hl, hu⟩
  dsimp [availableMs]
  omega

theorem spentBelow_monotone {totalMs : ℕ}
    (old new : ElapsedCompressionWindow totalMs)
    (h : Tightens old new) :
    old.spentBelow ≤ new.spentBelow :=
  h.1

theorem spentAbove_monotone {totalMs : ℕ}
    (old new : ElapsedCompressionWindow totalMs)
    (h : Tightens old new) :
    old.spentAbove ≤ new.spentAbove := by
  dsimp [spentAbove]
  omega

/-- With no spent time, the entire interval is available for story context. -/
def full (totalMs : ℕ) (h : 0 < totalMs) :
    ElapsedCompressionWindow totalMs where
  lowerMs := 0
  upperMs := totalMs
  lower_lt_upper := h
  upper_le_total := le_rfl

@[simp] theorem full_available (totalMs : ℕ) (h : 0 < totalMs) :
    (full totalMs h).availableMs = totalMs := by
  simp [full, availableMs]

end ElapsedCompressionWindow

/-! ## Root-preserving compression budgets, not progress-bar budgets -/

/-- Optional story context is metered against retained elapsed time.
The mandatory root count is added AFTER the budget is computed. -/
def elapsedWordBudget {totalMs : ℕ} (w : ElapsedCompressionWindow totalMs)
    (rootCount extraWords : ℕ) : ℕ :=
  rootCount + (extraWords * w.availableMs) / totalMs

/-- A time clamp cannot spend the mandatory one-word-per-phrase floor. -/
theorem roots_always_funded {totalMs : ℕ}
    (w : ElapsedCompressionWindow totalMs)
    (rootCount extraWords : ℕ) :
    rootCount ≤ elapsedWordBudget w rootCount extraWords := by
  simp [elapsedWordBudget]

/-- A tighter two-ended window admits no greater optional-word budget. -/
theorem elapsed_budget_antitone {totalMs : ℕ}
    (old new : ElapsedCompressionWindow totalMs)
    (h : ElapsedCompressionWindow.Tightens old new)
    (rootCount extraWords : ℕ) :
    elapsedWordBudget new rootCount extraWords ≤
      elapsedWordBudget old rootCount extraWords := by
  have hms := ElapsedCompressionWindow.available_antitone old new h
  have hnum :
      extraWords * new.availableMs ≤ extraWords * old.availableMs :=
    Nat.mul_le_mul_left _ hms
  have hquot :
      (extraWords * new.availableMs) / totalMs ≤
        (extraWords * old.availableMs) / totalMs :=
    Nat.div_le_div_right hnum
  exact Nat.add_le_add_left hquot rootCount

/-- Full elapsed allocation restores the entire root-plus-context budget. -/
theorem elapsed_budget_full (totalMs rootCount extraWords : ℕ)
    (h : 0 < totalMs) :
    elapsedWordBudget (ElapsedCompressionWindow.full totalMs h)
      rootCount extraWords = rootCount + extraWords := by
  simp only [elapsedWordBudget, ElapsedCompressionWindow.full_available]
  rw [Nat.mul_div_cancel extraWords h]

/-- The one word per phrase requirement is stronger than selecting one word
for the whole story, independent of how the time window is tightened. -/
structure TimeBudgetedStory (walk : RootedWalk) (totalMs : ℕ) where
  window : ElapsedCompressionWindow totalMs
  maxContextWords : ℕ
  projection : RootPreservingExpansion walk
  withinBudget :
    projection.wordBudget ≤
      elapsedWordBudget window walk.checked.input.edges.length maxContextWords

/-- Every time-budgeted story retains the whole ordered root inventory. -/
theorem TimeBudgetedStory.all_roots_present {walk : RootedWalk} {totalMs : ℕ}
    (story : TimeBudgetedStory walk totalMs) :
    walk.checked.input.edges.length ≤ story.projection.wordBudget :=
  story.projection.budget_lower_bound

/-- The mandatory-root projection fits every nonempty elapsed interval. -/
def TimeBudgetedStory.rootOnly {walk : RootedWalk} {totalMs : ℕ}
    (window : ElapsedCompressionWindow totalMs) (maxContextWords : ℕ) :
    TimeBudgetedStory walk totalMs where
  window := window
  maxContextWords := maxContextWords
  projection := RootPreservingExpansion.rootOnly walk
  withinBudget := by
    rw [RootPreservingExpansion.rootOnly_budget]
    exact roots_always_funded window _ _

/-! ## Playback is an observation, not a compressor -/

/-- A playback-progress datum is not a window handle: it has no authority to
select a phrase projection. The duration bound is the current retained budget. -/
structure PlaybackProgress {totalMs : ℕ}
    (window : ElapsedCompressionWindow totalMs) where
  elapsedMs : ℕ
  elapsed_le_available : elapsedMs ≤ window.availableMs

/-- A window edit resets playback but leaves the source and active phrase
index stable; the projection argument must again meet the new time budget. -/
def TimeBudgetedStory.rewindow {walk : RootedWalk} {totalMs : ℕ}
    (story : TimeBudgetedStory walk totalMs)
    (newWindow : ElapsedCompressionWindow totalMs)
    (newProjection : RootPreservingExpansion walk)
    (hbudget : newProjection.wordBudget ≤
      elapsedWordBudget newWindow walk.checked.input.edges.length
        story.maxContextWords) :
    TimeBudgetedStory walk totalMs where
  window := newWindow
  maxContextWords := story.maxContextWords
  projection := newProjection
  withinBudget := hbudget

/-- Recompression preserves source identity and original root witnesses. -/
theorem TimeBudgetedStory.rewindow_same_source {walk : RootedWalk} {totalMs : ℕ}
    (story : TimeBudgetedStory walk totalMs)
    (newWindow : ElapsedCompressionWindow totalMs)
    (newProjection : RootPreservingExpansion walk)
    (hbudget : newProjection.wordBudget ≤
      elapsedWordBudget newWindow walk.checked.input.edges.length
        story.maxContextWords) :
    (story.rewindow newWindow newProjection hbudget).projection.words =
      newProjection.words := rfl

/-- A focused projection is computed from the current time-budgeted story,
not from a separate uncompressed text or from the playback-progress bar. -/
def TimeBudgetedStory.focus {walk : RootedWalk} {totalMs : ℕ}
    (story : TimeBudgetedStory walk totalMs)
    (active : Fin walk.checked.input.edges.length) :
    FocusedRootStory walk where
  projected := story.projection
  active := active

@[simp] theorem TimeBudgetedStory.focus_active_words
    {walk : RootedWalk} {totalMs : ℕ}
    (story : TimeBudgetedStory walk totalMs)
    (active : Fin walk.checked.input.edges.length) :
    (story.focus active).activeWords = story.projection.words active := rfl

@[simp] theorem TimeBudgetedStory.focus_all_roots
    {walk : RootedWalk} {totalMs : ℕ}
    (story : TimeBudgetedStory walk totalMs)
    (active : Fin walk.checked.input.edges.length) :
    (story.focus active).allRoots = walk.emphasisRoots := rfl

/-!
The runtime's two handle positions are normalized from [0,100] to the chosen
finite clock horizon. The mathematical conservation is exact in Nat.
The browser rounds estimates and speaks with variable platform-dependent timing.
Native speech, progress rendering and true elapsed milliseconds are outside
this kernel-level source candidate.
-/

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
