# Verification target: GRWTSK.Topology.GeneralTopology.Defs.Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e54f4871a5be021db66b117afb5aa8489669a342",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e54f4871a5be021db66b117afb5aa8489669a342`.

Source path: `GRWTSK/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.SetNotation` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Bounds.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Insert` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Filter](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/filter--d54e5a000f7f862848766541.md) | 69 | `declaration-track:d54e5a000f7f862848766541966e7e248cbc142ed3d2f514252a7ff98ad60fdd` |
| 2 | `theorem` | [filter_eq](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/filter-eq--9000d099b047617d3516d561.md) | 83 | `result-track:9000d099b047617d3516d5613d517c9b3adbb878ad543a7bf2035c7bde8c1e88` |
| 3 | `instance` | [instMembership](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instmembership--0bc19815245d34f4d030db26.md) | 87 | `declaration-track:0bc19815245d34f4d030db26898acaf6ff257469ec25705bdf541863e13178f0` |
| 4 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/ext--6fdaa0dcbfd3f5f48b1e9e10.md) | 90 | `result-track:6fdaa0dcbfd3f5f48b1e9e10985514a1ed40f71adf5fd3db4e47f43b95cdf92c` |
| 5 | `theorem` | [mem_mk](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-mk--233937a1878c43c41c2be7a7.md) | 93 | `result-track:233937a1878c43c41c2be7a7ae556c918af12d30e184b93896cc5537a45dbb02` |
| 6 | `theorem` | [mem_sets](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-sets--229c96f86605bde013c4c44e.md) | 97 | `result-track:229c96f86605bde013c4c44eabeb37658fef98e359ccf792a3439d70a2cb70f2` |
| 7 | `theorem` | [univ_mem](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/univ-mem--7ec2ab1032ad7aeeded970b3.md) | 101 | `result-track:7ec2ab1032ad7aeeded970b348a9e5137d3f2346a28a6464ae3cfe1c0515c512` |
| 8 | `theorem` | [mem_of_superset](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-of-superset--82c0a2e8cec27eca0cb78c59.md) | 104 | `result-track:82c0a2e8cec27eca0cb78c592b516a71119caf30658e10eba6a8aa20a53d797c` |
| 9 | `theorem` | [univ_mem'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/univ-mem--35dfd2d5372b816bf7f14d58.md) | 107 | `result-track:35dfd2d5372b816bf7f14d58b34936a63630fc8ee4b03a305854758fa0cbda1b` |
| 10 | `theorem` | [inter_mem](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/inter-mem--fb2bffef76734017a085b1e9.md) | 110 | `result-track:fb2bffef76734017a085b1e9dab246da08111cacee96280653e5e5c1f7e17138` |
| 11 | `theorem` | [mp_mem](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mp-mem--7d586fda466a0eee84eaf2a9.md) | 113 | `result-track:7d586fda466a0eee84eaf2a93e8dce9520c1ad49b39671877b0d4e7cb1d0ae61` |
| 12 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/copy--0e12bb7939849a328af42c17.md) | 117 | `declaration-track:0e12bb7939849a328af42c1795031c9683610b8b6ebf86503940ba6b26df99a2` |
| 13 | `theorem` | [mem_copy](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-copy--374849eeaa088068b6e41e3b.md) | 123 | `result-track:374849eeaa088068b6e41e3b7a2775fd62f2e5858f05c7c7f088e11b8f3342a1` |
| 14 | `def` | [comk](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/comk--51b3af565b3e8576288ef830.md) | 128 | `declaration-track:51b3af565b3e8576288ef830d387d0326a3f4a72dcbd9be1806d0404a12fcba1` |
| 15 | `lemma` | [mem_comk](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-comk--0e1dde487ee314b11acecaea.md) | 136 | `result-track:0e1dde487ee314b11acecaea434d7762decc3d132c50208f850e8415e3663ae0` |
| 16 | `def` | [principal](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/principal--4b17d7569a7377784480acae.md) | 141 | `declaration-track:4b17d7569a7377784480acae83aac49f1a3925f824ef1d1807d15e614fd878dc` |
| 17 | `theorem` | [mem_principal](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-principal--28559bd0f6b9ff4a7359f296.md) | 150 | `result-track:28559bd0f6b9ff4a7359f296c21a9a738e9ef69de9a229c23f2e212743b138c4` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instance--c4748c0339893a00d50ada12.md) | 154 | `declaration-track:c4748c0339893a00d50ada12b759072a5c0eaa05ba6c255cd295ddda3b64737d` |
| 19 | `theorem` | [mem_pure](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-pure--fe7b78e0d517e8ceb9c705be.md) | 158 | `result-track:fe7b78e0d517e8ceb9c705be8f4915438c014318d1b86b35ac79b33ab1de75b5` |
| 20 | `def` | [ker](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/ker--5ef0e863e68397651848c448.md) | 162 | `declaration-track:5ef0e863e68397651848c44893273ee13294a8c6faaa858b00ab5245bbd68951` |
| 21 | `def` | [join](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/join--24516e7520fdf3383e12d0b6.md) | 165 | `declaration-track:24516e7520fdf3383e12d0b641ca90138fb49a524a63219b1e52c3df23a569cf` |
| 22 | `theorem` | [mem_join](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-join--d9f3efebdf91d5a73c407b6e.md) | 172 | `result-track:d9f3efebdf91d5a73c407b6e6c3e0cb77d624745f53cb2925e1b6840f092ba19` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instance--1d477165e1db8ec11ec505ae.md) | 175 | `declaration-track:1d477165e1db8ec11ec505aedf72272a9b32e63aade60a0458eaa95b6fb8331a` |
| 24 | `theorem` | [le_def](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/le-def--f1b25af5173f3a10172dec45.md) | 181 | `result-track:f1b25af5173f3a10172dec457791c40f392cc0cf92ac9a0f88068a48e3dd9bb7` |
| 25 | `instance` | [instSupSet](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instsupset--523308f435a1ba83497f5fd2.md) | 184 | `declaration-track:523308f435a1ba83497f5fd291bac1c3797e3a9b67f51feebcdacbd6ef822734` |
| 26 | `theorem` | [mem_sSup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-ssup--01e6e1a290dc8a77632d1cb8.md) | 187 | `result-track:01e6e1a290dc8a77632d1cb8d1f3eaf0d91471ac99a686278bf2742aa5436cce` |
| 27 | `def` | [sInf](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/sinf--7cf372353e61bec8207e6548.md) | 193 | `declaration-track:7cf372353e61bec8207e6548fdd847e21b1168bfc326812d1f02c04df17c8460` |
| 28 | `instance` | [instInfSet](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instinfset--2e606f854c346c2fcb72644a.md) | 195 | `declaration-track:2e606f854c346c2fcb72644a78c83a25ccdbe3dae6b704462c9bb659af6ef9d8` |
| 29 | `theorem` | [sSup_lowerBounds](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/ssup-lowerbounds--065cb83fdacbbf9c89ad1da8.md) | 198 | `result-track:065cb83fdacbbf9c89ad1da8f00e70c6dc7005c014ec76439bb72910710982ea` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instance--907d1c810c6ea7e139f0a5ba.md) | 201 | `declaration-track:907d1c810c6ea7e139f0a5ba03bfaeb731d12f34a523e255b317c5932b0e8344` |
| 31 | `theorem` | [mem_top_iff_forall](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-top-iff-forall--aaf4571562735ea3b30bc16c.md) | 204 | `result-track:aaf4571562735ea3b30bc16c5bb3fd70fe0408de91be38738e7c87022ee19f5f` |
| 32 | `theorem` | [mem_top](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-top--d95cd6d0a373258e4dcd8410.md) | 208 | `result-track:d95cd6d0a373258e4dcd84107d73e897447a5d63d3b8a9aef2104812de1fc2b4` |
| 33 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instance--1281a144e1f01046ae9eded1.md) | 211 | `declaration-track:1281a144e1f01046ae9eded1b1e40517f1e2ca82d5eaec7b38f67616ab58ce5a` |
| 34 | `theorem` | [mem_bot](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/mem-bot--c9130b96d028b9f885196a1c.md) | 215 | `result-track:c9130b96d028b9f885196a1ccd280d2bc2c15a323bd6103c3c0cae8db3cc7c72` |
| 35 | `instance` | [instInf](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instinf--ccdbe66f3134b895e1cfa0db.md) | 220 | `declaration-track:ccdbe66f3134b895e1cfa0dbb0f6985a5fef4a5648665cd82e6a1bf793d49d20` |
| 36 | `instance` | [instSup](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instsup--e954cc7e6b85de1af7875ac2.md) | 235 | `declaration-track:e954cc7e6b85de1af7875ac2f19cec748f087d2a6a7000a52cb35339b6072901` |
| 37 | `class` | [NeBot](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/nebot--e0a3b5d6891de3f8e154f88a.md) | 241 | `declaration-track:e0a3b5d6891de3f8e154f88ace333a7fd495fd726c3fb6c25b678ee9d2b2d683` |
| 38 | `theorem` | [neBot_iff](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/nebot-iff--3be942bf03be8b96f8776316.md) | 245 | `result-track:3be942bf03be8b96f877631695202284bb1a1c6293f0f6bfbb62aaa26391eb4b` |
| 39 | `def` | [Eventually](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/eventually--149d92fd7ff15f4bcc38f685.md) | 250 | `declaration-track:149d92fd7ff15f4bcc38f685c31eec7521f0d871cf4133ac532a3ee0d841ca52` |
| 40 | `def` | [Frequently](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/frequently--0d68281f79ac85b8cf5af4b9.md) | 258 | `declaration-track:0d68281f79ac85b8cf5af4b9c51201452cc756e88b8fc60fe3f7632948e21bb9` |
| 41 | `def` | [EventuallyEq](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/eventuallyeq--c882d7a9e1547638b253d91a.md) | 266 | `declaration-track:c882d7a9e1547638b253d91adba39e8da035c4a4ecc69d305211c4abe97d49ae` |
| 42 | `def` | [EventuallyLE](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/eventuallyle--d543da5f53d16808d010ea31.md) | 273 | `declaration-track:d543da5f53d16808d010ea316ec7b95354919d2e17b7c8fdf56dc05c8c04800d` |
| 43 | `def` | [map](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/map--6990cf449244fba6e645a3cf.md) | 280 | `declaration-track:6990cf449244fba6e645a3cf9a36a01fd7b9f8f8b3286fea121abe24b854220b` |
| 44 | `def` | [Tendsto](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/tendsto--d268b636efb87f69308b682d.md) | 289 | `declaration-track:d268b636efb87f69308b682ddc64b7a6e3d3f0447f8f01b83dfefa8b8126fd1b` |
| 45 | `def` | [comap](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/comap--5ced67f5c268f78e7c3c4bd0.md) | 299 | `declaration-track:5ced67f5c268f78e7c3c4bd0246fe46b3003dd808bf997ca440554c1f343915f` |
| 46 | `def` | [coprod](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/coprod--ec50bc3ed1e36a6e1cc36012.md) | 307 | `declaration-track:ec50bc3ed1e36a6e1cc36012b0cf862287619dab317217dbf743ce8641ce9528` |
| 47 | `instance` | [instSProd](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instsprod--e4c5e1c2ff1f183d357fe4e9.md) | 312 | `declaration-track:e4c5e1c2ff1f183d357fe4e99984e41634fa6a3bf10bb60faa0c5e17471c8ae8` |
| 48 | `def` | [prod](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/prod--26610ae3663d2e6017907122.md) | 319 | `declaration-track:26610ae3663d2e6017907122e8b828d30d0d0e46469308265d37ec9da001f0b0` |
| 49 | `theorem` | [prod_eq_inf](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/prod-eq-inf--c9d676d65b793402f9b9ac04.md) | 321 | `result-track:c9d676d65b793402f9b9ac044a3dd5cb26280174f16fa0e84db6bae50967e0d2` |
| 50 | `def` | [pi](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/pi--f0dbd75594a57070dbcb6ed2.md) | 325 | `declaration-track:f0dbd75594a57070dbcb6ed2f84db5af7fa203c707dd6aa88cb3ebe7c2f76038` |
| 51 | `def` | [bind](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/bind--1e142161ae0cca9e3c795b0e.md) | 332 | `declaration-track:1e142161ae0cca9e3c795b0eb0fbae95959cfa148f85587104b20e86255afc73` |
| 52 | `def` | [seq](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/seq--2e39b3b2c949a3a9f7745b37.md) | 336 | `declaration-track:2e39b3b2c949a3a9f7745b37412714463bab19b69d160ed71bcf00d833871aa9` |
| 53 | `def` | [curry](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/curry--0c9d9f64680374c3250da3e3.md) | 349 | `declaration-track:0c9d9f64680374c3250da3e3be5e23104f9d444bc1e68e861d8d0f9917f61e2f` |
| 54 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instance--5078760f0740bd1a6afcb9b9.md) | 352 | `declaration-track:5078760f0740bd1a6afcb9b91bf29d4396aa31d6accb1914e692502a3521f323` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/instance--563908ce4b4317054e89526c.md) | 355 | `declaration-track:563908ce4b4317054e89526c12e2cf9869e70949e641e12dca02ab275b050d01` |
| 56 | `def` | [lift](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/lift--f8987efaba3a164eb84b5b9b.md) | 359 | `declaration-track:f8987efaba3a164eb84b5b9b14637bc590c903ddcf5d3d14d463568587be5ba6` |
| 57 | `def` | [lift'](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/lift--403c87f133d9dcf372524466.md) | 364 | `declaration-track:403c87f133d9dcf372524466c13a45e580ed5c42921e8fddfb9061c180e0ba79` |
| 58 | `def` | [IsBounded](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/isbounded--6136ed54f4659ba594270a38.md) | 370 | `declaration-track:6136ed54f4659ba594270a38d58529890e84f3263aa5b30fee5d6e32afb2957d` |
| 59 | `def` | [IsBoundedUnder](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/isboundedunder--b3b99b98bbb5622b42b133a9.md) | 375 | `declaration-track:b3b99b98bbb5622b42b133a9d0205ce56faeabee2497f93dc7fc1b05da46ce69` |
| 60 | `def` | [IsCobounded](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/iscobounded--4ec4a50d4af9d4ca5175129b.md) | 388 | `declaration-track:4ec4a50d4af9d4ca5175129bfd130b58a14b3fe4b27689983787eb84134c2de8` |
| 61 | `def` | [IsCoboundedUnder](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/iscoboundedunder--f8a98282053ebb3da2f0c15f.md) | 394 | `declaration-track:f8a98282053ebb3da2f0c15f007d693299c8a8b09b13fbbe05a7865344fac163` |
| 62 | `syntax` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/syntax--c07779e6f55658eecc471858.md) | 417 | `declaration-track:c07779e6f55658eecc471858e976b8ff832d7b427ad2b99bc7881d9bb15f37f0` |
| 63 | `elab_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Defs/Variantac833b8f29e164e5300fcea36e61d95481ddce5959c010263b99464389504d58.lean/declarations/elab-rules--80be83cf29c2b2cb16280a51.md) | 420 | `declaration-track:80be83cf29c2b2cb16280a51b9c592bcae79f75f5d9a3c98a775a2f6c8acda2b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
