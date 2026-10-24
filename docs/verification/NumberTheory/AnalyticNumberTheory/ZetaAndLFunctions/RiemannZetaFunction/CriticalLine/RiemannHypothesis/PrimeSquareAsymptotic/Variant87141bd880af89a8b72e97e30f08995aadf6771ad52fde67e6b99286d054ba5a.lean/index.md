# Verification target: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimeSquareAsymptotic.Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a11ab934090764408191842b2abae418358f9c4b",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/index.md) · [Full source](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a11ab934090764408191842b2abae418358f9c4b`.

Source path: `GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeHarmonicRemainder` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareCorrelation` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareAbel` — import line 8; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.PrimeSquareSource` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [primeSquareError](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/declarations/primesquareerror--12a8d4357bdd87bc30563a6f.md) | 42 | `declaration-track:12a8d4357bdd87bc30563a6fd0ae207b2811cd88dc910a8d295bfb33e62eeb12` |
| 2 | `def` | [primeSquareErrorBudget](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/declarations/primesquareerrorbudget--3cbd28f289d794710c0d551b.md) | 47 | `declaration-track:3cbd28f289d794710c0d551b870d1762dc6b8145100f1c811f72deea4b7de4c1` |
| 3 | `theorem` | [primeSquareErrorBudget_nonneg](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/declarations/primesquareerrorbudget-nonneg--ec4b7222961de1ec03f23f99.md) | 50 | `result-track:ec4b7222961de1ec03f23f991bfbdaeb943377c2b4f492d9b0ef069bafaa0f1a` |
| 4 | `theorem` | [remainder_derivative_norm_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/declarations/remainder-derivative-norm-bound--33bf405f6eb76669737cef73.md) | 55 | `result-track:33bf405f6eb76669737cef73fb6aef11a2bdd0d5cc2e7bed68dec5badcb105bd` |
| 5 | `theorem` | [remainder_derivative_integrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/declarations/remainder-derivative-integrable--ee819b3eb7f99e62ec9b47ed.md) | 66 | `result-track:ee819b3eb7f99e62ec9b47ed4e25c60f2d31ff174f0b8221466e804c343a0a04` |
| 6 | `theorem` | [remainder_derivative_intervalIntegrable](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/declarations/remainder-derivative-intervalintegrable--8f2b038e1d22e471ab9392c9.md) | 79 | `result-track:8f2b038e1d22e471ab9392c9bb02a497b6129501da1ad6aa25705f368fd65c7e` |
| 7 | `theorem` | [primeSquareError_abs_le](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/declarations/primesquareerror-abs-le--71b3a912303d10bbefaf7dd5.md) | 85 | `result-track:71b3a912303d10bbefaf7dd54c7e5dc2b07dc9ac088404205dddd455909083e2` |
| 8 | `theorem` | [primeSquareContribution_eq_main_sub_error](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/declarations/primesquarecontribution-eq-main-sub-error--41aeb0f41519543799d5a975.md) | 120 | `result-track:41aeb0f41519543799d5a975bdc2c32e69d61c7e6000596767235ef04453cb06` |
| 9 | `theorem` | [primeSquareContribution_asymptotic_bound](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/declarations/primesquarecontribution-asymptotic-bound--cd11a26b06234ac25617c924.md) | 131 | `result-track:cd11a26b06234ac25617c924bd527f2b6bc606a1a84468f6661711333dc76941` |
| 10 | `theorem` | [actual_primeSquare_signed_asymptotic](../../../../../../../../../mathematics/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PrimeSquareAsymptotic/Variant87141bd880af89a8b72e97e30f08995aadf6771ad52fde67e6b99286d054ba5a.lean/declarations/actual-primesquare-signed-asymptotic--05b1c15fd9343fd972c1e109.md) | 143 | `result-track:05b1c15fd9343fd972c1e109761bc8ec4dd7126179d331e6d7326902dbed44d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
