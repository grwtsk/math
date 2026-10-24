# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicConvexContraction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "51fb8f589dcfcb749215ab53b460a1a65563132c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `51fb8f589dcfcb749215ab53b460a1a65563132c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerCyclicPrefixReindexing`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicPrefixReindexing.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [cyclicSubEquiv](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/declarations/cyclicsubequiv--79504acf3ea0235750a0b39a.md) | 13 | `declaration-track:79504acf3ea0235750a0b39a12dab5d608fea076b6e1d7466491568dbbe85737` |
| 2 | `theorem` | [cyclicFejerKernel_nonnegative](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/declarations/cyclicfejerkernel-nonnegative--3a90fcd4e5bcfa92ec849a82.md) | 25 | `result-track:3a90fcd4e5bcfa92ec849a82f7cb96990004c1caf45fb41e2b6670c2fd5f09b3` |
| 3 | `theorem` | [cyclicFejerKernel_sum_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/declarations/cyclicfejerkernel-sum-one--ee0818f43982c57eb4c4d55f.md) | 34 | `result-track:ee0818f43982c57eb4c4d55f685c84fd5790da6a9358f5e755f375230ee33ac7` |
| 4 | `theorem` | [cyclicFejerKernel_shifted_sum_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/declarations/cyclicfejerkernel-shifted-sum-one--14886eee2b839beb1438d8f2.md) | 62 | `result-track:14886eee2b839beb1438d8f2f6e9ace2a6e00badc8e3e5bcf422b21c308d8200` |
| 5 | `theorem` | [cyclicFejer_pointwise_error_le_translation_average](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/declarations/cyclicfejer-pointwise-error-le-translation-average--bbf5dc0248732bf0f82e4566.md) | 79 | `result-track:bbf5dc0248732bf0f82e456661cd95f6bd1888aa0cff68eabe42d870a4df91a0` |
| 6 | `def` | [CyclicConvolutionDoubleSumReindexingClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/declarations/cyclicconvolutiondoublesumreindexingclaim--8a7aa853cd051ffec9d86293.md) | 120 | `declaration-track:8a7aa853cd051ffec9d86293fc5e240f5aa9832c7e4fcdd8a53a237587de2222` |
| 7 | `theorem` | [doubleSumReindexing_to_cyclicConvolutionL1](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerCyclicConvexContraction.lean/declarations/doublesumreindexing-to-cyclicconvolutionl1--97a923cda11edecc7c7f6b47.md) | 134 | `result-track:97a923cda11edecc7c7f6b47632eafb93376c32adad6bb2cacedbe4b0b747c50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
