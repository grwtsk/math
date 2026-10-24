# Verification target: GRWTSK.Topology.GeneralTopology.Konig.Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c40e5e259acb028ad65887557e9363cec528205",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c40e5e259acb028ad65887557e9363cec528205`.

Source path: `GRWTSK/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean.json)

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
| 1 | `abbrev` | [FiniteDiagramArrow](../../../../../mathematics/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean/declarations/finitediagramarrow--b8911b8660e11b196beb0357.md) | 61 | `declaration-track:b8911b8660e11b196beb0357bf2fa52f85ea58f4d5f5a25f1cf0ed1fb96dfdb6` |
| 2 | `abbrev` | [FiniteDiagram](../../../../../mathematics/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean/declarations/finitediagram--477209fb15ea9b849e6885a3.md) | 65 | `declaration-track:477209fb15ea9b849e6885a3cdcbf0560c9a143493f0a19ec3e0d5a7ab34092e` |
| 3 | `def` | [partialSections](../../../../../mathematics/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean/declarations/partialsections--485639117e1e523fe6d734a9.md) | 73 | `declaration-track:485639117e1e523fe6d734a9599d53199fd86fd50a3c9f98e129096b2b66ebfa` |
| 4 | `theorem` | [partialSections.nonempty](../../../../../mathematics/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean/declarations/partialsections-nonempty--812ca7309d1fbeefe3507fb6.md) | 79 | `result-track:812ca7309d1fbeefe3507fb6118e82818c4d9d89cd42d1d92d78cfa727358c8f` |
| 5 | `theorem` | [partialSections.directed](../../../../../mathematics/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean/declarations/partialsections-directed--28c0d85f2d1093232b518101.md) | 95 | `result-track:28c0d85f2d1093232b51810178a5f8a9f41a1da0f1488fd24bcc2cb356b8bd28` |
| 6 | `theorem` | [partialSections.closed](../../../../../mathematics/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean/declarations/partialsections-closed--f854d5109bbc735dedc07b81.md) | 119 | `result-track:f854d5109bbc735dedc07b81c874805c6ecde5fe3ae6f55dae3667c94c7fee08` |
| 7 | `theorem` | [nonempty_limitCone_of_compact_t2_cofiltered_system](../../../../../mathematics/Topology/GeneralTopology/Konig/Variant0f6456fc9d00f8d0ea9f37deb7d0dd5c30f9da0b4227c3d2448fe14f8c921e3c.lean/declarations/nonempty-limitcone-of-compact-t2-cofiltered-system--fe6cbe1fd6ecf435fc32fd8f.md) | 134 | `result-track:fe6cbe1fd6ecf435fc32fd8fb17d744fbf01dcd89f65ee897edbd1302544720a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
