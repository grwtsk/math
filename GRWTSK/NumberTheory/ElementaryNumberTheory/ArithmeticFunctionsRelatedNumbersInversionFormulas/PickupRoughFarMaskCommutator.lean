/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarPrimeTransport

/-!
# Geometric and arithmetic sectors of the far prime-transport commutator

The previous source-exact transport proves that fresh-prime dilation is exact in
both rough-Mobius coefficient channels and in the analytic block Gram. The only
transport defect is the frozen far mask.

This file factors that defect into two exact sectors:

* a cutoff/gap sector, where the Boolean support of the complete far region changes
  under one of the prime dilations;
* a divisor-mask sector, where the support is retained but the actual source
  fraction pairWeight changes.

Neither sector is assumed small. Vanishing lemmas identify precisely what must be
stable for each sector to disappear. A finite prime-family identity then retains
the whole signed source while exposing the averageable transported main term and
both commutator sectors. This is an algebraic/finite source decomposition, not an
entropy decrement theorem, Duffin--Schaeffer overlap estimate, Carleson localization
estimate, or RH bound.

Those external works may motivate later estimates, but no theorem from them is
imported or used here.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN. No acceptance or RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarMaskCommutator

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarPrimeTransport

def farActive (N L H m n : ℕ) : Prop :=
  1 ≤ m ∧ m ≤ N ∧ 1 ≤ n ∧ n ≤ N ∧ L < m ∧ m + H < n

def farIndicator (N L H m n : ℕ) : ℝ :=
  if farActive N L H m n then 1 else 0

theorem farMask_eq_indicator_mul (P : List ℕ) (N L Z H m n : ℕ) :
    farMask P N L Z H m n =
      farIndicator N L H m n * pairWeight P N Z m n := by
  unfold farMask farIndicator farActive
  split_ifs <;> simp_all

def cutoffCommutator (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ)
    (m n : ℕ) : ℝ :=
  ((farIndicator N L H m n - farIndicator N L H (p*m) n) *
      pairWeight P N Z m n) * G (p*m) n +
  ((farIndicator N L H m n - farIndicator N L H m (p*n)) *
      pairWeight P N Z m n) * G m (p*n) +
  ((farIndicator N L H (p*m) (p*n) - farIndicator N L H m n) *
      pairWeight P N Z m n) * G (p*m) (p*n)

def divisorMaskCommutator (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ)
    (m n : ℕ) : ℝ :=
  farIndicator N L H (p*m) n *
      (pairWeight P N Z m n - pairWeight P N Z (p*m) n) * G (p*m) n +
  farIndicator N L H m (p*n) *
      (pairWeight P N Z m n - pairWeight P N Z m (p*n)) * G m (p*n) +
  farIndicator N L H (p*m) (p*n) *
      (pairWeight P N Z (p*m) (p*n) - pairWeight P N Z m n) *
        G (p*m) (p*n)

theorem maskCommutator_eq_cutoff_add_divisor
    (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ) (m n : ℕ) :
    maskCommutator P N L Z H p G m n =
      cutoffCommutator P N L Z H p G m n +
      divisorMaskCommutator P N L Z H p G m n := by
  rw [show farMask P N L Z H m n =
      farIndicator N L H m n * pairWeight P N Z m n by
        exact farMask_eq_indicator_mul P N L Z H m n]
  rw [show farMask P N L Z H (p*m) n =
      farIndicator N L H (p*m) n * pairWeight P N Z (p*m) n by
        exact farMask_eq_indicator_mul P N L Z H (p*m) n]
  rw [show farMask P N L Z H m (p*n) =
      farIndicator N L H m (p*n) * pairWeight P N Z m (p*n) by
        exact farMask_eq_indicator_mul P N L Z H m (p*n)]
  rw [show farMask P N L Z H (p*m) (p*n) =
      farIndicator N L H (p*m) (p*n) * pairWeight P N Z (p*m) (p*n) by
        exact farMask_eq_indicator_mul P N L Z H (p*m) (p*n)]
  unfold maskCommutator cutoffCommutator divisorMaskCommutator
  ring

theorem cutoffCommutator_eq_zero_of_indicator_stable
    (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ) (m n : ℕ)
    (hleft : farIndicator N L H m n = farIndicator N L H (p*m) n)
    (hright : farIndicator N L H m n = farIndicator N L H m (p*n))
    (hboth : farIndicator N L H (p*m) (p*n) = farIndicator N L H m n) :
    cutoffCommutator P N L Z H p G m n = 0 := by
  unfold cutoffCommutator
  rw [hleft, hright, hboth]
  ring

