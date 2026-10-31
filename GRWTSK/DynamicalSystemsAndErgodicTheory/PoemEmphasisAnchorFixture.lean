/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.RootEmphasisCompression
import Mathlib

/-!
# Exact fifteen-phrase root annotations for the original poem source

Each root is explicitly tied to an exact before/root/after decomposition of
its selected original line. The witness is local to the original poem walk,
not a claim that variants automatically contain the same literal word.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage

/-- Source-exact root witness for every occurrence of the canonical poem. -/
def poemAnchoredRoots : RootedWalk where
  checked := poemChecked
  rootAt := fun i => by
    fin_cases i
    · exact ⟨"There is now a ", "woman", ", once Barry,", by decide, by decide⟩
    · exact ⟨"Whose ", "legs", " run as wild as a prairie.", by decide, by decide⟩
    · exact ⟨"I offered a ", "shave", ";", by decide, by decide⟩
    · exact ⟨"She said, ‘", "Darling", ", behave—’", by decide, by decide⟩
    · exact ⟨"Come ", "spring", ", it's the razor that's scary.", by decide, by decide⟩
    · exact ⟨"If they ", "mock", " you, I'll give them all hell,", by decide, by decide⟩
    · exact ⟨"And if things go wrong, I'll ", "listen", " as well.", by decide, by decide⟩
    · exact ⟨"She said, ‘Spare your breath, ", "friend", "—’", by decide, by decide⟩
    · exact ⟨"It's their ", "fashion", " that'll end.", by decide, by decide⟩
    · exact ⟨"Just watch what the ", "shopkeepers", " sell.", by decide, by decide⟩
    · exact ⟨"By ", "spring", ", her prediction came true;", by decide, by decide⟩
    · exact ⟨"The ", "fashion", " pages changed their view.", by decide, by decide⟩
    · exact ⟨"From their ", "legs", " to down there,", by decide, by decide⟩
    · exact ⟨"Au ", "naturel", " was the flair.", by decide, by decide⟩
    · exact ⟨"She teased, ‘I'm ", "growing", " on you ... who knew?’", by decide, by decide⟩

/-- The entire ordered root sequence comes from exact source decompositions. -/
theorem poemAnchoredRoots_equal_labels :
    poemAnchoredRoots.emphasisRoots = poemRootLabels := by decide

/-- In particular no phrase tree disappears at the root-only clamp. -/
theorem poemAnchoredRoots_maximum_budget :
    (RootPreservingExpansion.rootOnly poemAnchoredRoots).wordBudget = 15 := by
  rw [RootPreservingExpansion.rootOnly_budget]
  decide

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
