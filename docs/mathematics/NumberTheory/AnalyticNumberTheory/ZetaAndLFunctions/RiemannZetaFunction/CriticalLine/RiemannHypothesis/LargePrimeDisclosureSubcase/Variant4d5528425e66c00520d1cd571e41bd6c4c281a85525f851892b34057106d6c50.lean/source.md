# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.LargePrimeDisclosureSubcase.Variant4d5528425e66c00520d1cd571e41bd6c4c281a85525f851892b34057106d6c50

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3682f8b05f269d4d0623aefdd455649bb0e7a439` · SHA-256 `cf054d4b06dc43031b6e127c5ea841597e96c1ea786d7bb136d7e495bdafa8cf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeDivisorsZero.Variantc5f9df379593f355e686209da47cb87e9d6eb405824d0e553d6e1a6be3074cba","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c5f9df379593f355e686209da47cb87e9d6eb405824d0e553d6e1a6be3074cba","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.PrimeDivisorsZero.Variantc5f9df379593f355e686209da47cb87e9d6eb405824d0e553d6e1a6be3074cba","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c5f9df379593f355e686209da47cb87e9d6eb405824d0e553d6e1a6be3074cba","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-balance-overnight-20261007/graph-review/independent-prime-mean/attempt01-prefix-resolution/frozen-inputs/LargePrimeDisclosureSubcase.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import SourceMangoldtPrimeDisclosure

/-!
A fixed-source large-prime subcase derived after independent source review.
Conceptual research direction: grwtsk contributors.
Scoped derivation and native construction: OpenAI Codex assistance.
-/

namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeDivisorsZero.Variantc5f9df379593f355e686209da47cb87e9d6eb405824d0e553d6e1a6be3074cba

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
```
