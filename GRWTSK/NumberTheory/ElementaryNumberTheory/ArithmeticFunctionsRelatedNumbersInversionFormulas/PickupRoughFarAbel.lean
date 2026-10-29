/- Copyright (c) 2026 grwtsk contributors. MIT.
Imported GRWTSK and Mathlib retain their upstream attribution and licenses.
The summation-by-parts theorem is imported, not reattributed: Mathlib's
Algebra.BigOperators.Module credits Dylan MacKenzie (Apache 2.0). -/
import GRWTSK.NumberTheory.ElementaryNumberTheory.ArithmeticFunctionsRelatedNumbersInversionFormulas.PickupRoughDirectNearDiagonal
import Mathlib.Algebra.BigOperators.Module

/-!
# Smaller-core Abel summation for the actual masked far-gap Gram sum

The source is `PickupRoughDirectNearDiagonal.farNegative`, with its original
rough Mobius coefficients, divisor-count denominator, closed N cutoff, strict
gap, both ordered orientations and actual frozen Gram. The lower prefix is NOT
centered away. A zero coefficient at index zero only aligns positive-natural
source sums with Mathlib's range-prefix convention; the unit is retained.

For B = n-(H+1), the row is empty unless L+H+1<n. Otherwise its exact value is
 C(B) G(B,n) - C(L) G(L+1,n)
   - sum_(L+1<=m<B) C(m) [G(m+1,n)-G(m,n)].
The outer factor 2*rough(P,n) remains outside this entire signed row.

The source-specific envelope below discharges the Gram hypothesis using the
existing actual-source bound. It is only 8*T*A(P)^2*N*(1+T) at dyadic times:
rate one up to subpower factors, NOT a complete-source exponent improvement.
It is included to make the failure of the absolute route quantitative, not as
a replacement for the stronger recorded Mertens benchmark.

RECONSTRUCTION_ONLY for arithmetic cancellation. In the actual j-th stage,
write S(x)=sum_(1<=r<=x) rough(P_j,r). For w(n)>0 and x<=N_j, finite divisor
reindexing gives the WRITTEN arithmetic identity
 C_n(x)=S(x)+(1/w(n))*sum_(p|n, p fresh, p>L_j) S(floor(x/p)).
This last identity is explained in the source-bound verification issue; it is
NOT claimed as a Lean declaration in this module. Each p>L_j has p^2>N_j,
so the repeated-prime alternative vanishes by its actual cutoff, not omission.
At w(n)=0 the masked prefix is zero instead. The coefficient of S(x) is one;
C_n(L_j)=S(L_j) for positive w(n). Thus Abel summation alone has not supplied
an independent bound for the ordinary-prefix/outer-Mobius covariance.

The complete-energy consumer retains the already paid thin, shared-prime,
near-gap and diagonal sectors. No new growth-supplier Prop is introduced.
The next arithmetic attempt is a joint two-channel prime transport of the
full masked far kernel, estimating its four-term signed covariance and cutoff
commutator together; its mixed channels must not be treated as a shorter-time
energy without proof. The reflected-source route remains independent.

SOURCE_PROOF_CANDIDATE. Compilation, fresh kernel replay, transitive axiom
and expected-interface checks: NOT_RUN. No RH claim or acceptance promotion.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.PickupRoughFarAbel

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.Moebius.FinitePrimeDivisorExtraction
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockSource
open GRWTSK.NumberTheory.Moebius.PickupPrimeBlockEnergy
open GRWTSK.NumberTheory.Moebius.PickupGrowingPrimeStages
open GRWTSK.NumberTheory.Moebius.PickupDyadicEndpoint
open GRWTSK.NumberTheory.Moebius.PickupRoughBilinearExtraction
open GRWTSK.NumberTheory.Moebius.PickupRoughCoreStrip
open GRWTSK.NumberTheory.Moebius.PickupRoughMixedCrossPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughSharedPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughLongPrime
open GRWTSK.NumberTheory.Moebius.PickupRoughJointSecondMoment
open GRWTSK.NumberTheory.Moebius.PickupRoughDirectNearDiagonal

/-- Positive-natural source coefficient, including its actual zero-count mask. -/
def maskedCoefficient (P : List ℕ) (N Z n m : ℕ) : ℝ :=
  if m = 0 then 0 else rough P m * pairWeight P N Z m n

/-- The uncentered prefix; the lower endpoint is not reset to zero. -/
def maskedPrefix (P : List ℕ) (N Z n x : ℕ) : ℝ :=
  ∑ m ∈ Finset.range (x+1), maskedCoefficient P N Z n m

def farCutoff (n H : ℕ) : ℕ := n - (H+1)

