/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficWordPowerClosureScan
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Finite support automaton for actual sofic paths and periodic words

The original ExactSoficLanguageCover.reachableEndStates is the
finite set of endpoints of the ORIGINAL WordPath, with any initial
source vertex. We give it an exact left-to-right Finset transition
recurrence, then strengthen it to a set of supplied starting states.

For a fixed initial vertex, the support automaton returns the EXACT
endpoints of actual original graph paths spelling a word. Positivity
of the existing Nat-valued wordLiftMatrix entry is equivalent to
membership in this finite support set. This forgets path multiplicity
ONLY in the support-only predicate, not in the original matrix.

Applying the word transition repeatedly detects closed paths at any
k positive repetitions. The existing sharp state bound, actual
word-power path bridge, and optimized word-matrix trace criterion
identify a bounded returning support state with periodic factor
admission. The resulting DISTINCT-periodic-label count retains
the original missing/surplus lift corrections.

No analytic transfer, source multiplicity deletion or verified
runtime speedup is inferred. Deciding arbitrary G.edge propositions
may require classical choice; all definitions remain noncomputable
unless a separate edge-decision supplier is proved.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteSupportAutomaton

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepeatBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordPowerClosedPath
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordMatrixDynamicProgram
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordPowerClosureScan
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficExactPeriodicTraceLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficMatrixCertifiedTransversal

universe u v
variable {State : Type u} {Alphabet : Type v}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- One original letter step on an arbitrary finite set of current
states, with NO quotienting of labels or changes to G.edge. -/
noncomputable def sourceSupportStep
    (G : LabeledGraph State Alphabet)
    (states : Finset State) (a : Alphabet) : Finset State := by
  classical
  exact Finset.univ.filter (fun t => ∃ s ∈ states, G.edge s a t)

@[simp] theorem mem_sourceSupportStep
    (G : LabeledGraph State Alphabet)
    (states : Finset State) (a : Alphabet) (t : State) :
    t ∈ sourceSupportStep G states a ↔
      ∃ s ∈ states, G.edge s a t := by
  classical
  simp [sourceSupportStep]

/-- A genuine ORIGINAL one-letter WordPath is equivalent to its
original labeled edge predicate, with the endpoint unchanged. -/
private theorem wordPath_singleton_iff_edge
    (G : LabeledGraph State Alphabet)
    (s t : State) (a : Alphabet) :
    WordPath G s [a] t ↔ G.edge s a t := by
  constructor
  · intro hp
    cases hp with
    | cons _ _ hedge tail =>
        cases tail
        exact hedge
  · intro hedge
    exact WordPath.cons a [] hedge (WordPath.nil t)

/-- Existing reachableEndStates updates by exactly ONE finite
support step, instead of recomputing path witnesses from scratch.
The original starting vertex remains arbitrary in both directions. -/
theorem reachableEndStates_snoc
    (G : LabeledGraph State Alphabet)
    (w : List Alphabet) (a : Alphabet) :
    reachableEndStates G (w ++ [a]) =
      sourceSupportStep G (reachableEndStates G w) a := by
  classical
  ext t
  constructor
  · intro ht
    obtain ⟨start, hpath⟩ :=
      (mem_reachableEndStates G (w ++ [a]) t).mp ht
    obtain ⟨mid, hpre, hlast⟩ :=
      wordPath_split_append G w [a] hpath
    exact (mem_sourceSupportStep G (reachableEndStates G w) a t).mpr
      ⟨mid, (mem_reachableEndStates G w mid).mpr ⟨start, hpre⟩,
        (wordPath_singleton_iff_edge G mid t a).mp hlast⟩
  · intro ht
    obtain ⟨mid, hmid, hedge⟩ :=
      (mem_sourceSupportStep G (reachableEndStates G w) a t).mp ht
    obtain ⟨start, hpre⟩ :=
      (mem_reachableEndStates G w mid).mp hmid
    exact (mem_reachableEndStates G (w ++ [a]) t).mpr
      ⟨start, wordPath_append hpre
        ((wordPath_singleton_iff_edge G mid t a).mpr hedge)⟩

/-- A zero-symbol graph path may begin and end at ANY of the
original states. This remains true even for an empty state carrier. -/
theorem reachableEndStates_nil
    (G : LabeledGraph State Alphabet) :
    reachableEndStates G [] = Finset.univ := by
  classical
  ext t
  rw [mem_reachableEndStates]
  simp only [Finset.mem_univ, iff_true]
  exact ⟨t, WordPath.nil t⟩

