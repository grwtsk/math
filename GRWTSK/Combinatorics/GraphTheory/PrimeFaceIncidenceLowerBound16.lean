/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
SOURCE_PROOF_CANDIDATE. Lean compilation, axiom audit and kernel replay NOT_RUN.
-/
import GRWTSK.Combinatorics.GraphTheory.FrozenPrimeHypercube

/-!
# Every possible two-face-neighbor covering needs 8192 occupied cells

This is the global combinatorial obstruction missing from the original
4096-prime, one-replica layout. It is independent of the placement
algorithm, of prime labels, of arc phases, and of any RH/GRH result.

Every vertex of Q16 has sixteen face directions. Double-count
the face-incidence pairs (x,i) with neighbor x i in a marked set S.
Reindexing by the translation x -> x + impulse i shows there are
exactly 16*|S| such pairs. If every x has two distinct marked face
neighbors, there must be at least 2*65536 such pairs. Thus |S| >=8192.

The theorem is intentionally for ARBITRARY marked subsets S,
not merely the preexisting syndrome-kernel arrangement.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeFaceIncidenceLowerBound16

open GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.FrozenPrimeHypercube

/-- Marked face-neighbor ports for a given vertex and placement. -/
def markedFacePorts (S : Finset (Cell 4)) (x : Cell 4) :
    Finset (Port 4) := by
  classical
  exact Finset.univ.filter (fun i => neighbor x i ∈ S)

/-- Exact regular-graph incidence count; no probabilistic approximation. -/
theorem total_marked_face_incidences (S : Finset (Cell 4)) :
    (∑ x : Cell 4, (markedFacePorts S x).card) = 16 * S.card := by
  classical
  calc
    (∑ x : Cell 4, (markedFacePorts S x).card) =
        ∑ x : Cell 4, ∑ i : Port 4,
          if neighbor x i ∈ S then (1 : ℕ) else 0 := by
      apply Finset.sum_congr rfl
      intro x _
      exact (Finset.sum_boole (fun i : Port 4 => neighbor x i ∈ S)
        (Finset.univ : Finset (Port 4))).symm
    _ = ∑ i : Port 4, ∑ x : Cell 4,
          if neighbor x i ∈ S then (1 : ℕ) else 0 := by
      rw [Finset.sum_comm]
    _ = ∑ i : Port 4, S.card := by
      apply Finset.sum_congr rfl
      intro i _
      have hsum :
          (∑ x : Cell 4, if neighbor x i ∈ S then (1 : ℕ) else 0) =
          ∑ y : Cell 4, if y ∈ S then (1 : ℕ) else 0 :=
        Fintype.sum_equiv (Equiv.addRight (impulse i)) _ _ (fun _ => rfl)
      calc
        _ = ∑ y : Cell 4, if y ∈ S then (1 : ℕ) else 0 := hsum
        _ = S.card := by
          simpa only [Finset.sum_boole, Finset.filter_mem_eq_inter,
            Finset.univ_inter] using
            (Finset.sum_boole (fun y : Cell 4 => y ∈ S)
              (Finset.univ : Finset (Cell 4)))
    _ = 16 * S.card := by
      simp [port_card_four]

/-- The exact required two-neighbor condition, with genuinely distinct
one-bit coordinate directions. -/
def EveryCellHasTwoFacePrimes (S : Finset (Cell 4)) : Prop :=
  ∀ x : Cell 4, ∃ i j : Port 4,
    i ≠ j ∧ neighbor x i ∈ S ∧ neighbor x j ∈ S

/-- A two-face-neighbor covering must occupy at least 8192 positions. -/
theorem two_face_cover_requires_8192 (S : Finset (Cell 4))
    (h : EveryCellHasTwoFacePrimes S) :
    8192 ≤ S.card := by
  classical
  have hvertex (x : Cell 4) :
      2 ≤ (markedFacePorts S x).card := by
    rcases h x with ⟨i, j, hij, hi, hj⟩
    have hsub : ({i, j} : Finset (Port 4)) ⊆
        markedFacePorts S x := by
      intro k hk
      simp only [Finset.mem_insert, Finset.mem_singleton] at hk
      rcases hk with rfl | rfl
      · simp [markedFacePorts, hi]
      · simp [markedFacePorts, hj]
    calc
      2 = ({i, j} : Finset (Port 4)).card := by simp [hij]
      _ ≤ (markedFacePorts S x).card := Finset.card_le_card hsub
  have hsum : 2 * 65536 ≤ 16 * S.card := by
    calc
      2 * 65536 = ∑ x : Cell 4, (2 : ℕ) := by
        simp [cell_card_four, mul_comm]
      _ ≤ ∑ x : Cell 4, (markedFacePorts S x).card := by
        exact Finset.sum_le_sum (fun x _ => hvertex x)
      _ = 16 * S.card := total_marked_face_incidences S
  omega

/-- In particular, no 4096-position arrangement can satisfy the user's
two distinct face-neighbor condition, however its labels are optimized. -/
theorem four_thousand_ninety_six_positions_impossible
    (S : Finset (Cell 4)) (hcard : S.card = 4096) :
    ¬ EveryCellHasTwoFacePrimes S := by
  intro h
  have hmin := two_face_cover_requires_8192 S h
  omega

end GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.PrimeFaceIncidenceLowerBound16
