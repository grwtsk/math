/- Copyright (c) 2026 grwtsk contributors. MIT.
Local mathematical attribution: grwtsk contributors.
SOURCE_PROOF_CANDIDATE / COMPILATION_NOT_RUN /
EXPECTED_TYPES_NOT_RUN / FRESH_KERNEL_NOT_RUN /
TRANSITIVE_AXIOM_AUDIT_NOT_RUN.
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusLowGcdSieveSquareEnergy
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.MoebiusCausalGramCauchy
import Mathlib

set_option autoImplicit false
noncomputable section
open scoped BigOperators
open MeasureTheory Set

/-!
# Close two finite sieve-energy targets, and expose the exact higher-divisor tail

Original source is the unchanged Möbius pickupResponseGram with both
ordered orientations and the truncated diagonal from the preceding module.

1. DivisorRestrictedEnergyIdentityTarget: expand a FINITE square of
   original sourceResponseVector terms, use continuous original
   responses to interchange finite interval sums, and reuse the
   existing exact sourceResponse_cross_integral.
2. FirstDivisorCollarCoefficientTarget: derive the small weights
   c_D(1)=1, c_D(k)=0 for 2<=k<=D by strong induction from the
   PINNED finite inversion identity; each proper divisor of
   D<d<=2D has k<=D. The coefficient c_D(d) is then -1.

New further restriction on the arithmetic route: the entire
signed higher-divisor FULL-Gram packet is exactly the NEGATIVE
of the ORIGINAL full (diagonal-inclusive) high-gcd Gram.
Its energy version uses precisely the above finite integral gate.
This is a no-go for treating the higher collars' signs alone as
new cancellation: the complete high-gcd source is already
absolutely payable at all positive rates by the earlier
positive divisor-cover arithmetic (whose pinned proof remains
NOT_RUN / UNPROVED).

All authored scripts are proof CANDIDATES until elaboration,
import compilation, fresh independent kernel and transitive axiom
audit. The one-sided all-rate signed pickup bound and RH remain OPEN.
-/

namespace GRWTSK.NumberTheory.Moebius.LowGcdSieveTargetClosures

open GRWTSK.RiemannHypothesis.CCC
open GRWTSK.NumberTheory.MoebiusEndpointLeastPrimeTypeII
open GRWTSK.NumberTheory.Moebius.EllipticFiberEndpointComparison
open GRWTSK.NumberTheory.Moebius.CausalGramCauchy
open GRWTSK.NumberTheory.Moebius.LowGcdSieveSquareEnergy

classical

/-- Original source response, retained only when the ORIGINAL
arithmetic index n is divisible by d. No sign or birth change. -/
private def divisorResponseTerm (d n : ℕ) (u : ℝ) : ℝ :=
  if d ∣ n then sourceResponseVector n u else 0

private theorem divisorResponseTerm_continuous
    (d n : ℕ) (hn : 0 < n) :
    Continuous (divisorResponseTerm d n) := by
  by_cases hdiv : d ∣ n
  · simpa [divisorResponseTerm, hdiv] using
      (sourceResponseVector_continuous n hn)
  · simp [divisorResponseTerm, hdiv]

/-- One source pair integrates to the literal original signed Gram
when BOTH original indices are divisible by d, otherwise to zero. -/
private theorem divisorResponseTerm_pair_integral
    (d m n : ℕ) (hm : 0 < m) (hn : 0 < n) (T : ℝ) :
    (∫ u in (0 : ℝ)..T,
       divisorResponseTerm d m u * divisorResponseTerm d n u) =
      if d ∣ m ∧ d ∣ n then sourceKernel T m n else 0 := by
  by_cases hdm : d ∣ m
  · by_cases hdn : d ∣ n
    · simpa [divisorResponseTerm, hdm, hdn] using
        (sourceResponse_cross_integral m n hm hn T)
    · simp [divisorResponseTerm, hdm, hdn]
  · simp [divisorResponseTerm, hdm]