/-- Left-to-right finite-state support scan with an explicitly
selected initial finite set. No path multiplicities are accumulated. -/
noncomputable def sourceSupportAfter
    (G : LabeledGraph State Alphabet)
    (initial : Finset State) (word : List Alphabet) : Finset State :=
  word.foldl (sourceSupportStep G) initial

/-- Exact concatenation: the scan of w++v can be resumed from the
original endpoint-set signature of w. -/
theorem sourceSupportAfter_append
    (G : LabeledGraph State Alphabet)
    (initial : Finset State) (w v : List Alphabet) :
    sourceSupportAfter G initial (w ++ v) =
      sourceSupportAfter G (sourceSupportAfter G initial w) v := by
  simp only [sourceSupportAfter, List.foldl_append]

/-- The finite support scan retains exactly the endpoints of
original WordPaths from SOME state in the supplied initial set. -/
theorem sourceSupportAfter_mem_iff
    (G : LabeledGraph State Alphabet) (initial : Finset State)
    (w : List Alphabet) (t : State) :
    t ∈ sourceSupportAfter G initial w ↔
      ∃ s ∈ initial, WordPath G s w t := by
  induction w using List.reverseRecOn generalizing t with
  | nil =>
      change t ∈ initial ↔ ∃ s ∈ initial, WordPath G s [] t
      constructor
      · intro ht
        exact ⟨t, ht, WordPath.nil t⟩
      · rintro ⟨s, hs, hpath⟩
        cases hpath
        exact hs
  | append_singleton prefix a ih =>
      rw [sourceSupportAfter_append]
      change t ∈ sourceSupportStep G
          (sourceSupportAfter G initial prefix) a ↔
        ∃ s ∈ initial, WordPath G s (prefix ++ [a]) t
      rw [mem_sourceSupportStep]
      constructor
      · rintro ⟨mid, hmid, hedge⟩
        obtain ⟨s, hs, hprefix⟩ := (ih mid).mp hmid
        exact ⟨s, hs, wordPath_append hprefix
          (WordPath.cons a [] hedge (WordPath.nil t))⟩
      · rintro ⟨s, hs, hpath⟩
        obtain ⟨mid, hprefix, hlast⟩ :=
          wordPath_split_append G prefix [a] hpath
        exact ⟨mid, (ih mid).mpr ⟨s, hs, hprefix⟩,
          (wordPath_singleton_iff_edge G mid t a).mp hlast⟩

/-- The support scan with ALL initial states is exactly the
existing original reachableEndStates representation. -/
theorem sourceSupportAfter_univ_eq_reachableEndStates
    (G : LabeledGraph State Alphabet) (w : List Alphabet) :
    sourceSupportAfter G Finset.univ w =
      reachableEndStates G w := by
  classical
  ext t
  rw [sourceSupportAfter_mem_iff, mem_reachableEndStates]
  simp

/-- From one fixed original source state, the finite scan is
equivalent to an ACTUAL original labeled WordPath. -/
theorem sourceSupportAfter_singleton_iff_wordPath
    (G : LabeledGraph State Alphabet)
    (w : List Alphabet) (s t : State) :
    t ∈ sourceSupportAfter G ({s} : Finset State) w ↔
      WordPath G s w t := by
  classical
  rw [sourceSupportAfter_mem_iff]
  simp

/-- Reusing the ORIGINAL exact word-matrix source proof:
one support endpoint exists exactly when its original source
path multiplicity (a Nat) is positive. -/
theorem sourceSupportAfter_iff_wordLiftMatrix_pos
    (G : LabeledGraph State Alphabet)
    (w : List Alphabet) (s t : State) :
    t ∈ sourceSupportAfter G ({s} : Finset State) w ↔
      0 < wordLiftMatrix G w s t := by
  rw [sourceSupportAfter_singleton_iff_wordPath]
  simpa [finiteCopies] using
    (wordLiftMatrix_pow_apply_pos_iff_wordPath G w 1 s t).symm

/-- The same support predicate is certified by the optimized
per-letter Nat matrix product, without retaining a giant witness list. -/
theorem sourceSupportAfter_iff_wordMatrixProduct_pos
    (G : LabeledGraph State Alphabet)
    (w : List Alphabet) (s t : State) :
    t ∈ sourceSupportAfter G ({s} : Finset State) w ↔
      0 < wordMatrixProduct G w s t := by
  simpa only [wordLiftMatrix_eq_wordMatrixProduct] using
    (sourceSupportAfter_iff_wordLiftMatrix_pos G w s t)

