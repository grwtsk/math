/- Copyright (c) 2026 grwtsk contributors. MIT.
Source-level mathematical formalization assistance: OpenAI ChatGPT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficWordPowerClosedPath
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficMacroBoundaryPigeonhole
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficFiniteRepeatClosure
import Mathlib.Data.List.OfFn
import Mathlib.Data.List.Infix
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# Close the sharp bounded periodic-word criterion at original sources

For a positive length-n word w and a finite original labeled graph G,
a label point with every periodic factor in GraphLanguage G has a
genuine closed word^k lift for some 1 <= k <= card(State).
This is the published original macro-boundary pigeonhole theorem.

The original word-matrix-power bridge makes a closed lift equivalent
to 0 < trace(wordLiftMatrix G w ^ k). Conversely a closed path emitting
k copies repeats indefinitely, and every block of its original
period-n word occurs as a contiguous finite factor of a sufficiently
large number of true original word repetitions.

We preserve both the original n-block and the actual arbitrary-offset
finite-language predicate. No one-period lift, injectivity,
right-resolving presentation or zeta/determinant theorem is assumed.
The entire source remains a Lean candidate until native compilation.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBoundedWordMatrixCriterion

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepeatBridge
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficFiniteRepeatClosure
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicWordMatrix
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficWordPowerClosedPath
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficMacroBoundaryPigeonhole

universe u v
variable {Alphabet : Type v}

