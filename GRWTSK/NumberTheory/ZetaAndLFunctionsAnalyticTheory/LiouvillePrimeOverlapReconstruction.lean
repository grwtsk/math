/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.LiouvilleSignedBuchstabTypeII
import Mathlib

/-!
# Exact common-integer prime overlap and complete signed Gram reconstruction

The two prime labels are NOT assumed independent. For p ≠ q prime,
p*a=q*b forces a=q*k and b=p*k; this includes arbitrary prime powers in k.
The weighted original-index diagonal is the complete p,q overlap and is
not a cancellation term. The positive diagonal and the entire signed ordered
off-diagonal reconstruct the original selected-divisor Gram.

The final interval-integral/source identification requires the visible,
separately stated original prime-delay and finite-integrability bridges;
those are not admitted as axioms. This source does not establish a new
Liouville arithmetic estimate or RH.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory
open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.LiouvilleCausalEnergy
open GRWTSK.NumberTheory.LiouvilleGrowingPrimeBandIdentity
open GRWTSK.NumberTheory.LiouvilleSignedBuchstabTypeII

namespace GRWTSK.NumberTheory.LiouvillePrimeOverlapReconstruction

/-- The shared original index of two distinct primes is p*q*k.
No coprimality condition is imposed on k. -/
theorem distinct_prime_shared_index
    (p q a b : ℕ) (hp : Nat.Prime p) (hq : Nat.Prime q)
    (hpq : p ≠ q) (heq : p * a = q * b) :
    ∃ k : ℕ, a = q * k ∧ b = p * k := by
  have hc : Nat.Coprime p q := (Nat.coprime_primes hp hq).2 hpq
  have hqdiv : q ∣ p * a := by rw [heq]; exact dvd_mul_right q b
  have ha : q ∣ a := hc.symm.gauss hqdiv
  obtain ⟨k, hk⟩ := ha
  refine ⟨k, hk, ?_⟩
  have hcancel : q * (p * k) = q * b := by
    calc
      q * (p * k) = p * (q * k) := by ac_rfl
      _ = p * a := by rw [hk]
      _ = q * b := heq
  exact Nat.eq_of_mul_eq_mul_left hq.pos hcancel

/-- Forward direction of the exact overlap parametrization. -/
theorem common_index_of_parameter (p q k : ℕ) :
    p * (q * k) = q * (p * k) := by ac_rfl

/-- Actual original response vanishes strictly before birth. -/
theorem pickupResponse_before_birth (n : ℕ) (u : ℝ)
    (hu : u < Real.log n) : pickupResponse n u = 0 := by
  simp [pickupResponse, not_le.mpr hu]

/-- The real Liouville coefficient has the correct p² sign, even when
k contains p again. -/
theorem coefficient_two_prime_copies (p k : ℕ)
    (hp : coefficient p = -1) :
    coefficient (p * (p * k)) = coefficient k := by
  rw [coefficient_mul, coefficient_mul, hp]
  ring

/-- Source coefficient/sign of a shared distinct-prime overlap, retaining
all prime powers in k. The unit-square condition is explicit. -/
theorem shared_index_sign
    (p q k : ℕ) (hp : coefficient p = -1)
    (hq : coefficient q = -1)
    (hk : coefficient k ^ 2 = 1) :
    coefficient (q * k) * coefficient (p * k) = 1 :=
  coefficient_cross_prime_overlap p q k hp hq hk

/-- Exact per-index weight for a selected prime label. -/
def primeTag (w : ℕ → ℝ) (p n : ℕ) : ℝ :=
  if p ∣ n then w p else 0

/-- Every p,q orientation is retained, including distinct-prime shared
indices n=pqk and all repeated prime powers in n. -/
def tagOverlapDiagonal (P S : Finset ℕ) (w : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) : ℝ :=
  ∑ n ∈ S, ∑ p ∈ P, ∑ q ∈ P,
    primeTag w p n * primeTag w q n * K n n

/-- Signed original-index diagonal after summing all tags. -/
def divisorDiagonal (P S : Finset ℕ) (w : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) : ℝ :=
  ∑ n ∈ S, (∑ p ∈ P, primeTag w p n) ^ 2 * K n n

