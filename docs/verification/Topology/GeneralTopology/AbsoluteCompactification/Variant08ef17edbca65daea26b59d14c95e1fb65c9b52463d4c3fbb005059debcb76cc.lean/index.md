# Verification target: GRWTSK.Topology.GeneralTopology.AbsoluteCompactification.Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2955293ae5dc31dbd106722c813ea57973e29a46",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AbsoluteCompactification/Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2955293ae5dc31dbd106722c813ea57973e29a46`.

Source path: `GRWTSK/Topology/GeneralTopology/AbsoluteCompactification/Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AbsoluteCompactification/Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.Compact` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.IncidenceAnchorNetwork` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realizedIncidences](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc.lean/declarations/realizedincidences--d5bd7f196cfca4dcaa28524d.md) | 23 | `declaration-track:d5bd7f196cfca4dcaa28524da993c775ed792b299905623f8c5694094d654099` |
| 2 | `def` | [AbsoluteKnowledgeCompactification](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc.lean/declarations/absoluteknowledgecompactification--5ecd10904bc7ea626e2dbee8.md) | 33 | `declaration-track:5ecd10904bc7ea626e2dbee8ad0ccbae980a3302f3264d489e28412a538b2257` |
| 3 | `theorem` | [realized_mem_absoluteCompactification](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc.lean/declarations/realized-mem-absolutecompactification--dad56034df62d6d21a59f63e.md) | 40 | `result-track:dad56034df62d6d21a59f63e71a8ade874bc5c0d48d6288a77a87bba7c48884e` |
| 4 | `theorem` | [absoluteKnowledgeCompactification_isCompact](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc.lean/declarations/absoluteknowledgecompactification-iscompact--28ae3d5df6faec41c216e45f.md) | 52 | `result-track:28ae3d5df6faec41c216e45f327af4be2585cc084b40d132399fa65a184ac1fa` |
| 5 | `theorem` | [incidenceSingleton_mem_absoluteCompactification](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variant08ef17edbca65daea26b59d14c95e1fb65c9b52463d4c3fbb005059debcb76cc.lean/declarations/incidencesingleton-mem-absolutecompactification--ae40ea57045598cfa8a0f197.md) | 63 | `result-track:ae40ea57045598cfa8a0f197b78706c6ec9f29f5dbd74288b5051a950b83da87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