/-- An actual candidate proof of the full original
divisor-restricted finite Gram-to-square-integral proposition.
The existing sourceResponse_cross_integral is used, not a
hypothetical arbitrary positive matrix. -/
theorem divisorRestrictedEnergyIdentity_proof :
    DivisorRestrictedEnergyIdentityTarget := by
  intro d T _hT
  let S : Finset ℕ := endpointIndex T
  have hf (n : ℕ) (hn : n ∈ S) :
      Continuous (divisorResponseTerm d n) := by
    exact divisorResponseTerm_continuous d n
      (Finset.mem_Icc.mp hn).1
  have hsum (m : ℕ) (hm : m ∈ S) :
      Continuous (fun u : ℝ =>
        ∑ n ∈ S,
          divisorResponseTerm d m u * divisorResponseTerm d n u) :=
    continuous_finsetSum S (fun n hn => (hf m hm).mul (hf n hn))
  change
    (∑ m ∈ S, ∑ n ∈ S,
       if d ∣ m ∧ d ∣ n then sourceKernel T m n else 0) =
      ∫ u in (0 : ℝ)..T,
        (∑ n ∈ S, divisorResponseTerm d n u)^2
  calc
    (∑ m ∈ S, ∑ n ∈ S,
       if d ∣ m ∧ d ∣ n then sourceKernel T m n else 0) =
      ∑ m ∈ S, ∑ n ∈ S,
        ∫ u in (0 : ℝ)..T,
          divisorResponseTerm d m u * divisorResponseTerm d n u := by
      apply Finset.sum_congr rfl
      intro m hm
      apply Finset.sum_congr rfl
      intro n hn
      exact (divisorResponseTerm_pair_integral d m n
        (Finset.mem_Icc.mp hm).1 (Finset.mem_Icc.mp hn).1 T).symm
    _ = ∑ m ∈ S,
          ∫ u in (0 : ℝ)..T,
            ∑ n ∈ S,
              divisorResponseTerm d m u * divisorResponseTerm d n u := by
      apply Finset.sum_congr rfl
      intro m hm
      exact (intervalIntegral.integral_finsetSum (fun n hn =>
        ((hf m hm).mul (hf n hn)).intervalIntegrable _ _)).symm
    _ = ∫ u in (0 : ℝ)..T,
          ∑ m ∈ S, ∑ n ∈ S,
            divisorResponseTerm d m u * divisorResponseTerm d n u := by
      exact (intervalIntegral.integral_finsetSum (fun m hm =>
        (hsum m hm).intervalIntegrable _ _)).symm
    _ = ∫ u in (0 : ℝ)..T,
          (∑ n ∈ S, divisorResponseTerm d n u)^2 := by
      apply intervalIntegral.integral_congr
      intro u hu
      simp only [pow_two, Finset.sum_mul_sum]

/-- Original small divisor sieve weights follow only from
the already-authored exact Möbius inversion theorem.
No prime theorem or analytics enters this induction. -/
theorem lowGcdSieveWeight_small
    (D : ℕ) :
    ∀ d : ℕ, 0 < d → d ≤ D →
      lowGcdSieveWeight D d =
        if d = 1 then (1 : ℝ) else 0 := by
  intro d
  induction d using Nat.strong_induction_on with
  | h d ih =>
    intro hd hdD
    by_cases h1 : d = 1
    · subst d
      have h := lowGcdSieveWeight_sum_divisors D 1 (by norm_num)
      simpa [hdD] using h
    · have hproper :
          (∑ k ∈ d.properDivisors,
            lowGcdSieveWeight D k) = 1 := by
        calc
          _ = ∑ k ∈ d.properDivisors,
                (if k = 1 then (1 : ℝ) else 0) := by
            apply Finset.sum_congr rfl
            intro k hk
            have hkdiv := (Nat.mem_properDivisors.mp hk).1
            have hklt := (Nat.mem_properDivisors.mp hk).2
            have hkpos : 0 < k := by
              by_contra hnot
              have hk0 : k = 0 := by omega
              have hd0 : d = 0 := by
                simpa [hk0] using hkdiv
              omega
            exact ih k hklt hkpos (hklt.le.trans hdD)
          _ = 1 := by
            have hone : (1 : ℕ) ∈ d.properDivisors :=
              Nat.mem_properDivisors.mpr
                ⟨one_dvd d, by omega⟩
            simp [hone]
      have hsum := lowGcdSieveWeight_sum_divisors D d hd
      rw [if_pos hdD,
        ← Nat.cons_self_properDivisors (ne_of_gt hd),
        Finset.sum_cons] at hsum
      have hzero : lowGcdSieveWeight D d = 0 := by
        linarith
      simpa [h1] using hzero