/-- All tagged diagonal copies combine to the complete divisor-weight
square. This does not discard p ≠ q intersections. -/
theorem tagOverlapDiagonal_eq_divisorDiagonal
    (P S : Finset ℕ) (w : ℕ → ℝ) (K : ℕ → ℕ → ℝ) :
    tagOverlapDiagonal P S w K = divisorDiagonal P S w K := by
  classical
  unfold tagOverlapDiagonal divisorDiagonal
  apply Finset.sum_congr rfl
  intro n hn
  rw [pow_two, Finset.sum_mul_sum]
  simp_rw [Finset.sum_mul]

/-- Complete signed selected-divisor Gram, with exact original Liouville
coefficients, not independent-prime or squarefree proxies. -/
def divisorSignedGram (P S : Finset ℕ) (w : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) : ℝ :=
  signedGram S (fun n => coefficient n * selectedDivisorWeight P w n) K

/-- Complete diagonal in the original signed gram (lambda(n)^2 kept). -/
def divisorSignedDiagonal (P S : Finset ℕ) (w : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) : ℝ :=
  exactDiagonal S (fun n => coefficient n * selectedDivisorWeight P w n) K

/-- Both orientations of every n ≠ m remain signed. -/
def divisorSignedOffDiagonal (P S : Finset ℕ) (w : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) : ℝ :=
  signedOffDiagonal S (fun n => coefficient n * selectedDivisorWeight P w n) K

/-- Exact decomposition into positive original-index diagonal and complete
signed off-diagonal. No intermediate cross term is replaced by its norm. -/
theorem divisorSignedGram_eq_diagonal_add_offDiagonal
    (P S : Finset ℕ) (w : ℕ → ℝ) (K : ℕ → ℕ → ℝ) :
    divisorSignedGram P S w K =
      divisorSignedDiagonal P S w K +
        divisorSignedOffDiagonal P S w K := by
  exact signedGram_eq_diagonal_add_offDiagonal S
    (fun n => coefficient n * selectedDivisorWeight P w n) K

/-- Exact source-facing causal kernel. The real interval integral is not
silently replaced by an arbitrary positive semidefinite matrix. -/
def originalCausalKernel (T : ℝ) (n m : ℕ) : ℝ :=
  pickupResponseGram T n m

/-- Unchanged complete signed bilinear packet at the original cutoff.
Every terminal birth stays in the finite inventory, with zero response. -/
def actualTypeIIPacket (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ) : ℝ :=
  divisorSignedOffDiagonal P (Finset.Icc 1 ⌊Real.exp T⌋₊)
    w (originalCausalKernel T)

/-- The original-index positive diagonal and complete signed Type II
packet reconstruct the selected-divisor Gram for every real T. -/
theorem original_typeII_reconstruction
    (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ) :
    divisorSignedGram P (Finset.Icc 1 ⌊Real.exp T⌋₊)
        w (originalCausalKernel T) =
      divisorSignedDiagonal P (Finset.Icc 1 ⌊Real.exp T⌋₊)
        w (originalCausalKernel T) +
      actualTypeIIPacket P w T := by
  exact divisorSignedGram_eq_diagonal_add_offDiagonal P
    (Finset.Icc 1 ⌊Real.exp T⌋₊) w (originalCausalKernel T)

/-- The still-open analytic bridge is visible: rewriting the complete
original-index Gram as the physical-time integral requires finite
interval-integrability and the original signed prime-delay identity.
This proposition is NOT an axiom or a proven theorem. -/
def PhysicalTimeGramBridge : Prop :=
  ∀ (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ), 0 ≤ T →
    divisorSignedGram P (Finset.Icc 1 ⌊Real.exp T⌋₊)
        w (originalCausalKernel T) =
      ∫ u in (0 : ℝ)..T,
        (∑ n ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
          coefficient n * selectedDivisorWeight P w n * pickupResponse n u) ^ 2

/-- A distinct open bridge equating the original-index selected-divisor
packet with the prime-shifted presentation. Prime-delay covariance is
mixed with F and is NOT identical to this full squared packet. -/
def PrimeShiftSquareBridge : Prop :=
  ∀ (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ), 0 ≤ T →
    divisorSignedGram P (Finset.Icc 1 ⌊Real.exp T⌋₊)
      w (originalCausalKernel T) =
    ∫ u in (0 : ℝ)..T,
      (∑ p ∈ P, (w p / Real.sqrt (p : ℝ)) *
        waveform (u - Real.log p)) ^ 2


