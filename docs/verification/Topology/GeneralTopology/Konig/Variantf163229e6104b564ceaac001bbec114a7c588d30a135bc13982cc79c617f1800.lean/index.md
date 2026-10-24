# Verification target: GRWTSK.Topology.GeneralTopology.Konig.Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b203d3a2f69f2000a48df22378b9e04b65252b38",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b203d3a2f69f2000a48df22378b9e04b65252b38`.

Source path: `GRWTSK/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean.json)

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
| 1 | `abbrev` | [FiniteDiagramArrow](../../../../../mathematics/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean/declarations/finitediagramarrow--ae34b783161d728881df0772.md) | 53 | `declaration-track:ae34b783161d728881df077245a54a31f93e3dec4b2b665a40b38f406f4c6767` |
| 2 | `abbrev` | [FiniteDiagram](../../../../../mathematics/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean/declarations/finitediagram--c11a36867bb0966753580e0f.md) | 57 | `declaration-track:c11a36867bb0966753580e0f1a9fcfcf9f3239e4cd971460298e5f0b5d83d592` |
| 3 | `def` | [partialSections](../../../../../mathematics/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean/declarations/partialsections--ec39c1afd25f8b83cf3c8c70.md) | 65 | `declaration-track:ec39c1afd25f8b83cf3c8c704cf85c16243e008a7bd67ae6789983c48b5ed289` |
| 4 | `theorem` | [partialSections.nonempty](../../../../../mathematics/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean/declarations/partialsections-nonempty--2d92de8cf829299871b790b0.md) | 71 | `result-track:2d92de8cf829299871b790b02242e638d3c15ba18bf356850ae4a52c23c3b5a9` |
| 5 | `theorem` | [partialSections.directed](../../../../../mathematics/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean/declarations/partialsections-directed--1b9b0d20ec6157de808a0553.md) | 87 | `result-track:1b9b0d20ec6157de808a0553f9e089eeccf2325b307ea98ebac915e8c0254934` |
| 6 | `theorem` | [partialSections.closed](../../../../../mathematics/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean/declarations/partialsections-closed--32bb9fbffa9e0d4c57d45c4f.md) | 111 | `result-track:32bb9fbffa9e0d4c57d45c4fbb6585a283779d3ca3f0c68c1b264621f95fa44b` |
| 7 | `theorem` | [nonempty_limitCone_of_compact_t2_cofiltered_system](../../../../../mathematics/Topology/GeneralTopology/Konig/Variantf163229e6104b564ceaac001bbec114a7c588d30a135bc13982cc79c617f1800.lean/declarations/nonempty-limitcone-of-compact-t2-cofiltered-system--24a360075e66fe9ee80d0304.md) | 126 | `result-track:24a360075e66fe9ee80d030465a8ec94931e7a384fb2899be061b8356c5c00d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
