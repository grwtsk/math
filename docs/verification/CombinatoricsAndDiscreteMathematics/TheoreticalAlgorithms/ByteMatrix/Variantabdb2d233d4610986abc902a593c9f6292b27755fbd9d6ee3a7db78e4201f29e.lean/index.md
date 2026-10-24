# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ByteMatrix.Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "efa16cfdb76e80f907da2c4e9ca5645caca727b2",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `efa16cfdb76e80f907da2c4e9ca5645caca727b2`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.Archive.Byte` — import line 1; external provider; requires a separately pinned dependency.
- `Folder.Carrier.BinaryMatrix` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [bytesToMatrixWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e.lean/declarations/bytestomatrixwith--c760261d9da86262d5af2335.md) | 19 | `declaration-track:c760261d9da86262d5af2335e6efea0d769636a80fa411e1462d10507bc90d11` |
| 2 | `def` | [matrixToBytesWith](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e.lean/declarations/matrixtobyteswith--281466525d5ae96384ae9310.md) | 26 | `declaration-track:281466525d5ae96384ae9310b02d7900a36b279042c1efc53fc4da7b9de17ead` |
| 3 | `theorem` | [matrixToBytes?_bytesToMatrix_of_codec](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ByteMatrix/Variantabdb2d233d4610986abc902a593c9f6292b27755fbd9d6ee3a7db78e4201f29e.lean/declarations/matrixtobytes-bytestomatrix-of-codec--d9308de11c1d249e2b0e72d4.md) | 38 | `result-track:d9308de11c1d249e2b0e72d49305ec718fed9ac8896d52e244033ce4d4dc24d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
