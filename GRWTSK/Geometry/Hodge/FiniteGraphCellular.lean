import Mathlib
import GRWTSK.Combinatorics.GraphTheory.UnitDistanceGraph.Moser

namespace GRWTSK.Geometry.Hodge.FiniteGraphCellular

open scoped BigOperators

universe u v

/-- A finite one-dimensional incidence object with explicitly oriented edges. -/
structure OrientedIncidence (Vertex : Type u) (Edge : Type v) where
  source : Edge → Vertex
  target : Edge → Vertex

namespace OrientedIncidence

variable {Vertex : Type u} {Edge : Type v}

/-- Cellular degree-zero coboundary on an oriented finite graph. -/
def coboundary
    (G : OrientedIncidence Vertex Edge)
    (R : Type*) [Ring R] :
    (Vertex → R) →ₗ[R] (Edge → R) where
  toFun x e := x (G.target e) - x (G.source e)
  map_add' x y := by
    ext e
    simp only [Pi.add_apply]
    abel
  map_smul' r x := by
    ext e
    simp [mul_sub]

@[simp]
theorem coboundary_apply
    (G : OrientedIncidence Vertex Edge)
    (R : Type*) [Ring R]
    (x : Vertex → R) (e : Edge) :
    G.coboundary R x e = x (G.target e) - x (G.source e) := rfl

/-- Degree-zero cellular cohomology representatives are the kernel of the coboundary. -/
def hZero
    (G : OrientedIncidence Vertex Edge)
    (R : Type*) [Ring R] : Submodule R (Vertex → R) :=
  LinearMap.ker (G.coboundary R)

/-- Positive cellular edge energy over the real numbers. -/
def energy
    [Fintype Edge]
    (G : OrientedIncidence Vertex Edge)
    (x : Vertex → ℝ) : ℝ :=
  ∑ e, (G.coboundary ℝ x e) ^ 2

/-- The cellular graph energy is nonnegative. -/
theorem energy_nonneg
    [Fintype Edge]
    (G : OrientedIncidence Vertex Edge)
    (x : Vertex → ℝ) :
    0 ≤ G.energy x := by
  unfold energy
  exact Finset.sum_nonneg fun e _ => sq_nonneg (G.coboundary ℝ x e)

/-- Vanishing positive energy is equivalent to vanishing coboundary. -/
theorem energy_eq_zero_iff_coboundary_eq_zero
    [Fintype Edge]
    (G : OrientedIncidence Vertex Edge)
    (x : Vertex → ℝ) :
    G.energy x = 0 ↔ G.coboundary ℝ x = 0 := by
  constructor
  · intro h
    unfold energy at h
    have hterm : ∀ e ∈ (Finset.univ : Finset Edge),
        (G.coboundary ℝ x e) ^ 2 = 0 :=
      (Finset.sum_eq_zero_iff_of_nonneg
        (fun e _ => sq_nonneg (G.coboundary ℝ x e))).mp h
    funext e
    exact sq_eq_zero_iff.mp (hterm e (Finset.mem_univ e))
  · intro h
    unfold energy
    have hx : ∀ e, G.coboundary ℝ x e = 0 := by
      intro e
      exact congrFun h e
    simp [hx]

/-- A zero coboundary is exactly equality across every oriented edge. -/
theorem coboundary_eq_zero_iff_edge_eq
    (G : OrientedIncidence Vertex Edge)
    (R : Type*) [Ring R]
    (x : Vertex → R) :
    G.coboundary R x = 0 ↔
      ∀ e, x (G.target e) = x (G.source e) := by
  constructor
  · intro h e
    have he := congrFun h e
    simp only [coboundary_apply, Pi.zero_apply] at he
    exact sub_eq_zero.mp he
  · intro h
    funext e
    simp [coboundary_apply, h e]

/-- Positive energy vanishes exactly when the cochain is constant across every selected edge. -/
theorem energy_eq_zero_iff_edge_eq
    [Fintype Edge]
    (G : OrientedIncidence Vertex Edge)
    (x : Vertex → ℝ) :
    G.energy x = 0 ↔
      ∀ e, x (G.target e) = x (G.source e) := by
  rw [G.energy_eq_zero_iff_coboundary_eq_zero,
    G.coboundary_eq_zero_iff_edge_eq]

