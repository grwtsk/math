# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.Source.Variantd7d2ac89ae5e7e93de033dce910ca8bdb83295543a61510541b2fc94d1539482

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6d5a0ed9b47b500a45329f657f9ae03696ae4615` · SHA-256 `d76c27563ba6f986144f55f924a3ef514118f6f7eb28376edecbe4b7ed6acfb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BetaRowUnionLargePrimes.Variant519ed84796d3b441b5fbf0de13b11cc668e406b3653f302b09eedea63ee559ea","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"519ed84796d3b441b5fbf0de13b11cc668e406b3653f302b09eedea63ee559ea","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.BetaRowUnionLargePrimes.Variant519ed84796d3b441b5fbf0de13b11cc668e406b3653f302b09eedea63ee559ea","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"519ed84796d3b441b5fbf0de13b11cc668e406b3653f302b09eedea63ee559ea","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/xi-analysis/large-prime-linear/attempt01/source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import LargePrimeDisclosureSubcase

/-!
Fixed-source finite large-prime increment is linear in its full Mangoldt power trains.
Every physical diagonal travels with its train; beta, normalization and main stay fixed.
Direction and conceptual origin: grwtsk contributors.
Actual source finite-prime calculation and native construction: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.BetaRowUnionLargePrimes.Variant519ed84796d3b441b5fbf0de13b11cc668e406b3653f302b09eedea63ee559ea

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
end RH16LargePrimeLinear
```
