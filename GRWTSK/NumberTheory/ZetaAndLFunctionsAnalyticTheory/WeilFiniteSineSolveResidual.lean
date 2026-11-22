/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilFiniteSineOperator

/-!
# Complete source residual bounds for finite-sine weak-solve trials

The whole graph-dual residual is the physical pairing with
h - (A_beta + lambda) f. For a finite sine f the preceding module identifies
this physical output exactly: beta changes to beta-lambda and the pole port
remains -2 times the original moment. Parseval retains every coefficient.

For a finite-band load the unobserved residual rows are the negatives of
these literal source output rows. The existing complete remote allowance
therefore pays the entire omitted norm, not just a finite sampled window.
The last theorem also pays separately supplied finite-row rounding errors.

This is a fixed-window regularized solution error estimate, NOT positivity
of the unregularized Weil form or existence of cofinal sign certificates.
No form-core hypothesis or boundedness of the unbounded operator is used.

SOURCE_PROOF_CANDIDATE. Elaboration, exact signatures, kernel replay,
transitive axiom audit and independent mathematical review: NOT_RUN.
-/

set_option autoImplicit false
noncomputable section
open MeasureTheory Set Filter
open scoped BigOperators

namespace GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineSolveResidual

open TranslationCutoffs TranslationEnergyDomain FormDomainDensity
open ClosedSourceBilinear ShiftedSourceSolve FiniteSineOperator
open OddRootProjection OddSineForm OddGammaOutput OddSineParseval
open OddSineHeadRemoval OddResidualSourceComparison OddResidualMajorant LowSchur

variable {M : ℕ}

/-- The actual physical residual. Regularization affects PHYSICAL mass
only; the minimizing pole port is unchanged by this beta shift. -/
def physicalResidual (T : ℝ) (hT : 0 < T) (β : ℝ)
    (h : WindowPhysical T) (x : Fin M → ℝ) : WindowPhysical T :=
  h - finiteOutput T hT (β - regularization T β) x

/-- Exact representer of the ENTIRE dual residual, for every domain test. -/
theorem residualFunctional_eq_physical (T : ℝ) (hT : 0 < T) (β : ℝ)
    (h : WindowPhysical T) (x : Fin M → ℝ) (w : FormDomain T) :
    residualFunctional T β h (finiteLift T hT x) w =
      inner ℝ (physicalResidual T hT β h x) (windowInput T w) := by
  have hm : inner ℝ (input T (finiteLift T hT x)) (input T w) =
      inner ℝ (finiteInput T x) (windowInput T w) := by
    change inner ℝ (windowInput T (finiteLift T hT x)) (windowInput T w) = _
    rw [finiteLift_windowInput]
  change inner ℝ h (windowInput T w) - coerciveForm T β (finiteLift T hT x) w = _
  rw [coerciveForm_apply, finiteLift_sourceForm, hm]
  unfold physicalResidual
  rw [finiteOutput_shift, inner_sub_left, inner_add_left, real_inner_smul_left]
  ring

/-- The contractive physical inclusion bounds its induced graph-dual norm. -/
theorem residualFunctional_norm_le_physical (T : ℝ) (hT : 0 < T) (β : ℝ)
    (h : WindowPhysical T) (x : Fin M → ℝ) :
    ‖residualFunctional T β h (finiteLift T hT x)‖ ≤
      ‖physicalResidual T hT β h x‖ := by
  apply ContinuousLinearMap.opNorm_le_bound _ (norm_nonneg _)
  intro w
  rw [residualFunctional_eq_physical]
  exact (norm_inner_le_norm _ _).trans
    (mul_le_mul_of_nonneg_left (windowInput_norm_le T w) (norm_nonneg _))

/-- A physical full-residual norm controls the actual graph-domain error. -/
theorem weakSolve_error_le_physical (T : ℝ) (hT : 0 < T) (β : ℝ)
    (h : WindowPhysical T) (x : Fin M → ℝ) :
    ‖weakSolve T β hT h - finiteLift T hT x‖ ≤ ‖physicalResidual T hT β h x‖ :=
  (error_le_residual T β hT h (finiteLift T hT x)).trans
    (residualFunctional_norm_le_physical T hT β h x)

/-- Original source coefficient minus the regularized literal output row. -/
def residualRow (M : ℕ) (T β : ℝ) (h : WindowPhysical T) (x : ℕ → ℝ) (n : ℕ) : ℝ :=
  sineCoefficient T (h : Physical) n -
    literalAugmentedRow M T x (polePort T (fun i : Fin M => x (i.val + 1)))
      (β - regularization T β) n

