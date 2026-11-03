/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusStrongComparableIncomparable
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators

/-!
# GCD-reduced coprime parity of the ORIGINAL signed incomparable Möbius core

The preceding source keeps the genuine sign-obstructed kernel
  mu(m)*mu(n)*pickupResponseGram(T,m,n)
on squarefree original incomparable high-high pairs m,n.

For any original squarefree pair, let g=gcd(m,n).
The canonical relative factors a=m/g and b=n/g are coprime.
Moreover, g is coprime to each of a and b, because m,n are
squarefree. Therefore

  mu(m)*mu(n) = mu(g)^2 * mu(a)*mu(b) = mu(a)*mu(b).

The true original physical-time Gram stays
  pickupResponseGram(T,g*a,g*b);
the false homogeneous normalization
  pickupResponseGram(T,g*a,g*b) = c(g)*pickupResponseGram(T,a,b)
is NOT asserted. Thus the common gcd disappears from the
ARITHMETIC SIGN but not from the actual causal birth kernel.

If neither m|n nor n|m, then both coprime reduced factors
a,b must be strictly >1. This is the genuinely remaining
two-variable coprime squarefree sign-correlation source.

The source proves existence of the arithmetic normalization and
its exact signed *termwise* readout. Converting its original
ordered double sum to a (g,a,b)-sum is a separately named
UNPROVED Lean target, with the source masks and nonzero
multiplicities retained.
No Chowla theorem or RH-strength bound is imported or claimed.
-/

namespace GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdReduced

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.StrongComparableIncomparable
open GRWTSK.NumberTheory.Moebius.StrongOddCoprimeDilation
open GRWTSK.NumberTheory.Moebius.FareyFaryKakeyaIncidence
open GRWTSK.NumberTheory.Moebius.StrongEarlyIndexCollar

classical

/-- Pure original arithmetic: squarefree g*a and g*b imply
the common gcd g is coprime to each reduced factor. -/
theorem coprime_commonFactor_of_squarefree
    (g a b : ℕ)
    (hga : Squarefree (g*a))
    (hgb : Squarefree (g*b)) :
    Nat.Coprime g a ∧ Nat.Coprime g b := by
  exact ⟨Nat.coprime_of_squarefree_mul hga,
    Nat.coprime_of_squarefree_mul hgb⟩

/-- The original Möbius coefficient of a shared squarefree
factor appears TWICE and hence cancels EXACTLY in the
signed product. The original causal Gram is untouched. -/
theorem mobius_product_common_factor_cancel
    (g a b : ℕ)
    (hga : Squarefree (g*a))
    (hgb : Squarefree (g*b)) :
    moebiusReal (g*a) * moebiusReal (g*b) =
      moebiusReal a * moebiusReal b := by
  obtain ⟨hgaC, hgbC⟩ :=
    coprime_commonFactor_of_squarefree g a b hga hgb
  have hsg : Squarefree g :=
    ((Nat.squarefree_mul hgaC).mp hga).1
  have hmg : (moebiusReal g)^2 = 1 := by
    unfold moebiusReal
    exact_mod_cast
      (ArithmeticFunction.moebius_sq_eq_one_of_squarefree hsg)
  rw [original_moebius_mul_of_coprime g a hgaC,
    original_moebius_mul_of_coprime g b hgbC]
  nlinarith [hmg]

/-- The EXACT original signed causal response Gram after the
source-true arithmetic gcd sign cancellation. NO analytical
scaling or reindexing of time/birth cutoffs is assumed. -/
theorem sourceKernel_common_factor_cancel
    (T : ℝ) (g a b : ℕ)
    (hga : Squarefree (g*a))
    (hgb : Squarefree (g*b)) :
    sourceKernel T (g*a) (g*b) =
      moebiusReal a * moebiusReal b *
        pickupResponseGram T (g*a) (g*b) := by
  unfold sourceKernel
  rw [mobius_product_common_factor_cancel g a b hga hgb]

/-- An exact coprime-reduced ORIGINAL index witness, including
all original source index identities and the genuine causal
Gram. The label g remains part of the kernel, not of its sign. -/
def OriginalIncomparableReducedWitness
    (T : ℝ) (m n : ℕ) : Prop :=
  ∃ g a b : ℕ,
    0 < g ∧ 1 < a ∧ 1 < b ∧
    Nat.Coprime a b ∧ Nat.Coprime g a ∧ Nat.Coprime g b ∧
    m = g*a ∧ n = g*b ∧
    sourceKernel T m n =
      moebiusReal a * moebiusReal b *
        pickupResponseGram T m n

