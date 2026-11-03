/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.DynamicalSystemsAndErgodicTheory.SoficPeriodicSourceIntegration
import Mathlib

set_option autoImplicit false
noncomputable section

/-!
# Bounded based graph cycles lift genuine infinite periodic streams

The original period-n label-point subtype is a finite Fin n label block
whose WHOLE infinite repeated factor language is admitted. We first
identify that original type with genuine infinite period-n streams
satisfying the same arbitrary-offset language condition.

The published sharp original based-cycle lifting theorem supplies a
closed LabeledWalkData of length m*n with m <= card State. We prove,
at EVERY natural index, that the original lifted cycle's repeated
Fin.repeat m word produces the SAME infinite label stream as the
period-n point. The original basedCycleStateStream then supplies a
graph-state run of period m*n with precisely those observed labels.

No same-period state lift, faithful cycle labeling, analytic limit,
zeta/determinant identity, or arithmetic cancellation is assumed.
-/

namespace GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicStreamBridge

open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.ExactSoficLanguageCover
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMatrixTrace
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicRunFullShift
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficCycleRepetitionFromWalk
open GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicMultipleLift

universe u v
variable {Alphabet : Type v}

/-- A genuine ONE-SIDED infinite periodic sequence, not merely an
arbitrary finite block or one selected finite graph path. All finite
factors must belong to the original supplied language. -/
def PeriodicAdmissibleStream
    (language : List Alphabet → Prop) (n : ℕ) :=
  {trace : ℕ → Alphabet //
    (∀ k, trace (k + n) = trace k) ∧
    ∀ word : List Alphabet, HasFiniteBlock trace word → language word}

/-- A stream with actual period n is completely determined by its first
n letters, including values at every later natural index. -/
private theorem periodic_trace_mod
    (trace : ℕ → Alphabet) (n : ℕ)
    (hPeriod : ∀ k, trace (k + n) = trace k)
    (k : ℕ) :
    trace (k % n) = trace k := by
  have hCopies : ∀ q r : ℕ, trace (r + q * n) = trace r := by
    intro q
    induction q with
    | zero =>
        intro r
        simp
    | succ q ih =>
        intro r
        calc
          trace (r + (q + 1) * n) = trace ((r + q * n) + n) := by
            simp only [Nat.succ_mul, Nat.add_assoc]
          _ = trace (r + q * n) := hPeriod _
          _ = trace r := ih r
  calc
    trace (k % n) = trace (k % n + (k / n) * n) :=
      (hCopies (k / n) (k % n)).symm
    _ = trace k := by
      rw [Nat.mul_comm (k / n) n, Nat.mod_add_div]

/-- The original PeriodicLabelPoint type is exactly the finite-block
coordinate presentation of the genuine infinite period-n admissible
stream type. This is an EQUIVALENCE of actual objects, not just a
finite cardinality coincidence. -/
noncomputable def periodicLabelPoint_equiv_admissibleStream
    (language : List Alphabet → Prop)
    (n : ℕ) (hn : 0 < n) :
    PeriodicLabelPoint language n hn ≃ PeriodicAdmissibleStream language n where
  toFun := fun p =>
    ⟨repeatBlock hn p.val,
      ⟨repeatBlock_period hn p.val, p.property⟩⟩
  invFun := fun p =>
    ⟨(fun i : Fin n => p.val i.val), by
      intro word hBlock
      have hTrace : repeatBlock hn (fun i : Fin n => p.val i.val) = p.val := by
        funext k
        change p.val (k % n) = p.val k
        exact periodic_trace_mod p.val n p.property.1 k
      rw [hTrace] at hBlock
      exact p.property.2 word hBlock⟩
  left_inv := by
    intro p
    apply Subtype.ext
    funext i
    change repeatBlock hn p.val i.val = p.val i
    simp [repeatBlock, Nat.mod_eq_of_lt i.isLt]
  right_inv := by
    intro p
    apply Subtype.ext
    funext k
    change p.val (k % n) = p.val k
    exact periodic_trace_mod p.val n p.property.1 k

/-- A Fin.repeat block at length m*n has the SAME one-sided infinite
label trace as its original length-n word. The proof is the exact
modular identity (k mod (m*n)) mod n = k mod n. -/
theorem repeatBlock_finRepeat_eq
    (n m : ℕ) (hn : 0 < n) (hm : 0 < m)
    (letters : Fin n → Alphabet) :
    repeatBlock (Nat.mul_pos hm hn) (Fin.repeat m letters) =
      repeatBlock hn letters := by
  funext k
  simp only [repeatBlock, Fin.repeat_apply]
  apply congrArg letters
  apply Fin.ext
  change (k % (m * n)) % n = k % n
  exact Nat.mod_mod_of_dvd k ⟨m, Nat.mul_comm m n⟩

