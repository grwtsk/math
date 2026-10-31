/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib finite tuple algebra retains upstream attribution and Apache-2.0 licensing. -/
import GRWTSK.MeasureAndIntegration.CyclicKernelProduct

/-!
# Two directed arcs of a finite cyclic kernel product

Both arcs have positive length. Empty internal coordinate lists are allowed.
This is the algebraic density factorization for the finite Wilson insertion
consumer, before product-Haar integration. SOURCE_PROOF_CANDIDATE; compile,
fresh kernel replay, transitive axioms and expected interfaces NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.Integration.TwoArcKernelProduct
open GRWTSK.Analysis.Integration.FiniteKernelChain
open GRWTSK.Analysis.Integration.CyclicKernelProduct
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (K : C(X × X, ℝ))

/-- The first arc starts at x, the second at y; neither endpoint is duplicated. -/
def history (p q : ℕ) (x y : X) (u : Fin p → X) (v : Fin q → X) :
    Fin ((p+1)+(q+1)) → X := Fin.append (Fin.cons x u) (Fin.cons y v)

/-- Successor along the first segment ends at the second segment's first coordinate. -/
theorem next_left (p q : ℕ) (a : Fin (p+1) → X) (b : Fin (q+1) → X)
    (i : Fin (p+1)) :
    Fin.append a b (i.castAdd (q+1) + 1) = Fin.snoc a (b 0) i.succ := by
  cases i using Fin.lastCases with
  | last =>
    have hi : (Fin.last p).castAdd (q+1) + 1 = Fin.natAdd (p+1) 0 := by
      apply Fin.ext
      simp only [Fin.val_add, Fin.val_castAdd, Fin.val_last, Fin.val_one,
        Fin.val_natAdd, Fin.val_zero]
      rw [Nat.mod_eq_of_lt (by omega)]
      omega
    rw [hi]
    simp
  | cast j =>
    have hi : j.castSucc.castAdd (q+1) + 1 = j.succ.castAdd (q+1) := by
      apply Fin.ext
      simp only [Fin.val_add, Fin.val_castAdd, Fin.val_castSucc, Fin.val_succ, Fin.val_one]
      rw [Nat.mod_eq_of_lt (by omega)]
    rw [hi]
    simp [Fin.castSucc_succ]

/-- The second segment closes at the first coordinate of the first segment. -/
theorem next_right (p q : ℕ) (a : Fin (p+1) → X) (b : Fin (q+1) → X)
    (i : Fin (q+1)) :
    Fin.append a b (Fin.natAdd (p+1) i + 1) = Fin.snoc b (a 0) i.succ := by
  cases i using Fin.lastCases with
  | last =>
    have hi : Fin.natAdd (p+1) (Fin.last q) = Fin.last ((p+1)+q) := by
      apply Fin.ext
      simp
    rw [hi, Fin.last_add_one]
    have hz : (0 : Fin ((p+1)+(q+1))) = (0 : Fin (p+1)).castAdd (q+1) := rfl
    rw [hz]
    simp
  | cast j =>
    have hi : Fin.natAdd (p+1) j.castSucc + 1 = Fin.natAdd (p+1) j.succ := by
      apply Fin.ext
      simp only [Fin.val_add, Fin.val_natAdd, Fin.val_castSucc, Fin.val_succ, Fin.val_one]
      rw [Nat.mod_eq_of_lt (by omega)]
      omega
    rw [hi]
    simp [Fin.castSucc_succ]

/-- Actual cyclic density splits into both directed arc weights, with no symmetry premise. -/
theorem cyclic_product_two_arcs (p q : ℕ) (x y : X) (u : Fin p → X) (v : Fin q → X) :
    (∏ i, K (history p q x y u v i, history p q x y u v (i+1))) =
      weight K p x y u * weight K q y x v := by
  unfold history
  rw [Fin.prod_univ_add]
  simp_rw [Fin.append_left, Fin.append_right, next_left, next_right]
  rw [endpoint_product, endpoint_product]
  simp only [Fin.cons_zero, Fin.cons_succ]

end GRWTSK.Analysis.Integration.TwoArcKernelProduct
