# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimeDisclosureActual.Variant22317680d593eccd7dcede705039ef47b19383ea88a43800c3afc58e663b17e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bfc969cec1043c4f4b31219a231f0a514f2c6a8a` · SHA-256 `22317680d593eccd7dcede705039ef47b19383ea88a43800c3afc58e663b17e5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourcePrimeDisclosure
import SourceDivisorClassification
import SourceWeightedOrbitAdapter

/-!
The centered-beta consumer of the private prime-disclosure correction.
All original Vaughan dependencies remain at their separately recorded review
grade. The last-prime decomposition is source-exact, but it supplies no signed
budget. Both actual long cutoffs and the source's normalization remain literal.
-/

set_option autoImplicit false
noncomputable section
namespace RH16Tandem.SourcePrimeDisclosureActual

open scoped BigOperators InnerProductSpace
open RH16Tandem.SourcePrimeDisclosure
open FormalResearch.RiemannHypothesis.SourceArithmeticOrbit
open FormalResearch.RiemannHypothesis.SourceDivisorClassification
open FormalResearch.RiemannHypothesis.SourceWeightedOrbitAdapter
open FormalResearch.RiemannHypothesis.SourcePureRotationObstruction
open FormalResearch.RiemannHypothesis.SourceCompensatedReadout
open FormalResearch.RiemannHypothesis.SourceCutoffFlux
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaCentering

/-- The literal row is beta PLUS alpha; its discrepancy has 1/d minus divisibility. -/
theorem centeredDisclosure_eq_actual_centeredBeta (P : Finset ℕ) (U n : ℕ)
    (hP : ∀ r ∈ P, r.Prime) (hcover : ∀ r, r.Prime → r ≤ U → r ∈ P)
    (hU : 1 ≤ U) (hn : U < n) :
    centeredDisclosure (primeDivisors P U) n = centeredBeta U n := by
  rw [centeredDisclosure_coverage P U n hP hcover]
  exact (centeredBeta_eq_divisor_discrepancy U n hU hn).symm

theorem disclosureSource_eq_actual_centeredForwardAt (A : ℝ) (hA : 0 < A)
    (P : Finset ℕ) (U N : ℕ) (hP : ∀ r ∈ P, r.Prime)
    (hcover : ∀ r, r.Prime → r ≤ U → r ∈ P) (hU : 1 ≤ U) :
    disclosureSource (originalSourceL2 A hA) (Finset.Ioc U N) (primeDivisors P U) =
      centeredForwardAt A hA U N := by
  classical
  rw [centeredForwardAt_eq_finiteProfile]
  unfold disclosureSource finiteProfile
  apply Finset.sum_congr rfl
  intro n hn
  dsimp only
  rw [centeredDisclosure_eq_actual_centeredBeta P U n hP hcover hU
    (Finset.mem_Ioc.mp hn).1]
  rfl

/-- Completing the fresh-prime coverage decomposes the actual unchanged centered source row. -/
theorem actual_centeredForwardAt_fresh_prime (A : ℝ) (hA : 0 < A)
    (P : Finset ℕ) (U N p : ℕ) (hP : ∀ r ∈ P, r.Prime)
    (hp : p.Prime) (hpP : p ∉ P)
    (hcover : ∀ r, r.Prime → r ≤ U → r ∈ insert p P) (hU : 1 ≤ U) :
    centeredForwardAt A hA U N =
      disclosureSource (originalSourceL2 A hA) (Finset.Ioc U N) (primeDivisors P U) +
        correctionSource (originalSourceL2 A hA) (Finset.Ioc U N)
          (primeDivisors P (U / p)) p := by
  have hi : ∀ r ∈ insert p P, r.Prime := by
    intro r hr
    rcases Finset.mem_insert.mp hr with rfl | hr
    · exact hp
    · exact hP r hr
  rw [← disclosureSource_eq_actual_centeredForwardAt A hA (insert p P) U N hi hcover hU]
  exact disclosureSource_primeDivisors_insert _ _ _ _ _ hP hp hpP

/-- The private deletion is the original same-index centered arithmetic diagonal. -/
theorem physicalDiagonal_eq_actual_centeredDiagonalAt (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    physicalDiagonal (originalSourceL2 A hA) (Finset.Ioc U N)
        mangoldtCoefficient (centeredCoefficient U) = centeredDiagonalAt A U N := by
  rw [centeredDiagonalAt_eq_reflected_atoms A hA U N]
  simp only [physicalDiagonal, Complex.re_sum, orbitAtom, signedLog,
    Bool.false_eq_true, ↓reduceIte]

/-- Complete transport to the existing source target, with its independently defined main term. -/
theorem compensatedReadout_eq_actual_readoutAt (A : ℝ) (hA : 0 < A) (U N : ℕ) :
    RH16Tandem.SourcePrimeDisclosure.compensatedReadout
        (originalSourceL2 A hA) (Finset.Ioc U N) mangoldtCoefficient
        (centeredCoefficient U) (mainTermAt A U N) = readoutAt A hA U N := by
  rw [readoutAt_eq_reflected_profiles]
  unfold RH16Tandem.SourcePrimeDisclosure.compensatedReadout
  rw [physicalDiagonal_eq_actual_centeredDiagonalAt A hA U N]

end RH16Tandem.SourcePrimeDisclosureActual
```