/-- Every original squarefree INCOMPARABLE pair has the genuine
coprime reduced witness with a,b>1, not an assumed sieve profile.
The construction uses the actual natural-number gcd factorization. -/
theorem squarefree_incomparable_has_reduced_witness
    (T : ℝ) (m n : ℕ)
    (hmpos : 0 < m) (hnpos : 0 < n)
    (hsm : Squarefree m) (hsn : Squarefree n)
    (hinc : ¬(m ∣ n ∨ n ∣ m)) :
    OriginalIncomparableReducedWitness T m n := by
  have hgcd : 0 < Nat.gcd m n :=
    Nat.gcd_pos_of_pos_left n hmpos
  obtain ⟨g, a, b, hg, hab, hma, hnb⟩ :=
    Nat.exists_coprime' hgcd
  have ha : 0 < a := by
    by_contra h
    have ha0 : a = 0 := by omega
    rw [ha0] at hma
    simp at hma
    omega
  have hb : 0 < b := by
    by_contra h
    have hb0 : b = 0 := by omega
    rw [hb0] at hnb
    simp at hnb
    omega
  have haneq : a ≠ 1 := by
    intro ha1
    have hdiv : m ∣ n := by
      refine ⟨b, ?_⟩
      rw [hma, hnb, ha1]
      simp [Nat.mul_comm]
    exact hinc (Or.inl hdiv)
  have hbneq : b ≠ 1 := by
    intro hb1
    have hdiv : n ∣ m := by
      refine ⟨a, ?_⟩
      rw [hma, hnb, hb1]
      simp [Nat.mul_comm]
    exact hinc (Or.inr hdiv)
  have ha1 : 1 < a := by omega
  have hb1 : 1 < b := by omega
  have hmg : m = g*a := by
    rw [hma]
    exact Nat.mul_comm _ _
  have hng : n = g*b := by
    rw [hnb]
    exact Nat.mul_comm _ _
  have hsga : Squarefree (g*a) := by
    rw [← hmg]
    exact hsm
  have hsgb : Squarefree (g*b) := by
    rw [← hng]
    exact hsn
  obtain ⟨hcopga, hcopgb⟩ :=
    coprime_commonFactor_of_squarefree g a b hsga hsgb
  have hkernel := sourceKernel_common_factor_cancel
    T g a b hsga hsgb
  refine ⟨g,a,b,hg,ha1,hb1,hab,hcopga,hcopgb,hmg,hng,?_⟩
  simpa only [← hmg, ← hng] using hkernel

/-- The exact sign-obstructed original source is now termwise
reducible to coprime a,b>1 with common factor g. It is not
automatically summable with any Chowla bound: the source's
g-dependent physical-time Gram and the full angular/energy
masks must still be transported. -/
theorem highHigh_incomparable_each_nonzero_has_reduced_witness
    (H M : ℕ) (T : ℝ) (m n : ℕ)
    (hm : m ∈ endpointIndex T) (hn : n ∈ endpointIndex T)
    (hsel : highHighSelector H M T m n ∧
      ¬(m ∣ n ∨ n ∣ m) ∧ Squarefree m ∧ Squarefree n) :
    OriginalIncomparableReducedWitness T m n := by
  exact squarefree_incomparable_has_reduced_witness T m n
    (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hn).1
    hsel.2.2.1 hsel.2.2.2 hsel.2.1

/-- Unproved next target: an EXACT full reindex of the original
signed incomparable double sum into (g,a,b) satisfying all
source masks and genuine physical-time K_T(g*a,g*b).
This is a named PROPOSITION, NOT an axiom or a proof that
these reindexed correlations have RH-strength cancellation.
The termwise source identity above does not imply an
unweighted or fixed-g two-point Chowla estimate. -/
def OriginalFullGcdReindexTarget : Prop :=
  ∀ (H M : ℕ) (T : ℝ),
    highHighSquarefreeIncomparableCross H M T =
      ∑ g ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        ∑ a ∈ Finset.Icc 2 ⌊Real.exp T⌋₊,
          ∑ b ∈ Finset.Icc 2 ⌊Real.exp T⌋₊,
            if Nat.Coprime a b ∧ Nat.Coprime g a ∧ Nat.Coprime g b ∧
                Squarefree (g*a) ∧ Squarefree (g*b) ∧
                highHighSelector H M T (g*a) (g*b) ∧
                g*a ∈ endpointIndex T ∧ g*b ∈ endpointIndex T
            then moebiusReal a * moebiusReal b *
              pickupResponseGram T (g*a) (g*b)
            else 0

end GRWTSK.NumberTheory.Moebius.StrongIncomparableGcdReduced
