import FormalResearch.PositiveAtlas.Grassmannian.SignedGraph
import FormalResearch.PositiveAtlas.Grassmannian.Plucker24

/-!
# The signed-graph minor correspondence in rank two

All six maximal minors are actual determinants and retain the four entries and
the determinant of the original matrix. This proves the N = 2 case; it does not
silently promote rank-two enumeration to the arbitrary-rank bridge.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian

noncomputable section

/-- The existing normalized chart applied to all four entries of a square matrix. -/
def squareChart24 (M : Matrix (Fin 2) (Fin 2) ℝ) : Chart24 :=
  ⟨M 0 0, M 0 1, M 1 0, M 1 1⟩

/-- The signed graph agrees with the pre-existing Gr(2,4) chart, including signs. -/
theorem signedGraph_two_eq_chart (M : Matrix (Fin 2) (Fin 2) ℝ) :
    SignedGraph.frame M = (squareChart24 M).matrix := by
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [SignedGraph.frame, SignedGraph.signedBlock, squareChart24, Chart24.matrix, Fin.rev]

/-- The five independent minor quantities are recovered as actual Pluecker coordinates. -/
theorem squareChart24_coordinates (M : Matrix (Fin 2) (Fin 2) ℝ) :
    (squareChart24 M).coordinates =
      ⟨1, M 0 0, M 0 1, M 1 0, M 1 1, Matrix.det M⟩ := by
  rw [Chart24.coordinates_eq]
  simp [squareChart24, Matrix.det_fin_two]

/-- A strictly increasing two-column selection. -/
def pairColumns24 (i j : Fin 4) (h : i < j) : Fin 2 ↪o Fin 4 :=
  OrderEmbedding.ofStrictMono ![i, j] (by
    intro a b hab
    fin_cases a <;> fin_cases b <;> simp_all)

/-- Ordered nonnegativity implies nonnegativity of all six enumerated coordinates. -/
theorem coordinates24_nonnegative_of_ordered
    (A : Matrix (Fin 2) (Fin 4) ℝ) (h : AllOrderedMinorsNonneg A) :
    (PluckerCoordinates24.ofMatrix A).Nonnegative := by
  have hp : ∀ i j : Fin 4, i < j → 0 ≤ minor₂ A i j := by
    intro i j hij
    have hh := h (pairColumns24 i j hij)
    rw [orderedMinor_two] at hh
    exact hh
  exact ⟨hp 0 1 (by decide), hp 0 2 (by decide), hp 0 3 (by decide),
    hp 1 2 (by decide), hp 1 3 (by decide), hp 2 3 (by decide)⟩

/-- Exactly the conditions on all minors of a two-by-two matrix. -/
def squareNonnegative2 (M : Matrix (Fin 2) (Fin 2) ℝ) : Prop :=
  (∀ i j, 0 ≤ M i j) ∧ 0 ≤ Matrix.det M

