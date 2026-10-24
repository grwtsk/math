# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da1d0a56bc020c8f340fce7f7038253f155eae20",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da1d0a56bc020c8f340fce7f7038253f155eae20`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.LocalInvariantProperties` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sheaves.LocalPredicate` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [TopCat.of.chartedSpace](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/declarations/topcat-of-chartedspace--e3674020c4324d952ebe9dd5.md) | 51 | `declaration-track:e3674020c4324d952ebe9dd51b49fdcf7c5089b279dba18ea02b3629e1de3cd2` |
| 2 | `instance` | [TopCat.of.hasGroupoid](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/declarations/topcat-of-hasgroupoid--0526e00136b73730c5e61e3f.md) | 54 | `declaration-track:0526e00136b73730c5e61e3ff4a4ee675142154298562b62372d218b27aea952` |
| 3 | `def` | [StructureGroupoid.LocalInvariantProp.localPredicate](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/declarations/structuregroupoid-localinvariantprop-localpredicate--a005729e1d67be5a14df51cb.md) | 60 | `declaration-track:a005729e1d67be5a14df51cb01dc3b0255fffd9c8841c7e39a626b277ea1d9e3` |
| 4 | `def` | [StructureGroupoid.LocalInvariantProp.sheaf](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/declarations/structuregroupoid-localinvariantprop-sheaf--fbe7e1b2ffe2754d72dcfc9d.md) | 83 | `declaration-track:fbe7e1b2ffe2754d72dcfc9ddae198510001cfcb6a1251eded20fd83324b7d96` |
| 5 | `instance` | [StructureGroupoid.LocalInvariantProp.sheafHasCoeToFun](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/declarations/structuregroupoid-localinvariantprop-sheafhascoetofun--0554ffecd1b7e401226235f8.md) | 87 | `declaration-track:0554ffecd1b7e401226235f81c06a7cb3db9e986b4e85acae00f7257c22d96c8` |
| 6 | `theorem` | [StructureGroupoid.LocalInvariantProp.section_spec](../../../../../mathematics/Topology/GeneralTopology/Basic/Variant9d7e0b709e59df687468218824ffa41d8f362f092ed6d844f9714c51f1dfe0ac.lean/declarations/structuregroupoid-localinvariantprop-section-spec--1f841f8c87f212caf8826aae.md) | 91 | `result-track:1f841f8c87f212caf8826aaeb927feef8d5d01f2d9e07f7d1ccf6fcda865fc4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
