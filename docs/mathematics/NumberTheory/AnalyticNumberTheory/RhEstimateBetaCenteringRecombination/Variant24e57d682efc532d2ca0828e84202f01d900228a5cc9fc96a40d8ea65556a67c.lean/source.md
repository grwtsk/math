# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.RhEstimateBetaCenteringRecombination.Variant24e57d682efc532d2ca0828e84202f01d900228a5cc9fc96a40d8ea65556a67c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3b4e7f795621e49fb9ef16d23e0d29c0b22a7203` · SHA-256 `24e57d682efc532d2ca0828e84202f01d900228a5cc9fc96a40d8ea65556a67c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaSourceRecombination

set_option autoImplicit false

open ArithmeticFunction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateBetaCentering EstimateBetaSourceRecombination
open EstimateVaughanSource EstimateVaughanTranslationGate EstimateMertensResidual
open EstimateTypeTwoLogBlocks

example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, beta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (((H/d : ℕ) : ℝ)-((L/d : ℕ) : ℝ)) := beta_interval_eq_quotients U L H hU hUL hLH

example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, beta U n) =
      -alpha U * ((H : ℝ)-(L : ℝ)) -
        ∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * floorDiscrepancy L H d :=
  beta_interval_eq_mean_discrepancy U L H hU hUL hLH

example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, centeredBeta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * floorDiscrepancy L H d :=
  centeredBeta_interval_eq_discrepancy U L H hU hUL hLH

example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    |∑ n ∈ Finset.Ioc L H, centeredBeta U n| ≤
      ∑ d ∈ Finset.Icc 1 U, |(moebius d : ℝ)| := centeredBeta_interval_abs_le U L H hU hUL hLH

example (A : ℝ) (hA : 1 ≤ A) :
    typeTwoOffDiagonal A = centeredTypeTwoOffDiagonal A -
      alpha (vaughanCutoff A) * plainTypeTwoOffDiagonal A :=
  typeTwoOffDiagonal_eq_centered_sub_mean A hA

example (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = centeredTypeTwoOffDiagonal A + betaMainLedger A :=
  mertensResidual_eq_centered_add_betaMain A hA

example (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = (∑ c ∈ logCells A, centeredTypeTwoLogBlock A c) +
      betaMainLedger A := mertensResidual_eq_centered_blocks_add_betaMain A hA

example (A : ℝ) (hA : 1 ≤ A) (p : ℕ) (hp : p.Prime) :
    (longOffDiagonalPairs A).filter (fun q ↦ q.1*q.2 = p^2) = ∅ :=
  prime_square_offDiagonal_filter_empty A hA p hp
```