/-- A word belongs to the original WHOLE graph language iff its
scan from all original states has at least one reachable endpoint. -/
theorem graphLanguage_iff_supportAfter_nonempty
    (G : LabeledGraph State Alphabet) (w : List Alphabet) :
    GraphLanguage G w ↔
      (sourceSupportAfter G Finset.univ w).Nonempty := by
  constructor
  · rintro ⟨s, t, hpath⟩
    exact ⟨t, (sourceSupportAfter_mem_iff G Finset.univ w t).mpr
      ⟨s, Finset.mem_univ _, hpath⟩⟩
  · rintro ⟨t, ht⟩
    obtain ⟨s, _, hpath⟩ :=
      (sourceSupportAfter_mem_iff G Finset.univ w t).mp ht
    exact ⟨s, t, hpath⟩

/-- Finite support iteration across literal complete word blocks.
The SAME original per-letter graph transition is reused at each block. -/
noncomputable def sourceRepeatedSupport
    (G : LabeledGraph State Alphabet)
    (word : List Alphabet) (initial : Finset State) :
    ℕ → Finset State
  | 0 => initial
  | k + 1 => sourceSupportAfter G
      (sourceRepeatedSupport G word initial k) word

/-- Repeated support is exactly the one-pass scan over the original
finiteCopies word k, at all repetition lengths including zero. -/
theorem sourceRepeatedSupport_eq_finiteCopies
    (G : LabeledGraph State Alphabet)
    (word : List Alphabet) (initial : Finset State) (k : ℕ) :
    sourceRepeatedSupport G word initial k =
      sourceSupportAfter G initial (finiteCopies word k) := by
  induction k with
  | zero =>
      simp [sourceRepeatedSupport, finiteCopies, sourceSupportAfter]
  | succ k ih =>
      change sourceSupportAfter G
        (sourceRepeatedSupport G word initial k) word =
        sourceSupportAfter G initial (finiteCopies word k ++ word)
      rw [ih]
      exact (sourceSupportAfter_append G initial (finiteCopies word k) word).symm

/-- The support-only repeated-block scan retains precisely the
original TRUE (proof-valued) closed or open WordPath endpoints. -/
theorem sourceRepeatedSupport_singleton_iff_wordPath
    (G : LabeledGraph State Alphabet)
    (word : List Alphabet) (k : ℕ) (s t : State) :
    t ∈ sourceRepeatedSupport G word ({s} : Finset State) k ↔
      WordPath G s (finiteCopies word k) t := by
  rw [sourceRepeatedSupport_eq_finiteCopies]
  exact sourceSupportAfter_singleton_iff_wordPath G _ s t

/-- The support recurrence is exactly the POSITIVE SUPPORT of
the original Nat word-matrix power, without keeping multiplicity. -/
theorem sourceRepeatedSupport_iff_wordMatrixPow_pos
    (G : LabeledGraph State Alphabet)
    (word : List Alphabet) (k : ℕ) (s t : State) :
    t ∈ sourceRepeatedSupport G word ({s} : Finset State) k ↔
      0 < ((wordLiftMatrix G word) ^ k) s t := by
  exact (sourceRepeatedSupport_singleton_iff_wordPath G word k s t).trans
    (wordLiftMatrix_pow_apply_pos_iff_wordPath G word k s t).symm

/-- A bounded cycle in the finite support automaton: an original
source state returns to ITSELF after k repetitions of the same word.
The sharp k <= card(State) bound is preserved. -/
def HasBoundedSourceSupportCycle
    (G : LabeledGraph State Alphabet) (word : List Alphabet) : Prop :=
  ∃ k : ℕ, 0 < k ∧ k ≤ Fintype.card State ∧
    ∃ s : State,
      s ∈ sourceRepeatedSupport G word ({s} : Finset State) k

/-- A source-cycle support witness is equivalent to the earlier
optimized Nat-valued cycle-trace positivity test. This is an exact
support abstraction, not a mistaken equality of their magnitudes. -/
theorem boundedSourceSupportCycle_iff_boundedWordCycleTrace_pos
    (G : LabeledGraph State Alphabet) (word : List Alphabet) :
    HasBoundedSourceSupportCycle G word ↔
      0 < boundedWordCycleTrace G word := by
  constructor
  · rintro ⟨k, hk, hBound, s, hs⟩
    have hpath : WordPath G s (finiteCopies word k) s :=
      (sourceRepeatedSupport_singleton_iff_wordPath G word k s s).mp hs
    exact (boundedWordCycleTrace_pos_iff G word).mpr
      ⟨k, hk, hBound,
        (wordPowerClosedPathBridge_proof G word k).mpr ⟨s, hpath⟩⟩
  · intro h
    obtain ⟨k, hk, hBound, htrace⟩ :=
      (boundedWordCycleTrace_pos_iff G word).mp h
    obtain ⟨s, hpath⟩ :=
      (wordPowerClosedPathBridge_proof G word k).mp htrace
    exact ⟨k, hk, hBound, s,
      (sourceRepeatedSupport_singleton_iff_wordPath G word k s s).mpr hpath⟩

