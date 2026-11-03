/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicFiberLedger
import Mathlib

set_option autoImplicit false
noncomputable section

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepeatBridge

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger

universe u v

variable {State : Type u} {Alphabet : Type v}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Recover a genuine original WordPath from the inductively stored
walk, preserving all intermediate endpoints, emitted labels, and
the actual source LabeledGraph.edge predicate. -/
theorem wordPath_of_labeledWalkData
    (G : LabeledGraph State Alphabet) :
    ∀ {n : ℕ} {s t : State}
      (p : LabeledWalkData G n s t),
      WordPath G s (walkDataLabels G p) t := by
  intro n s t p
  induction p with
  | nil s =>
      exact WordPath.nil s
  | snoc prefix letter hedge ih =>
      have hlast := WordPath.cons letter [] hedge (WordPath.nil _)
      simpa only [walkDataLabels] using (wordPath_append ih hlast)

/-- Exactly k copies of one ACTUAL finite word, defined without
quotienting letters or changing the original integer length. -/
def finiteCopies (word : List Alphabet) : ℕ → List Alphabet
  | 0 => []
  | k + 1 => finiteCopies word k ++ word

/-- Each finite repetition has its literal original total length. -/
theorem finiteCopies_length (word : List Alphabet) (k : ℕ) :
    (finiteCopies word k).length = k * word.length := by
  induction k with
  | zero =>
      simp [finiteCopies]
  | succ k ih =>
      simp [finiteCopies, ih, Nat.succ_mul]

/-- A genuine closed labeled graph path repeats as an actual closed
labeled path for EVERY finite number of periods. -/
theorem wordPath_finiteCopies
    (G : LabeledGraph State Alphabet)
    {s : State} {word : List Alphabet}
    (hclosed : WordPath G s word s) (k : ℕ) :
    WordPath G s (finiteCopies word k) s := by
  induction k with
  | zero =>
      exact WordPath.nil s
  | succ k ih =>
      change WordPath G s (finiteCopies word k ++ word) s
      exact wordPath_append ih hclosed

/-- Every contiguous subword of a genuine labeled graph path is
itself a labeled graph word. No deterministic presentation assumed. -/
theorem graphLanguage_of_contiguous_factor
    (G : LabeledGraph State Alphabet)
    (prefix word suffix : List Alphabet)
    (h : GraphLanguage G (prefix ++ word ++ suffix)) :
    GraphLanguage G word := by
  rcases h with ⟨start, finish, hpath⟩
  obtain ⟨middle, hfirst, hrest⟩ :=
    wordPath_split_append G prefix (word ++ suffix) hpath
  obtain ⟨last, hword, hfinal⟩ :=
    wordPath_split_append G word suffix hrest
  exact ⟨middle, last, hword⟩

/-- Every ACTUAL based cycle produces genuine closed graph paths
whose labels are its original finite word repeated k times. -/
theorem basedCycle_finiteCopies_graphLanguage
    (G : LabeledGraph State Alphabet) (n k : ℕ)
    (c : BasedCycleData G n) :
    GraphLanguage G (finiteCopies (walkDataLabels G c.2) k) := by
  exact ⟨c.1, c.1,
    wordPath_finiteCopies G
      (wordPath_of_labeledWalkData G c.2) k⟩

/-- The precise PURE finite-list/periodic-index interface still needed:
every arbitrary-offset finite block of the infinite repetition is a
contiguous factor of SOME finite repetition of the SAME original word.
This is a named Lean Prop target, NOT an axiom or an assumed theorem.
Only list indexing, modulo n and bounds remain to be proved. -/
def RepeatBlockOccursInFiniteCopies
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n) : Prop :=
  ∀ (c : BasedCycleData G n) (word : List Alphabet),
    HasFiniteBlock (repeatBlock hn (basedCycleWord G n c)) word →
      ∃ (k : ℕ) (prefix suffix : List Alphabet),
        finiteCopies (walkDataLabels G c.2) k =
          prefix ++ word ++ suffix

/-- Source-language return under the EXACT pure periodic-list
lemma. Genuine graph words are obtained from repeated ACTUAL based
closed paths; exact-language equality then returns every factor.
No independent sofic source or arbitrary graph observer is injected. -/
theorem hasLabelPreservingCycleMap_of_finiteCopies
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n)
    (hFactors : RepeatBlockOccursInFiniteCopies G n hn) :
    HasLabelPreservingCycleMap G language n hn := by
  let f : BasedCycleData G n → PeriodicLabelPoint language n hn :=
    fun c => ⟨basedCycleWord G n c, by
      intro word hblock
      obtain ⟨k, prefix, suffix, hpart⟩ :=
        hFactors c word hblock
      have hwhole :=
        basedCycle_finiteCopies_graphLanguage G n k c
      have hseg : GraphLanguage G (prefix ++ word ++ suffix) := by
        rw [← hpart]
        exact hwhole
      exact (hExact word).mpr
        (graphLanguage_of_contiguous_factor G prefix word suffix hseg)⟩
  refine ⟨f, ?_⟩
  intro c
  rfl

/-- The complete previously published missing/surplus accounting
now follows from the PURE finite-copy lemma and the unchanged full
source language. There is no hidden injective or surjective lift.
All positive lengths are handled with their original period. -/
theorem periodicFiberBalance_of_finiteCopies
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n)
    (hFactors : RepeatBlockOccursInFiniteCopies G n hn) :
    ∃ f : BasedCycleData G n → PeriodicLabelPoint language n hn,
      (∀ c, (f c).val = basedCycleWord G n c) ∧
        Matrix.trace (labeledAdjacency G ^ n) +
          unliftedLabelCount f =
        Fintype.card (PeriodicLabelPoint language n hn) +
          surplusLabelLiftCount f := by
  obtain ⟨f, hLabels⟩ :=
    hasLabelPreservingCycleMap_of_finiteCopies
      G language hExact n hn hFactors
  exact ⟨f, hLabels,
    trace_add_unlifted_eq_label_card_add_surplus
      G language n hn f hLabels⟩

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepeatBridge
