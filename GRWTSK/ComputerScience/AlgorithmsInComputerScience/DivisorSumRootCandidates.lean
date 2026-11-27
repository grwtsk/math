import GRWTSK.NumberTheory.DivisorSumRecoveredRoot
import GRWTSK.ComputerScience.AlgorithmsInComputerScience.ConsecutiveFactorRecovery

/-!
# Finite root candidates from stored divisor-sum samples

Authors: grwtsk contributors

A finite correctness implementation of the recurrence step in Joseph M. Shunia,
arXiv:2611.34242v1, Algorithm 2. Laplace expansion and an exhaustive bounded
root scan make its computation explicit. See DivisorSumRootCandidates.md.
-/
namespace GRWTSK.IntegerFactorization.AbundanceRecovery

open DivisorSumRecurrence Matrix
open scoped Matrix

/-- Determinant by recursive expansion along column zero. -/
def laplace : (l : ℕ) → Matrix (Fin l) (Fin l) ℚ → ℚ
  | 0, _ => 1
  | l+1, A => ∑ i : Fin (l+1), (-1 : ℚ) ^ i.val * A i 0 *
      laplace l (A.submatrix i.succAbove Fin.succ)

theorem laplace_eq_det (l : ℕ) (A : Matrix (Fin l) (Fin l) ℚ) : laplace l A = A.det := by
  induction l with
  | zero => simp [laplace]
  | succ l ih =>
    rw [laplace, Matrix.det_succ_column_zero]
    simp only [ih]

/-- Integer-rounded Cramer quotients. Total rational division also specifies
what the finite program does at a singular trial order. -/
def roundedColumn {l : ℕ} (A : Matrix (Fin l) (Fin l) ℚ) (b : Fin l → ℚ)
    (den : ℚ) (k : Fin l) : ℤ := round (laplace l (A.updateCol k b) / den)

theorem roundedColumn_correct {l : ℕ} (A : Matrix (Fin l) (Fin l) ℚ) (b : Fin l → ℚ)
    (k : Fin l) : roundedColumn A b (laplace l A) k = round ((A⁻¹ *ᵥ b) k) := by
  unfold roundedColumn
  simp only [laplace_eq_det]
  congr 1
  by_cases h : A.det = 0
  · rw [A.nonsing_inv_apply_not_isUnit (by simp [h]), h]
    simp
  · have hv := congrFun (A.det_smul_inv_mulVec_eq_cramer b (isUnit_iff_ne_zero.mpr h)) k
    change A.det * (A⁻¹ *ᵥ b) k = A.cramer b k at hv
    rw [Matrix.cramer_apply] at hv
    exact (div_eq_iff h).mpr (hv.symm.trans (mul_comm ..))

/-- Compute a normalized sample from the initial stored value at J and the
entry at offset j-J. Out-of-range list reads default to zero. -/
def storedMoment (w J : ℕ) (answers : List ℕ) (j : ℕ) : ℚ :=
  let phi := w^(J+1) / answers[0]?.getD 0
  1 - (phi : ℚ) * (answers[j-J]?.getD 0 : ℕ) / (w : ℚ)^(j+1)

private theorem read_sample {w J count s : ℕ} (hs : s < count) :
    (samples w J count)[s]?.getD 0 = sigma (w^(J+s)) := by
  have hlen : s < (samples w J count).length := by simpa [samples] using hs
  rw [List.getElem?_eq_getElem hlen]
  simp [samples]

theorem storedMoment_correct {w n J count j : ℕ} (hw : 2 ≤ w) (hn : w ≤ n)
    (hJ : 16 * Nat.clog 2 n ≤ J) (hj : J ≤ j) (hi : j < J+count) :
    storedMoment w J (samples w J count) j = EulerSamples.normalized w j := by
  dsimp only [storedMoment, EulerSamples.normalized]
  rw [read_sample (by omega : 0 < count), read_sample (by omega : j-J < count)]
  simp only [Nat.add_zero, Nat.add_sub_of_le hj, sigma, PowerDivisorSum.shunia_lemma_3_2 hw hn hJ]

def trialRoots (w J l : ℕ) (answers : List ℕ) : Finset ℕ :=
  let z := storedMoment w J answers
  let A := system l J z
  let den := laplace l A
  let c := Vector.ofFn (roundedColumn A (rhs l J z) den)
  (Finset.Icc 2 w).filter fun d => (d : ℤ)^l +
    ∑ k : Fin l, c[k.val] * (d : ℤ)^(l - (k.val + 1)) = 0

