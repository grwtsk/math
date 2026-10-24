# Verification target: GRWTSK.Topology.GeneralTopology.Height.Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1687dcf21e2a1ff0459efc51d6feaeac446ed555",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1687dcf21e2a1ff0459efc51d6feaeac446ed555`.

Source path: `GRWTSK/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.ENat.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.OrderIsoNat` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.TFAE` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/subchain--acaa85107df8ec9ad08f0710.md) | 60 | `declaration-track:acaa85107df8ec9ad08f071008a98e5eb13e5012fdf97e9c726c86155462fcf0` |
| 2 | `theorem` | [nil_mem_subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/nil-mem-subchain--2ddd39524796611ad0ab848d.md) | 65 | `result-track:2ddd39524796611ad0ab848d3f9ccdbaeef120ac5a0d8ba92ae0f34c6bb4b56d` |
| 3 | `theorem` | [cons_mem_subchain_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/cons-mem-subchain-iff--c815d480d71f318e4d757dc0.md) | 70 | `result-track:c815d480d71f318e4d757dc0df58686d388157c170261610202f7e66b4feda56` |
| 4 | `theorem` | [singleton_mem_subchain_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/singleton-mem-subchain-iff--5b0433f44764929e4d1b65fc.md) | 77 | `result-track:5b0433f44764929e4d1b65fc1a7bbf821dc2ccc489248575eaec5fbd4a10c377` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/instance--efbf73e5e8e4eaff4a72b1d4.md) | 79 | `declaration-track:efbf73e5e8e4eaff4a72b1d48fb7e31cc41f6979b797082e4d755535b925be45` |
| 6 | `def` | [chainHeight](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight--746406faf077f72d91830c72.md) | 85 | `declaration-track:746406faf077f72d91830c721b4df534c4312ee3b8d9fee477202bdfd2f48f68` |
| 7 | `theorem` | [chainHeight_eq_iSup_subtype](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-eq-isup-subtype--39f66278ba4b592d99df0135.md) | 89 | `result-track:39f66278ba4b592d99df0135ec5016a9ed0983716292ca10ee18bc5d83415820` |
| 8 | `theorem` | [exists_chain_of_le_chainHeight](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/exists-chain-of-le-chainheight--796233761315cf2faf132a83.md) | 93 | `result-track:796233761315cf2faf132a8325c192e2db0bf5d5cf3d5d0e5a45fa6ebb2f3359` |
| 9 | `theorem` | [le_chainHeight_TFAE](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/le-chainheight-tfae--d420635e65e77ae3bb02de26.md) | 109 | `result-track:d420635e65e77ae3bb02de26ad67433f27ac5b0dc925c9f69feae2db4cd14a50` |
| 10 | `theorem` | [le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/le-chainheight-iff--c6e2d211950bbedc03b0d4a8.md) | 119 | `result-track:c6e2d211950bbedc03b0d4a8d9f44ad0a3e34d74245101ac693b9614d7548ebe` |
| 11 | `theorem` | [length_le_chainHeight_of_mem_subchain](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/length-le-chainheight-of-mem-subchain--deb5ff9cc64f102dcb6a54eb.md) | 123 | `result-track:deb5ff9cc64f102dcb6a54eb4d68e0af9ba2683180ea1e86e2bc0b06a3d22de4` |
| 12 | `theorem` | [chainHeight_eq_top_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-eq-top-iff--088cc3de829e8cd1b8ab1ec3.md) | 127 | `result-track:088cc3de829e8cd1b8ab1ec37bec442693401dfd6001b782b375759a7a163c93` |
| 13 | `theorem` | [one_le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/one-le-chainheight-iff--a84c40e9effcb440f02763b4.md) | 135 | `result-track:a84c40e9effcb440f02763b429f004ec6044c03ed8b6a60ffbe6f89a33d69793` |
| 14 | `theorem` | [chainHeight_eq_zero_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-eq-zero-iff--093d0d351b2342d1749519b2.md) | 142 | `result-track:093d0d351b2342d1749519b22ab539f3ca51da0186343f5ee8cfa5720bd4ddde` |
| 15 | `theorem` | [chainHeight_empty](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-empty--7fbe4302222c6bf7c91010ef.md) | 148 | `result-track:7fbe4302222c6bf7c91010ef7d9ec1f6b463481f9c29571633572b6f7343112a` |
| 16 | `theorem` | [chainHeight_of_isEmpty](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-of-isempty--4ac9c1d20829690b5a6a371d.md) | 153 | `result-track:4ac9c1d20829690b5a6a371db84bfa127374bfa05e50fca581f71d07adacdcf6` |
| 17 | `theorem` | [le_chainHeight_add_nat_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/le-chainheight-add-nat-iff--cafd7633e32e486d03ba2358.md) | 157 | `result-track:cafd7633e32e486d03ba235883b17aba21032f9a4f010788f918082305cd6ac6` |
| 18 | `theorem` | [chainHeight_add_le_chainHeight_add](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-add-le-chainheight-add--0d7e334d72325876df503320.md) | 162 | `result-track:0d7e334d72325876df503320632dc8298ba3fcd771cdc64fae853631680894b9` |
| 19 | `theorem` | [chainHeight_le_chainHeight_TFAE](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-le-chainheight-tfae--7dcaf2cc20ff20a7e9ec58a0.md) | 187 | `result-track:7dcaf2cc20ff20a7e9ec58a057126811247c2c953e77b8469652bed5f7e4a499` |
| 20 | `theorem` | [chainHeight_le_chainHeight_iff](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-le-chainheight-iff--5ef0d348d9e4d415b711dd12.md) | 198 | `result-track:5ef0d348d9e4d415b711dd12875c0f81ba333989b8810a480e7f79289155268e` |
| 21 | `theorem` | [chainHeight_le_chainHeight_iff_le](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-le-chainheight-iff-le--a8da616b6e40795403c111e1.md) | 203 | `result-track:a8da616b6e40795403c111e1b338a22f3f8404ebc15c39678763ab5dfcdebff7` |
| 22 | `theorem` | [chainHeight_mono](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-mono--b5263bfee3ed7ebfa964ac02.md) | 208 | `result-track:b5263bfee3ed7ebfa964ac02482d2a7ecdfb55c89030f5995093de09670a4cdc` |
| 23 | `theorem` | [chainHeight_image](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-image--0ef841c78b79c7f431911764.md) | 212 | `result-track:0ef841c78b79c7f4319117646b96f09ad908738a0dd294cb6b8ab2b780daa59b` |
| 24 | `theorem` | [chainHeight_dual](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-dual--001f682c628bb1d4df8f02c3.md) | 243 | `result-track:001f682c628bb1d4df8f02c3d1c1c7ecb22ddfec151663660bb699ce8fad7522` |
| 25 | `theorem` | [chainHeight_eq_iSup_Ici](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-eq-isup-ici--0743c5961e0fae22dbbdb900.md) | 257 | `result-track:0743c5961e0fae22dbbdb90061ca2b82e668dc5af17f67efa7286f4c6b685021` |
| 26 | `theorem` | [chainHeight_eq_iSup_Iic](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-eq-isup-iic--9d1b355a92ab499bf96d28ae.md) | 273 | `result-track:9d1b355a92ab499bf96d28ae95b635820725d45ce822db91fd43ef0ac82762ab` |
| 27 | `theorem` | [chainHeight_insert_of_forall_gt](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-insert-of-forall-gt--025bf7edb967c5b892234b2b.md) | 281 | `result-track:025bf7edb967c5b892234b2b7e048aadea91cf86914bf65bc513e631bfb3a7aa` |
| 28 | `theorem` | [chainHeight_insert_of_forall_lt](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-insert-of-forall-lt--4c15ade6f328d3ddef83dc3a.md) | 309 | `result-track:4c15ade6f328d3ddef83dc3ab934c6409bbf4a67a14253f18de4297ce8274449` |
| 29 | `theorem` | [chainHeight_union_le](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-union-le--2c63c84ac38ddb358a27fd58.md) | 315 | `result-track:2c63c84ac38ddb358a27fd58da011f975932d6e3de692c734e7bcc4ac4317a0b` |
| 30 | `theorem` | [chainHeight_union_eq](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/chainheight-union-eq--998231c71ddd361ebe8469f0.md) | 332 | `result-track:998231c71ddd361ebe8469f0d3f47f5ee23cdf789ecfd1493d4b95e4b9b2415f` |
| 31 | `theorem` | [wellFoundedGT_of_chainHeight_ne_top](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/wellfoundedgt-of-chainheight-ne-top--8dbf6ff9f62c20a155d968f3.md) | 351 | `result-track:8dbf6ff9f62c20a155d968f32bddfabea0e467d79b48a141c7bc330d6a1b68b2` |
| 32 | `theorem` | [wellFoundedLT_of_chainHeight_ne_top](../../../../../mathematics/Topology/GeneralTopology/Height/Variantf4cf46b5ad1b2139b8ca878515cc1d869832000333e2e22ae5d53855bbea9d0e.lean/declarations/wellfoundedlt-of-chainheight-ne-top--d39173eb91aa23820bfe82e0.md) | 372 | `result-track:d39173eb91aa23820bfe82e0866d421ce63f6a6fbcb06f0438727e569944552a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
