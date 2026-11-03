/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCycleRepeatBridge
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficCycleLabelBijection
import Mathlib.Data.List.OfFn
import Mathlib.Data.List.Infix
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Close the pure finite-list repetition premise as a source proof candidate

The same ACTUAL cycle word drives both the source repeatBlock and its
finiteCopies. A finite periodic block starting at any offset occurs
inside a sufficiently long finite repetition of that cycle word.

The proof uses pinned List.ofFn_fin_repeat and the core
List.infix_iff_getElem? index characterization. No deterministic
graph assumption, invented edge, external language, or period lift
bijectivity is introduced. All Lean/native verification remains NOT_RUN.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteRepeatClosure

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBasedCycleCard
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicFiberLedger
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepeatBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleLabelBijection

universe u v
variable {Alphabet : Type v}

/-- The original recursive finiteCopies equals the unmodified
flattened repetition of the very same list. -/
private theorem finiteCopies_eq_replicate_flatten
    (w : List Alphabet) (k : ℕ) :
    finiteCopies w k = (List.replicate k w).flatten := by
  induction k with
  | zero =>
      rfl
  | succ k ih =>
      calc
        finiteCopies w (k + 1) = finiteCopies w k ++ w := rfl
        _ = (List.replicate k w).flatten ++ w := by rw [ih]
        _ = (List.replicate (k + 1) w).flatten := by
          rw [List.replicate_succ', List.flatten_concat]

/-- The pinned ofFn/Fin.repeat equation transfers the finite list
recursion to a closed, explicitly indexed finite tuple. -/
private theorem finiteCopies_ofFn_repeat
    {n : ℕ} (letters : Fin n → Alphabet) (k : ℕ) :
    finiteCopies (List.ofFn letters) k =
      List.ofFn (Fin.repeat k letters) := by
  calc
    finiteCopies (List.ofFn letters) k =
        (List.replicate k (List.ofFn letters)).flatten :=
      finiteCopies_eq_replicate_flatten _ _
    _ = List.ofFn (Fin.repeat k letters) :=
      (List.ofFn_fin_repeat letters k).symm

/-- Every contiguous block of the infinite n-periodic tuple occurs
in finitely many genuine copies, without ANY graph hypotheses.
The explicit witness k=offset+length+1 pays even the empty block. -/
private theorem periodicBlock_infix_finiteCopies
    {n : ℕ} (hn : 0 < n)
    (letters : Fin n → Alphabet) (word : List Alphabet)
    (hblock : HasFiniteBlock (repeatBlock hn letters) word) :
    ∃ (k : ℕ) (prefix suffix : List Alphabet),
      finiteCopies (List.ofFn letters) k = prefix ++ word ++ suffix := by
  obtain ⟨offset, hAt⟩ := hblock
  let k : ℕ := offset + word.length + 1
  have hbound : word.length + offset ≤ k * n := by
    have h₁ : word.length + offset ≤ k := by
      dsimp [k]
      omega
    have h₂ : k ≤ k * n := by
      simpa only [mul_one] using
        (Nat.mul_le_mul_left k (show 1 ≤ n from hn))
    exact h₁.trans h₂
  have hinfix :
      word <:+: finiteCopies (List.ofFn letters) k := by
    apply List.infix_iff_getElem?.2
    refine ⟨offset, ?_, ?_⟩
    · simpa [finiteCopies_ofFn_repeat, List.length_ofFn] using hbound
    · intro i hi
      have hiIndex : i + offset < k * n := by omega
      have helem :
          (finiteCopies (List.ofFn letters) k)[i + offset]? =
            some (repeatBlock hn letters (offset + i)) := by
        rw [finiteCopies_ofFn_repeat]
        simp [List.getElem?_ofFn, Fin.repeat_apply,
          Fin.modNat, repeatBlock, hiIndex, Nat.add_comm]
      rw [helem]
      simpa only [List.get_eq_getElem] using
        congrArg some (hAt ⟨i, hi⟩)
  obtain ⟨prefix, suffix, hpart⟩ := hinfix
  exact ⟨k, prefix, suffix, hpart⟩

variable {State : Type u}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- The literal n-letter block emitted by an ACTUAL based cycle,
viewed as a Fin n tuple, reproduces its complete original list.
The cast is justified by walkDataLabels_length, not by truncation. -/
private theorem ofFn_basedCycleWord
    (G : LabeledGraph State Alphabet) (n : ℕ)
    (c : BasedCycleData G n) :
    List.ofFn (basedCycleWord G n c) =
      walkDataLabels G c.2 := by
  have hlen : (walkDataLabels G c.2).length = n :=
    walkDataLabels_length G c.2
  calc
    List.ofFn (basedCycleWord G n c) =
        List.ofFn (fun i : Fin n =>
          (walkDataLabels G c.2).get (Fin.cast hlen.symm i)) := rfl
    _ = List.ofFn (List.get (walkDataLabels G c.2)) :=
      (List.ofFn_congr hlen (List.get (walkDataLabels G c.2))).symm
    _ = walkDataLabels G c.2 := List.ofFn_get _

/-- Unconditional source-level proof attempt for the EXISTING named
pure list/periodic-index proposition. No hFactors hypothesis remains.
A native Lean elaborator/kernel check is still required. -/
theorem repeatBlockOccursInFiniteCopies_proof
    (G : LabeledGraph State Alphabet) (n : ℕ) (hn : 0 < n) :
    RepeatBlockOccursInFiniteCopies G n hn := by
  intro c word hblock
  obtain ⟨k, prefix, suffix, hpart⟩ :=
    periodicBlock_infix_finiteCopies hn
      (basedCycleWord G n c) word hblock
  refine ⟨k, prefix, suffix, ?_⟩
  rw [← ofFn_basedCycleWord G n c]
  exact hpart

/-- The ORIGINAL source-bound cycle-to-periodic-label map now
follows from full exact-language equality alone: no unproved
hFactors argument, no injective/surjective lift assumption. -/
theorem hasLabelPreservingCycleMap_of_exact
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n) :
    HasLabelPreservingCycleMap G language n hn :=
  hasLabelPreservingCycleMap_of_finiteCopies G language hExact n hn
    (repeatBlockOccursInFiniteCopies_proof G n hn)

