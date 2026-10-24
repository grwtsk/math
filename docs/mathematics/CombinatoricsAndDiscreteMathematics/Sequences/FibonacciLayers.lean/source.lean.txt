/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI Codex.
Mathlib results retain their upstream authorship and Apache-2.0 license. -/
import Mathlib.Data.Nat.Fib.Basic
import Mathlib.Data.Fintype.BigOperators
import Mathlib.Data.Fintype.Option
import Mathlib.Data.Finset.Max
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.Order

/-!+# Finite Fibonacci layers

Ten disjoint finite layers have widths `F₁, …, F₁₀`. Their dependent sum has
143 elements; adjoining one distinguished root gives 144 vertices. The root
is distinct from the Fibonacci value `F₀ = 0`.

The adjacent-layer parent index is `i * p / c` for child index `i`, parent
width `p`, and child width `c`. The generic finite-fiber theorem proves an
outdegree bound of two when `0 < c ≤ 2*p`. These are finite combinatorial
statements, not assertions about execution, worker authority, or stability.
-/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.Sequences.FibonacciLayers

open scoped BigOperators

abbrev Layer := Fin 10

/-- A zero-based layer index represents the positive Fibonacci index `i+1`. -/
def width (i : Layer) : ℕ := Nat.fib (i.val + 1)

/-- The dependent sum keeps the ten component sets disjoint. -/
abbrev VertexInLayers := (i : Layer) × Fin (width i)

/-- `none` is an additional distinguished root, outside every finite layer. -/
abbrev RootedVertex := Option VertexInLayers

def root : RootedVertex := none

def level : RootedVertex → ℕ
  | none => 0
  | some vertex => vertex.1.val + 1

theorem widths_exact :
    List.ofFn width = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55] := by
  decide

theorem width_pos (i : Layer) : 0 < width i := by
  exact Nat.fib_pos.mpr (by omega)

theorem width_le_fifty_five (i : Layer) : width i ≤ 55 := by
  have hi : i.val + 1 ≤ 10 := by omega
  have h := Nat.fib_mono hi
  have hten : Nat.fib 10 = 55 := by decide
  simpa only [width, hten] using h

theorem component_card (i : Layer) : Fintype.card (Fin (width i)) = width i :=
  Fintype.card_fin _

theorem sum_widths : (∑ i : Layer, width i) = 143 := by
  decide

theorem card_layers : Fintype.card VertexInLayers = 143 := by
  calc
    Fintype.card VertexInLayers = ∑ i : Layer, width i := by
      simp only [VertexInLayers, Fintype.card_sigma, Fintype.card_fin]
    _ = 143 := sum_widths

theorem card_rooted : Fintype.card RootedVertex = 144 := by
  rw [Fintype.card_option, card_layers]

theorem root_distinct (vertex : VertexInLayers) : some vertex ≠ root := by
  simp [root]

theorem level_zero_iff (vertex : RootedVertex) : level vertex = 0 ↔ vertex = root := by
  cases vertex <;> simp [level, root]

theorem positive_level_bounds (vertex : VertexInLayers) :
    1 ≤ level (some vertex) ∧ level (some vertex) ≤ 10 := by
  have hi := vertex.1.isLt
  simp only [level]
  omega

/-- Each element of the dependent sum has exactly one component index. -/
theorem component_unique (vertex : VertexInLayers) :
    ∃! i : Layer, vertex.1 = i := by
  exact ⟨vertex.1, rfl, fun _ h => h.symm⟩

theorem adjacent_width_bounds (n : ℕ) :
    Nat.fib (n + 1) ≤ Nat.fib (n + 2) ∧
      Nat.fib (n + 2) ≤ 2 * Nat.fib (n + 1) := by
  have h := Nat.fib_le_fib_succ (n := n)
  constructor
  · exact Nat.fib_le_fib_succ
  · rw [Nat.fib_add_two]
    omega

/-- The contiguous balanced parent index used between finite layers. -/
def parentIndex (p c i : ℕ) : ℕ := i * p / c

