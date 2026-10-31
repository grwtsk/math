/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors.
Formalization assistance: OpenAI.
SOURCE_ONLY / COMPILATION_NOT_RUN / KERNEL_NOT_RUN / AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.NarratedStoryClamp
import Mathlib

/-!
# Maximum compression: one emphasis root for EVERY source phrase

The shortest admissible telling is the ordered sequence of all phrase roots,
not one globally privileged word. A checked source walk supplies the phrase
order. A per-phrase exact string decomposition certifies that its nominated
root really occurs in the original source; the compressed view retains one
such root per phrase, including repeated roots and duplicate words.

The constrained minimum is exactly the number of source phrases. This is a
relative lower bound under the policy "every phrase contributes a nonempty
root", NOT a theorem of Kolmogorov incompressibility, a language-model quality
result, or a lossless compression theorem. The unabridged checked walk must
remain available separately for exact decompression.

A prime-neighborhood forest can be presented only with an exact ordered
position coverage and exact flattened-root equality. This prevents pruning an
entire group, silently merging equal roots, or changing story chronology.
-/

set_option autoImplicit false

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage

/-- A nominated root has an explicit exact source-text witness. -/
structure RootAnchor (sourceText : String) where
  before : String
  root : String
  after : String
  reconstruct : before ++ root ++ after = sourceText
  root_nonempty : root ≠ ""

/-- Every edge occurrence receives its own root witness, even if another
edge has an identical root. The checked walk fixes the exact source order. -/
structure RootedWalk where
  checked : CheckedWalk
  rootAt : (i : Fin checked.input.edges.length) →
    RootAnchor (checked.input.edges[i].words)

/-- Canonical maximum-compression sequence; no filtering or deduplication. -/
def RootedWalk.emphasisRoots (walk : RootedWalk) : List String :=
  List.ofFn (fun i => (walk.rootAt i).root)

@[simp] theorem RootedWalk.emphasisRoots_length (walk : RootedWalk) :
    walk.emphasisRoots.length = walk.checked.input.edges.length := by
  simp [RootedWalk.emphasisRoots]

/-- An arbitrary expansion retains one mandatory root occurrence in each
source phrase slot. The remaining words are optional context. -/
structure RootPreservingExpansion (walk : RootedWalk) where
  words : (i : Fin walk.checked.input.edges.length) → List String
  retainsRoot : ∀ i, (walk.rootAt i).root ∈ words i

/-- Each source phrase contributes exactly one word at maximum compression. -/
def RootPreservingExpansion.rootOnly (walk : RootedWalk) :
    RootPreservingExpansion walk where
  words := fun i => [(walk.rootAt i).root]
  retainsRoot := by intro i; simp

/-- Total printed word count; repetitions are counted independently. -/
def RootPreservingExpansion.wordBudget {walk : RootedWalk}
    (expansion : RootPreservingExpansion walk) : ℕ :=
  ∑ i : Fin walk.checked.input.edges.length, (expansion.words i).length

/-- A root-preserving telling cannot have fewer words than phrases. -/
theorem RootPreservingExpansion.budget_lower_bound {walk : RootedWalk}
    (expansion : RootPreservingExpansion walk) :
    walk.checked.input.edges.length ≤ expansion.wordBudget := by
  have hline : ∀ i : Fin walk.checked.input.edges.length,
      1 ≤ (expansion.words i).length := by
    intro i
    have hmem := expansion.retainsRoot i
    cases hwords : expansion.words i with
    | nil => simp [hwords] at hmem
    | cons head tail => simp [hwords]
  calc
    walk.checked.input.edges.length =
        ∑ _i : Fin walk.checked.input.edges.length, (1 : ℕ) := by simp
    _ ≤ ∑ i : Fin walk.checked.input.edges.length,
          (expansion.words i).length := by
      apply Finset.sum_le_sum
      intro i _
      exact hline i
    _ = expansion.wordBudget := rfl

/-- The root-only construction meets the bound. -/
theorem RootPreservingExpansion.rootOnly_budget (walk : RootedWalk) :
    (rootOnly walk).wordBudget = walk.checked.input.edges.length := by
  simp [RootPreservingExpansion.rootOnly,
    RootPreservingExpansion.wordBudget]