/-- All finite minor sizes, including zero and one, reduce to the five quantities in rank two. -/
theorem finiteNonnegative_two_iff (M : Matrix (Fin 2) (Fin 2) ℝ) :
    Toeplitz.FiniteNonnegative M ↔ squareNonnegative2 M := by
  constructor
  · intro h
    constructor
    · intro i j
      let r : Fin 1 ↪o Fin 2 := OrderEmbedding.ofStrictMono (fun _ => i) (by
        intro u v huv
        exact False.elim (by have hu := u.isLt; have hv := v.isLt; omega))
      let c : Fin 1 ↪o Fin 2 := OrderEmbedding.ofStrictMono (fun _ => j) (by
        intro u v huv
        exact False.elim (by have hu := u.isLt; have hv := v.isLt; omega))
      have hh := h 1 r c
      change 0 ≤ (Matrix.of (fun _ _ : Fin 1 => M i j)).det at hh
      simpa only [Matrix.det_unique, Matrix.of_apply] using hh
    · exact h 2 (OrderEmbedding.id _) (OrderEmbedding.id _)
  · rintro ⟨he, hd⟩ k r c
    have hk : k ≤ 2 := by
      simpa using Fintype.card_le_of_injective r r.injective
    interval_cases k
    · change 0 ≤ (Matrix.of (fun i j : Fin 0 => M (r i) (c j))).det
      simp
    · change 0 ≤ (Matrix.of (fun i j : Fin 1 => M (r i) (c j))).det
      simpa only [Matrix.det_unique, Matrix.of_apply, Fin.default_eq_zero] using he (r 0) (c 0)
    · have hr : ∀ i : Fin 2, r i = i := by
        intro i
        have hlt := r.strictMono (by decide : (0 : Fin 2) < 1)
        have h0 := (r 0).isLt
        have h1 := (r 1).isLt
        apply Fin.ext
        fin_cases i <;> dsimp at * <;> omega
      have hc : ∀ i : Fin 2, c i = i := by
        intro i
        have hlt := c.strictMono (by decide : (0 : Fin 2) < 1)
        have h0 := (c 0).isLt
        have h1 := (c 1).isLt
        apply Fin.ext
        fin_cases i <;> dsimp at * <;> omega
      simpa only [hr, hc] using hd

/-- The existing six-coordinate criterion recognizes the five square-minor inequalities. -/
theorem squareChart24_nonnegative_iff (M : Matrix (Fin 2) (Fin 2) ℝ) :
    AllOrderedMinorsNonneg (squareChart24 M).matrix ↔ squareNonnegative2 M := by
  have he : (squareChart24 M).coordinates.Nonnegative ↔ squareNonnegative2 M := by
    rw [squareChart24_coordinates]
    simp only [PluckerCoordinates24.Nonnegative, squareNonnegative2]
    constructor
    · rintro ⟨_, h00, h01, h10, h11, hd⟩
      refine ⟨?_, hd⟩
      intro i j
      fin_cases i <;> fin_cases j <;> assumption
    · rintro ⟨h, hd⟩
      exact ⟨by norm_num, h 0 0, h 0 1, h 1 0, h 1 1, hd⟩
  constructor
  · intro h
    exact he.mp (coordinates24_nonnegative_of_ordered _ h)
  · intro h
    exact PluckerCoordinates24.allOrderedMinorsNonneg_of_nonnegative _ (he.mpr h)

/-- The signed-graph total-nonnegativity bridge is fully explicit at N = 2. -/
theorem signedGraph_minorCorrespondence_two (M : Matrix (Fin 2) (Fin 2) ℝ) :
    Toeplitz.FiniteNonnegative M ↔ AllOrderedMinorsNonneg (SignedGraph.frame M) := by
  rw [signedGraph_two_eq_chart, squareChart24_nonnegative_iff, finiteNonnegative_two_iff]

/-- The rank-two Toeplitz block lands in the nonnegative boundary, not the positive interior. -/
theorem normalized_toeplitz_two_nonnegative (a : ℕ → ℝ) (h0 : a 0 = 1) (h1 : 0 ≤ a 1) :
    AllOrderedMinorsNonneg (SignedGraph.frame (Toeplitz.block a 2)) := by
  apply (signedGraph_minorCorrespondence_two _).mp
  apply (finiteNonnegative_two_iff _).mpr
  constructor
  · intro i j
    fin_cases i <;> fin_cases j <;> simp [Toeplitz.block, Toeplitz.entry, h0, h1]
  · simp [Matrix.det_fin_two, Toeplitz.block, Toeplitz.entry, h0]

/-- The structurally zero lower entry is a zero maximal minor in the Grassmannian chart. -/
theorem toeplitz_two_boundary_coordinate (a : ℕ → ℝ) :
    (squareChart24 (Toeplitz.block a 2)).coordinates.p23 = 0 := by
  rw [squareChart24_coordinates]
  norm_num [Toeplitz.block, Toeplitz.entry]

end

end FormalResearch.PositiveAtlas.Grassmannian
