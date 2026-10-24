# Verification target: GRWTSK.Topology.GeneralTopology.Ideals.Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9070af05da546ea5f420110123a6dcf95a8edaa6",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9070af05da546ea5f420110123a6dcf95a8edaa6`.

Source path: `GRWTSK/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Algebra` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Compact` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.UrysohnsLemma` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.RCLike.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Ring.Units` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.CharacterSpace` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/idealofset--efbef74e1d4b381ec8dfe1ca.md) | 85 | `declaration-track:efbef74e1d4b381ec8dfe1ca7be3ab93f69dffb9a96ddbb62ddbf02824c24fd4` |
| 2 | `theorem` | [idealOfSet_closed](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/idealofset-closed--05ea16f9e36df7a1a33191d7.md) | 91 | `result-track:05ea16f9e36df7a1a33191d7d674ab5eaa463600bd6720eb2cfa0c7861b00369` |
| 3 | `theorem` | [mem_idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/mem-idealofset--41e69d9bf85989976878b069.md) | 99 | `result-track:41e69d9bf85989976878b069fbdca2b767c25475d171686a9bb5179543333063` |
| 4 | `theorem` | [notMem_idealOfSet](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/notmem-idealofset--3586ed8105d753e1faff4391.md) | 103 | `result-track:3586ed8105d753e1faff4391951e4b385ad08ca74b6dce6f460b9629510fff28` |
| 5 | `def` | [setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/setofideal--701d28d2b4676397a737bd3a.md) | 110 | `declaration-track:701d28d2b4676397a737bd3ae7c2f45170dc9e2bc414ba2a16a65c4052a4aa50` |
| 6 | `theorem` | [notMem_setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/notmem-setofideal--4c2d2b352bb98d0abeacd54f.md) | 113 | `result-track:4c2d2b352bb98d0abeacd54f842c9b2bc594c1af62ee44baeb178eb1f91472da` |
| 7 | `theorem` | [mem_setOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/mem-setofideal--8b4295905a9e1c55185d9924.md) | 119 | `result-track:8b4295905a9e1c55185d99249573e49b777e31128c882171d321349994d65d34` |
| 8 | `theorem` | [setOfIdeal_open](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/setofideal-open--1de0fe97d60035d35b248d0a.md) | 123 | `result-track:1de0fe97d60035d35b248d0a09384585dea4c8819cb3e2ab88d044a61f9f19a7` |
| 9 | `def` | [opensOfIdeal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/opensofideal--ccbee22d4726a51896c2b466.md) | 131 | `declaration-track:ccbee22d4726a51896c2b46653878fc2be679917a61c4b5e3835d89b68157e89` |
| 10 | `theorem` | [setOfTop_eq_univ](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/setoftop-eq-univ--a8f115e8bb160b76bcba7895.md) | 135 | `result-track:a8f115e8bb160b76bcba7895cc052d3c13e7e55b412015c37363154f1a91038e` |
| 11 | `theorem` | [idealOfEmpty_eq_bot](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/idealofempty-eq-bot--6e5322e62ff38a550c356d89.md) | 139 | `result-track:6e5322e62ff38a550c356d89d29d34199715c86746990abdb77a172517a75f9b` |
| 12 | `theorem` | [mem_idealOfSet_compl_singleton](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/mem-idealofset-compl-singleton--652ed9f7bd1daac257efe92f.md) | 145 | `result-track:652ed9f7bd1daac257efe92f2f5e6e26cfed401948f110ecdd9149c55f924a84` |
| 13 | `theorem` | [ideal_gc](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/ideal-gc--a46d7e20fbae620f10a19457.md) | 151 | `result-track:a46d7e20fbae620f10a19457cbd972fc69d82449f7831a2f4b0367c28c1b155e` |
| 14 | `theorem` | [exists_mul_le_one_eqOn_ge](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/exists-mul-le-one-eqon-ge--1f66626503a4307156c0618d.md) | 170 | `result-track:1f66626503a4307156c0618d3e18e2c2ea25977050301ece977d6bb5cfc9d16f` |
| 15 | `theorem` | [idealOfSet_ofIdeal_eq_closure](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/idealofset-ofideal-eq-closure--33ab4e7682dfe7e07f0c844d.md) | 185 | `result-track:33ab4e7682dfe7e07f0c844d84090c8617f2c0d733125d9eb4187f0703960f62` |
| 16 | `theorem` | [idealOfSet_ofIdeal_isClosed](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/idealofset-ofideal-isclosed--e06805fd8ba487a0097d18b3.md) | 291 | `result-track:e06805fd8ba487a0097d18b3895efe348f07ae9a3292dae555f4ce62983547ba` |
| 17 | `theorem` | [setOfIdeal_ofSet_eq_interior](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/setofideal-ofset-eq-interior--cc32c4741748d7ec7fd4f4c9.md) | 298 | `result-track:cc32c4741748d7ec7fd4f4c9ed868ec926c6c31ca2d3ff891dc73cadee0afd79` |
| 18 | `theorem` | [setOfIdeal_ofSet_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/setofideal-ofset-of-isopen--9207d92c2de3c95378df832d.md) | 319 | `result-track:9207d92c2de3c95378df832d1a2ae7be0aafdf201c1cf29c225923de90e61ed7` |
| 19 | `def` | [idealOpensGI](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/idealopensgi--e9bf934cd191bdcaa6963a55.md) | 326 | `declaration-track:e9bf934cd191bdcaa6963a55a67e4a53b42c3db6437e6c3b14c14f9b12e1b68a` |
| 20 | `theorem` | [idealOfSet_isMaximal_iff](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/idealofset-ismaximal-iff--ce4fbb8a8d5c7625e80e2e1d.md) | 338 | `result-track:ce4fbb8a8d5c7625e80e2e1ddbbe041334b9c2ce20e85f3bca956c0b17bb7c8f` |
| 21 | `theorem` | [idealOf_compl_singleton_isMaximal](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/idealof-compl-singleton-ismaximal--caa1a0a27120f105de7bc94d.md) | 345 | `result-track:caa1a0a27120f105de7bc94d8a613e42ef27c8d19a4a6e3918a543fdfa293a56` |
| 22 | `theorem` | [setOfIdeal_eq_compl_singleton](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/setofideal-eq-compl-singleton--d9d3fcf5438b24c4157799f1.md) | 350 | `result-track:d9d3fcf5438b24c4157799f1540de45ae395551e05d22800fb9f7c0dce5cb74c` |
| 23 | `theorem` | [ideal_isMaximal_iff](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/ideal-ismaximal-iff--8d9204af4a7029d4857e8e4c.md) | 357 | `result-track:8d9204af4a7029d4857e8e4c1db49e452500e80f8576e2d356cca829ac44b4bc` |
| 24 | `def` | [continuousMapEval](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/continuousmapeval--ae8d377dd101b77729cbcd28.md) | 389 | `declaration-track:ae8d377dd101b77729cbcd28074d6265170eb80ffef0df00a48bb0851d8d5852` |
| 25 | `theorem` | [continuousMapEval_apply_apply](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/continuousmapeval-apply-apply--2071d8d9129d4745971e0415.md) | 400 | `result-track:2071d8d9129d4745971e04157452cc113effb47fe8a063bee24f17d85e3aab07` |
| 26 | `theorem` | [continuousMapEval_bijective](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/continuousmapeval-bijective--f99a10b749059b97c667ae0f.md) | 407 | `result-track:f99a10b749059b97c667ae0f5f58d62310f433138e0391170143a974967b9975` |
| 27 | `def` | [homeoEval](../../../../../mathematics/Topology/GeneralTopology/Ideals/Variantcf726d940e0fb6991096c619156f4ae8b07c49b7e8996d25af646718a4d5e1f1.lean/declarations/homeoeval--27922cad0e85bdafa981764b.md) | 425 | `declaration-track:27922cad0e85bdafa981764bc9356d64c95acc8f5a7fb812d5e198d5e2e0f5dc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