theorem physicalResidual_coefficient (T : ℝ) (hT : 0 < T) (β : ℝ)
    (h : WindowPhysical T) (x : ℕ → ℝ) (n : ℕ) :
    sineCoefficient T
      (physicalResidual T hT β h (fun i : Fin M => x (i.val + 1)) : Physical) (n + 1) =
      residualRow M T β h x (n + 1) := by
  rw [← sinePhysical_inner]
  change inner ℝ (sinePhysical T (n + 1))
    ((h : Physical) -
      (finiteOutput T hT (β - regularization T β) (fun i : Fin M => x (i.val + 1)) : Physical)) = _
  rw [inner_sub_right, sinePhysical_inner, sinePhysical_inner, finiteOutput_coefficient]
  rfl

/-- Parseval covers every source mode, with the original Lebesgue norm. -/
theorem physicalResidual_hasSum (T : ℝ) (hT : 0 < T) (β : ℝ)
    (h : WindowPhysical T) (x : ℕ → ℝ) :
    HasSum (fun n : ℕ => residualRow M T β h x (n + 1) ^ 2)
      (‖physicalResidual T hT β h (fun i : Fin M => x (i.val + 1))‖ ^ 2) := by
  let r := physicalResidual T hT β h (fun i : Fin M => x (i.val + 1))
  have hc := (mem_supportedOdd_iff T (r : Physical)).1 r.property
  have hall := hasSum_source_sineCoefficient_sq_ae T hT (Lp.memLp (r : Physical)) hc.2 hc.1
  have hn : (∫ t : ℝ, ‖(r : Physical) t‖ ^ 2) = ‖r‖ ^ 2 :=
    (norm_sq_integral volume (r : Physical)).symm
  rw [hn] at hall
  simpa only [r, physicalResidual_coefficient] using hall

/-- Full infinite row energy, not a finite test, bounds the graph error. -/
theorem weakSolve_error_sq_le_tsum (T : ℝ) (hT : 0 < T) (β : ℝ)
    (h : WindowPhysical T) (x : ℕ → ℝ) :
    ‖weakSolve T β hT h - finiteLift T hT (fun i : Fin M => x (i.val + 1))‖ ^ 2 ≤
      ∑' n : ℕ, residualRow M T β h x (n + 1) ^ 2 := by
  rw [(physicalResidual_hasSum T hT β h x (M := M)).tsum_eq]
  exact (sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).2
    (weakSolve_error_le_physical T hT β h _)

