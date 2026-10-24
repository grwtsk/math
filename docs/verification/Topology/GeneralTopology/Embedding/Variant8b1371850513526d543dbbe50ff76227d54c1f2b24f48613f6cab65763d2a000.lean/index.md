# Verification target: GRWTSK.Topology.GeneralTopology.Embedding.Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e1b912a94eff37c06968a93b3fe0c9c04c983dc1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e1b912a94eff37c06968a93b3fe0c9c04c983dc1`.

Source path: `GRWTSK/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.Topology.Continuous` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Homeomorphism](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/declarations/homeomorphism--92bd500bee2f9ec7cb00317a.md) | 8 | `declaration-track:92bd500bee2f9ec7cb00317aa26105ba6ec5aff8ca405bd2da04f5262a12bc75` |
| 2 | `theorem` | [Homeomorphism.injective](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/declarations/homeomorphism-injective--5c6bd196697e6f7305513f3e.md) | 19 | `result-track:5c6bd196697e6f7305513f3e1cb2b790166b072943963cf0fe6c8570a491a534` |
| 3 | `theorem` | [Homeomorphism.surjective](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/declarations/homeomorphism-surjective--ca979491c9843cdce8c0ca80.md) | 30 | `result-track:ca979491c9843cdce8c0ca80365356abe9e32fe9e94a41316e7e1bdada34605c` |
| 4 | `abbrev` | [FunctionImage](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/declarations/functionimage--c723170819ddf6d693701913.md) | 39 | `declaration-track:c723170819ddf6d693701913f238609902af2e06b0b767ffcadcb824a07c2b10` |
| 5 | `structure` | [TopologicalEmbedding](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/declarations/topologicalembedding--88fe58e4f93c8a085dded2f3.md) | 48 | `declaration-track:88fe58e4f93c8a085dded2f39adff18f1882ce7cc46da5135aaf0144c23be1d1` |
| 6 | `theorem` | [TopologicalEmbedding.injective](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/declarations/topologicalembedding-injective--5bd9dab7ba6d1c99269b532b.md) | 60 | `result-track:5bd9dab7ba6d1c99269b532b46ea671bd5b81d5357ddbdac933e18868abc22a1` |
| 7 | `theorem` | [TopologicalEmbedding.continuous](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/declarations/topologicalembedding-continuous--f6908235587cb8c827e538f7.md) | 78 | `result-track:f6908235587cb8c827e538f7a9e6f11ef0df232b864a27528526a1f819a5fbcf` |
| 8 | `theorem` | [TopologicalEmbedding.continuous_toFun](../../../../../mathematics/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/declarations/topologicalembedding-continuous-tofun--85e605490d29432dd9f13ad9.md) | 91 | `result-track:85e605490d29432dd9f13ad962e247ab25c17457335850870d0cd690bccc848e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