/-- Coefficient extension from rational to real zero-cochains. -/
def castCochain (x : Vertex → ℚ) : Vertex → ℝ :=
  fun v => (x v : ℝ)

/-- Rational-to-real coefficient extension commutes with the graph coboundary. -/
theorem cast_coboundary
    (G : OrientedIncidence Vertex Edge)
    (x : Vertex → ℚ) :
    G.coboundary ℝ (castCochain x) =
      fun e => ((G.coboundary ℚ x e : ℚ) : ℝ) := by
  funext e
  simp [castCochain, coboundary_apply]

/-- A rational cellular cocycle remains a cocycle after extension to real coefficients. -/
theorem cast_mem_hZero
    (G : OrientedIncidence Vertex Edge)
    {x : Vertex → ℚ} (hx : x ∈ G.hZero ℚ) :
    castCochain x ∈ G.hZero ℝ := by
  change G.coboundary ℚ x = 0 at hx
  change G.coboundary ℝ (castCochain x) = 0
  rw [G.cast_coboundary]
  funext e
  have he := congrFun hx e
  simp only [Pi.zero_apply] at he ⊢
  rw [he]
  norm_num

end OrientedIncidence

namespace Moser

open GRWTSK.Combinatorics.GraphTheory.HadwigerNelson

/-- The eleven source-oriented Moser edges as an exact finite edge type. -/
abbrev Edge := {p : Fin 7 × Fin 7 // p ∈ moserEdges}

/-- Exact oriented incidence object underlying the listed Moser graph. -/
def incidence : OrientedIncidence (Fin 7) Edge where
  source e := e.1.1
  target e := e.1.2

/-- Positive graph-cellular energy on the exact Moser incidence object. -/
def energy (x : Fin 7 → ℝ) : ℝ :=
  incidence.energy x

/-- Moser cellular energy is nonnegative. -/
theorem energy_nonneg (x : Fin 7 → ℝ) : 0 ≤ energy x :=
  incidence.energy_nonneg x

/-- Moser cellular energy vanishes exactly when every listed edge has equal endpoint values. -/
theorem energy_eq_zero_iff (x : Fin 7 → ℝ) :
    energy x = 0 ↔ ∀ e : Edge, x e.1.2 = x e.1.1 := by
  exact incidence.energy_eq_zero_iff_edge_eq x

/-- Edge equality on the exact Moser incidence forces equality with vertex zero. -/
theorem eq_vertex_zero_of_edge_eq
    (x : Fin 7 → ℝ) (h : ∀ e : Edge, x e.1.2 = x e.1.1) :
    ∀ i, x i = x 0 := by
  have h01 := h ⟨(0, 1), by decide⟩
  have h02 := h ⟨(0, 2), by decide⟩
  have h31 := h ⟨(3, 1), by decide⟩
  have h04 := h ⟨(0, 4), by decide⟩
  have h05 := h ⟨(0, 5), by decide⟩
  have h36 := h ⟨(3, 6), by decide⟩
  intro i
  fin_cases i
  · rfl
  · exact h01
  · exact h02
  · exact h31.symm.trans h01
  · exact h04
  · exact h05
  · exact h36.trans (h31.symm.trans h01)

/-- The positive Moser graph energy has exactly the constant zero-energy cochains. -/
theorem energy_eq_zero_iff_constant (x : Fin 7 → ℝ) :
    energy x = 0 ↔ ∃ c : ℝ, x = fun _ => c := by
  constructor
  · intro hx
    have hedge := (energy_eq_zero_iff x).mp hx
    refine ⟨x 0, ?_⟩
    funext i
    exact eq_vertex_zero_of_edge_eq x hedge i
  · rintro ⟨c, rfl⟩
    apply (energy_eq_zero_iff _).2
    intro e
    rfl

/-- Rational Moser cellular cocycles extend to real cellular cocycles. -/
theorem cast_rational_cocycle
    {x : Fin 7 → ℚ} (hx : x ∈ incidence.hZero ℚ) :
    OrientedIncidence.castCochain x ∈ incidence.hZero ℝ :=
  incidence.cast_mem_hZero hx

end Moser

end GRWTSK.Geometry.Hodge.FiniteGraphCellular
