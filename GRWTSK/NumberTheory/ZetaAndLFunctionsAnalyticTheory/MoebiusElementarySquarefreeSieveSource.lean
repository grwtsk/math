/- Copyright (c) 2026 grwtsk contributors. MIT.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN / EXPECTED_TYPES_NOT_RUN /
FRESH_KERNEL_NOT_RUN / TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusGaussianStrongHeatSquarefreeNoGo
import Mathlib.Data.Nat.Squarefree
import Mathlib.Data.Nat.Factorization.Basic
import Mathlib.Tactic

/-!
# Elementary finite squarefree sieve covering the strong-heat shell debt

The earlier EXACT source radius theorem reduces the positive
reconstruction no-go to an honest count of ORIGINAL squarefree n in
a logarithmic shell. It is possible to obtain this arithmetically
without the prime number theorem or the asymptotic density 6/pi².

This leaf supplies two elementary source facts:
  (1) EVERY nonsquarefree original n>=1 has some p>=2 with p²|n,
      by pinned Mathlib Nat.squarefree_iff_prime_squarefree.
      Thus its finite set lies in the union of genuine original
      square-divisor-multiple sets, retaining original integer n.
  (2) The finite reciprocal-square sieve cost obeys
      sum_(d=2)^N 1/d² <= 3/4,
      by 1/2²=1/4 and for d>=3,
      1/d² <= 1/(d-1) - 1/d.

The separate remaining cardinality lemma is:
  #(n in Icc 1 N : d²|n) <= N/d²
for d>=2. Together with the union bound, this yields a
squarefree count at least N/4, and a genuine original log-shell
linear count. No all-scale squarefree result is claimed to be
proved by this leaf alone; its finite combinatorial components
are source proof candidates awaiting native compilation.
-/
set_option autoImplicit false
noncomputable section
open scoped BigOperators

namespace GRWTSK.NumberTheory.Moebius.ElementarySquarefreeSieveSource

/-- The reciprocal-square cost at N+1 is below the corresponding
telescoping reciprocal gap, for every N>=2. -/
private theorem inv_square_succ_le_reciprocal_drop
    (N : ℕ) (hN : 2 ≤ N) :
    ((((N + 1 : ℕ) : ℝ))⁻¹) ^ 2 ≤
      (N : ℝ)⁻¹ - (((N + 1 : ℕ) : ℝ))⁻¹ := by
  have hp : (0 : ℝ) < N := by
    exact_mod_cast (by omega : 0 < N)
  have hq : (0 : ℝ) < N + 1 := by positivity
  push_cast
  field_simp
  nlinarith

/-- A stronger source-free finite telescoping bound on d>=3. -/
private theorem inv_square_tail_le_half_sub_inv
    (N : ℕ) (hN : 3 ≤ N) :
    (∑ d ∈ Finset.Icc 3 N, ((d : ℝ)⁻¹) ^ 2) ≤
      (1 / 2 : ℝ) - (N : ℝ)⁻¹ := by
  induction N with
  | zero => omega
  | succ N ih =>
      by_cases hprev : 3 ≤ N
      · rw [Finset.sum_Icc_succ_top (by omega)]
        have hlast := inv_square_succ_le_reciprocal_drop N (by omega)
        have hbase := ih hprev
        push_cast at hlast ⊢
        linarith
      · have htwo : N = 2 := by omega
        subst N
        norm_num [Finset.Icc]

/-- Genuine finite inverse-square cost; it needs no zeta(2) identity,
PNT, Mertens, RH or infinite series. -/
theorem finite_square_divisor_reciprocal_cost_le_three_quarters
    (N : ℕ) :
    (∑ d ∈ Finset.Icc 2 N, ((d : ℝ)⁻¹) ^ 2) ≤
      (3 / 4 : ℝ) := by
  by_cases hN : 2 ≤ N
  · have hsplit :
        Finset.Icc 2 N =
          insert 2 (Finset.Icc 3 N) := by
      ext d
      simp only [Finset.mem_Icc, Finset.mem_insert]
      omega
    have hnot : 2 ∉ Finset.Icc 3 N := by simp
    rw [hsplit, Finset.sum_insert hnot]
    have htail :
        (∑ d ∈ Finset.Icc 3 N, ((d : ℝ)⁻¹) ^ 2) ≤
          (1 / 2 : ℝ) := by
      by_cases hN3 : 3 ≤ N
      · have h := inv_square_tail_le_half_sub_inv N hN3
        have hpos : 0 ≤ (N : ℝ)⁻¹ := by positivity
        linarith
      · have heq : N = 2 := by omega
        subst N
        simp
    norm_num at *
    linarith
  · have hlt : N < 2 := by omega
    have he : Finset.Icc 2 N = ∅ := Finset.Icc_eq_empty_of_lt hlt
    simp [he]