/-- Mixed selected-prime covariance in the ORIGINAL integer indices. The
first factor is the full Liouville waveform, not the selected prime block.
This distinction is essential: the earlier weightedDelayedCovariance is
mixed and is not the squared Type II packet. -/
def originalMixedGram (P S : Finset ℕ) (w : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) : ℝ :=
  ∑ n ∈ S, ∑ m ∈ S,
    coefficient n * (coefficient m * selectedDivisorWeight P w m) * K n m

def originalMixedDiagonal (P S : Finset ℕ) (w : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) : ℝ :=
  ∑ n ∈ S, ∑ m ∈ S,
    if n = m then
      coefficient n * (coefficient m * selectedDivisorWeight P w m) * K n m
    else 0

def originalMixedOffDiagonal (P S : Finset ℕ) (w : ℕ → ℝ)
    (K : ℕ → ℕ → ℝ) : ℝ :=
  ∑ n ∈ S, ∑ m ∈ S,
    if n ≠ m then
      coefficient n * (coefficient m * selectedDivisorWeight P w m) * K n m
    else 0

/-- Mixed Gram is also split with no lost signed terms. This is the
finite reconstruction relevant to the existing delayed covariance. -/
theorem originalMixedGram_eq_diagonal_add_offDiagonal
    (P S : Finset ℕ) (w : ℕ → ℝ) (K : ℕ → ℕ → ℝ) :
    originalMixedGram P S w K =
      originalMixedDiagonal P S w K +
        originalMixedOffDiagonal P S w K := by
  classical
  unfold originalMixedGram originalMixedDiagonal originalMixedOffDiagonal
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  by_cases h : n = m
  · simp [h]
  · simp [h]

/-- The mixed diagonal is exactly the retained selected-prime diagonal,
including repeated-prime multiples. -/
theorem originalMixedDiagonal_eq_single_sum
    (P S : Finset ℕ) (w : ℕ → ℝ) (K : ℕ → ℕ → ℝ) :
    originalMixedDiagonal P S w K =
      ∑ n ∈ S,
        coefficient n ^ 2 * selectedDivisorWeight P w n * K n n := by
  classical
  unfold originalMixedDiagonal
  apply Finset.sum_congr rfl
  intro n hn
  rw [Finset.sum_ite_eq' S n (by assumption)]
  ring

/-- Finite source covariance reconstruction, conditional only on the
two still-unverified analytic identifications hDelay and hGram. The
implication itself is algebraic; the premises are NOT hidden by an axiom.

hDelay is the integrated prime-delay identity after finite sum
interchange. hGram is the original finite Gram/integral interchange.
Both must be proved from the literal pickupResponse and integrability.
-/
theorem weightedDelayedCovariance_eq_negative_mixed_of_bridges
    (P : Finset ℕ) (w : ℕ → ℝ) (T : ℝ)
    (hDelay :
      weightedDelayedCovariance P w T =
        -(∫ u in (0 : ℝ)..T,
          waveform u *
            (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
              coefficient m * selectedDivisorWeight P w m *
                pickupResponse m u)))
    (hGram :
      (∫ u in (0 : ℝ)..T,
        waveform u *
          (∑ m ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
            coefficient m * selectedDivisorWeight P w m *
              pickupResponse m u)) =
        originalMixedGram P (Finset.Icc 1 ⌊Real.exp T⌋₊)
          w (originalCausalKernel T)) :
    weightedDelayedCovariance P w T =
      -(originalMixedDiagonal P (Finset.Icc 1 ⌊Real.exp T⌋₊)
          w (originalCausalKernel T) +
        originalMixedOffDiagonal P (Finset.Icc 1 ⌊Real.exp T⌋₊)
          w (originalCausalKernel T)) := by
  rw [hDelay, hGram, originalMixedGram_eq_diagonal_add_offDiagonal]

end GRWTSK.NumberTheory.LiouvillePrimeOverlapReconstruction
