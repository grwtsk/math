# Verification target: GRWTSK.Algebra.QuarticBaseResolventMatching

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d7c81b6566b83c28cc9b284dbf76937a60dea9ab",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticBaseResolventMatching.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticBaseResolventMatching.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticBaseResolventMatching.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d7c81b6566b83c28cc9b284dbf76937a60dea9ab`.

Source path: `GRWTSK/Algebra/QuarticBaseResolventMatching.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticBaseResolventMatching.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.QuarticBaseResolventSeparable`](../../../mathematics/Algebra/QuarticBaseResolventSeparable.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Algebra.QuarticMatchingAdjacency`](../../../mathematics/Algebra/QuarticMatchingAdjacency.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [matching_value_is_resolvent_root](../../../mathematics/Algebra/QuarticBaseResolventMatching.lean/declarations/matching-value-is-resolvent-root--c80b6fc2ca3ad6482eb7231f.md) | 29 | `result-track:c80b6fc2ca3ad6482eb7231f7369fe4b1d0f5a53e0e1a51be7040f221897017d` |
| 2 | `theorem` | [matching_value_injective_of_separable](../../../mathematics/Algebra/QuarticBaseResolventMatching.lean/declarations/matching-value-injective-of-separable--be89a7f4b4f1a16dabf1413f.md) | 61 | `result-track:be89a7f4b4f1a16dabf1413f54abdcd67b7cd5f4c6e1f4a1d3c2f8fcc4db47ff` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