/-- Actual nonsquarefree original integer source indices, retaining
the full integer and its eventual zero Möbius coefficient. -/
def nonSquarefreeSource (N : ℕ) : Finset ℕ := by
  classical
  exact (Finset.Icc 1 N).filter (fun n => ¬ Squarefree n)

/-- Exact candidates excluded by the literal square-divisor sieve.
They are NOT assumed disjoint; their overlap is paid by cardinality. -/
def squareDivisorMultiples (N d : ℕ) : Finset ℕ :=
  (Finset.Icc 1 N).filter (fun n => d * d ∣ n)

/-- The pinned Mathlib squarefree predicate has an actual
prime-square witness when it fails. No observation sign is invented. -/
theorem nonsquarefree_has_prime_square_factor
    {n : ℕ} (hn : ¬ Squarefree n) :
    ∃ p : ℕ, p.Prime ∧ p * p ∣ n := by
  classical
  by_contra hnone
  have hall : ∀ p : ℕ, p.Prime → ¬p * p ∣ n := by
    intro p hp hdiv
    exact hnone ⟨p, hp, hdiv⟩
  exact hn ((Nat.squarefree_iff_prime_squarefree).mpr hall)

/-- The original nonsquarefree integer set is covered by TRUE
multiple-of-prime-square sets, with the same original n and N.
No finite density follows without an explicit multiplicity count. -/
theorem nonsquarefree_subset_square_divisor_cover
    (N : ℕ) :
    nonSquarefreeSource N ⊆
      (Finset.Icc 2 N).biUnion (squareDivisorMultiples N) := by
  classical
  intro n hn
  obtain ⟨hnIcc, hnNot⟩ := Finset.mem_filter.mp hn
  obtain ⟨p, hp, hdiv⟩ :=
    nonsquarefree_has_prime_square_factor hnNot
  have hn1 : 0 < n := by omega
  have hpn : p * p ≤ n := Nat.le_of_dvd hn1 hdiv
  have hp2 : 2 ≤ p := hp.two_le
  have hpp : p ≤ p * p := by nlinarith
  have hpN : p ≤ N :=
    (hpp.trans hpn).trans (Finset.mem_Icc.mp hnIcc).2
  apply Finset.mem_biUnion.mpr
  exact ⟨p, Finset.mem_Icc.mpr ⟨hp2, hpN⟩,
    Finset.mem_filter.mpr ⟨hnIcc, hdiv⟩⟩

/-- The only multiplicity paid is the actual overlap of square
divisors. This is a finite cardinality accounting identity/inequality;
no probabilistic independence or squarefree density is assumed. -/
theorem nonsquarefree_count_le_square_divisor_multiplicity
    (N : ℕ) :
    (nonSquarefreeSource N).card ≤
      ∑ d ∈ Finset.Icc 2 N,
        (squareDivisorMultiples N d).card := by
  classical
  calc
    (nonSquarefreeSource N).card ≤
        ((Finset.Icc 2 N).biUnion
          (squareDivisorMultiples N)).card :=
      Finset.card_le_card (nonsquarefree_subset_square_divisor_cover N)
    _ ≤ ∑ d ∈ Finset.Icc 2 N,
        (squareDivisorMultiples N d).card :=
      Finset.card_biUnion_le


/-! ## Close the remaining finite multiple count using PINNED Mathlib -/

/-- Mathlib Nat.Ioc_filter_dvd_card_eq_div counts exact positive
multiples at the SAME original integer cutoff. This is the
previously missing finite cardinality supplier, not an asymptotic
prime-density estimate. -/
theorem squareDivisorMultiples_card_eq_div (N d : ℕ) :
    (squareDivisorMultiples N d).card = N / (d * d) := by
  unfold squareDivisorMultiples
  have hIcc : Finset.Icc 1 N = Finset.Ioc 0 N := by
    ext n
    simp only [Finset.mem_Icc, Finset.mem_Ioc]
    omega
  rw [hIcc]
  exact Nat.Ioc_filter_dvd_card_eq_div N (d * d)