def farRow (P : List ℕ) (N L Z H n : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  ∑ m ∈ Finset.Icc 1 N, if L<m ∧ m+H<n
    then maskedCoefficient P N Z n m * G m n else 0

/-- Empty windows are handled before using the truncated natural subtraction. -/
def abelRow (P : List ℕ) (N L Z H n : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  if L+H+1<n then
    maskedPrefix P N Z n (farCutoff n H) * G (farCutoff n H) n -
    maskedPrefix P N Z n L * G (L+1) n -
    ∑ m ∈ Finset.Ico (L+1) (farCutoff n H),
      maskedPrefix P N Z n m * (G (m+1) n - G m n)
  else 0

/-- Both orientations and the outer signed coefficient remain literal. -/
def abelFar (P : List ℕ) (N L Z H : ℕ) (G : ℕ → ℕ → ℝ) : ℝ :=
  2 * ∑ n ∈ Finset.Icc 1 N, rough P n * abelRow P N L Z H n G

theorem maskedPrefix_zero_count (P : List ℕ) (N Z n x : ℕ)
    (hz : omega P N n = 0) : maskedPrefix P N Z n x = 0 := by
  simp [maskedPrefix, maskedCoefficient, pairWeight, hz]

theorem abelRow_empty (P : List ℕ) (N L Z H n : ℕ) (G : ℕ → ℕ → ℝ)
    (he : n ≤ L+H+1) : abelRow P N L Z H n G = 0 := by
  simp only [abelRow, if_neg (not_lt.mpr he)]

theorem farRow_empty (P : List ℕ) (N L Z H n : ℕ) (G : ℕ → ℕ → ℝ)
    (he : n ≤ L+H+1) : farRow P N L Z H n G = 0 := by
  unfold farRow
  apply Finset.sum_eq_zero
  intro m _
  have h : ¬(L<m ∧ m+H<n) := by omega
  exact if_neg h

/-- Exact closed-source to half-open-window conversion, including strict gap. -/
theorem farRow_eq_Ico (P : List ℕ) (N L Z H n : ℕ) (G : ℕ → ℕ → ℝ)
    (hn : n ≤ N) (ha : L+H+1<n) :
    farRow P N L Z H n G =
      ∑ m ∈ Finset.Ico (L+1) (farCutoff n H+1),
        maskedCoefficient P N Z n m * G m n := by
  classical
  have hset : (Finset.Icc 1 N).filter (fun m => L<m ∧ m+H<n) =
      Finset.Ico (L+1) (farCutoff n H+1) := by
    ext m
    simp only [Finset.mem_filter, Finset.mem_Icc, Finset.mem_Ico, farCutoff]
    omega
  unfold farRow
  rw [← Finset.sum_filter, hset]

/-- Abel summation keeps BOTH boundary terms and every Gram difference. -/
theorem farRow_eq_abelRow (P : List ℕ) (N L Z H n : ℕ)
    (G : ℕ → ℕ → ℝ) (hn : n ≤ N) :
    farRow P N L Z H n G = abelRow P N L Z H n G := by
  by_cases ha : L+H+1<n
  · rw [farRow_eq_Ico P N L Z H n G hn ha]
    unfold abelRow
    rw [if_pos ha]
    have hb : L+1 < farCutoff n H+1 := by unfold farCutoff; omega
    have hp := Finset.sum_Ico_by_parts (fun m => G m n)
      (maskedCoefficient P N Z n) hb
    simp only [smul_eq_mul, Nat.add_sub_cancel] at hp
    simpa only [maskedPrefix, mul_comm] using hp
  · rw [farRow_empty P N L Z H n G (by omega),
      abelRow_empty P N L Z H n G (by omega)]

/-- Source-exact identity, not a new remainder chosen to satisfy an estimate. -/
theorem farNegative_eq_abelFar (P : List ℕ) (N L Z H : ℕ)
    (G : ℕ → ℕ → ℝ) : farNegative P N L Z H G = abelFar P N L Z H G := by
  classical
  unfold farNegative abelFar
  apply congrArg (fun x : ℝ => 2*x)
  apply Finset.sum_congr rfl
  intro n hn
  rw [← farRow_eq_abelRow P N L Z H n G (Finset.mem_Icc.mp hn).2]
  unfold farRow
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro m hm
  have hm0 : m ≠ 0 := by have := (Finset.mem_Icc.mp hm).1; omega
  by_cases h : L<m ∧ m+H<n <;> simp [h, maskedCoefficient, hm0] <;> ring

/-- Reuse the existing finite-band estimate on a masked kernel. The kernel is
unchanged on the FAR set and zero elsewhere; this is not an unproved model. -/
theorem farNegative_eq_near_mask (P : List ℕ) (N L Z H : ℕ)
    (G : ℕ → ℕ → ℝ) :
    farNegative P N L Z H G =
      nearNegative P N L Z N (fun m n => if m+H<n then G m n else 0) := by
  classical
  unfold farNegative nearNegative
  apply congrArg (fun x : ℝ => 2*x)
  apply Finset.sum_congr rfl
  intro n hn
  have hnN := (Finset.mem_Icc.mp hn).2
  apply Finset.sum_congr rfl
  intro m _
  by_cases hl : L<m
  · by_cases hg : m+H<n
    · have hmn : m<n := by omega
      have hband : n≤m+N := by omega
      simp [hl, hg, hmn, hband]
    · by_cases hmn : m<n <;> simp [hl, hg, hmn]
  · simp [hl]

/-- A whole-FAR bound, but only at the absolute-envelope rate. -/
theorem farNegative_abs_le (P : List ℕ) (N L Z H : ℕ) (G : ℕ → ℕ → ℝ)
    {K : ℝ} (hK : 0 ≤ K)
    (hG : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n → |G m n| ≤ K*inverseSqrtKernel m n) :
    |farNegative P N L Z H G| ≤
      2*K*(N : ℝ)*(∑ m ∈ Finset.Icc 1 N, (m : ℝ)⁻¹) := by
  have hg : ∀ m n : ℕ, 1 ≤ m → 1 ≤ n →
      |(if m+H<n then G m n else 0 : ℝ)| ≤ K*inverseSqrtKernel m n := by
    intro m n hm hn
    by_cases h : m+H<n
    · simpa only [if_pos h] using hG m n hm hn
    · simp only [if_neg h, abs_zero]
      unfold inverseSqrtKernel
      positivity
  rw [farNegative_eq_near_mask]
  exact nearNegative_abs_le P N L Z N _ hK hg

/-- The actual Gram supplier is discharged, not added as an arithmetic premise. -/
theorem actual_abelFar_abs_envelope (j : ℕ) :
    |abelFar (stages j) (2^j) (thinCutoff j) (thinCutoff j) (gapWidth j)
        (gram (stages j) (dyadicTime j))| ≤
      8*dyadicTime j*factor (stages j)^2*((2^j : ℕ) : ℝ)*(1+dyadicTime j) := by
  have hT := dyadicTime_nonnegative j
  have hG (m n : ℕ) (hm : 1≤m) (hn : 1≤n) :
      |gram (stages j) (dyadicTime j) m n| ≤
        (4*dyadicTime j*factor (stages j)^2)*inverseSqrtKernel m n := by
    simpa only [inverseSqrtKernel, mul_assoc] using
      gram_abs_le (stages j) (stages_prime j) hT hm hn
  have hb := farNegative_abs_le (stages j) (2^j) (thinCutoff j)
    (thinCutoff j) (gapWidth j) (gram (stages j) (dyadicTime j))
    (by positivity : 0 ≤ 4*dyadicTime j*factor (stages j)^2) hG
  have hh : (∑ m ∈ Finset.Icc 1 (2^j), (m : ℝ)⁻¹) ≤ 1+dyadicTime j := by
    simpa only [log_dyadic_cutoff] using reciprocal_sum_le (2^j)
  have hc := mul_le_mul_of_nonneg_left hh
    (show 0 ≤ 2*(4*dyadicTime j*factor (stages j)^2)*((2^j : ℕ) : ℝ) by positivity)
  rw [farNegative_eq_abelFar] at hb
  convert hb.trans hc using 1 <;> ring

/-- Exact consumer: all previously paid complementary sectors remain visible. -/
theorem actual_energy_le_abel_and_paid (j : ℕ) :
    pickupEnergy (dyadicTime j) ≤
      abelFar (stages j) (2^j) (thinCutoff j) (thinCutoff j) (gapWidth j)
        (gram (stages j) (dyadicTime j)) +
      (1536*Real.exp (64/Real.log 2)+4800*Real.exp (96/Real.log 2))*
        Real.exp ((7/8)*dyadicTime j) +
      2*dyadicTime j^2*Real.exp (4*Real.sqrt (j : ℝ)) := by
  have hI := interaction_le_paid_and_far j
  have hH := original_energy_le_distinct_core_plus_paid j
  rw [farNegative_eq_abelFar] at hI
  linarith

/-- An independent COMPLETE-source allowance, explicitly NOT a first exponent gain. -/
theorem actual_energy_absolute_envelope (j : ℕ) :
    pickupEnergy (dyadicTime j) ≤
      8*dyadicTime j*factor (stages j)^2*((2^j : ℕ) : ℝ)*(1+dyadicTime j) +
      (1536*Real.exp (64/Real.log 2)+4800*Real.exp (96/Real.log 2))*
        Real.exp ((7/8)*dyadicTime j) +
      2*dyadicTime j^2*Real.exp (4*Real.sqrt (j : ℝ)) := by
  have h := actual_energy_le_abel_and_paid j
  have hb := (le_abs_self _).trans (actual_abelFar_abs_envelope j)
  linarith

end GRWTSK.NumberTheory.Moebius.PickupRoughFarAbel
