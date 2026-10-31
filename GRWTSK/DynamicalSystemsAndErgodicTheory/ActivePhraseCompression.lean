/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.PoemEmphasisAnchorFixture
import Mathlib

/-!
# Active phrase compression over the complete rooted story forest

The visual focus is not an uncompressed source string floating above a pruned
forest. It is the active, budgeted phrase projection itself. The companion
root ribbon always denotes ALL original phrase-root occurrences in source order.
At maximal compression, every phrase contributes exactly one root and the
active phrase contributes its own corresponding root. Navigation changes the
selected phrase, not the root inventory or the source ledger. Recompression
changes the active projection in place, not just the other trees.

The compression policy intentionally loses omitted context. Exact restoration
uses the separately retained checked walk. This does not prove unqualified
Kolmogorov incompressibility or automatic semantic extraction from text.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage

/-- A complete phrase-level projection and the phrase currently on stage.
The active phrase cannot be taken from a different compression plan. -/
structure FocusedRootStory (walk : RootedWalk) where
  projected : RootPreservingExpansion walk
  active : Fin walk.checked.input.edges.length

/-- What the reader sees as the large active phrase, after compression. -/
def FocusedRootStory.activeWords {walk : RootedWalk}
    (stage : FocusedRootStory walk) : List String :=
  stage.projected.words stage.active

/-- The word whose occurrence must survive in the active phrase. -/
def FocusedRootStory.activeRoot {walk : RootedWalk}
    (stage : FocusedRootStory walk) : String :=
  (walk.rootAt stage.active).root

/-- The smaller full-forest ribbon never drops duplicate emphasis roots. -/
def FocusedRootStory.allRoots {walk : RootedWalk}
    (_stage : FocusedRootStory walk) : List String :=
  walk.emphasisRoots

/-- The active phrase is always a root-preserving projection. -/
theorem FocusedRootStory.active_root_retained {walk : RootedWalk}
    (stage : FocusedRootStory walk) :
    stage.activeRoot ∈ stage.activeWords :=
  stage.projected.retainsRoot stage.active

/-- The full forest retains exactly one root occurrence per source phrase. -/
theorem FocusedRootStory.all_roots_count {walk : RootedWalk}
    (stage : FocusedRootStory walk) :
    stage.allRoots.length = walk.checked.input.edges.length :=
  walk.emphasisRoots_length

/-- At maximum compression, the phrase itself becomes its own root. -/
def FocusedRootStory.maximumCompression (walk : RootedWalk)
    (active : Fin walk.checked.input.edges.length) :
    FocusedRootStory walk where
  projected := RootPreservingExpansion.rootOnly walk
  active := active

/-- This is the essential behavioral correction: the active phrase changes
with the clamp, rather than only the surrounding emphasis forest. -/
theorem FocusedRootStory.maximum_active_words (walk : RootedWalk)
    (active : Fin walk.checked.input.edges.length) :
    (FocusedRootStory.maximumCompression walk active).activeWords =
      [(walk.rootAt active).root] := rfl

/-- At maximum compression the root ribbon still includes the whole walk. -/
theorem FocusedRootStory.maximum_all_roots (walk : RootedWalk)
    (active : Fin walk.checked.input.edges.length) :
    (FocusedRootStory.maximumCompression walk active).allRoots =
      walk.emphasisRoots := rfl

/-- Changing the active index is a focus operation, not a root-deletion step. -/
def FocusedRootStory.select {walk : RootedWalk}
    (stage : FocusedRootStory walk)
    (next : Fin walk.checked.input.edges.length) :
    FocusedRootStory walk :=
  { stage with active := next }

@[simp] theorem FocusedRootStory.select_active {walk : RootedWalk}
    (stage : FocusedRootStory walk)
    (next : Fin walk.checked.input.edges.length) :
    (stage.select next).activeWords = stage.projected.words next := rfl

@[simp] theorem FocusedRootStory.select_preserves_roots {walk : RootedWalk}
    (stage : FocusedRootStory walk)
    (next : Fin walk.checked.input.edges.length) :
    (stage.select next).allRoots = stage.allRoots := rfl

/-- A new clamp projection changes the text of the active phrase itself. -/
def FocusedRootStory.recompress {walk : RootedWalk}
    (stage : FocusedRootStory walk)
    (newProjection : RootPreservingExpansion walk) :
    FocusedRootStory walk :=
  { stage with projected := newProjection }

@[simp] theorem FocusedRootStory.recompress_active_words {walk : RootedWalk}
    (stage : FocusedRootStory walk)
    (newProjection : RootPreservingExpansion walk) :
    (stage.recompress newProjection).activeWords =
      newProjection.words stage.active := rfl

@[simp] theorem FocusedRootStory.recompress_preserves_roots {walk : RootedWalk}
    (stage : FocusedRootStory walk)
    (newProjection : RootPreservingExpansion walk) :
    (stage.recompress newProjection).allRoots = stage.allRoots := rfl

/-- Recompression cannot erase the active word mandated by its source anchor. -/
theorem FocusedRootStory.recompress_retains_active_root {walk : RootedWalk}
    (stage : FocusedRootStory walk)
    (newProjection : RootPreservingExpansion walk) :
    stage.activeRoot ∈ (stage.recompress newProjection).activeWords :=
  newProjection.retainsRoot stage.active

/-- Root-only compressed view remains minimal even with an explicit focus. -/
theorem FocusedRootStory.maximum_budget_minimal (walk : RootedWalk)
    (active : Fin walk.checked.input.edges.length)
    (other : RootPreservingExpansion walk) :
    (FocusedRootStory.maximumCompression walk active).projected.wordBudget ≤
      other.wordBudget :=
  RootPreservingExpansion.rootOnly_is_minimal walk other

/-- The stage holds two different pieces of information: an active compressed
phrase, and the complete ordered root inventory. Neither replaces the other. -/
structure RenderedStage where
  activeText : List String
  allRootWords : List String
  sourceIndex : ℕ

/-- The presentation projection is calculated from one shared state. -/
def FocusedRootStory.render {walk : RootedWalk}
    (stage : FocusedRootStory walk) : RenderedStage where
  activeText := stage.activeWords
  allRootWords := stage.allRoots
  sourceIndex := stage.active.val

/-- The visible active phrase agrees exactly with the budgeted phrase model. -/
theorem FocusedRootStory.render_active_correct {walk : RootedWalk}
    (stage : FocusedRootStory walk) :
    stage.render.activeText = stage.projected.words stage.active := rfl

/-- The root ribbon agrees exactly with the complete original root sequence. -/
theorem FocusedRootStory.render_roots_correct {walk : RootedWalk}
    (stage : FocusedRootStory walk) :
    stage.render.allRootWords = walk.emphasisRoots := rfl

/-! ## Exact original-poem fixture: two navigable compressed phrases -/

def firstPoemFocus : FocusedRootStory poemAnchoredRoots :=
  FocusedRootStory.maximumCompression poemAnchoredRoots (0 : Fin 15)

theorem firstPoemFocus_is_woman : firstPoemFocus.activeWords = ["woman"] := by
  decide

theorem secondPoemFocus_is_legs :
    (firstPoemFocus.select (1 : Fin 15)).activeWords = ["legs"] := by
  decide

theorem poemFocus_keeps_all_roots :
    firstPoemFocus.render.allRootWords = poemRootLabels := by
  rw [FocusedRootStory.render_roots_correct, poemAnchoredRoots_equal_labels]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