/-- The exact prime-square COVER and exact multiple cardinalities
join with the elementary finite reciprocal-square bound to prove
that at most three quarters of positive original integers <=N are
nonsquarefree. The union over square divisors may overlap: it is
paid by Finset.card_biUnion_le, not hidden by an independence claim. -/
theorem nonsquarefree_count_le_three_quarters (N : ℕ) :
    ((nonSquarefreeSource N).card : ℝ) ≤
      (3 / 4 : ℝ) * (N : ℝ) := by
  have hcountNat :=
    nonsquarefree_count_le_square_divisor_multiplicity N
  have hcount :
      ((nonSquarefreeSource N).card : ℝ) ≤
        ∑ d ∈ Finset.Icc 2 N,
          ((squareDivisorMultiples N d).card : ℝ) := by
    exact_mod_cast hcountNat
  have hterms : ∀ d ∈ Finset.Icc 2 N,
      ((N / (d * d) : ℕ) : ℝ) ≤
        (N : ℝ) * ((d : ℝ)⁻¹) ^ 2 := by
    intro d hd
    have hdiv :=
      (Nat.cast_div_le (m := N) (n := d * d) :
        ((N / (d * d) : ℕ) : ℝ) ≤
          (N : ℝ) / ((d * d : ℕ) : ℝ))
    calc
      ((N / (d * d) : ℕ) : ℝ) ≤
          (N : ℝ) / ((d * d : ℕ) : ℝ) := hdiv
      _ = (N : ℝ) * ((d : ℝ)⁻¹) ^ 2 := by
        rw [Nat.cast_mul, div_eq_mul_inv, mul_inv_rev]
        ring
  calc
    ((nonSquarefreeSource N).card : ℝ) ≤
        ∑ d ∈ Finset.Icc 2 N,
          ((squareDivisorMultiples N d).card : ℝ) := hcount
    _ = ∑ d ∈ Finset.Icc 2 N,
          ((N / (d * d) : ℕ) : ℝ) := by
      apply Finset.sum_congr rfl
      intro d hd
      exact_mod_cast squareDivisorMultiples_card_eq_div N d
    _ ≤ ∑ d ∈ Finset.Icc 2 N,
          (N : ℝ) * ((d : ℝ)⁻¹) ^ 2 := by
      exact Finset.sum_le_sum hterms
    _ = (N : ℝ) *
        (∑ d ∈ Finset.Icc 2 N, ((d : ℝ)⁻¹) ^ 2) := by
      rw [Finset.mul_sum]
    _ ≤ (N : ℝ) * (3 / 4 : ℝ) :=
      mul_le_mul_of_nonneg_left
        (finite_square_divisor_reciprocal_cost_le_three_quarters N)
        (Nat.cast_nonneg N)
    _ = (3 / 4 : ℝ) * (N : ℝ) := by ring

/-- Finite source indices whose true Mathlib Möbius values are not
zero. This is NOT a random squarefree model. -/
def squarefreeSource (N : ℕ) : Finset ℕ := by
  classical
  exact (Finset.Icc 1 N).filter (fun n => Squarefree n)

/-- Every actual original integer is in exactly one of the two source
sets, squarefree or nonsquarefree. No lost original index or zero
source coefficient is allowed. -/
theorem squarefree_plus_nonsquarefree_count (N : ℕ) :
    (squarefreeSource N).card +
        (nonSquarefreeSource N).card = N := by
  classical
  have hdis : Disjoint (squarefreeSource N) (nonSquarefreeSource N) := by
    apply Finset.disjoint_left.mpr
    intro n hfree hbad
    have hF : Squarefree n := by
      exact (Finset.mem_filter.mp hfree).2
    have hB : ¬Squarefree n := by
      exact (Finset.mem_filter.mp hbad).2
    exact hB hF
  have hunion :
      squarefreeSource N ∪ nonSquarefreeSource N =
        Finset.Icc 1 N := by
    ext n
    by_cases h : Squarefree n <;>
      simp [squarefreeSource, nonSquarefreeSource, h]
  have hcard : (Finset.Icc 1 N).card = N := by
    simp [Finset.card_Icc]
  rw [← hunion, Finset.card_union_of_disjoint hdis] at hcard
  exact hcard

/-- Elementary, genuinely noncircular squarefree population:
at least one quarter of ALL original positive integers <=N have
|mu(n)|=1. This finite result needs no PNT, zeta(2), RH, or
classical asymptotic squarefree-density theorem. -/
theorem squarefree_source_count_ge_quarter (N : ℕ) :
    (N : ℝ) / 4 ≤ ((squarefreeSource N).card : ℝ) := by
  have hfull : ((squarefreeSource N).card : ℝ) +
      ((nonSquarefreeSource N).card : ℝ) = N := by
    exact_mod_cast squarefree_plus_nonsquarefree_count N
  have hbad := nonsquarefree_count_le_three_quarters N
  linarith

end GRWTSK.NumberTheory.Moebius.ElementarySquarefreeSieveSource
