# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.DeterminantFiber.Variant3d378b76eaf6dcd82ff2005be9ebe43be2cf4a8a0a83d370ba291365f6cf40c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0296deddfa1366596031f0239910beea49413b4c",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeterminantFiber/Variant3d378b76eaf6dcd82ff2005be9ebe43be2cf4a8a0a83d370ba291365f6cf40c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeterminantFiber/Variant3d378b76eaf6dcd82ff2005be9ebe43be2cf4a8a0a83d370ba291365f6cf40c9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeterminantFiber/Variant3d378b76eaf6dcd82ff2005be9ebe43be2cf4a8a0a83d370ba291365f6cf40c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0296deddfa1366596031f0239910beea49413b4c`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeterminantFiber/Variant3d378b76eaf6dcd82ff2005be9ebe43be2cf4a8a0a83d370ba291365f6cf40c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeterminantFiber/Variant3d378b76eaf6dcd82ff2005be9ebe43be2cf4a8a0a83d370ba291365f6cf40c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Surface.Legacy.PascalTree.TensorExpression` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ReductionCandidate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeterminantFiber/Variant3d378b76eaf6dcd82ff2005be9ebe43be2cf4a8a0a83d370ba291365f6cf40c9.lean/declarations/reductioncandidate--8f42674454e80690084ffe94.md) | 15 | `declaration-track:8f42674454e80690084ffe945bbca12010f0a73e6e7d54431802881aa5ac5a00` |
| 2 | `structure` | [DeterminantFiber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeterminantFiber/Variant3d378b76eaf6dcd82ff2005be9ebe43be2cf4a8a0a83d370ba291365f6cf40c9.lean/declarations/determinantfiber--9f697db6b48725ca2d2a0e6a.md) | 21 | `declaration-track:9f697db6b48725ca2d2a0e6aed5fbf0b924dedc3974224acfc2465bbd58b1ee1` |
| 3 | `theorem` | [determinantFiber_square_required](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeterminantFiber/Variant3d378b76eaf6dcd82ff2005be9ebe43be2cf4a8a0a83d370ba291365f6cf40c9.lean/declarations/determinantfiber-square-required--c852517d8f7c34227761c89e.md) | 27 | `result-track:c852517d8f7c34227761c89e87cc8b9e761c5465df5a6fd4e70322c7deb6e70d` |
| 4 | `theorem` | [determinantFiber_boundary_visible](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/DeterminantFiber/Variant3d378b76eaf6dcd82ff2005be9ebe43be2cf4a8a0a83d370ba291365f6cf40c9.lean/declarations/determinantfiber-boundary-visible--be2df86da43c96414815cda2.md) | 33 | `result-track:be2df86da43c96414815cda2649312ceb968ee880f8f7a67fab1f71049362d1c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