theorem lowGcdSieveWeight_zero_of_between
    (D d : ℕ) (hd : 2 ≤ d) (hD : d ≤ D) :
    lowGcdSieveWeight D d = 0 := by
  have h := lowGcdSieveWeight_small D d (by omega) hD
  simpa [show d ≠ 1 by omega] using h

/-- Triangular inversion recurrence for EVERY d>D:
the signed coefficient at d is the negative sum of its
previous proper-divisor coefficients. -/
theorem lowGcdSieveWeight_above_eq_neg_proper
    (D d : ℕ) (hd : 0 < d) (hgt : D < d) :
    lowGcdSieveWeight D d =
      -(∑ k ∈ d.properDivisors, lowGcdSieveWeight D k) := by
  have hn : d ≠ 0 := ne_of_gt hd
  have hnot : ¬d ≤ D := by omega
  have hsum := lowGcdSieveWeight_sum_divisors D d hd
  rw [if_neg hnot,
    ← Nat.cons_self_properDivisors hn,
    Finset.sum_cons] at hsum
  linarith

/-- Proper positive divisors are at most half the ambient number.
This is elementary integer multiplication, not Mobius cancellation. -/
private theorem twice_le_of_proper_divisor
    {k d : ℕ} (hk : 0 < k) (hdiv : k ∣ d)
    (hlt : k < d) : 2*k ≤ d := by
  obtain ⟨q, hq⟩ := hdiv
  have hq0 : q ≠ 0 := by
    intro h
    subst q
    simp at hq
    omega
  have hq1 : q ≠ 1 := by
    intro h
    subst q
    simp at hq
    omega
  have hq2 : 2 ≤ q := by omega
  nlinarith [Nat.mul_le_mul_left k hq2, hq]

/-- Actual candidate proof of the first large-divisor collar
coefficient, without an inserted hypothesis for the intended sign. -/
theorem firstDivisorCollarCoefficient_proof :
    FirstDivisorCollarCoefficientTarget := by
  intro D d hD hdgt h2D
  have hdpos : 0 < d := by omega
  have hproper :
      (∑ k ∈ d.properDivisors,
        lowGcdSieveWeight D k) = 1 := by
    calc
      _ = ∑ k ∈ d.properDivisors,
            (if k = 1 then (1 : ℝ) else 0) := by
        apply Finset.sum_congr rfl
        intro k hk
        have hkdiv := (Nat.mem_properDivisors.mp hk).1
        have hklt := (Nat.mem_properDivisors.mp hk).2
        have hkpos : 0 < k := by
          by_contra hnot
          have hk0 : k = 0 := by omega
          have hd0 : d = 0 := by
            simpa [hk0] using hkdiv
          omega
        have hk2 := twice_le_of_proper_divisor hkpos hkdiv hklt
        have hkD : k ≤ D := by omega
        exact lowGcdSieveWeight_small D k hkpos hkD
      _ = 1 := by
        have hone : (1 : ℕ) ∈ d.properDivisors :=
          Nat.mem_properDivisors.mpr
            ⟨one_dvd d, by omega⟩
        simp [hone]
  have hrec := lowGcdSieveWeight_above_eq_neg_proper D d hdpos hdgt
  simpa [hproper] using hrec

