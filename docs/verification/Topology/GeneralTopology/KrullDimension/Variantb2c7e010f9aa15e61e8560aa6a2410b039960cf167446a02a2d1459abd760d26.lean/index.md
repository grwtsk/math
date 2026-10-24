# Verification target: GRWTSK.Topology.GeneralTopology.KrullDimension.Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9f90274d2b431bd162efb7d07997c59bb83ba650",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/KrullDimension/Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9f90274d2b431bd162efb7d07997c59bb83ba650`.

Source path: `GRWTSK/Topology/GeneralTopology/KrullDimension/Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/KrullDimension/Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.KrullDimension` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homeomorph.Lemmas` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Closeds` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [topologicalKrullDim](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26.lean/declarations/topologicalkrulldim--7250669e202ff7f3cfe4e175.md) | 24 | `declaration-track:7250669e202ff7f3cfe4e1755ff5f02cc3d2015da0ea97077d5fe86a121e0e58` |
| 2 | `def` | [IrreducibleCloseds.map](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26.lean/declarations/irreduciblecloseds-map--1b55cca51090721f396102ef.md) | 34 | `declaration-track:1b55cca51090721f396102ef8e14012a0ddb8110a88f1fc17d5b2e10c7322f5c` |
| 3 | `lemma` | [IrreducibleCloseds.map_strictMono](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26.lean/declarations/irreduciblecloseds-map-strictmono--fe924aeca9ea58303d5debde.md) | 44 | `result-track:fe924aeca9ea58303d5debdee4987f40f9d15dccac8b730cf6e675b51d317789` |
| 4 | `theorem` | [IsClosedEmbedding.topologicalKrullDim_le](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26.lean/declarations/isclosedembedding-topologicalkrulldim-le--b03993d610c2504563513b71.md) | 52 | `result-track:b03993d610c2504563513b71c95a7dc6f0bfb13e9b395f1b32340f18a6d092c4` |
| 5 | `theorem` | [IsHomeomorph.topologicalKrullDim_eq](../../../../../mathematics/Topology/GeneralTopology/KrullDimension/Variantb2c7e010f9aa15e61e8560aa6a2410b039960cf167446a02a2d1459abd760d26.lean/declarations/ishomeomorph-topologicalkrulldim-eq--d0215a4a2dc16c3c68d6287d.md) | 57 | `result-track:d0215a4a2dc16c3c68d6287dcc65a9b137590a18da977e275d287c01d5b612e2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
