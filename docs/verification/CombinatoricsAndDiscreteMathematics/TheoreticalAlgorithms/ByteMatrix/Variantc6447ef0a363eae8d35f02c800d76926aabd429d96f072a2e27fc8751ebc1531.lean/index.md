# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteMatrix.Variantc6447ef0a363eae8d35f02c800d76926aabd429d96f072a2e27fc8751ebc1531

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7936e39c20f16e809c323e962248ddd0a4183891",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantc6447ef0a363eae8d35f02c800d76926aabd429d96f072a2e27fc8751ebc1531.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantc6447ef0a363eae8d35f02c800d76926aabd429d96f072a2e27fc8751ebc1531.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantc6447ef0a363eae8d35f02c800d76926aabd429d96f072a2e27fc8751ebc1531.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7936e39c20f16e809c323e962248ddd0a4183891`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantc6447ef0a363eae8d35f02c800d76926aabd429d96f072a2e27fc8751ebc1531.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantc6447ef0a363eae8d35f02c800d76926aabd429d96f072a2e27fc8751ebc1531.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.Byte` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrix` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bytesToMatrixWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantc6447ef0a363eae8d35f02c800d76926aabd429d96f072a2e27fc8751ebc1531.lean/declarations/bytestomatrixwith--af79255ceb5c3c9fdeca992a.md) | 27 | `declaration-track:af79255ceb5c3c9fdeca992a3196d28b09cee9d4c35e7380bf2d8275294d75cf` |
| 2 | `def` | [matrixToBytesWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantc6447ef0a363eae8d35f02c800d76926aabd429d96f072a2e27fc8751ebc1531.lean/declarations/matrixtobyteswith--86ed6bd7088c448354f8ee8a.md) | 34 | `declaration-track:86ed6bd7088c448354f8ee8a3121da61f45735875d041de217bc7b2c276531eb` |
| 3 | `theorem` | [matrixToBytes?_bytesToMatrix_of_codec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantc6447ef0a363eae8d35f02c800d76926aabd429d96f072a2e27fc8751ebc1531.lean/declarations/matrixtobytes-bytestomatrix-of-codec--fa09c8b342c83361797fa177.md) | 46 | `result-track:fa09c8b342c83361797fa1778275b7ecbd1001ac409faa1d0e35603c4b4b6ec7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
