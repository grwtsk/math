# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeInsertionSourceExactStatements.Varianta734db37068158888da70998e388592f3acfcb14002c793949d06049fcccbdb4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3bb033d5c392c4f3d84738292a02cb526057abd` · SHA-256 `a734db37068158888da70998e388592f3acfcb14002c793949d06049fcccbdb4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.SourceComparison.PrimeInsertion

set_option autoImplicit false

open Finset
open FormalResearch.RiemannHypothesis.SourceComparison
open PrimeRatioProduct PrimeInsertion

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