/-- The complete factor-language condition of an original infinite
periodic word is equivalent to a bounded finite-state support cycle.
This uses exact equality of ALL graph-language words. -/
theorem periodic_word_iff_bounded_source_support_cycle
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n)
    (letters : Fin n → Alphabet) :
    (∀ w : List Alphabet,
      HasFiniteBlock (repeatBlock hn letters) w → language w) ↔
      HasBoundedSourceSupportCycle G (List.ofFn letters) := by
  exact (periodic_word_iff_bounded_cycle_trace_pos
    G language hExact n hn letters).trans
    (boundedSourceSupportCycle_iff_boundedWordCycleTrace_pos
      G (List.ofFn letters)).symm

/-- Count DISTINCT period-n source label points by a single
bounded finite-set cycle predicate for each original n-letter word.
Each label block contributes zero or one, not its number of lifts. -/
noncomputable def sourceSupportPeriodicWordCount
    (G : LabeledGraph State Alphabet) (n : ℕ) : ℕ := by
  classical
  exact ∑ letters : Fin n → Alphabet,
    if HasBoundedSourceSupportCycle G (List.ofFn letters) then 1 else 0

/-- The finite-support periodic-word count is EXACTLY the existing
optimized Nat-matrix count, for every n including zero. -/
theorem sourceSupportPeriodicWordCount_eq_optimized
    (G : LabeledGraph State Alphabet) (n : ℕ) :
    sourceSupportPeriodicWordCount G n =
      optimizedPeriodicWordCount G n := by
  classical
  unfold sourceSupportPeriodicWordCount optimizedPeriodicWordCount
  apply Finset.sum_congr rfl
  intro letters _
  have hiff :=
    boundedSourceSupportCycle_iff_boundedWordCycleTrace_pos
      G (List.ofFn letters)
  by_cases hcycle : HasBoundedSourceSupportCycle G (List.ofFn letters)
  · have hpos := hiff.mp hcycle
    simp [hcycle, hpos]
  · have hnot : ¬ 0 < boundedWordCycleTrace G (List.ofFn letters) :=
      fun h => hcycle (hiff.mpr h)
    simp [hcycle, hnot]

/-- The number of genuine distinct period-dividing-n label points
of the original exact whole finite-factor language equals the
support-only count; no source-n multiplicity is discarded elsewhere. -/
theorem periodicLabelPoint_card_eq_sourceSupportCount
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      sourceSupportPeriodicWordCount G n := by
  calc
    Fintype.card (PeriodicLabelPoint language n hn) =
        optimizedPeriodicWordCount G n :=
      periodicLabelPoint_card_eq_optimizedCount G language hExact n hn
    _ = sourceSupportPeriodicWordCount G n :=
      (sourceSupportPeriodicWordCount_eq_optimized G n).symm

/-- The original adjacency-based cycle multiplicity remains on its
own side of the precise SAME signed missing/surplus ledger, after
support-only periodic-word recognition is substituted. -/
theorem adjacency_trace_add_unlifted_eq_support_count_add_surplus
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      sourceSupportPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  calc
    Matrix.trace (labeledAdjacency G ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      optimizedPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) :=
      adjacency_trace_with_defects_eq_optimizedCount
        G language hExact n hn
    _ = sourceSupportPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
      rw [(sourceSupportPeriodicWordCount_eq_optimized G n).symm]

/-- Source-certified graph matrices inherit the SAME corrected
periodic-label support count, without any unlabeled-graph or
analytic-zeta identification. -/
theorem certified_matrix_trace_add_unlifted_eq_support_count_add_surplus
    (G : LabeledGraph State Alphabet)
    (M : Matrix State State ℕ)
    (hRelation : GraphMatrixRelation G M)
    (language : List Alphabet → Prop)
    (hExact : ∀ w, language w ↔ GraphLanguage G w)
    (n : ℕ) (hn : 0 < n) :
    Matrix.trace (M ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      sourceSupportPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
  calc
    Matrix.trace (M ^ n) +
        unliftedLabelCount (canonicalCycleMap G language hExact n hn) =
      optimizedPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) :=
      certified_matrix_trace_with_defects_eq_optimizedCount
        G M hRelation language hExact n hn
    _ = sourceSupportPeriodicWordCount G n +
        surplusLabelLiftCount (canonicalCycleMap G language hExact n hn) := by
      rw [(sourceSupportPeriodicWordCount_eq_optimized G n).symm]

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteSupportAutomaton
