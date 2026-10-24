# Complete source: GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeInsertionExactStatements.Variantf0325cba0eaf6acc6549441cc9d82c273d3a6a63345b4b7dd1489057e6116302

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `45eb81abde7d76d0f249751ce3b3e134ae26fc4c` · SHA-256 `8fcf326afd135738ee07b6a325b4462607a1b3172a1fcd5d51f0fd17b2e83dc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.ElementaryNumberTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeInsertion.Variantdeb6f9720c899fec0fd73c719751bdf8f419d4963fc334ee59f09231dd9be326","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"deb6f9720c899fec0fd73c719751bdf8f419d4963fc334ee59f09231dd9be326","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.PrimeArithmetic.SourceCorpus.PrimeInsertion.Variantdeb6f9720c899fec0fd73c719751bdf8f419d4963fc334ee59f09231dd9be326","mathematical_subject":"NumberTheory.PrimeArithmetic","original_sha256":"deb6f9720c899fec0fd73c719751bdf8f419d4963fc334ee59f09231dd9be326","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/mertens/prime-insertion-exact-statements.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import scratch.mertens.PrimeInsertion


namespace GRWTSK.NumberTheory.ElementaryNumberTheory.PrimeInsertion.Variantdeb6f9720c899fec0fd73c719751bdf8f419d4963fc334ee59f09231dd9be326

set_option autoImplicit false

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeRatioProduct PrimeInsertionScratch

example (P : Finset ℕ) (p : ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hp : Nat.Prime p) (hpP : p ∉ P) (F : ℕ → ℕ → ℝ) :
    (∑ a ∈ supportedPairs (insert p P), F a.1 a.2) =
      (∑ a ∈ supportedPairs P, F a.1 a.2) +
      (∑ a ∈ supportedPairs P, F (p * a.1) a.2) +
      (∑ a ∈ supportedPairs P, F a.1 (p * a.2)) :=
  supportedPairs_sum_insert P p hP hp hpP F

example (P : Finset ℕ) (g U V : ℕ) (E : ℕ → ℝ) :
    rectangularContribution P g U V E =
      ∑ a ∈ supportedPairs P, if a.1 ≤ U ∧ a.2 ≤ V then
        (ArithmeticFunction.moebius (a.1 * a.2) : ℝ) *
          (if Nat.Coprime g (a.1 * a.2) then 1 else 0) *
            E ((a.1 * a.2) * g ^ 2) else 0 := rfl

example (P : Finset ℕ) (hP : ∀ q ∈ P, Nat.Prime q) (g U V : ℕ) (E : ℕ → ℝ) :
    rectangularContribution P g U V E = rectangularContribution P g V U E :=
  rectangularContribution_swap P hP g U V E

example (P : Finset ℕ) (p g U V : ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hp : Nat.Prime p) (hpP : p ∉ P) (E : ℕ → ℝ) :
    rectangularContribution (insert p P) g U V E =
      rectangularContribution P g U V E - (if Nat.Coprime g p then 1 else 0) *
        (rectangularContribution P g (U / p) V (fun q ↦ E (p * q)) +
          rectangularContribution P g U (V / p) (fun q ↦ E (p * q))) :=
  rectangularContribution_insert P p g U V hP hp hpP E

example (P : Finset ℕ) (p g T : ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hp : Nat.Prime p) (hpP : p ∉ P) (E : ℕ → ℝ) :
    rectangularContribution (insert p P) g T T E =
      rectangularContribution P g T T E - 2 * (if Nat.Coprime g p then 1 else 0) *
        rectangularContribution P g (T / p) T (fun q ↦ E (p * q)) :=
  squareContribution_insert P p g T hP hp hpP E

example (A : ℝ) (P : Finset ℕ) (p g T : ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hp : Nat.Prime p) (hpP : p ∉ P) :
    rectangularContribution (insert p P) g T T (ThetaRemainder.thetaRemainder A) =
      rectangularContribution P g T T (ThetaRemainder.thetaRemainder A) -
        2 * (if Nat.Coprime g p then 1 else 0) *
          rectangularContribution P g (T / p) T
            (fun q ↦ ThetaRemainder.thetaRemainder A (p * q)) :=
  thetaRemainder_square_insert A P p g T hP hp hpP

example (A : ℝ) (P : Finset ℕ) (hP : ∀ q ∈ P, Nat.Prime q) :
    PrimeSupportedBlock.primeSupportedBlock A P =
      ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
        rectangularContribution P g (⌊Real.exp A⌋₊ / g) (⌊Real.exp A⌋₊ / g)
          (ThetaRemainder.thetaRemainder A) :=
  primeSupportedBlock_eq_rectangles A P hP

example (A : ℝ) (P : Finset ℕ) (p : ℕ) (hP : ∀ q ∈ P, Nat.Prime q)
    (hp : Nat.Prime p) (hpP : p ∉ P) :
    PrimeSupportedBlock.primeSupportedBlock A (insert p P) =
      PrimeSupportedBlock.primeSupportedBlock A P -
        2 * ∑ g ∈ Icc 1 ⌊Real.exp A⌋₊, (ArithmeticFunction.moebius g : ℝ) ^ 2 *
          (if Nat.Coprime g p then 1 else 0) *
            rectangularContribution P g ((⌊Real.exp A⌋₊ / g) / p) (⌊Real.exp A⌋₊ / g)
              (fun q ↦ ThetaRemainder.thetaRemainder A (p * q)) :=
  primeSupportedBlock_insert A P p hP hp hpP
```
