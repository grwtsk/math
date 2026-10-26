/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
Existing GRWTSK/Mathlib work retains upstream authorship and licenses. -/
import GRWTSK.Analysis.Geometry.FiniteFourArcContact
import Mathlib

set_option autoImplicit false

/-!
# Oriented circulation and nonexactness on four actual contact seams

The contact edges follow 0→1→2→3→0. Their coboundary is the
difference across the actual geometric source successor. Circulation
of exact cochains vanishes; the constant unit edge weight has nonzero
circulation. A four-edge closed return cannot be strictly rank-increasing.
No planar embedding, full Hodge H1, or zeta identification is inferred.
-/

namespace GRWTSK.Analysis.Geometry.FiniteFourArcContact

abbrev FourCochain := Fin 4 → ℝ

def edgeDifference (f : FourCochain) : FourCochain :=
  fun i => f (next i) - f i

def cycleFlux (a : FourCochain) : ℝ :=
  ∑ i, a i

theorem cycleFlux_edgeDifference_zero (f : FourCochain) :
    cycleFlux (edgeDifference f) = 0 := by
  simp [cycleFlux, edgeDifference, Fin.sum_univ_four, next] <;> ring

theorem cycleFlux_const_one :
    cycleFlux (fun _ : Fin 4 => (1 : ℝ)) = 4 := by
  norm_num [cycleFlux, Fin.sum_univ_four]

/-- Four-edge unit circulation is not an exact graph gradient. -/
theorem constant_one_not_edgeDifference :
    ¬ ∃ f : FourCochain,
        edgeDifference f = (fun _ : Fin 4 => (1 : ℝ)) := by
  rintro ⟨f, h⟩
  have hf := congrArg cycleFlux h
  rw [cycleFlux_edgeDifference_zero, cycleFlux_const_one] at hf
  norm_num at hf

/-- The four geometric contacts cannot all belong to a strict-rank DAG. -/
theorem no_strict_rank_on_all_contacts :
    ¬ ∃ rank : Fin 4 → ℕ,
        ∀ i : Fin 4, rank i < rank (next i) := by
  rintro ⟨rank, h⟩
  have h01 : rank 0 < rank 1 := by simpa [next] using h 0
  have h12 : rank 1 < rank 2 := by simpa [next] using h 1
  have h23 : rank 2 < rank 3 := by simpa [next] using h 2
  have h30 : rank 3 < rank 0 := by simpa [next] using h 3
  have h00 : rank 0 < rank 0 :=
    lt_trans h01 (lt_trans h12 (lt_trans h23 h30))
  exact (lt_irrefl (rank 0)) h00

theorem contact_count : Fintype.card (Fin 4) = 4 := by decide

end GRWTSK.Analysis.Geometry.FiniteFourArcContact
