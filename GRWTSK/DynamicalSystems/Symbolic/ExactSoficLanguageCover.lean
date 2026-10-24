/-
Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical direction: grwtsk contributors. Formalization assistance: OpenAI.
SOURCE_ONLY / NOT_RUN / NOT_KERNEL_AUDITED.
-/
import GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery
import Mathlib

/-!
# A genuine finite labeled graph and exact sofic factor-language boundary

A trace *running along a labeled finite graph* is NOT evidence that its
orbit closure has a sofic language: the one-state full-shift graph reads
EVERY infinite trace. A meaningful sofic assertion must present the
ENTIRE finite-block language, rather than one possible path.

The exact-language criterion below records a finite labeled graph
with matching finite word language. For a one-sided trace, that is
the factor language of its shift-orbit closure; the bidirectional
extension and recurrent-state pruning remain distinct tasks.

This is a typed finite graph and its actual path relation, not a
finite-state predicate or an assumption that zeta zero traces are sofic.
-/

set_option autoImplicit false
noncomputable section
namespace GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover

universe u v

/-- An edge is indexed by source state, emitted label and destination state. -/
structure LabeledGraph (State : Type u) (Alphabet : Type v) where
  edge : State → Alphabet → State → Prop

/-- The actual inductive finite path condition on an edge-labeled graph. -/
inductive WordPath {State : Type u} {Alphabet : Type v}
    (G : LabeledGraph State Alphabet) :
    State → List Alphabet → State → Prop where
  | nil (s : State) : WordPath G s [] s
  | cons {s t u : State} (a : Alphabet) (word : List Alphabet)
      (head : G.edge s a t) (tail : WordPath G t word u) :
      WordPath G s (a :: word) u

/-- The finite graph path language, not a single path's symbol stream. -/
def GraphLanguage {State : Type u} {Alphabet : Type v}
    (G : LabeledGraph State Alphabet) (word : List Alphabet) : Prop :=
  ∃ start finish : State, WordPath G start word finish

/-- An infinite trace admitted along one particular graph state path. -/
def RunsOnGraph {State : Type u} {Alphabet : Type v}
    (G : LabeledGraph State Alphabet) (trace : ℕ → Alphabet) : Prop :=
  ∃ state : ℕ → State,
    ∀ n, G.edge (state n) (trace n) (state (n + 1))

/-- The one-vertex universal full-shift graph. Its edge relation
contains every letter, including one that the selected trace never uses. -/
def fullShiftGraph (Alphabet : Type v) : LabeledGraph Unit Alphabet where
  edge := fun _ _ _ => True

/-- A single state path exists for EVERY infinite trace on the full shift.
Thus path-admission alone cannot prove orbit-language soficity. -/
theorem every_trace_runs_on_full_shift
    {Alphabet : Type v} (trace : ℕ → Alphabet) :
    RunsOnGraph (fullShiftGraph Alphabet) trace := by
  refine ⟨fun _ => (), ?_⟩
  intro n
  trivial

/-- Every finite word also labels some finite full-shift path. -/
theorem fullShiftGraph_path_all
    {Alphabet : Type v} (word : List Alphabet) :
    WordPath (fullShiftGraph Alphabet) () word () := by
  induction word with
  | nil => exact WordPath.nil ()
  | cons a tail ih =>
      exact WordPath.cons a tail trivial ih

theorem fullShiftGraph_language_all
    {Alphabet : Type v} (word : List Alphabet) :
    GraphLanguage (fullShiftGraph Alphabet) word :=
  ⟨(), (), fullShiftGraph_path_all word⟩

/-- All finite blocks appearing in a one-sided trace at some offset. -/
def HasFiniteBlock {Alphabet : Type v}
    (trace : ℕ → Alphabet) (word : List Alphabet) : Prop :=
  ∃ offset : ℕ, ∀ i : Fin word.length,
    trace (offset + i.val) = word.get i

/-- A true source-language sofic presentation requires a finite carrier
and equality of the WHOLE finite-factor language and the graph language. -/
structure ExactLanguagePresentation
    (Alphabet : Type v) (language : List Alphabet → Prop) where
  State : Type u
  finiteState : Fintype State
  graph : LabeledGraph State Alphabet
  exactLanguage : ∀ word,
    language word ↔ GraphLanguage graph word

/-- The actual source-language property, not merely acceptance of one path. -/
def IsSoficFactorLanguage {Alphabet : Type v}
    (language : List Alphabet → Prop) : Prop :=
  Nonempty (ExactLanguagePresentation.{0,v} Alphabet language)

/-- A one-sided trace is sofic here exactly when its FULL factor language
admits a finite labeled graph with exact language equality. -/
def IsSoficTrace {Alphabet : Type v} (trace : ℕ → Alphabet) : Prop :=
  IsSoficFactorLanguage (HasFiniteBlock trace)

/-- The tail after an explicitly chosen finite burn-in stage. -/
def tailTrace {Alphabet : Type v}
    (trace : ℕ → Alphabet) (start : ℕ) : ℕ → Alphabet :=
  fun n => trace (start + n)

/-- EVENTUAL soficity requires an exact finite labeled presentation of
the entire factor language of some tail, NOT merely one finite-state path.
The offset is part of the witness and may depend on the source. -/
def EventuallySoficTrace {Alphabet : Type v}
    (trace : ℕ → Alphabet) : Prop :=
  ∃ start : ℕ, IsSoficTrace (tailTrace trace start)

/-- Full soficity is enough for eventual soficity with burn-in zero. -/
theorem eventuallySofic_of_sofic
    {Alphabet : Type v} {trace : ℕ → Alphabet}
    (h : IsSoficTrace trace) :
    EventuallySoficTrace trace := by
  refine ⟨0, ?_⟩
  simpa only [tailTrace, zero_add] using h

/-- A witnessed exact presentation supplies the genuine sofic predicate. -/
theorem sofic_of_exact_language
    {Alphabet : Type v} {trace : ℕ → Alphabet}
    (P : ExactLanguagePresentation.{0,v}
      Alphabet (HasFiniteBlock trace)) :
    IsSoficTrace trace :=
  ⟨P⟩

/-- The full-shift graph reads even the constant-false trace, but
its FULL path language does not match that trace's finite factors.
This demonstrates why the old finite-state observer was too weak. -/
theorem fullShiftGraph_not_exact_for_constant_false :
    ¬ ∀ word : List Bool,
      HasFiniteBlock (fun _ : ℕ => false) word ↔
        GraphLanguage (fullShiftGraph Bool) word := by
  intro h
  have hblock : HasFiniteBlock (fun _ : ℕ => false) [true] :=
    (h [true]).mpr (fullShiftGraph_language_all [true])
  rcases hblock with ⟨offset, heq⟩
  have h0 := heq (⟨0, by decide⟩ : Fin 1)
  simp at h0

end GRWTSK.DynamicalSystems.Symbolic.ExactSoficLanguageCover