theorem parentIndex_lt (p c i : ℕ) (hp : 0 < p) (hc : 0 < c) (hi : i < c) :
    parentIndex p c i < p := by
  apply (Nat.div_lt_iff_lt_mul hc).2
  simpa only [Nat.mul_comm] using (mul_lt_mul_of_pos_right hi hp)

/-- Two child indices in the same parent fiber differ by less than two. -/
theorem parentIndex_span (p c i j : ℕ) (hc : 0 < c) (hcap : c ≤ 2 * p)
    (hparent : parentIndex p c i = parentIndex p c j) : j < i + 2 := by
  have hlo : (i * p / c) * c ≤ i * p := Nat.div_mul_le_self _ _
  have hquot : j * p / c < i * p / c + 1 := by
    unfold parentIndex at hparent
    omega
  have hhi : j * p < (i * p / c + 1) * c :=
    (Nat.div_lt_iff_lt_mul hc).1 hquot
  by_contra h
  have hsep : i + 2 ≤ j := by omega
  have hmul : (i + 2) * p ≤ j * p := Nat.mul_le_mul_right p hsep
  nlinarith

/-- Any finite subset of one parent fiber has cardinality at most two. -/
theorem parent_fiber_card_le_two (p c q : ℕ) (hc : 0 < c) (hcap : c ≤ 2 * p)
    (s : Finset ℕ) (hs : ∀ i ∈ s, parentIndex p c i = q) : s.card ≤ 2 := by
  by_cases hnonempty : s.Nonempty
  · let a := s.min' hnonempty
    have ha : a ∈ s := Finset.min'_mem s hnonempty
    have hsub : s ⊆ {a, a + 1} := by
      intro i hi
      have hlow : a ≤ i := Finset.min'_le s i hi
      have hspan := parentIndex_span p c a i hc hcap ((hs a ha).trans (hs i hi).symm)
      have heq : i = a ∨ i = a + 1 := by omega
      simpa only [Finset.mem_insert, Finset.mem_singleton] using heq
    exact (Finset.card_le_card hsub).trans Finset.card_le_two
  · have hempty : s = ∅ := Finset.not_nonempty_iff_eq_empty.mp hnonempty
    simp only [hempty, Finset.card_empty, Nat.zero_le]

/-- Children of the `q`-th parent in two consecutive positive Fibonacci layers. -/
def children (n q : ℕ) : Finset ℕ :=
  (Finset.range (Nat.fib (n + 2))).filter
    (fun i => parentIndex (Nat.fib (n + 1)) (Nat.fib (n + 2)) i = q)

theorem children_card_le_two (n q : ℕ) : (children n q).card ≤ 2 := by
  apply parent_fiber_card_le_two (Nat.fib (n + 1)) (Nat.fib (n + 2)) q
    (Nat.fib_pos.mpr (by omega)) (adjacent_width_bounds n).2
  intro i hi
  exact (Finset.mem_filter.mp hi).2

/-- Directed edges always connect the root or two successive layers. -/
def Edge : RootedVertex → RootedVertex → Prop
  | none, some child => child.1.val = 0
  | some parent, some child =>
      child.1.val = parent.1.val + 1 ∧
        parentIndex (width parent.1) (width child.1) child.2.val = parent.2.val
  | _, _ => False

theorem no_edge_into_root (vertex : RootedVertex) : ¬ Edge vertex root := by
  cases vertex <;> simp [Edge, root]

/-- The level is a strict rank for every directed edge. -/
theorem edge_level_increases (left right : RootedVertex) (h : Edge left right) :
    level left < level right := by
  cases left with
  | none =>
      cases right with
      | none => exact False.elim h
      | some child => simp only [level]; omega
  | some parent =>
      cases right with
      | none => exact False.elim h
      | some child =>
          have hstep : child.1.val = parent.1.val + 1 := h.1
          simp only [level]
          omega

end GRWTSK.Combinatorics.Sequences.FibonacciLayers
