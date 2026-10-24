# Verification target: GRWTSK.Topology.GeneralTopology.ContinuousCompMeasurePreserving.Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "585d5288dd3acf7cc0fed3c1dcfe5d7c28ea251c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `585d5288dd3acf7cc0fed3c1dcfe5d7c28ea251c`.

Source path: `GRWTSK/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [compMeasurePreserving_continuous](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/declarations/compmeasurepreserving-continuous--1a59548d539f5a5fa4a5b85b.md) | 58 | `result-track:1a59548d539f5a5fa4a5b85b78b02c0fff613b5171c6393ec1c656d0c7f9afc0` |
| 2 | `theorem` | [Filter.Tendsto.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/declarations/filter-tendsto-compmeasurepreservinglp--5253ae500332138ac7c433fa.md) | 82 | `result-track:5253ae500332138ac7c433fa0215f4ccbc92b069aaf7acbc9248456de021d05f` |
| 3 | `theorem` | [ContinuousWithinAt.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/declarations/continuouswithinat-compmeasurepreservinglp--d96db28cbb2c6fb78f7ad334.md) | 96 | `result-track:d96db28cbb2c6fb78f7ad334b8dd555762c2976d54283c9f255f85be604f29a2` |
| 4 | `theorem` | [ContinuousAt.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/declarations/continuousat-compmeasurepreservinglp--a18dc2dd08ae7f7773d23dc8.md) | 101 | `result-track:a18dc2dd08ae7f7773d23dc82228ffe132eb234b0375281718662d5771f0a6e0` |
| 5 | `theorem` | [ContinuousOn.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/declarations/continuouson-compmeasurepreservinglp--31669b7e69947288164410e7.md) | 106 | `result-track:31669b7e69947288164410e7b74fb7057629086fd144f6a2852fadacd43a4df1` |
| 6 | `theorem` | [Continuous.compMeasurePreservingLp](../../../../../mathematics/Topology/GeneralTopology/ContinuousCompMeasurePreserving/Variant25aa6c595653bf818951ff877fd32320878926274abf472776c1caed0a073f66.lean/declarations/continuous-compmeasurepreservinglp--cb92a9b29d6aaf400feb9190.md) | 111 | `result-track:cb92a9b29d6aaf400feb9190340bb7e002cf685f16a3e70edff8f790fcb839cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
