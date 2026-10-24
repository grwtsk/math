# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceLargePrimeLinear.Variant347bd1a04d4400516f4c15c2a08c293d8d1509b8e7b263e2e2969fda455d12ae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `023de6858c4f50d9c524931c0a0945e00b57bde8` · SHA-256 `01aaf28becee9e6375c62026ec96418b454bd7720b8b9e8a99ebf683f32c8a7d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BetaRowUnionLargePrimes.Variant8414e0bf34cfeef18ddbf05fa1b92d9f9841a955ff50b1b461a244bd5b0fedbe","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8414e0bf34cfeef18ddbf05fa1b92d9f9841a955ff50b1b461a244bd5b0fedbe","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.BetaRowUnionLargePrimes.Variant8414e0bf34cfeef18ddbf05fa1b92d9f9841a955ff50b1b461a244bd5b0fedbe","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"8414e0bf34cfeef18ddbf05fa1b92d9f9841a955ff50b1b461a244bd5b0fedbe","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-prime-mean/attempt01-prefix-resolution/frozen-inputs/SourceLargePrimeLinear.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LargePrimeDisclosureSubcase

/-!
Fixed-source finite large-prime increment is linear in its full Mangoldt power trains.
Every physical diagonal travels with its train; beta, normalization and main stay fixed.
Direction and conceptual origin: grwtsk contributors.
Actual source finite-prime calculation and native construction: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BetaRowUnionLargePrimes.Variant8414e0bf34cfeef18ddbf05fa1b92d9f9841a955ff50b1b461a244bd5b0fedbe

set_option autoImplicit false
noncomputable section
namespace RH16LargePrimeLinear
open scoped BigOperators
open RH16MangoldtPrimeDisclosure RH16LargePrimeDisclosureSubcase
open RH16Tandem.SourcePrimeDisclosure
open FormalResearch.RiemannHypothesis.SourceReflectionDuality
open FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
open FormalResearch.RiemannHypothesis.SourcePureRotationObstruction
open FormalResearch.RiemannHypothesis.SourceWeightedOrbitAdapter
open FormalResearch.RiemannHypothesis.SourceCompensatedReadout
open FormalResearch.RiemannHypothesis.SourceCutoffFlux

/-- Every large base leaves the entire global centering row unchanged. -/
theorem betaRow_union_large_primes (P L : Finset ℕ) (U : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hL : ∀ r ∈ L, r.Prime)
    (hlarge : ∀ r ∈ L, U < r) (hdisj : Disjoint P L) :
    disclosedBetaRow (P ∪ L) U = disclosedBetaRow P U := by
  classical
  induction L using Finset.induction_on with
  | empty => simp
  | @insert p L hpL ih =>
    have hnot : p ∉ P := by
      intro hpP
      exact Finset.disjoint_left.mp hdisj hpP (Finset.mem_insert_self p L)
    have hD : Disjoint P L := hdisj.mono_right (Finset.subset_insert p L)
    have hLp : ∀ r ∈ L, r.Prime := fun r hr => hL r (Finset.mem_insert_of_mem hr)
    have hLg : ∀ r ∈ L, U < r := fun r hr => hlarge r (Finset.mem_insert_of_mem hr)
    have hPL : ∀ r ∈ P ∪ L, r.Prime := by
      intro r hr
      rcases Finset.mem_union.mp hr with hr | hr
      · exact hP r hr
      · exact hLp r hr
    have hpn : p ∉ P ∪ L := by simp [hnot, hpL]
    have hp : p.Prime := hL p (Finset.mem_insert_self p L)
    have hg : U < p := hlarge p (Finset.mem_insert_self p L)
    rw [Finset.union_insert, disclosedBetaRow_insert (P ∪ L) U p hPL hp hpn,
      freshBetaRow_eq_zero_of_U_lt_p (P ∪ L) U p hPL hg, add_zero]
    exact ih hLp hLg hD

