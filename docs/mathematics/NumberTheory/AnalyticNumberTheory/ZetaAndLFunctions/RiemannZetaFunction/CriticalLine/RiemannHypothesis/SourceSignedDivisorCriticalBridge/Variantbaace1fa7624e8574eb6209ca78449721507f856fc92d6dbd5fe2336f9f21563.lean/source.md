# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceSignedDivisorCriticalBridge.Variantbaace1fa7624e8574eb6209ca78449721507f856fc92d6dbd5fe2336f9f21563

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6c8cfc7e9852f68868e6ab68f1188ee6cdb32136` · SHA-256 `baace1fa7624e8574eb6209ca78449721507f856fc92d6dbd5fe2336f9f21563`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceSignedDivisorSamplingBudget
import SourceSamplingLedger
import CriticalRelativePairing

/-!
# Original signed divisor rows and the actual critical relative pairing

AI attribution: OpenAI Codex. The exact operator, original ledger, literal
integer Mangoldt inventory and actual Stieltjes identity identify the retained
signed arithmetic sector. No sampling main term or compensation is redefined.
The lattice correction and actual plain inventory remain explicit here.
No critical-pairing bound or uniform witness is supplied.
-/

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceSignedDivisorCriticalBridge

open ArithmeticFunction
open scoped BigOperators
open SourceVaughanHankel SourceDivisorCounterterms SourceSamplingLedger
open SourceSignedDivisorSamplingBudget SourceSamplingPointwise
open OmegaResearch.CriticalRelativePairing ContinuousResearch.ActualIntegerInventory
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateVaughanSource EstimateSourceMobiusKernel EstimatePlainKernel EstimateMertensAbel
open EstimateBetaSourceRecombination EstimateMertensResidual

noncomputable section

/-- Exact connection uses only the original residual/operator and inventory identities. -/
theorem jointSignedRemainder_eq_critical_original_corrections (A : ℝ) (hA : 1 ≤ A) :
    jointSignedRemainder A = criticalRelativePairing A + latticePairing A +
      plainInventory A - (betaMainLedger A + independentMainTerm A) := by
  have hj := jointSignedRemainder_eq_covariance A hA
  have hr := actual_residual_decomposition A hA
  have hp := residual_sub_integerJ_eq_plain hA
  have hq := integerJ_eq_critical_add_lattice hA
  linarith only [hj, hr, hp, hq]

/-- The literal retained sampling rows equal the critical pairing with original corrections. -/
theorem original_signed_sampling_rows_eq_critical (A : ℝ) (hA : 1 ≤ A) :
    -globalBaseline A +
      (∑ d ∈ Finset.Icc 1 (vaughanCutoff A), realMoebius d *
        (-(∑ m ∈ longInventory A,
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ)) +
        (∑ m ∈ longInventory A, vonMangoldt m *
          (∑ j ∈ Finset.Icc 1 (vaughanCutoff A / d),
            sourcePlainWeight A ((m * (d * j) : ℕ) : ℝ))) +
        (∑ m ∈ longInventory A,
          if d ∣ m then vonMangoldt m * sourcePlainWeight A ((m * m : ℕ) : ℝ) else 0) +
        sourceLogSamplingMainTerm A d -
        ∑ m ∈ Finset.Icc 1 (vaughanCutoff A),
          vonMangoldt m * sourcePlainSamplingMainTerm A ((d * m : ℕ) : ℝ))) -
      actualSignedQuotientSamplingError A = criticalRelativePairing A + latticePairing A +
        plainInventory A - (betaMainLedger A + independentMainTerm A) := by
  rw [← jointSignedRemainder_eq_original_sampling_rows A hA]
  exact jointSignedRemainder_eq_critical_original_corrections A hA

end
end FormalResearch.RiemannHypothesis.SourceSignedDivisorCriticalBridge
```
