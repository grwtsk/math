/-
Copyright (c) 2026 grwtsk contributors. Released under the MIT license.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPoleMoment
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddPrimeRow
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddResidualMajorant
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddShiftEnergy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddKernelSineTransform

set_option autoImplicit false
noncomputable section
open Set MeasureTheory

/-!
# Literal sine entries in the bordered residual

The existing odd Schur source is the sine compression with both pole
orientations. The exact moment calculations remove the even pole term
and identify the coupling to the scalar coordinate. Off the support of the
trial, the physical diagonal shift contributes zero. The checked signed
prime row uses the original von Mangoldt inventory.

Translation and sine orthogonality reduce the off-diagonal gamma term to
the supported sine shift integral. The kernel sine transform evaluates it
as the boundary divided difference. The full coefficient series includes
every observed middle row and all remaining rows. Identifying the series
with an operator residual norm also uses the whole source domain and
Parseval. Independent analytical review and novelty are pending.
-/

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualSourceComparison

open LowSchur OddRootProjection OddSchurAccounting OddPoleMoment OddPrimeRow
open OddOutputTrace OddBoundarySignalBounds OddResidualRows OddResidualMajorant
open OddShiftEnergy OddKernelSineTransform
open GRWTSK.LinearAlgebra.SchurObserver

def literalCoreEntry (T : ℝ) (m n : ℕ) : ℝ :=
  sineArchimedeanEntry T (gammaConstant 1 0) 0 m n -
    ∑ q ∈ activePrimePowers T, primeWeight q * sineShiftEntry T m n (Real.log q)

def literalPoleEntry (T : ℝ) (m : ℕ) : ℝ :=
  (sinePoleMoment T (1 / 2) m - sinePoleMoment T (-1 / 2) m) / 2

theorem literalPoleEntry_eq (T : ℝ) (hT : 0 < T) {m : ℕ} (hm : 0 < m) :
    literalPoleEntry T m = sinePoleCoefficient T m := by
  let i : Fin m := ⟨m - 1, Nat.sub_lt hm (by decide)⟩
  have hi : i.val + 1 = m := by dsimp [i]; omega
  have h := sinhMomentRow_eq_sinePoleCoefficient T hT i
  unfold sinhMomentRow at h
  simpa only [literalPoleEntry, hi] using h

/-- The literal core has only the archimedean and signed prime entries on odd coordinates. -/
theorem retainedCoreMatrix_eq_literalCoreEntry (T : ℝ) (hT : 0 < T) {P : ℕ}
    (i j : Fin P) :
    retainedCoreMatrix T P i j = literalCoreEntry T (i.val + 1) (j.val + 1) := by
  rw [retainedCoreMatrix_entry, coshMomentRow_eq_zero T hT i]
  unfold literalCoreEntry
  ring

/-- The spectral shift applies to every physical diagonal entry and only those entries. -/
theorem shiftedBordered_physicalEntry (T : ℝ) (hT : 0 < T) {P : ℕ}
    (i j : Fin P) (β : ℝ) :
    shiftedBlock (borderedSourceMatrix T P) poleShiftMetric β (Sum.inl i) (Sum.inl j) =
      literalCoreEntry T (i.val + 1) (j.val + 1) - (if i = j then β else 0) := by
  rw [borderedSourceMatrix, shiftedBlock_poleBorderedBlock]
  by_cases hij : i = j <;>
    simp [poleBorderedBlock, hij, retainedCoreMatrix_eq_literalCoreEntry T hT]

/-- The retained scalar coordinate contributes its literal pole entry at every shift. -/
theorem shiftedBordered_poleColumn (T : ℝ) {P : ℕ} (i : Fin P) (β : ℝ) :
    shiftedBlock (borderedSourceMatrix T P) poleShiftMetric β (Sum.inl i) (Sum.inr ()) =
      literalPoleEntry T (i.val + 1) := by
  rw [borderedSourceMatrix, shiftedBlock_poleBorderedBlock]
  rfl

