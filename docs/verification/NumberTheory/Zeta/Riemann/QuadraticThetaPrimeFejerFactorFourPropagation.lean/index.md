# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFactorFourPropagation

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "36d97fcf12f5abb54457d21c6cf2457bdb162619",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `36d97fcf12f5abb54457d21c6cf2457bdb162619`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerOctaveRestriction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerOctaveRestriction.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicFejerDistance](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/declarations/cyclicfejerdistance--c137d212c505eb47a75eb3dd.md) | 12 | `declaration-track:c137d212c505eb47a75eb3dd9d2f4d10f47055e69fc4e4f22a308d9c52da477c` |
| 2 | `theorem` | [cyclicFejerSharpStepL1Error_le_distanceWeightedKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/declarations/cyclicfejersharpstepl1error-le-distanceweightedkernel--10bae248b76bc61087007b07.md) | 17 | `result-track:10bae248b76bc61087007b07b20306e234997dd9e39964a97f693526e298f0b6` |
| 3 | `def` | [CyclicDistanceWeightedKernelPairingClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/declarations/cyclicdistanceweightedkernelpairingclaim--547eac055f64674814efd8fe.md) | 48 | `declaration-track:547eac055f64674814efd8fefbbb8940deafc662507121d4280b4f0a32961fe3` |
| 4 | `theorem` | [cyclicKernelPairing_to_sharpStepL1FirstMomentFour](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/declarations/cyclickernelpairing-to-sharpstepl1firstmomentfour--b81a76c2d53daafec82cee7d.md) | 57 | `result-track:b81a76c2d53daafec82cee7d4293c2ec90a602d9b5ea90b109c1ecaa4f3b4273` |
| 5 | `theorem` | [cyclicKernelPairing_to_arithmeticComparisonFactorFour](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/declarations/cyclickernelpairing-to-arithmeticcomparisonfactorfour--eb61d1fc3663b4ac54fd6f23.md) | 67 | `result-track:eb61d1fc3663b4ac54fd6f233a11ecf84f820a7e62b242eea4356cd0ecb76caa` |
| 6 | `theorem` | [cyclicKernelPairing_to_arithmeticTailShape](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/declarations/cyclickernelpairing-to-arithmetictailshape--0a7e97205b81a98343506f00.md) | 73 | `result-track:0a7e97205b81a98343506f00b0f2de93344e9a428ff3c463fe24db37901d1c13` |
| 7 | `def` | [CorrectedFejerFinitePairingOnlyFrontier](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFactorFourPropagation.lean/declarations/correctedfejerfinitepairingonlyfrontier--4cd397b3bb25f5dd42cce966.md) | 91 | `declaration-track:4cd397b3bb25f5dd42cce9666a195aa7f5b961a97f16dfb3c190a86ec3e2737f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
