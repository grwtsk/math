# Complete source: GRWTSK.Analysis.FunctionalAnalysis.497e5f36295531f98e442825fb2be772eed2212df48a1391c38e5fb7b691e2b7BetaConsumer.Variant497e5f36295531f98e442825fb2be772eed2212df48a1391c38e5fb7b691e2b7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef06cd4b57a19a002ba2f032f3ee5f6e206fa02f` · SHA-256 `497e5f36295531f98e442825fb2be772eed2212df48a1391c38e5fb7b691e2b7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateBetaCentering
set_option autoImplicit false
open ArithmeticFunction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanIdentity EstimateBetaCentering
example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, beta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) *
        (((H/d : ℕ) : ℝ)-((L/d : ℕ) : ℝ)) := beta_interval_eq_quotients U L H hU hUL hLH
example (U L H : ℕ) (hU : 1 ≤ U) (hUL : U ≤ L) (hLH : L ≤ H) :
    (∑ n ∈ Finset.Ioc L H, centeredBeta U n) =
      -∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * floorDiscrepancy L H d :=
  centeredBeta_interval_eq_discrepancy U L H hU hUL hLH
example (L H d : ℕ) (hd : 1 ≤ d) : |floorDiscrepancy L H d| ≤ 1 :=
  floorDiscrepancy_abs_le_one L H d hd
```
