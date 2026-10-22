/- Copyright (c) 2026 R. A. Jacob Martone. MIT.
Formalization assistance: OpenAI Codex. -/
import GRWTSK.Combinatorics.DirectedEulerSplicing

/-! Exact finite-list endpoint and cyclic-consecutive indexing for actual
endpoint-indexed directed walks. The final seam uses closedness, not a
separate compatibility assumption. -/

set_option autoImplicit false

namespace GRWTSK.Combinatorics.DirectedEulerSplicing.Walk

universe u v
variable {V : Type u} {E : Type v} {tail head : E → V} {a b : V}

/-- The first traversed edge starts at the actual indexed start vertex. -/
theorem tail_getElem_zero (p : Walk tail head a b) (h : 0 < p.edges.length) :
    tail (p.edges[0]'h) = a := by
  cases p with
  | nil => simp only [edges_nil, List.length_nil, Nat.lt_irrefl] at h
  | cons e rest => rfl

/-- An edge-free walk has identical actual start and terminal vertices. -/
theorem endpoints_eq_of_length_zero (p : Walk tail head a b)
    (h : p.edges.length = 0) : a = b := by
  cases p with
  | nil => rfl
  | cons e rest => simp only [edges_cons, List.length_cons, Nat.add_eq_zero_iff,
      Nat.one_ne_zero, and_false] at h

/-- The last traversed edge ends at the actual indexed terminal vertex. -/
theorem head_getElem_last (p : Walk tail head a b) (i : ℕ)
    (hi : i < p.edges.length) (hlast : i + 1 = p.edges.length) :
    head (p.edges[i]'hi) = b := by
  induction p generalizing i with
  | nil => simp only [edges_nil, List.length_nil, Nat.not_lt_zero] at hi
  | cons e rest ih =>
      cases i with
      | zero =>
          have hlen : rest.edges.length = 0 := by
            simp only [edges_cons, List.length_cons] at hlast
            omega
          exact endpoints_eq_of_length_zero rest hlen
      | succ i =>
          have hi' : i < rest.edges.length := by
            simp only [edges_cons, List.length_cons] at hi
            omega
          have hlast' : i + 1 = rest.edges.length := by
            simp only [edges_cons, List.length_cons] at hlast
            omega
          simpa only [edges_cons, List.getElem_cons_succ] using ih i hi' hlast'

/-- Every two consecutive traversed edge IDs have exact matching endpoints. -/
theorem head_getElem_succ (p : Walk tail head a b) (i : ℕ)
    (hi : i + 1 < p.edges.length) :
    head (p.edges[i]'(by omega)) = tail (p.edges[i + 1]'hi) := by
  induction p generalizing i with
  | nil => simp only [edges_nil, List.length_nil, Nat.not_lt_zero] at hi
  | cons e rest ih =>
      cases i with
      | zero =>
          have hpos : 0 < rest.edges.length := by
            simp only [edges_cons, List.length_cons] at hi
            omega
          simpa only [edges_cons, List.getElem_cons_zero, List.getElem_cons_succ] using
            (tail_getElem_zero rest hpos).symm
      | succ i =>
          have hi' : i + 1 < rest.edges.length := by
            simp only [edges_cons, List.length_cons] at hi
            omega
          simpa only [edges_cons, List.getElem_cons_succ] using ih i hi'

/-- Exact cyclic adjacency, with the final-to-first seam proved from the
closed walk's endpoint equality. The positive length guard is explicit. -/
theorem closed_get_cyclic (p : Walk tail head a a) (hN : 0 < p.edges.length)
    (i : Fin p.edges.length) :
    head (p.edges.get i) =
      tail (p.edges.get ⟨(i.val + 1) % p.edges.length, Nat.mod_lt _ hN⟩) := by
  by_cases hnext : i.val + 1 < p.edges.length
  · simpa only [List.get_eq_getElem, Nat.mod_eq_of_lt hnext] using
      head_getElem_succ p i.val hnext
  · have hlast : i.val + 1 = p.edges.length := by omega
    have hmod : (i.val + 1) % p.edges.length = 0 := by rw [hlast, Nat.mod_self]
    calc
      head (p.edges.get i) = a := head_getElem_last p i.val i.isLt hlast
      _ = tail (p.edges.get ⟨(i.val + 1) % p.edges.length, Nat.mod_lt _ hN⟩) := by
        simpa only [List.get_eq_getElem, hmod] using (tail_getElem_zero p hN).symm

end GRWTSK.Combinatorics.DirectedEulerSplicing.Walk
