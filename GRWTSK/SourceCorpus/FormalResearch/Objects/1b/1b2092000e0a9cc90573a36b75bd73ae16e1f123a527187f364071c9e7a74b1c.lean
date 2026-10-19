import SourcePrimeDisclosureActual

/-!
Complete actual Mangoldt-row prime disclosure and its simultaneous source increment.
Every retained prime power, physical diagonal and beta centering mean remains present.
Fixed A,q,I,M only: no varying-scale or signed-tail estimate is asserted.
Direction: grwtsk contributors. Source formalization: OpenAI Codex.
-/

set_option autoImplicit false
noncomputable section
namespace RH16MangoldtPrimeDisclosure

open scoped BigOperators InnerProductSpace
open RH16Tandem.SourcePrimeDisclosure RH16Tandem.SourcePrimeDisclosureActual
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourcePureRotationObstruction
open FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
open FormalResearch.RiemannHypothesis.SourceWeightedOrbitAdapter
open FormalResearch.RiemannHypothesis.SourceCompensatedReadout
open FormalResearch.RiemannHypothesis.SourceCutoffFlux

/-- Disclosure gates the literal Mangoldt coefficient, never a Mobius proxy. -/
def disclosedMangoldtRow (P : Finset ℕ) (n : ℕ) : ℂ :=
  if n.minFac ∈ P then mangoldtCoefficient n else 0

/-- The fresh base contributes all powers present in the literal inventory. -/
def freshMangoldtRow (p n : ℕ) : ℂ :=
  if n.minFac = p then mangoldtCoefficient n else 0

/-- Exact finite support, with closed upper and open lower inventory unchanged. -/
def freshPowerInventory (I : Finset ℕ) (p : ℕ) : Finset ℕ :=
  I.filter (fun n => IsPrimePow n ∧ n.minFac = p)

theorem disclosedMangoldtRow_insert (P : Finset ℕ) (p : ℕ) (hpP : p ∉ P) :
    disclosedMangoldtRow (insert p P) = disclosedMangoldtRow P + freshMangoldtRow p := by
  classical
  funext n
  unfold disclosedMangoldtRow freshMangoldtRow
  dsimp only [Pi.add_apply]
  by_cases hnp : n.minFac = p
  · simp [hnp, hpP]
  · simp [hnp]

theorem freshMangoldtRow_eq_exact_power_weight (p n : ℕ) :
    freshMangoldtRow p n =
      if IsPrimePow n ∧ n.minFac = p then
        ((Real.log (p : ℝ) / Real.sqrt (n : ℝ) : ℝ) : ℂ) else 0 := by
  classical
  unfold freshMangoldtRow mangoldtCoefficient
  rw [ArithmeticFunction.vonMangoldt_apply]
  split_ifs <;> simp_all

