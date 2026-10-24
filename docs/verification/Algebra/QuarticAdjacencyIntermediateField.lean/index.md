# Verification target: GRWTSK.Algebra.QuarticAdjacencyIntermediateField

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "67548cce58bbf17337dfd2cc4fc87573a6d85f2d",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticAdjacencyIntermediateField.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticAdjacencyIntermediateField.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticAdjacencyIntermediateField.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `67548cce58bbf17337dfd2cc4fc87573a6d85f2d`.

Source path: `GRWTSK/Algebra/QuarticAdjacencyIntermediateField.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticAdjacencyIntermediateField.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticGaloisKernel`](../../../mathematics/Algebra/QuarticGaloisKernel.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [adjacencyValueSet](../../../mathematics/Algebra/QuarticAdjacencyIntermediateField.lean/declarations/adjacencyvalueset--26d55815e8bc9ca5981562ff.md) | 28 | `declaration-track:26d55815e8bc9ca5981562ffe5ba936cf82c92c145882a914824c04af1feac67` |
| 2 | `def` | [adjacencyField](../../../mathematics/Algebra/QuarticAdjacencyIntermediateField.lean/declarations/adjacencyfield--e32e9c9734105ce27d0865e4.md) | 32 | `declaration-track:e32e9c9734105ce27d0865e40933f9adb9df8b921b063cedfb01299b30c9b837` |
| 3 | `theorem` | [fixes_adjacencyField_iff](../../../mathematics/Algebra/QuarticAdjacencyIntermediateField.lean/declarations/fixes-adjacencyfield-iff--75bcea20261babf539d545d0.md) | 38 | `result-track:75bcea20261babf539d545d057f2a49e75d3972546a904a09637ab729ed046ce` |
| 4 | `theorem` | [fixes_adjacencyField_iff_double_transposition](../../../mathematics/Algebra/QuarticAdjacencyIntermediateField.lean/declarations/fixes-adjacencyfield-iff-double-transposition--865e1e45983d50f4403655f7.md) | 72 | `result-track:865e1e45983d50f4403655f7ef67ce143c3184d2b2e0846ed8bb0019007451c4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