/-- The existing integral and coefficient gates are consumed
without conditional assumptions; both are authored proof bodies
in THIS module, still subject to true Lean/kernel verification. -/
theorem plainLowGcdCross_eq_original_signed_square_energies
    (D : ℕ) {T : ℝ} (hT : 0 ≤ T) :
    plainLowGcdCross D T =
      (∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
        lowGcdSieveWeight D d * divisorRestrictedEnergy d T) -
      lowGcdSourceDiagonal D T := by
  exact plainLowGcdCross_eq_signed_energy_of_finite_integral
    divisorRestrictedEnergyIdentity_proof D hT

theorem firstDivisorCollarSignedEnergy_nonpos_proof
    (D : ℕ) (hD : 1 ≤ D) {T : ℝ} (hT : 0 ≤ T) :
    (∑ d ∈ Finset.Icc (D+1) (min (2*D) ⌊Real.exp T⌋₊),
      lowGcdSieveWeight D d * divisorRestrictedEnergy d T) ≤ 0 := by
  exact firstDivisorCollarSignedEnergy_nonpos
    firstDivisorCollarCoefficient_proof D hD hT

/-- Full ORIGINAL (including diagonal) signed high-gcd Gram;
not to be confused with the off-diagonal plainHighGcdCross. -/
def highGcdFullGram (D : ℕ) (T : ℝ) : ℝ :=
  ∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
    if D < Nat.gcd m n then sourceKernel T m n else 0