/-- This support predicate includes every exponent, with no squarefree restriction. -/
theorem mem_freshPowerInventory_iff (I : Finset ℕ) (p n : ℕ) (hp : p.Prime) :
    n ∈ freshPowerInventory I p ↔ n ∈ I ∧ ∃ k : ℕ, 0 < k ∧ p ^ k = n := by
  classical
  unfold freshPowerInventory
  simp only [Finset.mem_filter]
  constructor
  · rintro ⟨hn, hpp, hmin⟩
    obtain ⟨r, k, hr, hk, heq⟩ := (isPrimePow_nat_iff n).mp hpp
    have hrp : r = p := by
      rw [← heq, hr.pow_minFac hk.ne'] at hmin
      exact hmin
    subst r
    exact ⟨hn, k, hk, heq⟩
  · rintro ⟨hn, k, hk, rfl⟩
    exact ⟨hn, (isPrimePow_nat_iff _).mpr ⟨p, k, hp, hk, rfl⟩,
      hp.pow_minFac hk.ne'⟩

/-- Retained powers keep the existing actual log-prime coefficient even when mu vanishes. -/
theorem freshMangoldtRow_at_prime_power (p k : ℕ) (hp : p.Prime) (hk : 0 < k) :
    freshMangoldtRow p (p ^ k) =
      ((Real.log (p : ℝ) / Real.sqrt ((p ^ k : ℕ) : ℝ) : ℝ) : ℂ) := by
  unfold freshMangoldtRow mangoldtCoefficient
  rw [hp.pow_minFac hk.ne', if_pos rfl, prime_power_mangoldt_coefficient p k hp hk]

/-- The fresh physical profile is the literal complete finite sum of those powers. -/
theorem fresh_profile_eq_complete_power_sum (q : ComplexL2) (I : Finset ℕ) (p : ℕ) :
    finiteProfile q I false false (freshMangoldtRow p) =
      ∑ n ∈ freshPowerInventory I p,
        ((Real.log (p : ℝ) / Real.sqrt (n : ℝ) : ℝ) : ℂ) • orbitAtom q false false n := by
  classical
  unfold finiteProfile freshPowerInventory
  rw [Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n _
  rw [freshMangoldtRow_eq_exact_power_weight]
  split_ifs <;> simp

/-- Finite prime coverage through the literal upper inventory recovers the actual coefficient. -/
theorem disclosedMangoldtRow_eq_actual_on_long (P : Finset ℕ) (U N n : ℕ)
    (hcover : ∀ r, r.Prime → r ≤ N → r ∈ P) (hn : n ∈ Finset.Ioc U N) :
    disclosedMangoldtRow P n = mangoldtCoefficient n := by
  classical
  by_cases hn1 : n = 1
  · subst n
    simp [disclosedMangoldtRow, mangoldtCoefficient]
  · have hn0 : 0 < n := Nat.zero_lt_of_lt (Finset.mem_Ioc.mp hn).1
    have hmem : n.minFac ∈ P := hcover n.minFac (Nat.minFac_prime hn1)
      ((Nat.minFac_le hn0).trans (Finset.mem_Ioc.mp hn).2)
    simp only [disclosedMangoldtRow, if_pos hmem]

theorem disclosed_profile_eq_actual_mangoldtAt (A : ℝ) (hA : 0 < A)
    (P : Finset ℕ) (U N : ℕ) (hcover : ∀ r, r.Prime → r ≤ N → r ∈ P) :
    finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
      (disclosedMangoldtRow P) = mangoldtAt A hA U N := by
  rw [mangoldtAt_eq_finiteProfile]
  unfold finiteProfile
  apply Finset.sum_congr rfl
  intro n hn
  rw [disclosedMangoldtRow_eq_actual_on_long P U N n hcover hn]

/-- The original plus-centered beta disclosure row, with complete mean compensation. -/
def disclosedBetaRow (P : Finset ℕ) (U n : ℕ) : ℂ :=
  ((centeredDisclosure (primeDivisors P U) n / Real.sqrt (n : ℝ) : ℝ) : ℂ)

/-- This includes -(1/p)sum(mu(e)/e); it is not supported only on multiples of p. -/
def freshBetaRow (P : Finset ℕ) (U p n : ℕ) : ℂ :=
  ((freshPrimeCorrection p (primeDivisors P (U / p)) n / Real.sqrt (n : ℝ) : ℝ) : ℂ)

theorem disclosedBetaRow_insert (P : Finset ℕ) (U p : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hp : p.Prime) (hpP : p ∉ P) :
    disclosedBetaRow (insert p P) U = disclosedBetaRow P U + freshBetaRow P U p := by
  funext n
  unfold disclosedBetaRow freshBetaRow
  rw [centeredDisclosure_primeDivisors_insert P U p n hP hp hpP, add_div,
    Complex.ofReal_add]
  rfl

/-- The exact physical readout with its independently fixed original main term. -/
def disclosedReadoutAt (A : ℝ) (hA : 0 < A) (U N : ℕ) (P : Finset ℕ) : ℝ :=
  compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
    (disclosedMangoldtRow P) (disclosedBetaRow P U) (mainTermAt A U N)

/-- All three compensated blocks survive the actual simultaneous arithmetic update. -/
theorem disclosedReadoutAt_fresh_prime (A : ℝ) (hA : 0 < A)
    (P : Finset ℕ) (U N p : ℕ) (hP : ∀ r ∈ P, r.Prime)
    (hp : p.Prime) (hpP : p ∉ P) :
    disclosedReadoutAt A hA U N (insert p P) - disclosedReadoutAt A hA U N P =
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (disclosedMangoldtRow P) (freshBetaRow P U p) 0 +
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (disclosedBetaRow P U) 0 +
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (freshBetaRow P U p) 0 := by
  unfold disclosedReadoutAt
  rw [disclosedMangoldtRow_insert P p hpP, disclosedBetaRow_insert P U p hP hp hpP]
  exact compensatedReadout_two_row_increment _ _ _ _ _ _ _

private theorem compensatedReadout_congr_on (q : ComplexL2) (I : Finset ℕ)
    (a b c d : ℕ → ℂ) (M : ℝ) (ha : ∀ n ∈ I, a n = c n)
    (hb : ∀ n ∈ I, b n = d n) :
    compensatedReadout q I a b M = compensatedReadout q I c d M := by
  have hpa : finiteProfile q I false false a = finiteProfile q I false false c := by
    unfold finiteProfile
    exact Finset.sum_congr rfl (fun n hn => by rw [ha n hn])
  have hpb : finiteProfile q I false false b = finiteProfile q I false false d := by
    unfold finiteProfile
    exact Finset.sum_congr rfl (fun n hn => by rw [hb n hn])
  have hd : physicalDiagonal q I a b = physicalDiagonal q I c d := by
    unfold physicalDiagonal
    congr 1
    exact Finset.sum_congr rfl (fun n hn => by rw [ha n hn, hb n hn])
  unfold compensatedReadout
  rw [hpa, hpb, hd]

/-- Complete finite prime coverage recovers the unchanged actual physical readout. -/
theorem disclosedReadoutAt_eq_actual (A : ℝ) (hA : 0 < A)
    (P : Finset ℕ) (U N : ℕ) (hP : ∀ r ∈ P, r.Prime)
    (hcover : ∀ r, r.Prime → r ≤ max U N → r ∈ P) (hU : 1 ≤ U) :
    disclosedReadoutAt A hA U N P = readoutAt A hA U N := by
  rw [← compensatedReadout_eq_actual_readoutAt A hA U N]
  unfold disclosedReadoutAt
  apply compensatedReadout_congr_on
  · intro n hn
    exact disclosedMangoldtRow_eq_actual_on_long P U N n
      (fun r hr hN => hcover r hr (hN.trans (le_max_right _ _))) hn
  · intro n hn
    unfold disclosedBetaRow centeredCoefficient
    rw [centeredDisclosure_eq_actual_centeredBeta P U n hP
      (fun r hr hR => hcover r hr (hR.trans (le_max_left _ _))) hU (Finset.mem_Ioc.mp hn).1]

/-- The simultaneous complete-prime update lands in the original actual readout, not a squared row. -/
theorem actual_readoutAt_fresh_prime (A : ℝ) (hA : 0 < A)
    (P : Finset ℕ) (U N p : ℕ) (hP : ∀ r ∈ P, r.Prime)
    (hp : p.Prime) (hpP : p ∉ P)
    (hcover : ∀ r, r.Prime → r ≤ max U N → r ∈ insert p P) (hU : 1 ≤ U) :
    readoutAt A hA U N - disclosedReadoutAt A hA U N P =
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (disclosedMangoldtRow P) (freshBetaRow P U p) 0 +
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (disclosedBetaRow P U) 0 +
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (freshBetaRow P U p) 0 := by
  have hnew : ∀ r ∈ insert p P, r.Prime := by
    intro r hr
    rcases Finset.mem_insert.mp hr with rfl | hr
    · exact hp
    · exact hP r hr
  rw [← disclosedReadoutAt_eq_actual A hA (insert p P) U N hnew hcover hU]
  exact disclosedReadoutAt_fresh_prime A hA P U N p hP hp hpP

end RH16MangoldtPrimeDisclosure
