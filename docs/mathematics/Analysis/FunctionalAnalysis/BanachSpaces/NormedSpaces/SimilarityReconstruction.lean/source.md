# Complete source: GRWTSK.Analysis.NormedSpace.SimilarityReconstruction

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71cb6da724528108be732f12b16a6c30f815fb64` · SHA-256 `227853ff72986b196d47f7761a4b82ac0e16f9a7e78388d46192c09398c567ad`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Analysis.Normed.Ring.Basic
import Mathlib.Tactic.GCongr
import GRWTSK.Analysis.AsymptoticAnalysis.SublinearDyadic

/-!
Research direction: grwtsk contributors.
Authored formalization of the supplied mathematical argument, with ChatGPT assistance.
Mathlib and inherited results retain their authorship and licenses.
Status: proof source prepared; a successful pinned Lean kernel replay is required.
This file neither assumes nor proves the unresolved all-depth arithmetic bound.
-/

noncomputable section
namespace GRWTSK.Analysis.SimilarityReconstruction
open GRWTSK.Analysis.SublinearDyadic

/-- Exact reconstruction in a normed algebra. Both inverse laws are data. -/
theorem source_eq {B : Type*} [NormedRing B]
    (S R K C E : B) (hRS : R*S=1) (_hSR : S*R=1)
    (h : S*K*R=C+E) : K=R*(C+E)*S := by
  rw [← h]
  simp only [← mul_assoc, hRS, one_mul]
  rw [mul_assoc K R S, hRS, mul_one]

/-- The coefficient norm, not a reweighted substitute, is returned. -/
theorem norm_return {B : Type*} [NormedRing B]
    (S R K C E : B) (hRS : R*S=1) (hSR : S*R=1)
    (h : S*K*R=C+E) : ‖K‖ ≤ (‖R‖*‖S‖)*(‖C‖+‖E‖) := by
  rw [source_eq S R K C E hRS hSR h]
  calc
    ‖R*(C+E)*S‖ ≤ ‖R*(C+E)‖*‖S‖ := norm_mul_le _ _
    _ ≤ (‖R‖*‖C+E‖)*‖S‖ :=
      mul_le_mul_of_nonneg_right (norm_mul_le _ _) (norm_nonneg _)
    _ ≤ (‖R‖*(‖C‖+‖E‖))*‖S‖ := by
      gcongr
      exact norm_add_le _ _
    _ = (‖R‖*‖S‖)*(‖C‖+‖E‖) := by ring

theorem log_budget (β κ L η : ℝ) (hβ : 0 ≤ β) (hκ : 1 ≤ κ)
    (hL : 0 ≤ L) (hη : 0 ≤ η) (hbound : β ≤ κ*(L+η)) :
    Real.log (1+β) ≤ Real.log κ + Real.log (1+L+η) := by
  have hb : 1+β ≤ κ*(1+L+η) := by nlinarith
  have hh := Real.log_le_log (by positivity : 0 < 1+β) hb
  rw [Real.log_mul (by linarith : κ ≠ 0) (by positivity : 1+L+η ≠ 0)] at hh
  exact hh

/-- This constructor requires the all-depth source estimate; it does not create it. -/
theorem relative_upperSublinear (β κ L η : ℕ → ℝ)
    (hβ : ∀ n, 0 ≤ β n) (hκ : ∀ n, 1 ≤ κ n)
    (hL : ∀ n, 0 ≤ L n) (hη : ∀ n, 0 ≤ η n)
    (hbound : ∀ n, β n ≤ κ n*(L n+η n))
    (hbudget : UpperSublinear
      (fun n => Real.log (κ n)+Real.log (1+L n+η n))) :
    UpperSublinear (fun n => Real.log (1+β n)) :=
  hbudget.mono (fun n => log_budget _ _ _ _ (hβ n) (hκ n) (hL n) (hη n) (hbound n))

/-- Full scalar return: supplied tensor costs -> relative growth -> dyadic growth.
There is no analytic zeta-return premise hidden in this theorem. -/
theorem sublinear_log_of_tensor_budget (A β κ L η : ℕ → ℝ)
    (hA : ∀ n, 1 ≤ A n) (hmono : Monotone A)
    (hβ : ∀ n, 0 ≤ β n) (hκ : ∀ n, 1 ≤ κ n)
    (hL : ∀ n, 0 ≤ L n) (hη : ∀ n, 0 ≤ η n)
    (hbound : ∀ n, β n ≤ κ n*(L n+η n))
    (hstep : ∀ n, 1 ≤ n → A (2*n) ≤ (1+β n)*A n)
    (hbudget : UpperSublinear
      (fun n => Real.log (κ n)+Real.log (1+L n+η n))) :
    Asymptotics.IsLittleO Filter.atTop
      (fun n => Real.log (A n)) (fun n : ℕ => (n : ℝ)) := by
  apply (upperSublinear_iff_isLittleO _ (fun n => Real.log_nonneg (hA n))).1
  exact sublinear_log_of_doubling A β hA hmono hβ hstep
    (relative_upperSublinear β κ L η hβ hκ hL hη hbound hbudget)

end GRWTSK.Analysis.SimilarityReconstruction
```