/-- Exact source finiteCopies recurrence as a flattened list of
the same original finite word, including zero copies. -/
private theorem finiteCopies_eq_flatten_replicate
    (word : List Alphabet) (r : ℕ) :
    finiteCopies word r = (List.replicate r word).flatten := by
  induction r with
  | zero => rfl
  | succ r ih =>
      calc
        finiteCopies word (r + 1) = finiteCopies word r ++ word := rfl
        _ = (List.replicate r word).flatten ++ word := by rw [ih]
        _ = (List.replicate (r + 1) word).flatten := by
          rw [List.replicate_succ', List.flatten_concat]

private theorem finiteCopies_ofFn_repeat
    {n : ℕ} (letters : Fin n → Alphabet) (r : ℕ) :
    finiteCopies (List.ofFn letters) r =
      List.ofFn (Fin.repeat r letters) := by
  calc
    finiteCopies (List.ofFn letters) r =
        (List.replicate r (List.ofFn letters)).flatten :=
      finiteCopies_eq_flatten_replicate _ _
    _ = List.ofFn (Fin.repeat r letters) :=
      (List.ofFn_fin_repeat letters r).symm

/-- The original initial q copies form an ACTUAL finite block of
the original infinite periodic word, at offset zero. -/
private theorem finiteCopies_is_periodicBlock
    {n : ℕ} (hn : 0 < n)
    (letters : Fin n → Alphabet) (r : ℕ) :
    HasFiniteBlock (repeatBlock hn letters)
      (finiteCopies (List.ofFn letters) r) := by
  refine ⟨0, ?_⟩
  intro i
  have hlen : (finiteCopies (List.ofFn letters) r).length = r * n := by
    rw [finiteCopies_ofFn_repeat]
    exact List.length_ofFn
  have hi : (i : ℕ) < r * n := by
    simpa only [hlen] using i.isLt
  change repeatBlock hn letters (i : ℕ) =
    (finiteCopies (List.ofFn letters) r).get i
  rw [finiteCopies_ofFn_repeat]
  simp [List.get_ofFn, Fin.repeat_apply, Fin.modNat, repeatBlock]

/-- The finite-copy recursion respects sums of repetition counts. -/
private theorem finiteCopies_add
    (word : List Alphabet) (a b : ℕ) :
    finiteCopies word (a + b) =
      finiteCopies word a ++ finiteCopies word b := by
  induction b with
  | zero =>
      simp [finiteCopies]
  | succ b ih =>
      calc
        finiteCopies word (a + (b + 1)) =
            finiteCopies word (a + b) ++ word := rfl
        _ = (finiteCopies word a ++ finiteCopies word b) ++ word := by
          rw [ih]
        _ = finiteCopies word a ++ (finiteCopies word b ++ word) := by
          rw [List.append_assoc]
        _ = finiteCopies word a ++ finiteCopies word (b + 1) := rfl

/-- Repeating a true k-copy word r times emits exactly k*r
original-word copies. No order reversal or quotient is introduced. -/
private theorem finiteCopies_mul
    (word : List Alphabet) (k r : ℕ) :
    finiteCopies (finiteCopies word k) r =
      finiteCopies word (k * r) := by
  induction r with
  | zero =>
      simp [finiteCopies]
  | succ r ih =>
      calc
        finiteCopies (finiteCopies word k) (r + 1) =
            finiteCopies (finiteCopies word k) r ++ finiteCopies word k := rfl
        _ = finiteCopies word (k * r) ++ finiteCopies word k := by
          rw [ih]
        _ = finiteCopies word (k * r + k) :=
          (finiteCopies_add word (k * r) k).symm
        _ = finiteCopies word (k * (r + 1)) := by
          rw [Nat.mul_succ]

/-- The exact infinite periodic block appears as a genuine infix
inside ANY sufficiently long finiteCopies list. The index proof
uses the pinned List.infix_iff_getElem? and Fin.repeat APIs. -/
private theorem periodicBlock_infix_finiteCopies_of_bound
    {n : ℕ} (hn : 0 < n)
    (letters : Fin n → Alphabet)
    (block : List Alphabet) (offset : ℕ)
    (hAt : ∀ i : Fin block.length,
      repeatBlock hn letters (offset + i.val) = block.get i)
    (r : ℕ) (hbound : offset + block.length ≤ r * n) :
    ∃ (prefix suffix : List Alphabet),
      finiteCopies (List.ofFn letters) r =
        prefix ++ block ++ suffix := by
  have hinfix : block <:+: finiteCopies (List.ofFn letters) r := by
    apply List.infix_iff_getElem?.2
    refine ⟨offset, ?_, ?_⟩
    · simpa [finiteCopies_ofFn_repeat, List.length_ofFn,
        Nat.add_comm] using hbound
    · intro i hi
      have hiIndex : i + offset < r * n := by omega
      have helem :
          (finiteCopies (List.ofFn letters) r)[i + offset]? =
            some (repeatBlock hn letters (offset + i)) := by
        rw [finiteCopies_ofFn_repeat]
        simp [List.getElem?_ofFn, Fin.repeat_apply,
          Fin.modNat, repeatBlock, hiIndex, Nat.add_comm]
      rw [helem]
      simpa only [List.get_eq_getElem] using
        congrArg some (hAt ⟨i, hi⟩)
  obtain ⟨prefix, suffix, hpart⟩ := hinfix
  exact ⟨prefix, suffix, hpart⟩

variable {State : Type u}
  [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- If a REAL original graph path closes after a positive number
k of literal word copies, EVERY finite block of the infinite
original one-word repetition belongs to the genuine GraphLanguage.
The number of repetitions needed may depend on the block offset. -/
private theorem allPeriodicBlocks_of_closed_wordCopies
    (G : LabeledGraph State Alphabet)
    {n : ℕ} (hn : 0 < n)
    (letters : Fin n → Alphabet)
    (k : ℕ) (hk : 0 < k)
    {s : State}
    (hclosed : WordPath G s
      (finiteCopies (List.ofFn letters) k) s) :
    ∀ block : List Alphabet,
      HasFiniteBlock (repeatBlock hn letters) block →
        GraphLanguage G block := by
  intro block hblock
  obtain ⟨offset, hAt⟩ := hblock
  let r : ℕ := offset + block.length + 1
  let total : ℕ := k * r
  have hsmall : offset + block.length ≤ r := by
    dsimp [r]
    omega
  have hmult : r ≤ total := by
    have h := Nat.mul_le_mul_right r (show 1 ≤ k from hk)
    simpa [total] using h
  have hperiod : total ≤ total * n := by
    simpa only [mul_one] using
      (Nat.mul_le_mul_left total (show 1 ≤ n from hn))
  have hbound : offset + block.length ≤ total * n :=
    hsmall.trans (hmult.trans hperiod)
  obtain ⟨prefix, suffix, hpart⟩ :=
    periodicBlock_infix_finiteCopies_of_bound
      hn letters block offset hAt total hbound
  have hlarge : WordPath G s (finiteCopies (List.ofFn letters) total) s := by
    have h := wordPath_finiteCopies G hclosed r
    rw [finiteCopies_mul] at h
    exact h
  have hwhole : GraphLanguage G (prefix ++ block ++ suffix) := by
    rw [← hpart]
    exact ⟨s, s, hlarge⟩
  exact graphLanguage_of_contiguous_factor
    G prefix block suffix hwhole

/-- FULL source-level proof candidate of the PREEXISTING sharp
BoundedPeriodicWordMatrixCriterion for ALL finite original graphs,
every exact WHOLE finite-word language, and ALL positive periods.
No assumption of faithful or complete one-period graph lifts. -/
theorem boundedPeriodicWordMatrixCriterion_proof
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) :
    BoundedPeriodicWordMatrixCriterion G language n hn := by
  intro hExact letters
  constructor
  · intro hblocks
    let word := List.ofFn letters
    have hprefix :
        HasFiniteBlock (repeatBlock hn letters)
          (finiteCopies word (Fintype.card State)) :=
      finiteCopies_is_periodicBlock hn letters (Fintype.card State)
    have hgraph :
        GraphLanguage G (finiteCopies word (Fintype.card State)) :=
      (hExact _).mp (hblocks _ hprefix)
    obtain ⟨k, hk, hkle, s, hclosed⟩ :=
      finiteStateBlockBoundaryPigeonhole_proof G word hgraph
    exact ⟨k, hk, hkle,
      (wordPowerClosedPathBridge_proof G word k).2 ⟨s, hclosed⟩⟩
  · rintro ⟨k, hk, hkle, htrace⟩
    obtain ⟨s, hclosed⟩ :=
      (wordPowerClosedPathBridge_proof G (List.ofFn letters) k).1 htrace
    intro block hblock
    exact (hExact block).mpr
      (allPeriodicBlocks_of_closed_wordCopies
        G hn letters k hk hclosed block hblock)

/-- Source-level unconditional mathematical return for the
PREEXISTING number of DISTINCT period-dividing-n label points,
computed by a finite bounded test on exact word transition matrices.
This is NOT the generally FALSE equality with trace(A^n). -/
theorem periodicLabelPoint_card_eq_boundedWordCount_proof
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n)
    (hExact : ∀ word, language word ↔ GraphLanguage G word) :
    Fintype.card (PeriodicLabelPoint language n hn) =
      boundedPeriodicWordCount G n :=
  periodicLabelPoint_card_eq_boundedWordCount
    G language n hn hExact
      (boundedPeriodicWordMatrixCriterion_proof G language n hn)

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficBoundedWordMatrixCriterion
