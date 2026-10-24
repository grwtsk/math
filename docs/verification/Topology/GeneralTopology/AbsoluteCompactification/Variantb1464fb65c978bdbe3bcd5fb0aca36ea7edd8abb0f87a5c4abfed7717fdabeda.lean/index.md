# Verification target: GRWTSK.Topology.GeneralTopology.AbsoluteCompactification.Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f5626481d1c8e45b51899c26e6b31908a7663a2c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f5626481d1c8e45b51899c26e6b31908a7663a2c`.

Source path: `GRWTSK/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Compactness.Compact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Projection.IncidenceAnchorNetwork` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [realizedIncidences](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean/declarations/realizedincidences--f47f1837c8bac01980a50c29.md) | 31 | `declaration-track:f47f1837c8bac01980a50c29280c91099c4c00b457a33897b16cc50c87b0cd09` |
| 2 | `def` | [AbsoluteKnowledgeCompactification](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean/declarations/absoluteknowledgecompactification--cad10ba73772a35a8aa93112.md) | 41 | `declaration-track:cad10ba73772a35a8aa93112ba589aecbaa3b7af4a2a9144bd12a1aedeb42ed2` |
| 3 | `theorem` | [realized_mem_absoluteCompactification](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean/declarations/realized-mem-absolutecompactification--60ac6972a62e398b731b377b.md) | 48 | `result-track:60ac6972a62e398b731b377b1ffe92db338e6ac76787c656a2d737ba9590ba78` |
| 4 | `theorem` | [absoluteKnowledgeCompactification_isCompact](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean/declarations/absoluteknowledgecompactification-iscompact--e1a507dc9300a3380a0f5bba.md) | 60 | `result-track:e1a507dc9300a3380a0f5bba74dacb19b9ab57d22253e1a9d3b96ac816018c9b` |
| 5 | `theorem` | [incidenceSingleton_mem_absoluteCompactification](../../../../../mathematics/Topology/GeneralTopology/AbsoluteCompactification/Variantb1464fb65c978bdbe3bcd5fb0aca36ea7edd8abb0f87a5c4abfed7717fdabeda.lean/declarations/incidencesingleton-mem-absolutecompactification--7f8bd9ac9bdfc761526f5194.md) | 71 | `result-track:7f8bd9ac9bdfc761526f519445949651e82734c98b7567932b2d7f03a1361009` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
