# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularIntegerFrequencyPartition

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f21dd8bf43f82a43afbef74ff14ba540a442620",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f21dd8bf43f82a43afbef74ff14ba540a442620`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeTriangularAutocorrelationAssembly`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularAutocorrelationAssembly.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [triangularPositiveFrequencies](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/triangularpositivefrequencies--cb6171a2e97184ace3384dcc.md) | 13 | `declaration-track:cb6171a2e97184ace3384dcc74f0b8036c7c4e0a9a4964113f9a4a68877bdbb2` |
| 2 | `def` | [triangularNegativeFrequencies](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/triangularnegativefrequencies--fb62ec4029d5aa375fe3037c.md) | 17 | `declaration-track:fb62ec4029d5aa375fe3037c0941e0b39ac5bb2f912551ddaaeb3c6e6424dcd3` |
| 3 | `def` | [triangularZeroFrequency](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/triangularzerofrequency--ea10eb46341dbd2cd8429215.md) | 21 | `declaration-track:ea10eb46341dbd2cd8429215e17e9787e912412b5ccec88da31e23312e43a787` |
| 4 | `theorem` | [mem_triangularPositiveFrequencies](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/mem-triangularpositivefrequencies--407c238b9796524851cfdfcd.md) | 23 | `result-track:407c238b9796524851cfdfcd1ce635be76338cf7ee891bddb61714342a183e5d` |
| 5 | `theorem` | [mem_triangularNegativeFrequencies](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/mem-triangularnegativefrequencies--2c5872598bb4cf78d5885418.md) | 29 | `result-track:2c5872598bb4cf78d588541839b87256e33657f87b3fece4f0ce08e089e21765` |
| 6 | `theorem` | [triangularPositiveFrequency_weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/triangularpositivefrequency-weight--9d69f7cce47d5aafdc64d375.md) | 35 | `result-track:9d69f7cce47d5aafdc64d3753e3cf2e301ad78fab71f32255d44e49ccb09b8dd` |
| 7 | `theorem` | [triangularNegativeFrequency_weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/triangularnegativefrequency-weight--abf502b4d5224ef195a970cc.md) | 46 | `result-track:abf502b4d5224ef195a970cc3dc378b0f635ea1cd7f6aec11e28532203446e70` |
| 8 | `theorem` | [triangularZeroFrequency_weight](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/triangularzerofrequency-weight--4de9d0f0e0f088ec669c1188.md) | 55 | `result-track:4de9d0f0e0f088ec669c1188334b9c960a9a0c9111a3dc170f65df2ff55cc53c` |
| 9 | `theorem` | [triangularPositiveFrequency_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/triangularpositivefrequency-sum--e803640b1bb340c76e1e1f70.md) | 61 | `result-track:e803640b1bb340c76e1e1f7057b4f969dd54848d6c29fbe9cae7cdceefc106ad` |
| 10 | `theorem` | [triangularNegativeFrequency_sum](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/triangularnegativefrequency-sum--1a4fe8b6b6f90f6a054086ab.md) | 78 | `result-track:1a4fe8b6b6f90f6a054086ab164c3bbf35bc5decfa78741315d912d5dd703118` |
| 11 | `def` | [TriangularIntegerFrequencyPartitionClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/triangularintegerfrequencypartitionclaim--a4056f6ed1cc49a7b5bb1cdf.md) | 98 | `declaration-track:a4056f6ed1cc49a7b5bb1cdf5f418ef9bcf56e4a5b95c1cfa5b5a08955502476` |
| 12 | `theorem` | [integerFrequencyPartition_to_assembledKernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeTriangularIntegerFrequencyPartition.lean/declarations/integerfrequencypartition-to-assembledkernel--1a74d9574db4db000b41a388.md) | 108 | `result-track:1a74d9574db4db000b41a388dd7c763896d7da4803ff0fc102a0558c95a97c12` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