def allOrderRoots (w J : ℕ) (answers : List ℕ) : Finset ℕ :=
  (Finset.Icc 1 w.log2).biUnion fun l => trialRoots w J l answers

/-- The two arrays used by one trial order read only positions 0 through
2*l-1, so mathematical normalization agrees with every actual lookup. -/
theorem mem_allOrderRoots {w n J count l d : ℕ} (hw : 2 ≤ w) (hn : w ≤ n)
    (hJ : 16 * Nat.clog 2 n ≤ J) (hl : 0 < l) (hlog : l ≤ w.log2) (hc : 2*l ≤ count)
    (hd : 2 ≤ d) (hdw : d ≤ w)
    (hroot : let A := system l J (EulerSamples.normalized w)
      let b := rhs l J (EulerSamples.normalized w)
      (d : ℤ)^l + ∑ k : Fin l, round ((A⁻¹ *ᵥ b) k) * (d : ℤ)^(l-(k.val+1)) = 0) :
    d ∈ allOrderRoots w J (samples w J count) := by
  let obs := storedMoment w J (samples w J count)
  have hA : system l J obs = system l J (EulerSamples.normalized w) := by
    ext s k
    exact storedMoment_correct hw hn hJ (by omega) (by have := s.isLt; have := k.isLt; omega)
  have hb : rhs l J obs = rhs l J (EulerSamples.normalized w) := by
    funext s
    exact congrArg Neg.neg (storedMoment_correct hw hn hJ (by omega) (by have := s.isLt; omega))
  apply Finset.mem_biUnion.mpr ⟨l, Finset.mem_Icc.mpr ⟨hl,hlog⟩, ?_⟩
  apply Finset.mem_filter.mpr ⟨Finset.mem_Icc.mpr ⟨hd,hdw⟩, ?_⟩
  change (d : ℤ)^l + ∑ k : Fin l, (Vector.ofFn (roundedColumn (system l J obs) (rhs l J obs)
    (laplace l (system l J obs))))[k.val] * (d : ℤ)^(l-(k.val+1)) = 0
  simpa only [Vector.getElem_ofFn, roundedColumn_correct, hA, hb] using! hroot

/-- This supplier takes the original size only to fix the source window.
The computation for a residual sees just that residual and its stored list. -/
def allOrderSupplier (n : ℕ) :
    RootSupplier n (48*(1+Nat.clog 2 n)^2) (2*Nat.clog 2 n) where
  roots w := allOrderRoots w (48*(1+Nat.clog 2 n)^2)
  covers w hw hn := by
    obtain ⟨l,hl,hwlog,p,hp,hmin,hroot⟩ := exists_recovered_root hw hn
    refine ⟨p,hp,?_,hmin⟩
    have hbase : w.log2 ≤ Nat.clog 2 n := by
      rw [Nat.log2_eq_log_two]
      exact (Nat.log_le_clog 2 w).trans (Nat.clog_mono_right 2 hn)
    have hstart : 16 * Nat.clog 2 n ≤ 48 * (1 + Nat.clog 2 n)^2 := by nlinarith
    exact mem_allOrderRoots hw hn hstart hl hwlog (by omega) (EulerSamples.component_two_le hp)
      (Nat.ordProj_le _ (by omega)) hroot

/-- Deterministic complete output from exactly the stored list of consecutive
power divisor sums, with the recurrence supplier internally specified. -/
theorem allOrder_factorization {n : ℕ} (hn : 2 ≤ n) :
    recoverOutput (allOrderSupplier n)
      (samples n (48*(1+Nat.clog 2 n)^2) (2*Nat.clog 2 n)) = some (canonical n) :=
  recoverOutput_samples _ hn

/-- Composition with the uniform strict-abundance encoding. The numerical and
logical comparison instance remains an explicit hypothesis. -/
theorem allOrder_abundance (t : ThresholdSupplier) (oracle : ℕ → Bool) {n : ℕ} (hn : 2 ≤ n)
    (hor : ∀ z, oracle z = true ↔ 2*z < sigma z) :
    recoverOutput (allOrderSupplier n) ((sampleRuns t oracle n
      (48*(1+Nat.clog 2 n)^2) (2*Nat.clog 2 n)).map Prod.fst) = some (canonical n) :=
  recoverOutput_abundance _ t oracle hn (by positivity) hor

end GRWTSK.IntegerFactorization.AbundanceRecovery
