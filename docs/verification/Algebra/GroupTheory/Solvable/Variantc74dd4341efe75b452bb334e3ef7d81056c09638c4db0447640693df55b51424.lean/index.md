# Verification target: GRWTSK.Algebra.GroupTheory.Solvable.Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fc119814455e9d5098ac06dcf1da3518b256f24",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fc119814455e9d5098ac06dcf1da3518b256f24`.

Source path: `GRWTSK/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.GroupTheory.Abelianization` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Perm.ViaEmbedding` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Subgroup.Simple` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/derivedseries--0cfc66ebc062d9fa94bb14ad.md) | 43 | `declaration-track:0cfc66ebc062d9fa94bb14adbb6899a1e846436a870dbac42ae0fed4ef42eae6` |
| 2 | `theorem` | [derivedSeries_zero](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/derivedseries-zero--d2fb47ac9ec80e6e879f29fe.md) | 48 | `result-track:d2fb47ac9ec80e6e879f29fe448fd0b27a61174a398faf2bd13d80b511c73f8c` |
| 3 | `theorem` | [derivedSeries_succ](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/derivedseries-succ--c11197de659299451e7dca7d.md) | 52 | `result-track:c11197de659299451e7dca7de7fa10bc7274ba704a1734a8053d962872b0e848` |
| 4 | `theorem` | [derivedSeries_normal](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/derivedseries-normal--345b728fead6636f90279a36.md) | 56 | `result-track:345b728fead6636f90279a361a7b34adc93fd86d0247e09e184ab5a925382c8b` |
| 5 | `theorem` | [derivedSeries_one](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/derivedseries-one--aa74b2bd8a65fe9ddf87720b.md) | 62 | `result-track:aa74b2bd8a65fe9ddf87720bf3f520280a1ca0616be055a287e836ec405bb265` |
| 6 | `theorem` | [map_derivedSeries_le_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/map-derivedseries-le-derivedseries--5ac6a7e947f1f454e9d89e13.md) | 72 | `result-track:5ac6a7e947f1f454e9d89e13abb05666fe6a46458e1446e3d52be78dbe0d52d4` |
| 7 | `theorem` | [derivedSeries_le_map_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/derivedseries-le-map-derivedseries--631c8f3a3b0e6dd4f1072d6b.md) | 78 | `result-track:631c8f3a3b0e6dd4f1072d6b0e11096b3cc81462952d5decf1b9a5c61cb3c89a` |
| 8 | `theorem` | [map_derivedSeries_eq](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/map-derivedseries-eq--88540b524ce26ff22e27b820.md) | 84 | `result-track:88540b524ce26ff22e27b820c5e25feaef436f42dc302f663ea8098b6bcf751a` |
| 9 | `class` | [IsSolvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/issolvable--cdc26c32e522fce89ef8b177.md) | 99 | `declaration-track:cdc26c32e522fce89ef8b177270751016e525ef91c68d3122cb027f1270ab7d4` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/instance--372df2dacb5780bb85bc0ba3.md) | 103 | `declaration-track:372df2dacb5780bb85bc0ba390378ca1b28b84aca27d2021a2073c4518099741` |
| 11 | `theorem` | [isSolvable_of_comm](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/issolvable-of-comm--e694e76f23be34c4b4796b6e.md) | 106 | `result-track:e694e76f23be34c4b4796b6eed31647ca674d112bb9c9802e754aa4588ca2e43` |
| 12 | `theorem` | [isSolvable_of_top_eq_bot](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/issolvable-of-top-eq-bot--9c08a9af3d5f0a41649ec5e7.md) | 112 | `result-track:9c08a9af3d5f0a41649ec5e733b2737e4f3d06ffc201a8ab443b0883f2137926` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/instance--796f53d6e52b76309f77e599.md) | 115 | `declaration-track:796f53d6e52b76309f77e5998e2006d1f255d566f98465c1bf61bf7cf2990af4` |
| 14 | `theorem` | [solvable_of_ker_le_range](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/solvable-of-ker-le-range--05bf0dec1760029ae5a0aec3.md) | 120 | `result-track:05bf0dec1760029ae5a0aec3aa2d54e2eb44fba4899b7dde37a7ab66a5a1f3e3` |
| 15 | `theorem` | [solvable_of_solvable_injective](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/solvable-of-solvable-injective--e0b63a3f954b01fc2753fbe7.md) | 132 | `result-track:e0b63a3f954b01fc2753fbe7bd15c2a3c8d18c120b0ba16c1a0ad2da4fa0c8f3` |
| 16 | `instance` | [subgroup_solvable_of_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/subgroup-solvable-of-solvable--de7cd5f9980ffcfd266d162d.md) | 136 | `declaration-track:de7cd5f9980ffcfd266d162d3437956fcaaa21ed5a69b0c34e667d68a1c76524` |
| 17 | `theorem` | [solvable_of_surjective](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/solvable-of-surjective--496a9119d87eedb3b1b6066b.md) | 139 | `result-track:496a9119d87eedb3b1b6066b4f8f08b923d62423ee730dab38e74a284cd6a36b` |
| 18 | `instance` | [solvable_quotient_of_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/solvable-quotient-of-solvable--411b0e8fe762c5b23bd58c5d.md) | 142 | `declaration-track:411b0e8fe762c5b23bd58c5defecc620e94a2bf83671dac624263e78582aed4a` |
| 19 | `instance` | [solvable_prod](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/solvable-prod--268a5b3f5c0a05084b854344.md) | 146 | `declaration-track:268a5b3f5c0a05084b854344fa4d356f9ae60c32ddb66b8974afa2cce0aeb1cb` |
| 20 | `theorem` | [IsSolvable.commutator_lt_top_of_nontrivial](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/issolvable-commutator-lt-top-of-nontrivial--02552f02cdde649ba8b6f7b0.md) | 152 | `result-track:02552f02cdde649ba8b6f7b0efce4a54754f7ba2f43d4411bf75a34778eeb677` |
| 21 | `theorem` | [IsSolvable.commutator_lt_of_ne_bot](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/issolvable-commutator-lt-of-ne-bot--7e258e0d7d1a4c19f7c2f49e.md) | 162 | `result-track:7e258e0d7d1a4c19f7c2f49eca2b8e4c8c87b0a4f248b66957b1a1345de661cf` |
| 22 | `theorem` | [isSolvable_iff_commutator_lt](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/issolvable-iff-commutator-lt--d4be0360f7c1019e13c2c48b.md) | 168 | `result-track:d4be0360f7c1019e13c2c48b94c7b3d1e83ded045c8ae87ab780928ab34977c1` |
| 23 | `theorem` | [IsSimpleGroup.derivedSeries_succ](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/issimplegroup-derivedseries-succ--faa16c4ed060c65bc96c689b.md) | 192 | `result-track:faa16c4ed060c65bc96c689be2b89337918814cd275d98aa4674bffb53aead32` |
| 24 | `theorem` | [IsSimpleGroup.comm_iff_isSolvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/issimplegroup-comm-iff-issolvable--9b0046af56f19a4ee5bcec90.md) | 201 | `result-track:9b0046af56f19a4ee5bcec9095e6070b569bdf3dd2ed0e0adc4f6a738c56ef40` |
| 25 | `theorem` | [not_solvable_of_mem_derivedSeries](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/not-solvable-of-mem-derivedseries--cd21d608964df8846336a50e.md) | 217 | `result-track:cd21d608964df8846336a50eb6e822365ad7b160022ddba6c40e4ed68b5cbec8` |
| 26 | `theorem` | [Equiv.Perm.fin_5_not_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/equiv-perm-fin-5-not-solvable--1587f18f12f524a555679398.md) | 223 | `result-track:1587f18f12f524a55567939818d9a03b065ec730640fdb73fdb2128b50e05566` |
| 27 | `theorem` | [Equiv.Perm.not_solvable](../../../../../mathematics/Algebra/GroupTheory/Solvable/Variantc74dd4341efe75b452bb334e3ef7d81056c09638c4db0447640693df55b51424.lean/declarations/equiv-perm-not-solvable--a35f9db28d4c10cb61425a09.md) | 235 | `result-track:a35f9db28d4c10cb61425a0941827e77a901088f96b21e5556249afab1e4d87d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