/-- The finite telescope has one complete compensated all-power block per new large prime. -/
theorem readout_union_large_primes (A : ℝ) (hA : 0 < A)
    (P L : Finset ℕ) (U N : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hL : ∀ r ∈ L, r.Prime)
    (hlarge : ∀ r ∈ L, U < r) (hdisj : Disjoint P L) :
    disclosedReadoutAt A hA U N (P ∪ L) - disclosedReadoutAt A hA U N P =
      ∑ p ∈ L, compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (disclosedBetaRow P U) 0 := by
  classical
  induction L using Finset.induction_on with
  | empty => simp
  | @insert p L hpL ih =>
    have hnot : p ∉ P := by
      intro hpP
      exact Finset.disjoint_left.mp hdisj hpP (Finset.mem_insert_self p L)
    have hD : Disjoint P L := hdisj.mono_right (Finset.subset_insert p L)
    have hLp : ∀ r ∈ L, r.Prime := fun r hr => hL r (Finset.mem_insert_of_mem hr)
    have hLg : ∀ r ∈ L, U < r := fun r hr => hlarge r (Finset.mem_insert_of_mem hr)
    have hPL : ∀ r ∈ P ∪ L, r.Prime := by
      intro r hr
      rcases Finset.mem_union.mp hr with hr | hr
      · exact hP r hr
      · exact hLp r hr
    have hpn : p ∉ P ∪ L := by simp [hnot, hpL]
    have hp : p.Prime := hL p (Finset.mem_insert_self p L)
    have hg : U < p := hlarge p (Finset.mem_insert_self p L)
    have hstep := disclosedReadout_large_prime_one_block A hA (P ∪ L) U N p hPL hp hpn hg
    rw [betaRow_union_large_primes P L U hP hLp hLg hD] at hstep
    have hold := ih hLp hLg hD
    rw [Finset.union_insert, Finset.sum_insert hpL]
    linarith only [hstep, hold]

/-- Complete finite coverage consumes the linear telescope on the unchanged actual readout. -/
theorem actual_readout_large_prime_sum (A : ℝ) (hA : 0 < A)
    (P L : Finset ℕ) (U N : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hL : ∀ r ∈ L, r.Prime)
    (hlarge : ∀ r ∈ L, U < r) (hdisj : Disjoint P L)
    (hcover : ∀ r, r.Prime → r ≤ max U N → r ∈ P ∪ L) (hU : 1 ≤ U) :
    readoutAt A hA U N - disclosedReadoutAt A hA U N P =
      ∑ p ∈ L, compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (disclosedBetaRow P U) 0 := by
  have hPL : ∀ r ∈ P ∪ L, r.Prime := by
    intro r hr
    rcases Finset.mem_union.mp hr with hr | hr
    · exact hP r hr
    · exact hL r hr
  rw [← disclosedReadoutAt_eq_actual A hA (P ∪ L) U N hPL hcover hU]
  exact readout_union_large_primes A hA P L U N hP hL hlarge hdisj
/-- Final large-prime coverage already fixes the old beta on the entire long inventory. -/
theorem betaRow_eq_actual_on_long_under_large_coverage (P L : Finset ℕ) (U N n : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hlarge : ∀ r ∈ L, U < r)
    (hcover : ∀ r, r.Prime → r ≤ max U N → r ∈ P ∪ L) (hU : 1 ≤ U)
    (hn : n ∈ Finset.Ioc U N) :
    disclosedBetaRow P U n = centeredCoefficient U n := by
  have hPU : ∀ r, r.Prime → r ≤ U → r ∈ P := by
    intro r hr hRU
    rcases Finset.mem_union.mp (hcover r hr (hRU.trans (le_max_left _ _))) with h | h
    · exact h
    · have := hlarge r h
      omega
  unfold disclosedBetaRow centeredCoefficient
  rw [RH16Tandem.SourcePrimeDisclosureActual.centeredDisclosure_eq_actual_centeredBeta
    P U n hP hPU hU (Finset.mem_Ioc.mp hn).1]

