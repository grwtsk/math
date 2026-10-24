import SourceMangoldtPrimeDisclosure

/-!
A fixed-source large-prime subcase derived after independent source review.
Conceptual research direction: grwtsk contributors.
Scoped derivation and native construction: OpenAI Codex assistance.
-/
set_option autoImplicit false
noncomputable section
namespace RH16LargePrimeDisclosureSubcase
open scoped BigOperators
open RH16MangoldtPrimeDisclosure RH16Tandem.SourcePrimeDisclosure
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
open FormalResearch.RiemannHypothesis.SourcePureRotationObstruction
open FormalResearch.RiemannHypothesis.SourceWeightedOrbitAdapter
open FormalResearch.RiemannHypothesis.SourceCompensatedReadout
open FormalResearch.RiemannHypothesis.SourceCutoffFlux

theorem primeDivisors_zero (P : Finset ℕ) (hP : ∀ r ∈ P, r.Prime) :
    primeDivisors P 0 = ∅ := by
  classical
  apply Finset.eq_empty_iff_forall_notMem.mpr
  intro e he
  obtain ⟨hgen, hcut⟩ := Finset.mem_filter.mp he
  obtain ⟨S, hS, rfl⟩ := Finset.mem_image.mp hgen
  have hpos : 0 < ∏ r ∈ S, r := Finset.prod_pos (fun r hr =>
    (hP r ((Finset.mem_powerset.mp hS) hr)).pos)
  omega

theorem freshBetaRow_eq_zero_of_U_lt_p (P : Finset ℕ) (U p : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hUp : U < p) :
    freshBetaRow P U p = 0 := by
  funext n
  simp [freshBetaRow, Nat.div_eq_of_lt hUp, primeDivisors_zero P hP,
    freshPrimeCorrection, disclosedMean, disclosedDivisorSum]

/-- For p>U the remaining fresh work is the complete Mangoldt power train against beta. -/
theorem disclosedReadout_large_prime_one_block (A : ℝ) (hA : 0 < A)
    (P : Finset ℕ) (U N p : ℕ) (hP : ∀ r ∈ P, r.Prime)
    (hp : p.Prime) (hpP : p ∉ P) (hUp : U < p) :
    disclosedReadoutAt A hA U N (insert p P) - disclosedReadoutAt A hA U N P =
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (disclosedBetaRow P U) 0 := by
  have hs := disclosedReadoutAt_fresh_prime A hA P U N p hP hp hpP
  rw [freshBetaRow_eq_zero_of_U_lt_p P U p hP hUp] at hs
  have hz (a : ℕ → ℂ) :
      compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N) a 0 0 = 0 := by
    simp [compensatedReadout, physicalDiagonal, finiteProfile]
  rw [hz, hz] at hs
  simpa only [zero_add, add_zero] using hs
end RH16LargePrimeDisclosureSubcase
