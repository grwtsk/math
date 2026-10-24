# Verification target: GRWTSK.Algebra.QuarticResolventCollision

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cff83d7373d11e1c3fc05d1b696b2be117608015",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/QuarticResolventCollision.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../mathematics/Algebra/QuarticResolventCollision.lean/index.md) · [Full source](../../../mathematics/Algebra/QuarticResolventCollision.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cff83d7373d11e1c3fc05d1b696b2be117608015`.

Source path: `GRWTSK/Algebra/QuarticResolventCollision.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/QuarticResolventCollision.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Algebra.PolygonalQuarticSeparable`](../../../mathematics/Algebra/PolygonalQuarticSeparable.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjacencyOne_eq_adjacencyTwo_iff](../../../mathematics/Algebra/QuarticResolventCollision.lean/declarations/adjacencyone-eq-adjacencytwo-iff--0565013104c3fc8d2bb4c66c.md) | 23 | `result-track:0565013104c3fc8d2bb4c66cd30afbf36d7803ecf01205528682630b7de4f593` |
| 2 | `theorem` | [adjacencyOne_eq_adjacencyThree_iff](../../../mathematics/Algebra/QuarticResolventCollision.lean/declarations/adjacencyone-eq-adjacencythree-iff--3ad70f1dd8aeed4b79f80022.md) | 29 | `result-track:3ad70f1dd8aeed4b79f800225cdd8c6f0e5f199c28f0fb869d1de858a0224216` |
| 3 | `theorem` | [adjacencyTwo_eq_adjacencyThree_iff](../../../mathematics/Algebra/QuarticResolventCollision.lean/declarations/adjacencytwo-eq-adjacencythree-iff--05238bae5d349d82dc271cbf.md) | 35 | `result-track:05238bae5d349d82dc271cbf3ad2f635784aab7e3dd33db0911bb3da78f792c8` |
| 4 | `theorem` | [adjacency_pairwise_distinct_iff](../../../mathematics/Algebra/QuarticResolventCollision.lean/declarations/adjacency-pairwise-distinct-iff--99be400e38fe36954f89cffa.md) | 44 | `result-track:99be400e38fe36954f89cffa51ef5811b81910ccf34b7f1ca4ffead56c688d7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