/-- Therefore one root per phrase is the exact constrained minimum. -/
theorem RootPreservingExpansion.rootOnly_is_minimal
    (walk : RootedWalk) (candidate : RootPreservingExpansion walk) :
    (rootOnly walk).wordBudget ≤ candidate.wordBudget := by
  rw [rootOnly_budget]
  exact candidate.budget_lower_bound

/-- A candidate budget smaller than the number of retained roots cannot
satisfy the preservation contract, regardless of its quadratic score. -/
theorem RootPreservingExpansion.no_smaller_budget
    (walk : RootedWalk) (capacity : ℕ)
    (small : capacity < walk.checked.input.edges.length) :
    ¬ ∃ expansion : RootPreservingExpansion walk,
        expansion.wordBudget ≤ capacity := by
  rintro ⟨expansion, fits⟩
  exact (Nat.not_le_of_gt small) (expansion.budget_lower_bound.trans fits)

/-- One prime neighborhood stores a contiguous group of roots. -/
structure PrimeRootNeighborhood where
  address : PrimePhraseNeighborhood
  rootWords : List String
  length_exact : rootWords.length = address.length

/-- In addition to valid prime group lengths, construction requires exact
position coverage and literal root-word reconstruction. -/
structure PrimeRootForest (walk : RootedWalk) where
  groups : List PrimeRootNeighborhood
  positionsExact :
    (groups.flatMap (fun group => group.address.positions)) =
      List.range walk.checked.input.edges.length
  rootsExact :
    (groups.flatMap (fun group => group.rootWords)) = walk.emphasisRoots

/-- No prime group may be pruned away unless the complete ordered root
sequence can still be reconstructed. -/
theorem PrimeRootForest.all_roots_retained {walk : RootedWalk}
    (forest : PrimeRootForest walk) :
    (forest.groups.flatMap (fun group => group.rootWords)).length =
      walk.checked.input.edges.length := by
  rw [forest.rootsExact, walk.emphasisRoots_length]

/-- Full source and maximum-compressed source have different representations;
the retained exact source is always the original checked walk. -/
def RootedWalk.originalSource (walk : RootedWalk) : List WalkEdge :=
  walk.checked.input.edges

/-- Compression is non-injective without a retained inverse ledger: the same
root can label two distinct texts. This fixture is an actual collision. -/
def forgetContext (pair : String × String) : String := pair.1

theorem root_projection_is_not_injective :
    ¬ Function.Injective forgetContext := by
  intro hinj
  have h : ("legs", "ran wild") = ("legs", "were smooth") :=
    hinj rfl
  have hs := congrArg Prod.snd h
  simp at hs

/-! ## Concrete emphasized root labels for the 15 source occurrences -/

/-- Human-supplied source annotation: each entry denotes a different
phrase occurrence; repeated words remain repeated occurrences. -/
def poemRootLabels : List String :=
  ["woman", "legs", "shave", "Darling", "spring",
   "mock", "listen", "friend", "fashion", "shopkeepers",
   "spring", "fashion", "legs", "naturel", "growing"]

theorem poemRootLabels_length : poemRootLabels.length = 15 := by decide

theorem poemRootLabels_repetitions_preserved :
    poemRootLabels[4]? = some "spring" ∧
    poemRootLabels[10]? = some "spring" ∧
    poemRootLabels[1]? = some "legs" ∧
    poemRootLabels[12]? = some "legs" := by decide

/-- The existing actual 5+5+5 prime layout covers all 15 occurrence
addresses. This statement concerns positions, not word-level parse evidence. -/
theorem poemPrimeNeighborhoods_cover :
    originalPrimeForest.neighborhoods.flatMap
      PrimePhraseNeighborhood.positions = List.range 15 :=
  originalPrimeForest.exactCover

/-!
The root labels are concrete, inspectable human annotations. A fully
source-certified RootedWalk for all 15 literal lines requires instantiating
RootAnchor with exact before/root/after strings for every selected variant.
This module does not falsely infer that correspondence from names alone.
The runtime UI keeps the complete source ledger and these 15 root occurrences.
-/

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.PoeticSoficLanguage
