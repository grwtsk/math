# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.OrientationEquivariance.Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f761133e03ab7f9d61b6e3d408c67f4dbc497e6",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f761133e03ab7f9d61b6e3d408c67f4dbc497e6`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.BinaryFrontier.PartialBitfield.Order` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [LocalOrientation](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b.lean/declarations/localorientation--8e22bc27bebd951acb5681c1.md) | 12 | `declaration-track:8e22bc27bebd951acb5681c17c667e8360915d2c94a915894a6409ea627d548a` |
| 2 | `def` | [orientBit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b.lean/declarations/orientbit--30d6ac105a6e67d9fb2f6c98.md) | 17 | `declaration-track:30d6ac105a6e67d9fb2f6c982c3a4a97bbe43ae4bc4952e882730a7cafae413e` |
| 3 | `def` | [orientPath](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b.lean/declarations/orientpath--8b3bf546455e66bc5405f5f8.md) | 21 | `declaration-track:8b3bf546455e66bc5405f5f8ea6004bb8fb2516992b25b3bfbfcfd280ff040b0` |
| 4 | `theorem` | [zeroThenOne_preserves_bit](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b.lean/declarations/zerothenone-preserves-bit--1e33ce62b473ff12f680618d.md) | 26 | `result-track:1e33ce62b473ff12f680618de5f56611ae1ee75cc6bf32d8d2f764d8a79ef93f` |
| 5 | `theorem` | [oneThenZero_is_involutive](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/OrientationEquivariance/Variant1380eac8f130e73ecd5d4e3b80e4763c76f54399d81c643297cf48e48363a62b.lean/declarations/onethenzero-is-involutive--d97bf0f96e6c8aec4f7bf150.md) | 31 | `result-track:d97bf0f96e6c8aec4f7bf150a4a2bb0dfff147e4ab8d60d00d20ff9b7403dd9a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