/-- Higher-divisor terms retain their TRUE arithmetic signs. -/
def higherDivisorSignedFullGram (D : ℕ) (T : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    if D < d then
      lowGcdSieveWeight D d * divisorRestrictedFullGram d T else 0

def higherDivisorSignedEnergy (D : ℕ) (T : ℝ) : ℝ :=
  ∑ d ∈ Finset.Icc 1 ⌊Real.exp T⌋₊,
    if D < d then
      lowGcdSieveWeight D d * divisorRestrictedEnergy d T else 0

/-- The original full Gram is the exact low-gcd FULL Gram
plus the complete complementary FULL high-gcd original source. -/
theorem pickupFullGram_eq_lowGcdFull_add_high
    (D : ℕ) (T : ℝ) :
    pickupFullGram T = lowGcdFullGram D T + highGcdFullGram D T := by
  change (∑ m ∈ endpointIndex T, ∑ n ∈ endpointIndex T,
      sourceKernel T m n) =
    lowGcdFullGram D T + highGcdFullGram D T
  unfold lowGcdFullGram highGcdFullGram
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro m hm
  rw [← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro n hn
  by_cases h : Nat.gcd m n ≤ D
  · have hn : ¬ D < Nat.gcd m n := not_lt.mpr h
    simp [h, hn]
  · have hgt : D < Nat.gcd m n := lt_of_not_ge h
    simp [h, hgt]

/-- Divisor restriction d=1 is exactly the unchanged
original complete Gram, with all source orientations. -/
theorem divisorRestrictedFullGram_one (T : ℝ) :
    divisorRestrictedFullGram 1 T = pickupFullGram T := by
  simp [divisorRestrictedFullGram, pickupFullGram, sourceKernel,
    endpointIndex]

/-- The exact low-gcd FULL source has only d=1 below the
cutoff; all d>D signed weights are kept in the tail. -/
theorem lowGcdFullGram_eq_one_add_higher
    (D : ℕ) (hD : 1 ≤ D) {T : ℝ} (hT : 0 ≤ T) :
    lowGcdFullGram D T =
      divisorRestrictedFullGram 1 T +
        higherDivisorSignedFullGram D T := by
  rw [lowGcdFullGram_eq_signed_divisorGrams]
  unfold higherDivisorSignedFullGram
  let S : Finset ℕ := Finset.Icc 1 ⌊Real.exp T⌋₊
  have hone : (1 : ℕ) ∈ S := by
    have hN := floor_exp_ge_one hT
    exact Finset.mem_Icc.mpr ⟨le_refl _, hN⟩
  calc
    (∑ d ∈ S,
      lowGcdSieveWeight D d * divisorRestrictedFullGram d T) =
      ∑ d ∈ S,
        ((if d = 1 then divisorRestrictedFullGram d T else 0) +
         (if D < d then
            lowGcdSieveWeight D d * divisorRestrictedFullGram d T else 0)) := by
      apply Finset.sum_congr rfl
      intro d hd
      have hdpos : 0 < d := (Finset.mem_Icc.mp hd).1
      by_cases h1 : d = 1
      · subst d
        have hw := lowGcdSieveWeight_small D 1 (by norm_num) hD
        simp [hw, hD]
      · by_cases htail : D < d
        · simp [h1, htail]
        · have hdD : d ≤ D := by omega
          have hd2 : 2 ≤ d := by omega
          have hw := lowGcdSieveWeight_zero_of_between D d hd2 hdD
          simp [h1, htail, hw]
    _ = (∑ d ∈ S,
        if d = 1 then divisorRestrictedFullGram d T else 0) +
        (∑ d ∈ S,
          if D < d then
            lowGcdSieveWeight D d * divisorRestrictedFullGram d T else 0) := by
      rw [Finset.sum_add_distrib]
    _ = divisorRestrictedFullGram 1 T +
        (∑ d ∈ S,
          if D < d then
            lowGcdSieveWeight D d * divisorRestrictedFullGram d T else 0) := by
      simp [hone]

/-- All signed higher-divisor full-Gram terms are EXACTLY the
NEGATIVE of the original complete HIGH-gcd full Gram.
This is NOT a bound on the remaining low-gcd source. -/
theorem higherDivisorSignedFullGram_eq_neg_highGcd
    (D : ℕ) (hD : 1 ≤ D) {T : ℝ} (hT : 0 ≤ T) :
    higherDivisorSignedFullGram D T = -highGcdFullGram D T := by
  have hs := lowGcdFullGram_eq_one_add_higher D hD hT
  have hf := pickupFullGram_eq_lowGcdFull_add_high D T
  have h1 := divisorRestrictedFullGram_one T
  rw [hs, h1] at hf
  linarith

/-- The SAME exact identity after the newly supplied original
finite Gram-to-square integral equality. All E_d remain the
actual original nonnegative causal pickup energies. -/
theorem higherDivisorSignedEnergy_eq_neg_highGcd
    (D : ℕ) (hD : 1 ≤ D) {T : ℝ} (hT : 0 ≤ T) :
    higherDivisorSignedEnergy D T = -highGcdFullGram D T := by
  have hre :
      higherDivisorSignedEnergy D T =
        higherDivisorSignedFullGram D T := by
    unfold higherDivisorSignedEnergy higherDivisorSignedFullGram
    apply Finset.sum_congr rfl
    intro d hd
    by_cases h : D < d
    · simp only [if_pos h]
      rw [divisorRestrictedEnergyIdentity_proof d T hT]
    · simp [h]
  rw [hre, higherDivisorSignedFullGram_eq_neg_highGcd D hD hT]

/-- The second divisor collar is nonpositive, but not strictly
negative at every d. The exact arithmetic formula is
c_D(d)=-1+1_(2|d) for 2D<d<=3D.
This further arithmetic API lemma is explicitly UNPROVED in Lean;
the first collar and full higher-tail identity above do NOT need it. -/
def SecondDivisorCollarCoefficientTarget : Prop :=
  ∀ (D d : ℕ), 1 ≤ D → 2*D < d → d ≤ 3*D →
    lowGcdSieveWeight D d =
      if 2 ∣ d then 0 else -1

end GRWTSK.NumberTheory.Moebius.LowGcdSieveTargetClosures
