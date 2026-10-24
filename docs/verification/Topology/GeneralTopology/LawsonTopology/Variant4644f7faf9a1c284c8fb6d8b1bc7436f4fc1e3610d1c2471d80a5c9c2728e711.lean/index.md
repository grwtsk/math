# Verification target: GRWTSK.Topology.GeneralTopology.LawsonTopology.Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4485e3840a0ccec4707acf83abfc0b47384444a0",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4485e3840a0ccec4707acf83abfc0b47384444a0`.

Source path: `GRWTSK/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.LowerUpperTopology` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.ScottTopology` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/lawson--3ed0b3d2c976b6d55d5a0417.md) | 72 | `declaration-track:3ed0b3d2c976b6d55d5a04175a14b6cb2b17d535188e84e8d69d24aaaafede31` |
| 2 | `class` | [IsLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/islawson--4a7ca574abd7c94931510dce.md) | 80 | `declaration-track:4a7ca574abd7c94931510dceec1f663212d4ae5d314924e5a491758967802b2e` |
| 3 | `def` | [lawsonBasis](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/lawsonbasis--d421ef23af238fd530410648.md) | 91 | `declaration-track:d421ef23af238fd530410648ce69a6a97d98c981a466ab548844eb396ae38780` |
| 4 | `theorem` | [isTopologicalBasis](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/istopologicalbasis--56edbacaaebd2c297add0d22.md) | 94 | `result-track:56edbacaaebd2c297add0d227c7994467e7dc283a1d47d7c8fae63c3fffb473d` |
| 5 | `def` | [WithLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/withlawson--ecefbbefb3260aa4813d15a9.md) | 118 | `declaration-track:ecefbbefb3260aa4813d15a9979629aff4ec19ea6be8d8c2c0344e701ba87e83` |
| 6 | `def` | [toLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/tolawson--ade45dfb709f4fa52b39b7da.md) | 123 | `declaration-track:ade45dfb709f4fa52b39b7da0ed3f08acd321eb7ccb4075822e9dfa5665dd9f7` |
| 7 | `def` | [ofLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/oflawson--f8731a89df4a18018c41f7ad.md) | 126 | `declaration-track:f8731a89df4a18018c41f7ada7d82c7e9739e42f9aba0f46d20f16a756866a34` |
| 8 | `lemma` | [to_Lawson_symm_eq](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/to-lawson-symm-eq--c0a0749d47307f932283fb8f.md) | 128 | `result-track:c0a0749d47307f932283fb8fa58aa5a8ab0fd2919ec2187b5395a36199794114` |
| 9 | `lemma` | [of_Lawson_symm_eq](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/of-lawson-symm-eq--a9ac843a23a6e2ec4f764da7.md) | 129 | `result-track:a9ac843a23a6e2ec4f764da767f4391e50ff198f8617d9d49f8777045b935af8` |
| 10 | `lemma` | [toLawson_ofLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/tolawson-oflawson--043a2a5c4b4caad201e913e3.md) | 130 | `result-track:043a2a5c4b4caad201e913e320401b40e79ed5b6d299229e29ffad53457d5779` |
| 11 | `lemma` | [ofLawson_toLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/oflawson-tolawson--1110cbc49ff76e37407a6569.md) | 131 | `result-track:1110cbc49ff76e37407a6569a7d49a67a4fa35af4aaff90e27ef62aa67c4d5b9` |
| 12 | `lemma` | [toLawson_inj](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/tolawson-inj--ba2c8ebe0caf4b42a2050559.md) | 133 | `result-track:ba2c8ebe0caf4b42a2050559984a4ffac073883c6be23c6de67e485f4de579e9` |
| 13 | `lemma` | [ofLawson_inj](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/oflawson-inj--327c16eae003bd7050759c23.md) | 135 | `result-track:327c16eae003bd7050759c23caf42efbf5c25d64fb96a98bd000dbcb4e60aa2d` |
| 14 | `def` | [rec](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/rec--f96c1af86540e24e295099c0.md) | 139 | `declaration-track:f96c1af86540e24e295099c074d679d1177aadb67727a77d17eba0d52eda8957` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/instance--ae0879979dd7f96c72d1adab.md) | 142 | `declaration-track:ae0879979dd7f96c72d1adab96e1f069788e73bd471f6bf77a8f1bd9dbcfcc6d` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/instance--c0ba9949c29cb558b07383a4.md) | 143 | `declaration-track:c0ba9949c29cb558b07383a4d6c6f1450cc1ece06b4b183658ba198632dd4756` |
| 17 | `instance` | [instPreorder](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/instpreorder--ce908829a4d5cbd18c37f8c4.md) | 147 | `declaration-track:ce908829a4d5cbd18c37f8c4e488b1d3766cabf4a7107b570fcaa554c910f7aa` |
| 18 | `instance` | [instTopologicalSpace](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/insttopologicalspace--2ab313435c832681fd355094.md) | 148 | `declaration-track:2ab313435c832681fd3550942313abcfc35f26695b1805393b4379ad51ccebf4` |
| 19 | `instance` | [instIsLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/instislawson--a51603ed976aa74edae8a1ba.md) | 149 | `declaration-track:a51603ed976aa74edae8a1babaed28cd4003b467f4e0b8cc7c0c6a1e11c9feff` |
| 20 | `def` | [homeomorph](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/homeomorph--2242b0420092ada3db17e9cb.md) | 153 | `declaration-track:2242b0420092ada3db17e9cb3980e7d77e6b8ec124c2158af1c5dca5dabecaff` |
| 21 | `theorem` | [isOpen_preimage_ofLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/isopen-preimage-oflawson--05c67a4ff7f1838f9b5291aa.md) | 156 | `result-track:05c67a4ff7f1838f9b5291aaf4da301d1b5c15ef885b6a2507c31001ca61c0e6` |
| 22 | `theorem` | [isClosed_preimage_ofLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/isclosed-preimage-oflawson--da278a6a2406cbfde5a223f3.md) | 159 | `result-track:da278a6a2406cbfde5a223f35f369711a9adbbf4175b57a00209f26c80066fa2` |
| 23 | `theorem` | [isOpen_def](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/isopen-def--2553514b02033a9ca07a20a8.md) | 162 | `result-track:2553514b02033a9ca07a20a8aa720ea297f2b30139a1ae30ebfc1942c313a361` |
| 24 | `lemma` | [lawson_le_scott](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/lawson-le-scott--48317a9df10d984ef739673a.md) | 172 | `result-track:48317a9df10d984ef739673a25ed585f3f28f365b9e45ee44d1750d55376c856` |
| 25 | `lemma` | [lawson_le_lower](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/lawson-le-lower--c3cea428999117869b93b218.md) | 174 | `result-track:c3cea428999117869b93b218b39a4beeeb0115c882cd985cf4146714f762ba4d` |
| 26 | `lemma` | [scottHausdorff_le_lawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/scotthausdorff-le-lawson--2996dd5e4c1be17878dd72d8.md) | 176 | `result-track:2996dd5e4c1be17878dd72d80cea85111fee9164be986a3f903064c1e0774695` |
| 27 | `lemma` | [lawsonClosed_of_scottClosed](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/lawsonclosed-of-scottclosed--377cd52401f05bd9030cc89a.md) | 179 | `result-track:377cd52401f05bd9030cc89a136f70da5135ca1b5a1db54de3697caf8487c070` |
| 28 | `lemma` | [lawsonClosed_of_lowerClosed](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/lawsonclosed-of-lowerclosed--6bab8fad62f97a3287783c69.md) | 182 | `result-track:6bab8fad62f97a3287783c69a358802788629ab70bb09b1e9736c16f5ba80004` |
| 29 | `lemma` | [lawsonOpen_iff_scottOpen_of_isUpperSet](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/lawsonopen-iff-scottopen-of-isupperset--2fbe4a06ee13250414a8e516.md) | 186 | `result-track:2fbe4a06ee13250414a8e516212f9fe727cddc5b91d1a180673543d05372d70d` |
| 30 | `lemma` | [isLawson_le_isScott](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/islawson-le-isscott--14f8bcfa6c6d35648cdb2942.md) | 194 | `result-track:14f8bcfa6c6d35648cdb2942fb71cc35e934de0b2bd81e51b4a2f6b3f3b91b6e` |
| 31 | `lemma` | [scottHausdorff_le_isLawson](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/scotthausdorff-le-islawson--5fef5f90dafbf7e88f4bfb7d.md) | 198 | `result-track:5fef5f90dafbf7e88f4bfb7dd53181da010b599ab0851564adacf80d0aa0e842` |
| 32 | `lemma` | [lawsonOpen_iff_scottOpen_of_isUpperSet'](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/lawsonopen-iff-scottopen-of-isupperset--db24ac0c4ae57e557367d289.md) | 203 | `result-track:db24ac0c4ae57e557367d289be5b369d83f3f166e15c1efe1988181a70d0524d` |
| 33 | `lemma` | [lawsonClosed_iff_scottClosed_of_isLowerSet](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/lawsonclosed-iff-scottclosed-of-islowerset--5f49a6acb46b475daa05c2c3.md) | 208 | `result-track:5f49a6acb46b475daa05c2c37ad59587a0a85c31553bbb763d50320d70269c43` |
| 34 | `lemma` | [lawsonClosed_iff_dirSupClosed_of_isLowerSet](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/lawsonclosed-iff-dirsupclosed-of-islowerset--a0e22c7239df8e85c07fc72b.md) | 215 | `result-track:a0e22c7239df8e85c07fc72b33a0c32aebd12276d013fa9c37e5353b089917c7` |
| 35 | `lemma` | [singleton_isClosed](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/singleton-isclosed--be16f115553fc8f01df33ef6.md) | 229 | `result-track:be16f115553fc8f01df33ef603fdedb4ba292be4550bf1f633bbe419be0757b0` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LawsonTopology/Variant4644f7faf9a1c284c8fb6d8b1bc7436f4fc1e3610d1c2471d80a5c9c2728e711.lean/declarations/instance--bf094874f611dbac4d55a6e9.md) | 241 | `declaration-track:bf094874f611dbac4d55a6e9e663b7c7a5c08ca98995c2cba0b3798ddcab5be2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
