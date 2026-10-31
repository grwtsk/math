/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathlib finite tuple and product theory retains upstream attribution and Apache-2.0 licensing. -/
import GRWTSK.MeasureAndIntegration.FiniteKernelChain
import Mathlib.Data.Fin.Tuple.Basic
import Mathlib.Algebra.BigOperators.Fin

/-!
# The periodic seam in a finite directed kernel product

Pure finite algebra for the cyclic Wilson partition consumer. No integral,
trace or decay identity is assumed. SOURCE_PROOF_CANDIDATE; compilation,
fresh kernel replay, transitive axioms and expected-interface checks NOT_RUN.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
namespace GRWTSK.Analysis.Integration.CyclicKernelProduct
open GRWTSK.Analysis.Integration.FiniteKernelChain
variable {X : Type*} [TopologicalSpace X] [CompactSpace X] [T2Space X]
  [SecondCountableTopology X] [MeasurableSpace X] [BorelSpace X]
variable (K : C(X × X, ℝ))

/-- An open directed chain, with its terminal endpoint explicitly appended. -/
theorem endpoint_product (m : ℕ) (h : Fin (m+1) → X) (y : X) :
    (∏ i : Fin (m+1), K (h i, Fin.snoc h y i.succ)) =
      weight K m (h 0) y (fun j => h j.succ) := by
  induction m with
  | zero => simp [weight]
  | succ m ih =>
    have he : h = Fin.cons (h 0) (fun j => h j.succ) :=
      (Fin.cons_self_tail h).symm
    have hs : Fin.snoc h y =
        Fin.cons (h 0) (Fin.snoc (fun j => h j.succ) y) := by
      conv_lhs => rw [he]
      exact (Fin.cons_snoc_eq_snoc_cons _ _ _).symm
    rw [Fin.prod_univ_succ]
    simp only [hs, Fin.cons_succ]
    rw [ih]
    rfl

/-- Nonlast successor is not the periodic wraparound. -/
theorem castSucc_add_one (m : ℕ) (i : Fin m) :
    i.castSucc + 1 = i.succ := by
  simpa using (Fin.castSucc_pred_add_one_eq (Fin.succ_ne_zero i))

/-- Appending the initial point agrees with modular successor at every edge. -/
theorem appended_start (m : ℕ) (h : Fin (m+1) → X) (i : Fin (m+1)) :
    Fin.snoc h (h 0) i.succ = h (i+1) := by
  cases i using Fin.lastCases with
  | last => simp
  | cast j =>
    rw [castSucc_add_one]
    simp [Fin.castSucc_succ]

/-- Includes the one-vertex loop m=0; no zero-length kernel is introduced. -/
theorem cyclic_product (m : ℕ) (h : Fin (m+1) → X) :
    (∏ i : Fin (m+1), K (h i,h (i+1))) =
      weight K m (h 0) (h 0) (fun j => h j.succ) := by
  calc
    _ = ∏ i : Fin (m+1), K (h i, Fin.snoc h (h 0) i.succ) := by
      apply Finset.prod_congr rfl
      intro i _
      rw [appended_start]
    _ = _ := endpoint_product K m h (h 0)

end GRWTSK.Analysis.Integration.CyclicKernelProduct
