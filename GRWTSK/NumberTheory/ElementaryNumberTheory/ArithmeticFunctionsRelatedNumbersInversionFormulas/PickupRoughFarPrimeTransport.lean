/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarAbel

/-!
# Exact fresh-prime transport of the complete masked far kernel

This module advances the next arithmetic attempt after the smaller-core Abel
reconstruction.  The mask, strict far-gap predicate, closed source cutoff and
analytic Gram are frozen BEFORE the fresh-prime coefficient split.

For a fresh prime p, the exact rough-coefficient identity is applied in BOTH
variables.  The complete far quadratic is therefore returned to a four-term
kernel
  K(m,n) - K(p*m,n) - K(m,p*n) + K(p*m,p*n).
No absolute values or growth hypotheses enter this transport.

For the actual block Gram the corresponding four-term difference is exactly
the Gram of the next prime stage.  The remaining difference is consequently
an explicit mask/cutoff commutator.  This is a localization theorem, not a
cancellation theorem: no sign or growth bound for the commutator is asserted.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom
and expected-interface checks: NOT_RUN.  No RH claim or acceptance promotion.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarPrimeTransport

open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarAbel

/-- The complete source mask, extended by zero outside the original closed box. -/
def farMask (P : List ℕ) (N L Z H m n : ℕ) : ℝ :=
  if 1 ≤ m ∧ m ≤ N ∧ 1 ≤ n ∧ n ≤ N ∧ L < m ∧ m + H < n
  then pairWeight P N Z m n else 0

/-- Frozen masked kernel.  The source mask is not recomputed after dilation. -/
def farKernel (P : List ℕ) (N L Z H : ℕ) (G : ℕ → ℕ → ℝ) (m n : ℕ) : ℝ :=
  farMask P N L Z H m n * G m n

/-- The exact two-channel finite quadratic used by the transport. -/
def quadraticPairing (N : ℕ) (a : ℕ → ℝ) (K : ℕ → ℕ → ℝ) : ℝ :=
  pairing N a (fun m => pairing N a (fun n => K m n))

/-- Fresh-prime difference in both coefficient channels. -/
def fourDifference (p : ℕ) (K : ℕ → ℕ → ℝ) (m n : ℕ) : ℝ :=
  K m n - K (p*m) n - K m (p*n) + K (p*m) (p*n)

/-- The frozen far kernel is zero once the first coordinate leaves the source box. -/
theorem farKernel_left_support (P : List ℕ) (N L Z H : ℕ)
    (G : ℕ → ℕ → ℝ) {m : ℕ} (hm : N < m) (n : ℕ) :
    farKernel P N L Z H G m n = 0 := by
  simp [farKernel, farMask, Nat.not_le.mpr hm]

/-- The frozen far kernel is zero once the second coordinate leaves the source box. -/
theorem farKernel_right_support (P : List ℕ) (N L Z H : ℕ)
    (G : ℕ → ℕ → ℝ) (m : ℕ) {n : ℕ} (hn : N < n) :
    farKernel P N L Z H G m n = 0 := by
  simp [farKernel, farMask, Nat.not_le.mpr hn]

