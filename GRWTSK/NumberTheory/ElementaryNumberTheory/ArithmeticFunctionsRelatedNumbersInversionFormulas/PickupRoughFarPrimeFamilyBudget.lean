/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution/licenses. -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughFarMixedChannelConnections

/-!
# Return the mixed-channel budgets to the complete far source

The mixed-channel atlas exposes three exact residual sums for the transported
divisor mask.  This module returns those component bounds to the actual
`farNegative` source, together with separately supplied transported-main and
cutoff-sector bounds.

The finite prime-family theorem uses the existing source identity.  It does not
claim that averaging produces cancellation by itself: every prime retains its
own complete budget, and the normalized conclusion requires a nonempty family.
No external correlation, sieve, entropy, localization or trace theorem is
imported.

The mathematical action enabled here is exact: any future component estimates
can now be composed into a one-sided bound for the unchanged far source.  The
remaining work is to construct useful suppliers with growing-family uniformity
and then recombine this far sector with the other source sectors consumed by the
endpoint programme.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom audit,
and expected-interface checking: NOT_RUN. No quantitative gain or RH claim.
-/

set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarPrimeFamilyBudget

open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMaskCommutator
open GRWTSK.NumberTheory.Moebius.PickupRoughFarMixedChannelConnections

/-- A one-sided budget for the actual transported main sector. -/
structure TransportedMainSupplier
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) where
  budget : ℝ
  budget_nonnegative : 0 ≤ budget
  controls : transportedMain P N L Z H p T ≤ budget

/-- A one-sided budget for the actual transported cutoff commutator. -/
structure TransportedCutoffSupplier
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) where
  budget : ℝ
  budget_nonnegative : 0 ≤ budget
  controls : transportedCutoff P N L Z H p T ≤ budget

/-- All sectors required to return one fresh-prime estimate to `farNegative`. -/
structure CompleteFarPrimeSupplier
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ) where
  main : TransportedMainSupplier P N L Z H p T
  cutoff : TransportedCutoffSupplier P N L Z H p T
  channel : CompleteChannelSupplier P N L Z H p T

def CompleteFarPrimeSupplier.totalBudget
    {P : List ℕ} {N L Z H p : ℕ} {T : ℝ}
    (S : CompleteFarPrimeSupplier P N L Z H p T) : ℝ :=
  S.main.budget + S.cutoff.budget + S.channel.totalBudget

theorem CompleteFarPrimeSupplier.totalBudget_nonnegative
    {P : List ℕ} {N L Z H p : ℕ} {T : ℝ}
    (S : CompleteFarPrimeSupplier P N L Z H p T) :
    0 ≤ S.totalBudget := by
  exact add_nonneg
    (add_nonneg S.main.budget_nonnegative S.cutoff.budget_nonnegative)
    (CompleteChannelSupplier.totalBudget_nonnegative S.channel)

/-- Compose all five named source sectors for one fresh prime, before applying the
factor two in the complete far-source identity. -/
theorem transportedComponents_le_of_completeFarPrimeSupplier
    (P : List ℕ) (N L Z H p : ℕ) (T : ℝ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p)
    (S : CompleteFarPrimeSupplier P N L Z H p T) :
    transportedMain P N L Z H p T +
        transportedCutoff P N L Z H p T +
        transportedDivisorMask P N L Z H p T ≤
      S.totalBudget := by
  have hchannel :=
    transportedDivisorMask_le_of_completeChannelSupplier
      P N L Z H p T hpFresh hZp S.channel
  exact add_le_add
    (add_le_add S.main.controls S.cutoff.controls)
    hchannel

/-- Return one complete fresh-prime supplier to the unchanged far-negative source. -/
theorem farNegative_le_of_completeFarPrimeSupplier
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (N L Z H p : ℕ) (T : ℝ)
    (hpFresh : p ∈ freshPrimes P N) (hZp : Z < p)
    (S : CompleteFarPrimeSupplier P N L Z H p T) :
    farNegative P N L Z H (gram P T) ≤ 2 * S.totalBudget := by
  obtain ⟨hp, hpNotMem, _hpN⟩ := fresh_mem hpFresh
  rw [farNegative_eq_transport_components P hP N L Z H p hp hpNotMem T]
  exact mul_le_mul_of_nonneg_left
    (transportedComponents_le_of_completeFarPrimeSupplier
      P N L Z H p T hpFresh hZp S)
    (by norm_num)

