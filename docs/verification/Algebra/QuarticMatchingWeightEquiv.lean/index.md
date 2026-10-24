# Verification target: GRWTSK.Algebra.QuarticMatchingWeightEquiv

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef719dd112a17c5cb5bb9f8e1a4a54e928538279",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticMatchingWeightEquiv.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticMatchingWeightEquiv.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticMatchingWeightEquiv.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef719dd112a17c5cb5bb9f8e1a4a54e928538279`.

Source path: `GRWTSK/Algebra/QuarticMatchingWeightEquiv.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticMatchingWeightEquiv.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticMatchingAdjacency`](../../../mathematics/Algebra/QuarticMatchingAdjacency.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AdjacencyRange](../../../mathematics/Algebra/QuarticMatchingWeightEquiv.lean/declarations/adjacencyrange--89d5c5ecda621fb6f5e0d143.md) | 27 | `declaration-track:89d5c5ecda621fb6f5e0d143879799e755c3694f0f4c1c94a1b141f55a6e0bf7` |
| 2 | `def` | [matchingEquivAdjacencyRange](../../../mathematics/Algebra/QuarticMatchingWeightEquiv.lean/declarations/matchingequivadjacencyrange--417e14cbe99f0115f82f7216.md) | 32 | `declaration-track:417e14cbe99f0115f82f7216ce6c9ea5956e7ded649871b16b0e48aac9ae0bd6` |
| 3 | `def` | [quarticMatchingEquivAdjacencyRange](../../../mathematics/Algebra/QuarticMatchingWeightEquiv.lean/declarations/quarticmatchingequivadjacencyrange--72bc81360d29e6c3a5ec09d4.md) | 49 | `declaration-track:72bc81360d29e6c3a5ec09d4f54084d51b4c66fe3b976e04b6ad80797f24d7ba` |
| 4 | `def` | [adjacencyRangePerm](../../../mathematics/Algebra/QuarticMatchingWeightEquiv.lean/declarations/adjacencyrangeperm--fcd6e510f38b696218eb77fc.md) | 59 | `declaration-track:fcd6e510f38b696218eb77fcc109100741f3210a4c5ab7dfa12c327d5d7be41a` |
| 5 | `theorem` | [adjacencyRangePerm_apply](../../../mathematics/Algebra/QuarticMatchingWeightEquiv.lean/declarations/adjacencyrangeperm-apply--8ea408547e9e1207d54e124c.md) | 65 | `result-track:8ea408547e9e1207d54e124cabf620f9524f222da347658f9d6d2d1337914a6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