variable {State : Type u}
variable [Fintype State] [DecidableEq State] [Fintype Alphabet]

/-- Every genuine periodic label point of an EXACT finite graph
presentation has an actual graph-state run of period m*n for some
positive multiplier bounded by the ORIGINAL number of graph states.
The graph run emits EXACTLY the original infinite period-n trace,
not just an equal length-m*n prefix. -/
theorem periodic_point_has_bounded_periodic_state_run
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n)
    (p : PeriodicLabelPoint language n hn) :
    ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
      ∃ states : ℕ → State,
        (∀ k, states (k + m * n) = states k) ∧
        (∀ k, G.edge (states k)
          (repeatBlock hn p.val k) (states (k + 1))) := by
  obtain ⟨m, hm, hBound, c, hWord⟩ :=
    periodic_label_point_has_exact_repeated_cycleWord
      G language hExact n hn p
  have hmn : 0 < m * n := Nat.mul_pos hm hn
  let states := basedCycleStateStream G (m * n) hmn c
  have hStream :
      repeatBlock hmn (basedCycleWord G (m * n) c) =
        repeatBlock hn p.val := by
    rw [hWord]
    exact repeatBlock_finRepeat_eq n m hn hm p.val
  refine ⟨m, hm, hBound, states, ?_, ?_⟩
  · intro k
    exact basedCycleStateStream_period G (m * n) hmn c k
  · intro k
    have hEdge := basedCycleStateStream_edge G (m * n) hmn c k
    rw [hStream] at hEdge
    exact hEdge

/-- Exact graph-language periodic-point criterion expressed directly
as an INFINITE periodic graph-state run, with the sharp bounded state
period. In the reverse direction the original graph run-to-block
theorem supplies all finite factors, not one selected prefix. -/
theorem periodic_word_iff_bounded_graph_state_run
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n)
    (letters : Fin n → Alphabet) :
    (∀ word : List Alphabet,
        HasFiniteBlock (repeatBlock hn letters) word → language word) ↔
      ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
        ∃ states : ℕ → State,
          (∀ k, states (k + m * n) = states k) ∧
          (∀ k, G.edge (states k)
            (repeatBlock hn letters k) (states (k + 1))) := by
  constructor
  · intro hWords
    exact periodic_point_has_bounded_periodic_state_run
      G language hExact n hn ⟨letters, hWords⟩
  · rintro ⟨m, hm, hBound, states, hPeriod, hSteps⟩
    intro word hBlock
    have hRun : RunsOnGraph G (repeatBlock hn letters) :=
      ⟨states, hSteps⟩
    exact (hExact word).2
      (graphLanguage_of_run_block G (repeatBlock hn letters)
        hRun word hBlock)

/-- The bounded true graph-state period can also be attached to the
same infinite stream arising from an original finite label point.
This is the exact source-side bridge needed before comparisons with
general dynamical shift-periodicity interfaces. -/
theorem admissibleStream_has_bounded_graph_state_run
    (G : LabeledGraph State Alphabet)
    (language : List Alphabet → Prop)
    (hExact : ∀ word, language word ↔ GraphLanguage G word)
    (n : ℕ) (hn : 0 < n)
    (p : PeriodicAdmissibleStream language n) :
    ∃ m : ℕ, 0 < m ∧ m ≤ Fintype.card State ∧
      ∃ states : ℕ → State,
        (∀ k, states (k + m * n) = states k) ∧
        (∀ k, G.edge (states k) p.val k (states (k + 1))) := by
  let q : PeriodicLabelPoint language n hn :=
    (periodicLabelPoint_equiv_admissibleStream language n hn).symm p
  obtain ⟨m, hm, hBound, states, hPeriod, hStep⟩ :=
    periodic_point_has_bounded_periodic_state_run G language hExact n hn q
  have hTrace :
      repeatBlock hn q.val = p.val := by
    exact congrArg Subtype.val
      ((periodicLabelPoint_equiv_admissibleStream language n hn).apply_symm_apply p)
  refine ⟨m, hm, hBound, states, hPeriod, ?_⟩
  intro k
  rw [← hTrace]
  exact hStep k

end GRWTSK.DifferentialEquationsAndDynamicalSystems.DynamicalSystems.SymbolicDynamics.SoficPeriodicStreamBridge