/-- The total supplied budget over a finite family.  No normalization or uniform
constant is hidden in this definition. -/
def primeFamilyBudget
    {P : List ℕ} {N L Z H : ℕ} {T : ℝ}
    (Q : Finset ℕ)
    (S : (p : ℕ) → CompleteFarPrimeSupplier P N L Z H p T) : ℝ :=
  ∑ p ∈ Q, (S p).totalBudget

theorem primeFamilyBudget_nonnegative
    {P : List ℕ} {N L Z H : ℕ} {T : ℝ}
    (Q : Finset ℕ)
    (S : (p : ℕ) → CompleteFarPrimeSupplier P N L Z H p T) :
    0 ≤ primeFamilyBudget Q S := by
  unfold primeFamilyBudget
  apply Finset.sum_nonneg
  intro p _hp
  exact CompleteFarPrimeSupplier.totalBudget_nonnegative (S p)

/-- Exact finite-family return: each prime must be fresh, exceed the divisor
threshold, and carry all five source-sector budgets. -/
theorem farNegative_primeFamily_le_of_completeSuppliers
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (Q : Finset ℕ)
    (N L Z H : ℕ) (T : ℝ)
    (hQFresh : ∀ p ∈ Q, p ∈ freshPrimes P N)
    (hQZ : ∀ p ∈ Q, Z < p)
    (S : (p : ℕ) → CompleteFarPrimeSupplier P N L Z H p T) :
    (Q.card : ℝ) * farNegative P N L Z H (gram P T) ≤
      2 * primeFamilyBudget Q S := by
  have hQPrime : ∀ p ∈ Q, Nat.Prime p := by
    intro p hp
    exact (fresh_mem (hQFresh p hp)).1
  have hQNotMem : ∀ p ∈ Q, p ∉ P := by
    intro p hp
    exact (fresh_mem (hQFresh p hp)).2.1
  rw [farNegative_primeFamily_total P hP Q hQPrime hQNotMem N L Z H T]
  apply mul_le_mul_of_nonneg_left _ (by norm_num)
  unfold primeFamilyBudget
  apply Finset.sum_le_sum
  intro p hp
  exact transportedComponents_le_of_completeFarPrimeSupplier
    P N L Z H p T (hQFresh p hp) (hQZ p hp) (S p)

/-- The actual average supplied budget.  The empty family is deliberately left
unnormalized and cannot be used by the following return theorem. -/
def primeFamilyAverageBudget
    {P : List ℕ} {N L Z H : ℕ} {T : ℝ}
    (Q : Finset ℕ)
    (S : (p : ℕ) → CompleteFarPrimeSupplier P N L Z H p T) : ℝ :=
  primeFamilyBudget Q S / (Q.card : ℝ)

/-- A nonempty prime family returns the original far source to twice the average
of the complete supplied prime budgets. -/
theorem farNegative_le_two_mul_primeFamilyAverageBudget
    (P : List ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (Q : Finset ℕ) (hQNonempty : Q.Nonempty)
    (N L Z H : ℕ) (T : ℝ)
    (hQFresh : ∀ p ∈ Q, p ∈ freshPrimes P N)
    (hQZ : ∀ p ∈ Q, Z < p)
    (S : (p : ℕ) → CompleteFarPrimeSupplier P N L Z H p T) :
    farNegative P N L Z H (gram P T) ≤
      2 * primeFamilyAverageBudget Q S := by
  have hCardNat : 0 < Q.card := Finset.card_pos.mpr hQNonempty
  have hCard : (0 : ℝ) < (Q.card : ℝ) := by
    exact_mod_cast hCardNat
  have hFamily := farNegative_primeFamily_le_of_completeSuppliers
    P hP Q N L Z H T hQFresh hQZ S
  unfold primeFamilyAverageBudget
  rw [show 2 * (primeFamilyBudget Q S / (Q.card : ℝ)) =
      (2 * primeFamilyBudget Q S) / (Q.card : ℝ) by ring]
  apply (le_div_iff₀ hCard).2
  simpa only [mul_comm] using hFamily

/-- Boundary control: an empty prime family has zero total budget, so the
nonempty hypothesis in the normalized return cannot be dropped. -/
theorem primeFamilyBudget_empty
    {P : List ℕ} {N L Z H : ℕ} {T : ℝ}
    (S : (p : ℕ) → CompleteFarPrimeSupplier P N L Z H p T) :
    primeFamilyBudget (∅ : Finset ℕ) S = 0 := by
  simp [primeFamilyBudget]

end GRWTSK.NumberTheory.Moebius.PickupRoughFarPrimeFamilyBudget