/-- A proved finite-band load leaves ONLY the literal output rows in the
remote tail. Every row after L is paid by the existing complete allowance. -/
theorem physicalResidual_sq_le_rows_and_remote {L J : ℕ}
    (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (β : ℝ) (h : WindowPhysical T) (x : ℕ → ℝ)
    (s : ℝ) (hs : 0 < s)
    (hload : ∀ n : ℕ, L < n → sineCoefficient T (h : Physical) n = 0) :
    ‖physicalResidual T hT β h (fun i : Fin M => x (i.val + 1))‖ ^ 2 ≤
      (∑ n ∈ Finset.range L, residualRow M T β h x (n + 1) ^ 2) +
        completeRemoteAllowance M L J T x (polePort T (fun i : Fin M => x (i.val + 1))) s := by
  have hall := physicalResidual_hasSum T hT β h x (M := M)
  have hremote := literalAugmentedRow_tail_bound hML hL hLJ T hT x
    (polePort T (fun i : Fin M => x (i.val + 1))) (β - regularization T β) s hs
  have heq (n : ℕ) : residualRow M T β h x (n + L + 1) ^ 2 =
      literalAugmentedRow M T x (polePort T (fun i : Fin M => x (i.val + 1)))
        (β - regularization T β) (L + 1 + n) ^ 2 := by
    rw [residualRow, hload _ (by omega), zero_sub, neg_sq]
    rw [show n + L + 1 = L + 1 + n by omega]
  rw [← hall.tsum_eq, ← hall.summable.sum_add_tsum_nat_add L]
  exact add_le_add le_rfl (by simpa only [heq] using hremote.2)

theorem weakSolve_error_sq_le_rows_and_remote {L J : ℕ}
    (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (β : ℝ) (h : WindowPhysical T) (x : ℕ → ℝ)
    (s : ℝ) (hs : 0 < s)
    (hload : ∀ n : ℕ, L < n → sineCoefficient T (h : Physical) n = 0) :
    ‖weakSolve T β hT h - finiteLift T hT (fun i : Fin M => x (i.val + 1))‖ ^ 2 ≤
      (∑ n ∈ Finset.range L, residualRow M T β h x (n + 1) ^ 2) +
        completeRemoteAllowance M L J T x (polePort T (fun i : Fin M => x (i.val + 1))) s := by
  exact ((sq_le_sq₀ (norm_nonneg _) (norm_nonneg _)).2
    (weakSolve_error_le_physical T hT β h _)).trans
    (physicalResidual_sq_le_rows_and_remote hML hL hLJ T hT β h x s hs hload)

/-- An actual finite sine load supplies finite-band coverage; it is not
an assumed tail property of arbitrary physical data. -/
theorem finiteInput_coefficient_zero_above {K : ℕ} (T : ℝ) (hT : 0 < T)
    (y : Fin K → ℝ) {n : ℕ} (hn : K < n) :
    sineCoefficient T (finiteInput T y : Physical) n = 0 := by
  rw [finiteInput_coefficient, sineCoefficient_finiteSine T hT y (by omega)]
  apply Finset.sum_eq_zero
  intro i _
  have hi := i.isLt
  have hne : n ≠ i.val + 1 := by omega
  simp only [hne, ite_false]

/-- Concrete finite-load consumer, retaining all remote arithmetic rows. -/
theorem weakSolve_finiteLoad_error_sq_le {K L J : ℕ}
    (hKL : K ≤ L) (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (β : ℝ) (y : Fin K → ℝ) (x : ℕ → ℝ)
    (s : ℝ) (hs : 0 < s) :
    ‖weakSolve T β hT (finiteInput T y) -
      finiteLift T hT (fun i : Fin M => x (i.val + 1))‖ ^ 2 ≤
      (∑ n ∈ Finset.range L, residualRow M T β (finiteInput T y) x (n + 1) ^ 2) +
        completeRemoteAllowance M L J T x (polePort T (fun i : Fin M => x (i.val + 1))) s := by
  apply weakSolve_error_sq_le_rows_and_remote hML hL hLJ T hT β (finiteInput T y) x s hs
  intro n hn
  exact finiteInput_coefficient_zero_above T hT y (hKL.trans_lt hn)

/-- Supplied interval errors are paid BEFORE squaring residual rows.
This theorem does not generate numerical intervals or a remote enclosure. -/
theorem weakSolve_error_sq_le_observed {L J : ℕ}
    (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (β : ℝ) (h : WindowPhysical T) (x : ℕ → ℝ)
    (s : ℝ) (hs : 0 < s)
    (hload : ∀ n : ℕ, L < n → sineCoefficient T (h : Physical) n = 0)
    (observed error : ℕ → ℝ) (remote : ℝ)
    (hobs : ∀ n < L, |residualRow M T β h x (n + 1) - observed n| ≤ error n)
    (hremote : completeRemoteAllowance M L J T x
      (polePort T (fun i : Fin M => x (i.val + 1))) s ≤ remote) :
    ‖weakSolve T β hT h - finiteLift T hT (fun i : Fin M => x (i.val + 1))‖ ^ 2 ≤
      (∑ n ∈ Finset.range L, (|observed n| + error n) ^ 2) + remote := by
  apply (weakSolve_error_sq_le_rows_and_remote hML hL hLJ T hT β h x s hs hload).trans
  apply add_le_add _ hremote
  apply Finset.sum_le_sum
  intro n hn
  have he := hobs n (Finset.mem_range.mp hn)
  have htri : |residualRow M T β h x (n + 1)| ≤
      |residualRow M T β h x (n + 1) - observed n| + |observed n| := by
    simpa only [sub_add_cancel] using
      abs_add (residualRow M T β h x (n + 1) - observed n) (observed n)
  have hb : |residualRow M T β h x (n + 1)| ≤ |observed n| + error n := by linarith
  have hb0 : 0 ≤ |observed n| + error n := (abs_nonneg _).trans hb
  have hsq := (sq_le_sq₀ (abs_nonneg (residualRow M T β h x (n + 1))) hb0).2 hb
  simpa only [sq_abs] using hsq

end GRWTSK.NumberTheory.WeilQuadraticForm.FiniteSineSolveResidual