/-- The remaining large-prime work uses the literal actual centered row, not a disclosure proxy. -/
theorem actual_readout_large_prime_sum_actual_beta (A : ℝ) (hA : 0 < A)
    (P L : Finset ℕ) (U N : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hL : ∀ r ∈ L, r.Prime)
    (hlarge : ∀ r ∈ L, U < r) (hdisj : Disjoint P L)
    (hcover : ∀ r, r.Prime → r ≤ max U N → r ∈ P ∪ L) (hU : 1 ≤ U) :
    readoutAt A hA U N - disclosedReadoutAt A hA U N P =
      ∑ p ∈ L, compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (centeredCoefficient U) 0 := by
  have hc : ∀ n ∈ Finset.Ioc U N, disclosedBetaRow P U n = centeredCoefficient U n :=
    fun n hn => betaRow_eq_actual_on_long_under_large_coverage P L U N n hP hlarge hcover hU hn
  have hprofile : finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N) false false
      (disclosedBetaRow P U) = finiteProfile (originalSourceL2 A hA) (Finset.Ioc U N)
        false false (centeredCoefficient U) := by
    unfold finiteProfile
    exact Finset.sum_congr rfl (fun n hn => by rw [hc n hn])
  have hd (p : ℕ) : physicalDiagonal (originalSourceL2 A hA) (Finset.Ioc U N)
      (freshMangoldtRow p) (disclosedBetaRow P U) =
      physicalDiagonal (originalSourceL2 A hA) (Finset.Ioc U N)
        (freshMangoldtRow p) (centeredCoefficient U) := by
    unfold physicalDiagonal
    congr 1
    exact Finset.sum_congr rfl (fun n hn => by rw [hc n hn])
  rw [actual_readout_large_prime_sum A hA P L U N hP hL hlarge hdisj hcover hU]
  apply Finset.sum_congr rfl
  intro p _
  unfold compensatedReadout
  rw [hprofile, hd]

/-- The original readout splits at its literal short prime base horizon. -/
theorem actual_readout_eq_small_base_add_large_prime_blocks
    (A : ℝ) (hA : 0 < A) (U N : ℕ) (hU : 1 ≤ U) :
    readoutAt A hA U N =
      disclosedReadoutAt A hA U N ((Finset.range (U + 1)).filter Nat.Prime) +
      ∑ p ∈ (Finset.Ioc U N).filter Nat.Prime,
        compensatedReadout (originalSourceL2 A hA) (Finset.Ioc U N)
          (freshMangoldtRow p) (centeredCoefficient U) 0 := by
  classical
  let P := (Finset.range (U + 1)).filter Nat.Prime
  let L := (Finset.Ioc U N).filter Nat.Prime
  have hP : ∀ r ∈ P, r.Prime := fun r hr => (Finset.mem_filter.mp hr).2
  have hL : ∀ r ∈ L, r.Prime := fun r hr => (Finset.mem_filter.mp hr).2
  have hlarge : ∀ r ∈ L, U < r :=
    fun r hr => (Finset.mem_Ioc.mp (Finset.mem_filter.mp hr).1).1
  have hdisj : Disjoint P L := by
    apply Finset.disjoint_left.mpr
    intro r hrP hrL
    have h1 := Finset.mem_range.mp (Finset.mem_filter.mp hrP).1
    have h2 := (Finset.mem_Ioc.mp (Finset.mem_filter.mp hrL).1).1
    omega
  have hcover : ∀ r, r.Prime → r ≤ max U N → r ∈ P ∪ L := by
    intro r hr hR
    by_cases hRU : r ≤ U
    · apply Finset.mem_union_left
      exact Finset.mem_filter.mpr ⟨Finset.mem_range.mpr (by omega), hr⟩
    · apply Finset.mem_union_right
      exact Finset.mem_filter.mpr ⟨Finset.mem_Ioc.mpr ⟨by omega, by omega⟩, hr⟩
  have hs := actual_readout_large_prime_sum_actual_beta A hA P L U N
    hP hL hlarge hdisj hcover hU
  change readoutAt A hA U N = disclosedReadoutAt A hA U N P + _
  linarith only [hs]
end RH16LargePrimeLinear
```