theorem divisorMaskCommutator_eq_zero_of_weight_stable
    (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ) (m n : ℕ)
    (hleft : pairWeight P N Z m n = pairWeight P N Z (p*m) n)
    (hright : pairWeight P N Z m n = pairWeight P N Z m (p*n))
    (hboth : pairWeight P N Z (p*m) (p*n) = pairWeight P N Z m n) :
    divisorMaskCommutator P N L Z H p G m n = 0 := by
  unfold divisorMaskCommutator
  rw [hleft, hright, hboth]
  ring

theorem fourDifference_actual_farKernel_components
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (N L Z H p : ℕ) (hp : Nat.Prime p) (T : ℝ)
    (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n) :
    fourDifference p (farKernel P N L Z H (gram P T)) m n =
      farMask P N L Z H m n * gram (p::P) T m n +
      cutoffCommutator P N L Z H p (gram P T) m n +
      divisorMaskCommutator P N L Z H p (gram P T) m n := by
  rw [fourDifference_actual_farKernel P hP N L Z H p hp T m n hm hn]
  rw [maskCommutator_eq_cutoff_add_divisor]

def transportedMain (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) : ℝ :=
  quadraticPairing N (rough (p::P))
    (fun m n => farMask P N L Z H m n * gram (p::P) T m n)

def transportedCutoff (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) : ℝ :=
  quadraticPairing N (rough (p::P))
    (cutoffCommutator P N L Z H p (gram P T))

def transportedDivisorMask (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) : ℝ :=
  quadraticPairing N (rough (p::P))
    (divisorMaskCommutator P N L Z H p (gram P T))

theorem farNegative_eq_transport_components
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (N L Z H p : ℕ) (hp : Nat.Prime p) (hfresh : p ∉ P) (T : ℝ) :
    farNegative P N L Z H (gram P T) =
      2 * (transportedMain P N L Z H p T +
        transportedCutoff P N L Z H p T +
        transportedDivisorMask P N L Z H p T) := by
  rw [farNegative_eq_primeTransport P hP N L Z H p hp hfresh (gram P T)]
  apply congrArg (fun x : ℝ => 2*x)
  unfold transportedMain transportedCutoff transportedDivisorMask
  unfold quadraticPairing pairing
  calc
    _ = ∑ m ∈ Finset.Icc 1 N, rough (p::P) m *
        ∑ n ∈ Finset.Icc 1 N, rough (p::P) n *
          (farMask P N L Z H m n * gram (p::P) T m n +
            cutoffCommutator P N L Z H p (gram P T) m n +
            divisorMaskCommutator P N L Z H p (gram P T) m n) := by
      apply Finset.sum_congr rfl
      intro m hm
      congr 1
      apply Finset.sum_congr rfl
      intro n hn
      rw [fourDifference_actual_farKernel_components P hP N L Z H p hp T m n
        (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hn).1]
    _ = _ := by
      simp_rw [mul_add, Finset.sum_add_distrib]
      ring

theorem farNegative_primeFamily_total
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (Q : Finset ℕ) (hQprime : ∀ p ∈ Q, Nat.Prime p)
    (hQfresh : ∀ p ∈ Q, p ∉ P)
    (N L Z H : ℕ) (T : ℝ) :
    (Q.card : ℝ) * farNegative P N L Z H (gram P T) =
      2 * ∑ p ∈ Q,
        (transportedMain P N L Z H p T +
          transportedCutoff P N L Z H p T +
          transportedDivisorMask P N L Z H p T) := by
  calc
    _ = ∑ p ∈ Q, farNegative P N L Z H (gram P T) := by simp
    _ = ∑ p ∈ Q, 2 *
        (transportedMain P N L Z H p T +
          transportedCutoff P N L Z H p T +
          transportedDivisorMask P N L Z H p T) := by
      apply Finset.sum_congr rfl
      intro p hp
      exact farNegative_eq_transport_components P hP N L Z H p
        (hQprime p hp) (hQfresh p hp) T
    _ = _ := by
      rw [← Finset.mul_sum]

end GRWTSK.NumberTheory.Moebius.PickupRoughFarMaskCommutator
