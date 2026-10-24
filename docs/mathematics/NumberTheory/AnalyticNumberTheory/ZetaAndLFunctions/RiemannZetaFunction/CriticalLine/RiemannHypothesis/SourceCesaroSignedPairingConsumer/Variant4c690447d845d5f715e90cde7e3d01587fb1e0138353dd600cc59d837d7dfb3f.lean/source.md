# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceCesaroSignedPairingConsumer.Variant4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a1fa2407df9a4c53ca9386533a79e3706997534e` · SHA-256 `4c690447d845d5f715e90cde7e3d01587fb1e0138353dd600cc59d837d7dfb3f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import SourceCesaroPrimitiveConsumer

/-!
The source-faithful one-sided Cesaro pairing is a weaker sufficient arithmetic
gate than an absolute primitive-growth budget. No uniform pairing constant is
supplied here. Research direction, selection and evaluation: grwtsk contributors.
Formal construction: OpenAI Codex assistance. Focused scratch status only.
-/

set_option autoImplicit false
noncomputable section

namespace RH16CesaroSignedPairing

open MeasureTheory
open RH16CesaroPrimitive RH16CesaroKernel
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceFirstAtomSignedWork
open FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
open FormalResearch.RiemannHypothesis.SourceMangoldtNorm
open RH16ResumeApplication RH16ResumeBudget
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization

/-- The actual full signed second-primitive pairing, with its original endpoints. -/
def signedCesaroPairing (A : ℝ) : ℝ :=
  ∫ t in Real.log 2..2 * A,
    actualCesaroPrimitive t * deriv (deriv (cesaroWeight A)) t

/-- The actual first-atom gamma trace is favorable at the checked analytic radius. -/
theorem signedCesaroPairing_le_remainingAtomWork (A : ℝ) (hA : 91 ≤ A) :
    signedCesaroPairing A ≤ remainingAtomWork A := by
  have hgamma : 0 ≤ Real.eulerMascheroniConstant := by
    linarith [Real.one_half_lt_eulerMascheroniConstant]
  have hhead := mul_nonneg hgamma (criticalPrimeTest_at_first_atom_nonneg A hA)
  rw [remainingAtomWork_eq_cesaro_integral A (by linarith : 1 ≤ A)]
  change signedCesaroPairing A ≤
    Real.eulerMascheroniConstant * criticalPrimeTest A (Real.log 2) +
      signedCesaroPairing A
  linarith

/-- A supplied joint signed budget transfers without taking separate absolute values. -/
theorem remainingAtomWork_lower_of_signed_pairing (J A : ℝ) (hA : 91 ≤ A)
    (hpair : -J ≤ signedCesaroPairing A) :
    -J ≤ remainingAtomWork A :=
  hpair.trans (signedCesaroPairing_le_remainingAtomWork A hA)

/-- The exact original all-real lower constant retains the saved finite prefix. -/
theorem all_real_source_lower_of_signed_pairing (J : ℝ)
    (hpair : ∀ A : ℝ, 91 ≤ A → -J ≤ signedCesaroPairing A) :
    ∀ A : ℝ, 1 ≤ A →
      min (originalPrefixLower 91)
        (archimedeanMultiplier 0 - 2 *
          (J - 3 / 8 + criticalBaselineCorrection 91)) ≤
            sourceQuadraticValue explicitSecondDerivative A := by
  apply all_real_source_lower_of_remaining_signed_tail J 91 (by norm_num)
  intro A hA
  exact remainingAtomWork_lower_of_signed_pairing J A hA (hpair A hA)

/-- A concrete supplied signed budget constructs the unchanged EstimateObligation. -/
theorem estimate_of_signed_pairing (J : ℝ)
    (hpair : ∀ A : ℝ, 91 ≤ A → -J ≤ signedCesaroPairing A) :
    CorrelationAssembly.EstimateObligation := by
  apply estimate_of_remaining_signed_tail J 91 (by norm_num)
  intro A hA
  exact remainingAtomWork_lower_of_signed_pairing J A hA (hpair A hA)

/-- The arithmetic witness remains an explicit existential input, not an axiom. -/
theorem estimate_of_signed_pairing_exists
    (h : ∃ J : ℝ, 0 ≤ J ∧
      ∀ A : ℝ, 91 ≤ A → -J ≤ signedCesaroPairing A) :
    CorrelationAssembly.EstimateObligation := by
  rcases h with ⟨J, _hJ, hpair⟩
  exact ⟨min (originalPrefixLower 91)
      (archimedeanMultiplier 0 - 2 *
        (J - 3 / 8 + criticalBaselineCorrection 91)),
    all_real_source_lower_of_signed_pairing J hpair⟩

end RH16CesaroSignedPairing
```
