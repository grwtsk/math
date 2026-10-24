# Verification target: GRWTSK.Topology.GeneralTopology.Height.Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0084311cc14e6268b2c1eb2784f20ef008828a44",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0084311cc14e6268b2c1eb2784f20ef008828a44`.

Source path: `GRWTSK/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/subchain--4b64e2881dec57695e48198d.md) | 67 | `declaration-track:4b64e2881dec57695e48198dd171d6be4ed8e52425f401071c44102dfc125cbe` |
| 2 | `theorem` | [nil_mem_subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/nil-mem-subchain--e853097bb50ecfdaa3b696d7.md) | 71 | `result-track:e853097bb50ecfdaa3b696d7c2ab7e99f1174d764835cf80d32bd16c1b785cf5` |
| 3 | `theorem` | [cons_mem_subchain_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/cons-mem-subchain-iff--4e0c40f41f5fd13a0b9fb756.md) | 75 | `result-track:4e0c40f41f5fd13a0b9fb7561869a1759b79fa716b7e1a2bb9ad3437c6a42ba4` |
| 4 | `theorem` | [singleton_mem_subchain_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/singleton-mem-subchain-iff--fe7f0d8d9f62391048306940.md) | 81 | `result-track:fe7f0d8d9f62391048306940760cf80256ee6d1f9c802ba0a015e6f4f9667ca7` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/instance--49197dd7f869dabdce7fcf78.md) | 83 | `declaration-track:49197dd7f869dabdce7fcf7870a7f4fe5baf914dde07c4d0afbb3e5bf0ce2334` |
| 6 | `def` | [chainHeight](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight--856555734333c2c9db8c3711.md) | 89 | `declaration-track:856555734333c2c9db8c3711082283ed6f91d8a089dd480b14bd3c1f9c94c61e` |
| 7 | `theorem` | [chainHeight_eq_iSup_subtype](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-eq-isup-subtype--4e0e09613681b43eabb58500.md) | 92 | `result-track:4e0e09613681b43eabb58500e216d3f076f814dc312a68e6387dfb8de6e5daf8` |
| 8 | `theorem` | [exists_chain_of_le_chainHeight](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/exists-chain-of-le-chainheight--e0d2685ae747af981b9def27.md) | 95 | `result-track:e0d2685ae747af981b9def2770ed6bdefe267e19cbab63dd379a1a0f63da6e3d` |
| 9 | `theorem` | [le_chainHeight_TFAE](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/le-chainheight-tfae--007ebb01d049ac90a5403f42.md) | 110 | `result-track:007ebb01d049ac90a5403f4269995a34fb2bbf9da991a79451f1996a72e1b69c` |
| 10 | `theorem` | [le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/le-chainheight-iff--f110e0c74a6f5f4ded0a536c.md) | 119 | `result-track:f110e0c74a6f5f4ded0a536c7b8d506b2155e3358e9d2659bc2cb7c1436d341b` |
| 11 | `theorem` | [length_le_chainHeight_of_mem_subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/length-le-chainheight-of-mem-subchain--601a878b62482bfde5dca598.md) | 122 | `result-track:601a878b62482bfde5dca59874503405b55c94564e97882f278ac2a176454787` |
| 12 | `theorem` | [chainHeight_eq_top_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-eq-top-iff--628f6396389cad0c71759fc2.md) | 125 | `result-track:628f6396389cad0c71759fc2daf9069bb9ac0f21ee9951d5c196373860637674` |
| 13 | `theorem` | [one_le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/one-le-chainheight-iff--5aedb3cda41b7978de2bd005.md) | 132 | `result-track:5aedb3cda41b7978de2bd005a4498710c7a113a66ab656836b6ad2c49049d8ca` |
| 14 | `theorem` | [chainHeight_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-eq-zero-iff--7353b7ab2219bb9f26b92f61.md) | 138 | `result-track:7353b7ab2219bb9f26b92f61d09cb45d7f2e8959b6f4623b88e28fbbf2288553` |
| 15 | `theorem` | [chainHeight_empty](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-empty--6691c26f5927c3b86fa0f032.md) | 143 | `result-track:6691c26f5927c3b86fa0f0325d42e0d6b75bd6f85704d40a19bd1ab5a5c39ef8` |
| 16 | `theorem` | [chainHeight_of_isEmpty](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-of-isempty--0e1db2dad0764b65a7cd6513.md) | 147 | `result-track:0e1db2dad0764b65a7cd6513e37ee6853bc55e73e89eaa30978226af151470a2` |
| 17 | `theorem` | [le_chainHeight_add_nat_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/le-chainheight-add-nat-iff--0a80ec5453962d82c8d3e17d.md) | 150 | `result-track:0a80ec5453962d82c8d3e17dec2954239b799d1add7bd622f46503cceef4eecd` |
| 18 | `theorem` | [chainHeight_add_le_chainHeight_add](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-add-le-chainheight-add--6b3d9e721dc403a05dbab66e.md) | 154 | `result-track:6b3d9e721dc403a05dbab66e910fbce3f3ca1e0113fe1c1a0b825580602cb6c1` |
| 19 | `theorem` | [chainHeight_le_chainHeight_TFAE](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-le-chainheight-tfae--4ecbb0b60b0eb8402caea99d.md) | 178 | `result-track:4ecbb0b60b0eb8402caea99d260ea4a2359c5ea9f14262603d671e7bdd10c5e3` |
| 20 | `theorem` | [chainHeight_le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-le-chainheight-iff--c79385ec13588cc7d49474b3.md) | 188 | `result-track:c79385ec13588cc7d49474b3760865e1951b982432389b1ddf14ef225d462c3e` |
| 21 | `theorem` | [chainHeight_le_chainHeight_iff_le](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-le-chainheight-iff-le--2c9db4670a0347b1da667c9a.md) | 192 | `result-track:2c9db4670a0347b1da667c9a74d71e6a6927379d52d6f5266e918648cae646c5` |
| 22 | `theorem` | [chainHeight_mono](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-mono--2e31c0464eedfcaf554eea62.md) | 196 | `result-track:2e31c0464eedfcaf554eea6277754195a25a4bd1474fc553d19bc3c2db39c827` |
| 23 | `theorem` | [chainHeight_image](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-image--b78b9fd63fcd391d9711d984.md) | 199 | `result-track:b78b9fd63fcd391d9711d9847af5d0446aa29d55c81dd29ca7e56775ab25e673` |
| 24 | `theorem` | [chainHeight_dual](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-dual--485b91cb5a2d5332a2316cd1.md) | 230 | `result-track:485b91cb5a2d5332a2316cd1b542a78d70ed05a6cb5ff08f25f95d63b5b7f9a8` |
| 25 | `theorem` | [chainHeight_eq_iSup_Ici](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-eq-isup-ici--f868ce0355ef806a5958a96b.md) | 243 | `result-track:f868ce0355ef806a5958a96b6f7678fc5aad6d56149c1bf1878a02871794f58f` |
| 26 | `theorem` | [chainHeight_eq_iSup_Iic](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-eq-isup-iic--bf6ffcf06f7c98d335fe0f6f.md) | 258 | `result-track:bf6ffcf06f7c98d335fe0f6fe50536440e0b56af1fbfdeb9f6643bddb2fca543` |
| 27 | `theorem` | [chainHeight_insert_of_forall_gt](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-insert-of-forall-gt--1c4266608b0330b3b0cbe5cd.md) | 265 | `result-track:1c4266608b0330b3b0cbe5cdbaae87fd0eb78beda1f06a282d47cc08af0b6a96` |
| 28 | `theorem` | [chainHeight_insert_of_forall_lt](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-insert-of-forall-lt--8ba4fabfe312265fa920b907.md) | 286 | `result-track:8ba4fabfe312265fa920b90718225918986a6e8002e54e47ff67514230724c4e` |
| 29 | `theorem` | [chainHeight_union_le](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-union-le--a5d58aae5ad578a36a35f56d.md) | 291 | `result-track:a5d58aae5ad578a36a35f56d1561ca8e6eb99ca4edc0a285215eb43a91a19ddb` |
| 30 | `theorem` | [chainHeight_union_eq](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/chainheight-union-eq--f3851a88c0f943943629a088.md) | 308 | `result-track:f3851a88c0f943943629a08891f2870288554732f74b1812fad000cd40b5bcfd` |
| 31 | `theorem` | [wellFoundedGT_of_chainHeight_ne_top](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/wellfoundedgt-of-chainheight-ne-top--e4c3843278380e4b29bdc009.md) | 326 | `result-track:e4c3843278380e4b29bdc009aef79582f196f06985fd1053c7559ac276855117` |
| 32 | `theorem` | [wellFoundedLT_of_chainHeight_ne_top](../../../../../mathematics/Topology/GeneralTopology/Height/Variantc47bb7036671ea8cdc8bae5b07ad188c45dc21d2ad955fc94b01ac792a7bda9a.lean/declarations/wellfoundedlt-of-chainheight-ne-top--3e9984b087f5551124cd58a2.md) | 340 | `result-track:3e9984b087f5551124cd58a26c7fa462d76e444b9630a599d82e59590496ef58` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
