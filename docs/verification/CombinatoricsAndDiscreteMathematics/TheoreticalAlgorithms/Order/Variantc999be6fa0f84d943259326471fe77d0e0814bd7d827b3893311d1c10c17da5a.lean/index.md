# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Order.Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1293a9a84235c4ac4bbbc38cfded6c224cffa5ca",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1293a9a84235c4ac4bbbc38cfded6c224cffa5ca`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Defs` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [instLEFinsupp](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/instlefinsupp--f0a941f19fa9380f8741cf49.md) | 48 | `declaration-track:f0a941f19fa9380f8741cf49870df1ff17cfdf90a984506dc1050b5adf66f65b` |
| 2 | `theorem` | [le_def](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/le-def--bccc81a6b1a71bbdb343edae.md) | 51 | `result-track:bccc81a6b1a71bbdb343edae6048c5ba71449c617f1976d1d5e765336e150fd9` |
| 3 | `def` | [orderEmbeddingToFun](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/orderembeddingtofun--5f64dc98cbb03ac373cd12db.md) | 56 | `declaration-track:5f64dc98cbb03ac373cd12dbe30d4c19bdc58fbb5bf79a3b7f9d117f550d1abd` |
| 4 | `theorem` | [orderEmbeddingToFun_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/orderembeddingtofun-apply--fa875d3ba3b980a3e6a7f91f.md) | 66 | `result-track:fa875d3ba3b980a3e6a7f91f8501bbb1b8f339df1716d56e310fa43ee536d2c0` |
| 5 | `instance` | [preorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/preorder--d7ae6ed2fc839f4e2e28dcf4.md) | 76 | `declaration-track:d7ae6ed2fc839f4e2e28dcf467d5098b86eea6de162b8fe02915c053abffd34e` |
| 6 | `theorem` | [monotone_toFun](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/monotone-tofun--e4963e54f3c7059f55e08aea.md) | 81 | `result-track:e4963e54f3c7059f55e08aea818e6b3645780d73fa3c59ebcdbe5dcfabc0050f` |
| 7 | `instance` | [partialorder](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/partialorder--d45862cc4e7a24b519b8f2b6.md) | 87 | `declaration-track:d45862cc4e7a24b519b8f2b61bfd06d8c94bdf809b7b88322e89df7854b4f687` |
| 8 | `instance` | [semilatticeInf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/semilatticeinf--419700337b097f6875c7cce1.md) | 91 | `declaration-track:419700337b097f6875c7cce1d4a9d0e890bb632e658686fc77dcf6616d87dcaf` |
| 9 | `theorem` | [inf_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/inf-apply--95bec9632be9062465a00c9a.md) | 99 | `result-track:95bec9632be9062465a00c9a9d471605ac44d8a99ffd58d61b611ab081b5d46f` |
| 10 | `instance` | [semilatticeSup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/semilatticesup--37460be9d49dc0db0d1db608.md) | 103 | `declaration-track:37460be9d49dc0db0d1db608151fb26017e81b429682098a71be631137977f06` |
| 11 | `theorem` | [sup_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/sup-apply--67cfc620b4d3df111d96aced.md) | 111 | `result-track:67cfc620b4d3df111d96aceda33e1f634bdae290e340eeffffc44ac4847cf692` |
| 12 | `instance` | [lattice](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/lattice--c6a1a4cca45c4822a1ee9311.md) | 115 | `declaration-track:c6a1a4cca45c4822a1ee9311fb20396c0638dfa5aeb2da209e6e6dff65cc1227` |
| 13 | `theorem` | [support_inf_union_support_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/support-inf-union-support-sup--830194d1f73480c387a20954.md) | 122 | `result-track:830194d1f73480c387a20954b9f8fcc93b26fa54b06821c851df1d7f7b344fa7` |
| 14 | `theorem` | [support_sup_union_support_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/support-sup-union-support-inf--0c69bd60f3e417c773b02c29.md) | 126 | `result-track:0c69bd60f3e417c773b02c29dfd96e130765f00c516ce6e2f7f588425d2daa1a` |
| 15 | `instance` | [orderedAddCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/orderedaddcommmonoid--01a8063c3c7bdecf889cd8fa.md) | 136 | `declaration-track:01a8063c3c7bdecf889cd8fae762bb1c986e80d8a40cefa3534c6fff45d2cdb1` |
| 16 | `instance` | [orderedCancelAddCommMonoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/orderedcanceladdcommmonoid--e95feb18dca2ca2d014895bb.md) | 140 | `declaration-track:e95feb18dca2ca2d014895bb6edfb12cddba348977d10c60b6695bf6b5b2e65c` |
| 17 | `instance` | [contravariantClass](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/contravariantclass--858271a134ac5164e644bb44.md) | 145 | `declaration-track:858271a134ac5164e644bb444a97ae58c0f8a8059b0464d95d810b39f6b1769e` |
| 18 | `instance` | [orderBot](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/orderbot--5b496fa1ce4a7fe3ccb9bf5f.md) | 153 | `declaration-track:5b496fa1ce4a7fe3ccb9bf5f17c1df8a994f4bc39a26bacc12e7f46e8b9cf9fa` |
| 19 | `theorem` | [bot_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/bot-eq-zero--7ca5136b30ab93ceb8afce4b.md) | 157 | `result-track:7ca5136b30ab93ceb8afce4b31ccda14c51550889ed4a3580cba48109014d306` |
| 20 | `theorem` | [add_eq_zero_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/add-eq-zero-iff--2db6a63aecdac11ba236e64f.md) | 162 | `result-track:2db6a63aecdac11ba236e64ff0afccf50f9c7e69d705274e4c77d3ca859d60c0` |
| 21 | `theorem` | [le_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/le-iff--76c8158e24bce230d27496a4.md) | 166 | `result-track:76c8158e24bce230d27496a4ce1c956fc8f430d4d931db40afe584f8aad95995` |
| 22 | `theorem` | [le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/le-iff--b3c6c557992050fc69ac1f8c.md) | 172 | `result-track:b3c6c557992050fc69ac1f8c6f9739acdda3dd297024f00ac33f378f0244ecda` |
| 23 | `instance` | [decidableLE](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/decidablele--91c54ea52cdc9545c486083e.md) | 176 | `declaration-track:91c54ea52cdc9545c486083e0790a49f3676a07764d4cec8dfd4c40dea51889a` |
| 24 | `theorem` | [single_le_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/single-le-iff--8ebe42915fba3c42846829c1.md) | 181 | `result-track:8ebe42915fba3c42846829c14672ed2a1453689ffc3e9e8986797835d2817535` |
| 25 | `instance` | [tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/tsub--7248b0142ef8c08dd7605d0f.md) | 189 | `declaration-track:7248b0142ef8c08dd7605d0fc2d4598f21b1829967a2c9d40e24d24c7a27f82c` |
| 26 | `instance` | [orderedSub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/orderedsub--3f73de43f5dde458796dd381.md) | 193 | `declaration-track:3f73de43f5dde458796dd381b81ec73f61c8be5bae6336d19b2a8e6b08999907` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/instance--7f277b32882012a2268f5d9f.md) | 196 | `declaration-track:7f277b32882012a2268f5d9f5c6d896586a19ee141a8b62336fa39a5f20709c9` |
| 28 | `theorem` | [coe_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/coe-tsub--ee717dd437954d66df13fd0d.md) | 203 | `result-track:ee717dd437954d66df13fd0dc18743431be653790945f09f187390e36b853456` |
| 29 | `theorem` | [tsub_apply](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/tsub-apply--cb05ef62966f82ff1229031c.md) | 207 | `result-track:cb05ef62966f82ff1229031c816331609c0f4a0fa888d6cf0ececd58c206cbb8` |
| 30 | `theorem` | [single_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/single-tsub--fa941f0094dd646aca0d85b5.md) | 212 | `result-track:fa941f0094dd646aca0d85b5f23817d4e88eb7705c321ef3ef9e5ac9e70bcffb` |
| 31 | `theorem` | [support_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/support-tsub--4c597bfb82f52c6d9f0ef764.md) | 219 | `result-track:4c597bfb82f52c6d9f0ef7642c802b525f9bf8bdd75dc8f343a6320c33e2f8e1` |
| 32 | `theorem` | [subset_support_tsub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/subset-support-tsub--f350a155f306a50a6ad9fafc.md) | 224 | `result-track:f350a155f306a50a6ad9fafc72c79e93624a0bae1c5d8d8932b8c50df1e88862` |
| 33 | `theorem` | [support_inf](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/support-inf--5f6df16012d1524f42130a9b.md) | 236 | `result-track:5f6df16012d1524f42130a9b9aee878a86845785ec6617e662d0935c7d18cbae` |
| 34 | `theorem` | [support_sup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/support-sup--fe59dd3e5fc16484a405135a.md) | 244 | `result-track:fe59dd3e5fc16484a405135a6b746ed3cc2a78699f7e651833f90c331f2500dc` |
| 35 | `theorem` | [disjoint_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/disjoint-iff--eb2e190d72fda7817e8acddd.md) | 250 | `result-track:eb2e190d72fda7817e8acddd952022d24f68655df6f4c8e4350327df05bb458f` |
| 36 | `theorem` | [sub_single_one_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/sub-single-one-add--7b5c1f2f0993816a8c29fd89.md) | 264 | `result-track:7b5c1f2f0993816a8c29fd89deb123a41c4097eb496a311bcbdb98686852aa4a` |
| 37 | `theorem` | [add_sub_single_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Order/Variantc999be6fa0f84d943259326471fe77d0e0814bd7d827b3893311d1c10c17da5a.lean/declarations/add-sub-single-one--eaccaa6eb30e5c60136a6abd.md) | 269 | `result-track:eaccaa6eb30e5c60136a6abd95f6ac41aebe0b27b65741055d39fe8d90998464` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