/-- Two applications of the existing one-variable quotient pullback give the
literal four-term kernel.  This is finite algebra, not a norm estimate. -/
theorem quadratic_remove_eq_fourDifference (N p : ℕ) (hp : 0 < p)
    (b : ℕ → ℝ) (K : ℕ → ℕ → ℝ)
    (hleft : ∀ m n, N < m → K m n = 0)
    (hright : ∀ m n, N < n → K m n = 0) :
    quadraticPairing N (remove p b) K =
      quadraticPairing N b (fourDifference p K) := by
  unfold quadraticPairing
  have hinner (m : ℕ) :
      pairing N (remove p b) (fun n => K m n) =
        pairing N b (fun n => K m n - K m (p*n)) := by
    exact pairing_remove N p hp b (fun n => K m n) (fun n hn => hright m n hn)
  simp_rw [hinner]
  have hout :
      ∀ m : ℕ, N < m →
        pairing N b (fun n => K m n - K m (p*n)) = 0 := by
    intro m hm
    unfold pairing
    apply Finset.sum_eq_zero
    intro n hn
    rw [hleft m n hm, hleft m (p*n) hm]
    ring
  rw [pairing_remove N p hp b
    (fun m => pairing N b (fun n => K m n - K m (p*n))) hout]
  unfold pairing
  apply Finset.sum_congr rfl
  intro m hm
  congr 1
  rw [← Finset.sum_sub_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  unfold fourDifference
  ring

/-- The literal far source is twice the frozen-mask quadratic. -/
theorem farNegative_eq_two_quadratic (P : List ℕ) (N L Z H : ℕ)
    (G : ℕ → ℕ → ℝ) :
    farNegative P N L Z H G =
      2 * quadraticPairing N (rough P) (farKernel P N L Z H G) := by
  unfold farNegative quadraticPairing pairing farKernel farMask
  apply congrArg (fun x : ℝ => 2*x)
  apply Finset.sum_congr rfl
  intro n hn
  apply Finset.sum_congr rfl
  intro m hm
  have hm1 := (Finset.mem_Icc.mp hm).1
  have hmN := (Finset.mem_Icc.mp hm).2
  have hn1 := (Finset.mem_Icc.mp hn).1
  have hnN := (Finset.mem_Icc.mp hn).2
  by_cases hfar : L < m ∧ m + H < n
  · simp [hm1, hmN, hn1, hnN, hfar]
    ring
  · simp [hm1, hmN, hn1, hnN, hfar]

/-- Source-exact two-channel prime transport.  The original mask remains frozen. -/
theorem farNegative_eq_primeTransport (P : List ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (N L Z H p : ℕ)
    (hp : Nat.Prime p) (hfresh : p ∉ P) (G : ℕ → ℕ → ℝ) :
    farNegative P N L Z H G =
      2 * quadraticPairing N (rough (p::P))
        (fourDifference p (farKernel P N L Z H G)) := by
  rw [farNegative_eq_two_quadratic]
  rw [rough_remove P hP p hp hfresh]
  congr 1
  exact quadratic_remove_eq_fourDifference N p hp.pos (rough (p::P))
    (farKernel P N L Z H G)
    (fun m n hm => farKernel_left_support P N L Z H G hm n)
    (fun m n hn => farKernel_right_support P N L Z H G m hn)

/-- Pointwise next-stage block product. -/
theorem block_product_cons (P : List ℕ) (p N m n : ℕ) (u : ℝ) :
    block (p::P) N m u * block (p::P) N n u =
      block P N m u * block P N n u -
      block P N (p*m) u * block P N n u -
      block P N m u * block P N (p*n) u +
      block P N (p*m) u * block P N (p*n) u := by
  simp only [block]
  ring

/-- The four-term Gram difference is exactly the Gram after inserting p.
No positivity or estimate is used. -/
theorem gram_cons_eq_fourDifference (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (p : ℕ) (hp : Nat.Prime p) (T : ℝ) (m n : ℕ)
    (hm : 1 ≤ m) (hn : 1 ≤ n) :
    gram (p::P) T m n = fourDifference p (gram P T) m n := by
  have hpm : 1 ≤ p*m := by nlinarith [hp.two_le]
  have hpn : 1 ≤ p*n := by nlinarith [hp.two_le]
  have hmC := block_continuous P hP ⌊Real.exp T⌋₊ m hm
  have hnC := block_continuous P hP ⌊Real.exp T⌋₊ n hn
  have hpmC := block_continuous P hP ⌊Real.exp T⌋₊ (p*m) hpm
  have hpnC := block_continuous P hP ⌊Real.exp T⌋₊ (p*n) hpn
  unfold gram fourDifference
  calc
    _ = ∫ u in (0 : ℝ)..T,
        (block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ n u -
         block P ⌊Real.exp T⌋₊ (p*m) u * block P ⌊Real.exp T⌋₊ n u -
         block P ⌊Real.exp T⌋₊ m u * block P ⌊Real.exp T⌋₊ (p*n) u +
         block P ⌊Real.exp T⌋₊ (p*m) u * block P ⌊Real.exp T⌋₊ (p*n) u) := by
      apply intervalIntegral.integral_congr
      intro u _
      exact block_product_cons P p ⌊Real.exp T⌋₊ m n u
    _ = _ := by
      rw [intervalIntegral.integral_add
          (((hmC.mul hnC).sub (hpmC.mul hnC)).sub (hmC.mul hpnC)).intervalIntegrable _ _)
          ((hpmC.mul hpnC).intervalIntegrable _ _),
        intervalIntegral.integral_sub
          ((hmC.mul hnC).sub (hpmC.mul hnC)).intervalIntegrable
          ((hmC.mul hpnC).intervalIntegrable _ _),
        intervalIntegral.integral_sub
          ((hmC.mul hnC).intervalIntegrable _ _)
          ((hpmC.mul hnC).intervalIntegrable _ _)]

/-- The failure of the frozen masked kernel to transport as a pure next-stage
Gram is an explicit three-term mask/cutoff commutator. -/
def maskCommutator (P : List ℕ) (N L Z H p : ℕ) (G : ℕ → ℕ → ℝ)
    (m n : ℕ) : ℝ :=
  (farMask P N L Z H m n - farMask P N L Z H (p*m) n) * G (p*m) n +
  (farMask P N L Z H m n - farMask P N L Z H m (p*n)) * G m (p*n) +
  (farMask P N L Z H (p*m) (p*n) - farMask P N L Z H m n) * G (p*m) (p*n)

/-- Exact product-rule decomposition of the transported frozen kernel. -/
theorem fourDifference_farKernel (P : List ℕ) (N L Z H p : ℕ)
    (G : ℕ → ℕ → ℝ) (m n : ℕ) :
    fourDifference p (farKernel P N L Z H G) m n =
      farMask P N L Z H m n * fourDifference p G m n +
      maskCommutator P N L Z H p G m n := by
  unfold fourDifference farKernel maskCommutator
  ring

/-- For the actual Gram, the main transported term is literally the next-stage
Gram; the only remaining transport defect is the explicit commutator. -/
theorem fourDifference_actual_farKernel (P : List ℕ)
    (hP : ∀ q ∈ P, Nat.Prime q) (N L Z H p : ℕ)
    (hp : Nat.Prime p) (T : ℝ) (m n : ℕ) (hm : 1 ≤ m) (hn : 1 ≤ n) :
    fourDifference p
        (farKernel P N L Z H (gram P T)) m n =
      farMask P N L Z H m n * gram (p::P) T m n +
      maskCommutator P N L Z H p (gram P T) m n := by
  rw [fourDifference_farKernel]
  rw [← gram_cons_eq_fourDifference P hP p hp T m n hm hn]

end GRWTSK.NumberTheory.Moebius.PickupRoughFarPrimeTransport
