# Verification target: GRWTSK.Topology.GeneralTopology.CocompactMap.Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa55024fcd8108469d6e0621f55ad636a726c1d4",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa55024fcd8108469d6e0621f55ad636a726c1d4`.

Source path: `GRWTSK/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.ContinuousFunction.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CocompactMap](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/cocompactmap--6820433047d99be25cd7d6a0.md) | 33 | `declaration-track:6820433047d99be25cd7d6a0c350e3a7135a16888396a39ac892cbcb3d1ed29d` |
| 2 | `class` | [CocompactMapClass](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/cocompactmapclass--bc21f52bb4cc6bdbfbe5a0e5.md) | 44 | `declaration-track:bc21f52bb4cc6bdbfbe5a0e57267bd782aaea79fb1aa9d535cd8479f60e6bed2` |
| 3 | `def` | [toCocompactMap](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/tococompactmap--9d20935eb0c9d3934b8866fa.md) | 59 | `declaration-track:9d20935eb0c9d3934b8866fa4888cd18021b58efb508468ca946b79a8bf67eb8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/instance--483a2813d98ea6b27ff1e521.md) | 63 | `declaration-track:483a2813d98ea6b27ff1e521e0c26058f4122c307df1d4786326450ed1ec24f0` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/instance--62ca8b176292c803cb4110d2.md) | 77 | `declaration-track:62ca8b176292c803cb4110d2c874be0f83f73817064665ae9dd68bf7491a9237` |
| 6 | `theorem` | [coe_toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/coe-tocontinuousmap--6349eece6c64cde979f815ca.md) | 93 | `result-track:6349eece6c64cde979f815caaeebbeec4e5b6a709374844470bd8f1a9471b25e` |
| 7 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/ext--41e3d5502a59797004ebb2f7.md) | 98 | `result-track:41e3d5502a59797004ebb2f73a16aef19d0f72bae89a1a717cdb17ef5c749de8` |
| 8 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/copy--f8574c50595ffc13ed14760c.md) | 104 | `declaration-track:f8574c50595ffc13ed14760cfe2b470acfad8c5dd89aa09e691ee2d0dea2fa75` |
| 9 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/coe-copy--58068222fd9c1dccfa71aa65.md) | 115 | `result-track:58068222fd9c1dccfa71aa6599b8335089ae030d761cfe54762bae83c2083c5c` |
| 10 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/copy-eq--40650a8d5be5a60fc5d60e50.md) | 119 | `result-track:40650a8d5be5a60fc5d60e506580b923e61562f4fafb4689e5b0166e845a4882` |
| 11 | `theorem` | [coe_mk](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/coe-mk--ef9f4e94ff5218f0c4ef13a7.md) | 124 | `result-track:ef9f4e94ff5218f0c4ef13a7339e73ea4661e498ddade03465e855fdace0024a` |
| 12 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/id--47a67510691ba665540e649d.md) | 134 | `declaration-track:47a67510691ba665540e649d57f5e181c8665e27d5352e0a89dcbec64a609a68` |
| 13 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/coe-id--29929ff5cdf09438e6a59b09.md) | 139 | `result-track:29929ff5cdf09438e6a59b096b773c89ff149734e993a086a24f577f83e001b3` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/instance--bb0a0aaf93b05aa83fafbea6.md) | 145 | `declaration-track:bb0a0aaf93b05aa83fafbea61bdd079c195c9341a32dc73f66aa0072f406037d` |
| 15 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/comp--b68f548a13160ebe140dd509.md) | 149 | `declaration-track:b68f548a13160ebe140dd5091a2b34f2b13d1344e939d0a9564c1202c4aeba45` |
| 16 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/coe-comp--cf03067fc5ba9d8370c7ef7c.md) | 154 | `result-track:cf03067fc5ba9d8370c7ef7c3031e0fe0d43144ad88d8f038d8aa67b483bde8a` |
| 17 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/comp-apply--50548f4f9202c6fd2f626659.md) | 159 | `result-track:50548f4f9202c6fd2f62665901317a5c37286f96c690db2900906c250ce0665e` |
| 18 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/comp-assoc--397328b65c8302284203d622.md) | 164 | `result-track:397328b65c8302284203d6223c9cb39fcec038f8be83128093622b33759ab9ac` |
| 19 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/id-comp--9f5fe69a128b8d6c9af462a9.md) | 170 | `result-track:9f5fe69a128b8d6c9af462a984943f1b473fcc8efc1b1675575635822667257e` |
| 20 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/comp-id--73d8cea298bfed51feac98a7.md) | 175 | `result-track:73d8cea298bfed51feac98a7ee5dd766b587d32ece5ccbac923ae98d496cc3fa` |
| 21 | `theorem` | [tendsto_of_forall_preimage](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/tendsto-of-forall-preimage--5eacff3b84b644b0b431c555.md) | 179 | `result-track:5eacff3b84b644b0b431c555a5abb66b28e1ba8b1a503b694c40a9d4e81d233a` |
| 22 | `theorem` | [isCompact_preimage](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/iscompact-preimage--b4e939766dd233d206ec086b.md) | 188 | `result-track:b4e939766dd233d206ec086b2fc29122f5277d07c9944b70d88bdd55b7b47ebc` |
| 23 | `def` | [Homeomorph.toCocompactMap](../../../../../mathematics/Topology/GeneralTopology/CocompactMap/Variantf17760f6375572a474e71c01ceb373cefd86f85219b43c6cb282b6d882e09b75.lean/declarations/homeomorph-tococompactmap--901196ae3366e9c362f678a1.md) | 207 | `declaration-track:901196ae3366e9c362f678a13943ffacbcb1643844f13a210989050a99dc3563` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