def literalAugmentedRow (M : ℕ) (T : ℝ) (x : ℕ → ℝ) (a β : ℝ) (m : ℕ) : ℝ :=
  (∑ n ∈ Finset.Icc 1 M, x n * (literalCoreEntry T m n - (if m = n then β else 0))) +
    literalPoleEntry T m * a

/-- Closed form for the off-diagonal archimedean sine entry. -/
def archimedeanOffDiagonal (T : ℝ) (m n : ℕ) : ℝ :=
  (-1 : ℝ) ^ (m + n) *
    (-(2 / T) * (m : ℝ) * n * (boundarySignal T n - boundarySignal T m) /
      ((m : ℝ) ^ 2 - (n : ℝ) ^ 2))

theorem sineArchimedeanEntry_eq_boundary (T : ℝ) (hT : 0 < T) {m n : ℕ}
    (hm : 0 < m) (hn : 0 < n) (hmn : m ≠ n) :
    sineArchimedeanEntry T (gammaConstant 1 0) 0 m n = archimedeanOffDiagonal T m n := by
  have hInt (j : ℕ) := integrableOn_parityKernel_zero_mul_sin T (frequency T j) hT
  have hEval (j : ℕ) := integral_parityKernel_zero_mul_sine_frequency T hT j
  rw [sineArchimedeanEntry_off_diagonal T (gammaConstant 1 0) 0 hT hmn]
  have hrestrict : (∫ r in Ioi (0 : ℝ), parityKernel 0 r * sineShiftEntry T m n r) =
      ∫ r in Ioo (0 : ℝ) (2 * T), parityKernel 0 r * sineShiftEntry T m n r := by
    rw [← integral_indicator measurableSet_Ioi, ← integral_indicator measurableSet_Ioo]
    congr 1
    funext r
    by_cases hr : 0 < r
    · by_cases hrT : r < 2 * T
      · simp [indicator, hr, hrT]
      · simp [indicator, hr, hrT, sineShiftEntry_eq_zero_of_cutoff T r m n (le_of_not_gt hrT)]
    · simp [indicator, hr]
  let k := (2 / Real.pi) * (-1 : ℝ) ^ (m + n) / ((m : ℝ) ^ 2 - (n : ℝ) ^ 2)
  let f := fun j (r : ℝ) => parityKernel 0 r * Real.sin (frequency T j * r)
  have hcombine : EqOn (fun r => parityKernel 0 r * sineShiftEntry T m n r)
      (fun r => k * ((m : ℝ) * f n r - (n : ℝ) * f m r)) (Ioo 0 (2 * T)) := by
    intro r hr
    change parityKernel 0 r * sineShiftEntry T m n r = k * ((m : ℝ) * f n r - (n : ℝ) * f m r)
    rw [sineShiftEntry_off_diagonal T r m n hT hr.1.le hr.2 hm hn hmn]
    dsimp [k, f]
    ring
  rw [hrestrict, setIntegral_congr_fun measurableSet_Ioo hcombine, integral_const_mul,
    integral_sub ((hInt n).const_mul _) ((hInt m).const_mul _),
    integral_const_mul, integral_const_mul]
  change -(k * ((m : ℝ) * (∫ r in Ioo (0 : ℝ) (2 * T), f n r) -
    (n : ℝ) * (∫ r in Ioo (0 : ℝ) (2 * T), f m r))) = _
  rw [show (∫ r in Ioo (0 : ℝ) (2 * T), f n r) = _ from hEval n,
    show (∫ r in Ioo (0 : ℝ) (2 * T), f m r) = _ from hEval m]
  unfold archimedeanOffDiagonal
  dsimp [k]
  field_simp [hT.ne', Real.pi_ne_zero]

theorem literalAugmentedRow_eq {M m : ℕ} (hm : M < m) (T : ℝ) (hT : 0 < T)
    (x : ℕ → ℝ) (a β : ℝ) :
    literalAugmentedRow M T x a β m = augmentedRemoteRow M T x a m := by
  unfold literalAugmentedRow augmentedRemoteRow
  rw [literalPoleEntry_eq T hT (Nat.zero_lt_of_lt hm)]
  congr 1
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro n hn
  have hnpos : 0 < n := (Finset.mem_Icc.mp hn).1
  have hmn : n < m := ((Finset.mem_Icc.mp hn).2.trans_lt hm)
  rw [if_neg hmn.ne', sub_zero]
  unfold literalCoreEntry
  rw [sineArchimedeanEntry_eq_boundary T hT (Nat.zero_lt_of_lt hm) hnpos hmn.ne',
    prime_shift_sum_off_diagonal T m n hT
    (Nat.zero_lt_of_lt hm) hnpos hmn.ne']
  unfold physicalRow archimedeanOffDiagonal
  rw [pow_add]
  ring

/-- Coefficient-level return to the entire literal bordered tail. -/
theorem literalAugmentedRow_tail_bound {M L J : ℕ} (hML : M ≤ L) (hL : 0 < L) (hLJ : L ≤ J)
    (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ) (a β s : ℝ) (hs : 0 < s) :
    Summable (fun n : ℕ => (literalAugmentedRow M T x a β (L + 1 + n)) ^ 2) ∧
      (∑' n : ℕ, (literalAugmentedRow M T x a β (L + 1 + n)) ^ 2) ≤
        completeRemoteAllowance M L J T x a s := by
  have heq : (fun n : ℕ => (literalAugmentedRow M T x a β (L + 1 + n)) ^ 2) =
      (fun n : ℕ => (augmentedRemoteRow M T x a (L + 1 + n)) ^ 2) := by
    funext n
    have hm : L < L + 1 + n := by omega
    rw [literalAugmentedRow_eq (hML.trans_lt hm) T hT x a β]
  rw [heq]
  exact augmentedRemoteRow_complete_tail_bound hML hL hLJ T hT x a s hs

/-- The finite observed rows run from `N+1` through `L`. The remaining
infinite series starts at `L+1`, so the coefficient bound pays the entire
high range. The finite squares here are the exact source values. -/
theorem literalAugmentedRow_high_bound {N M L J : ℕ} (hNM : N ≤ M) (hML : M ≤ L)
    (hL : 0 < L) (hLJ : L ≤ J) (T : ℝ) (hT : 0 < T) (x : ℕ → ℝ)
    (a β s : ℝ) (hs : 0 < s) :
    Summable (fun n : ℕ => (literalAugmentedRow M T x a β (N + 1 + n)) ^ 2) ∧
      (∑' n : ℕ, (literalAugmentedRow M T x a β (N + 1 + n)) ^ 2) ≤
        (∑ n ∈ Finset.range (L - N), (literalAugmentedRow M T x a β (N + 1 + n)) ^ 2) +
          completeRemoteAllowance M L J T x a s := by
  let rowEnergy (n : ℕ) := (literalAugmentedRow M T x a β (N + 1 + n)) ^ 2
  have hNL := hNM.trans hML
  have hindex (n : ℕ) : N + 1 + (n + (L - N)) = L + 1 + n := by omega
  have htail := literalAugmentedRow_tail_bound hML hL hLJ T hT x a β s hs
  have hshift : Summable (fun n : ℕ => rowEnergy (n + (L - N))) := by
    simpa only [rowEnergy, hindex] using htail.1
  have hsum : Summable rowEnergy := (summable_nat_add_iff (L - N)).mp hshift
  refine ⟨hsum, ?_⟩
  change (∑' n : ℕ, rowEnergy n) ≤ (∑ n ∈ Finset.range (L - N), rowEnergy n) + _
  rw [← hsum.sum_add_tsum_nat_add (L - N)]
  exact add_le_add le_rfl (by simpa only [rowEnergy, hindex] using htail.2)

end GRWTSK.NumberTheory.WeilQuadraticForm.OddResidualSourceComparison