/-- Exact full-language presentation AUTOMATICALLY pays the
CycleWordsAdmissible part of the separately published three-premise
graph-to-label bijection criterion. Faithful and complete period-n
lifts remain distinct unsupplied arithmetic/combinatorial premises. -/
theorem cycleWordsAdmissible_of_exact
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n) :
    CycleWordsAdmissible G language n hn := by
  obtain ⟨f, hLabels⟩ :=
    hasLabelPreservingCycleMap_of_exact G language hExact n hn
  intro c word hblock
  exact (f c).property word
    (by simpa only [hLabels c] using hblock)

/-- All based n-cycle lift defects for a genuine exact-language
presentation now admit the published finite fiber accounting with
no extra periodic-list hypothesis. No trace/label equality asserted. -/
theorem exactLanguage_periodicFiberBalance
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n) :
    ∃ f : BasedCycleData G n → PeriodicLabelPoint language n hn,
      (∀ c, (f c).val = basedCycleWord G n c) ∧
        Matrix.trace (labeledAdjacency G ^ n) +
          unliftedLabelCount f =
        Fintype.card (PeriodicLabelPoint language n hn) +
          surplusLabelLiftCount f :=
  periodicFiberBalance_of_finiteCopies G language hExact n hn
    (repeatBlockOccursInFiniteCopies_proof G n hn)

/-- The complete graph-to-matrix periodic-label equality needs
only the remaining faithful/injective and complete/surjective
based-period lift certificates for the actual selected presentation.
Those certificates are NOT supplied by a general sofic presentation. -/
theorem periodicLabelCard_eq_trace_of_exact_faithful_complete
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n)
    (hfaithful : FaithfulCycleWords G n)
    (hcomplete : CompleteCycleLifts G language n hn) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      Matrix.trace (labeledAdjacency G ^ n) :=
  graph_to_matrix_periodic_point_card G language n hn
    (cycleWordsAdmissible_of_exact G language hExact n hn)
    hfaithful hcomplete

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteRepeatClosure
