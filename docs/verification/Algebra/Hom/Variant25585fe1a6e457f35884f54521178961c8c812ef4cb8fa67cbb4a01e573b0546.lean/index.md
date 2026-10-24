# Verification target: GRWTSK.Algebra.Hom.Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d359e4a198bfd5f7af258f1953439e8b9a13811f",
  "lexical_observation_count": 85,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/index.md) · [Full source](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d359e4a198bfd5f7af258f1953439e8b9a13811f`.

Source path: `GRWTSK/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Algebra.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [AlgHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/alghom--ba8e52eaa405352e68c7c841.md) | 34 | `declaration-track:ba8e52eaa405352e68c7c841822e0981848fa3811af8bfd1ae8e7a1bc545aec6` |
| 2 | `def` | [Algebra.algHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/algebra-alghom--35a28f73eb2d29ee9445ef26.md) | 48 | `declaration-track:35a28f73eb2d29ee9445ef26aff1282bd19567953485b7077799fa4bead466d9` |
| 3 | `class` | [AlgHomClass](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/alghomclass--2a8d08b7c6a1e06682ad7720.md) | 57 | `declaration-track:2a8d08b7c6a1e06682ad772092c46ce937529ed2bc0e69423b7f523ac6ed2bb8` |
| 4 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/instance--ca140d3207a076c9bd7eac44.md) | 73 | `declaration-track:ca140d3207a076c9bd7eac4491170feb3f871d2519362aa0399c9c044f5306de` |
| 5 | `def` | [toAlgHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/toalghom--6a7b4007ae3816aab75c0029.md) | 81 | `declaration-track:6a7b4007ae3816aab75c0029bd39a5d2080cba998a0bc3f83105b839f704531c` |
| 6 | `instance` | [coeTC](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coetc--130a536cd0004e279673c7ee.md) | 86 | `declaration-track:130a536cd0004e279673c7ee2bd878f2181106b1c506a09a82f5676d35ef3c6a` |
| 7 | `instance` | [funLike](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/funlike--8d14f994eeb3433d90175d1c.md) | 100 | `declaration-track:8d14f994eeb3433d90175d1c528951ee2b7f3d66d7674badd3449d5d2cefbeb7` |
| 8 | `instance` | [algHomClass](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/alghomclass--2f98821fe8f6c429c5070347.md) | 107 | `declaration-track:2f98821fe8f6c429c5070347682b76be1ce6acf92354fbef190101b486b5e059` |
| 9 | `def` | [Simps.apply](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/simps-apply--53150efcb80253525654725e.md) | 115 | `declaration-track:53150efcb80253525654725ea667af9a47832dde8e756e586907e73467c92d7a` |
| 10 | `theorem` | [coe_coe](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-coe--f8e5d5e5ba7b9d1e4373228a.md) | 121 | `result-track:f8e5d5e5ba7b9d1e4373228a6d50f21f21fbeb3a5f4f6381d821037d2006342a` |
| 11 | `theorem` | [toFun_eq_coe](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tofun-eq-coe--7176c167a1f9ea5bb03ace86.md) | 126 | `result-track:7176c167a1f9ea5bb03ace86ce3306e807be266e30d4e06345ef51c3cd9b4882` |
| 12 | `def` | [toMonoidHom'](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tomonoidhom--61f728b66227572806faf89f.md) | 130 | `declaration-track:61f728b66227572806faf89f7cc991464a6c6ee878ccfc8dc2d2e3afec41f7b6` |
| 13 | `instance` | [coeOutMonoidHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coeoutmonoidhom--6aea798a067fcb6c19b7df4f.md) | 132 | `declaration-track:6aea798a067fcb6c19b7df4f09826c090d3a4a815a2dac50bdcfa769166451cf` |
| 14 | `def` | [toAddMonoidHom'](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/toaddmonoidhom--52a92b6910822bc7f036ad72.md) | 136 | `declaration-track:52a92b6910822bc7f036ad72f4753f4926cb0e64e48cf438b37f94d45ce22c49` |
| 15 | `instance` | [coeOutAddMonoidHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coeoutaddmonoidhom--5a788f9c46709f0ef8009861.md) | 138 | `declaration-track:5a788f9c46709f0ef8009861a1a402beb2e015aeb35e1d90b254a95969cbb389` |
| 16 | `theorem` | [coe_mk](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-mk--d4b0e503fcda45088da2351e.md) | 142 | `result-track:d4b0e503fcda45088da2351e9105d8af451283a1f72398415310660ee3dea1f9` |
| 17 | `theorem` | [coe_mks](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-mks--a330092984714e7967fcf3d4.md) | 146 | `result-track:a330092984714e7967fcf3d4eddc783ae805f6fed64fc336b0147b45771d03b1` |
| 18 | `theorem` | [coe_ringHom_mk](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-ringhom-mk--6f01943990d43a14d82b0a58.md) | 150 | `result-track:6f01943990d43a14d82b0a587acf1c3d0ae5a7363d94c2b7b95c0478b4287bdf` |
| 19 | `theorem` | [toRingHom_eq_coe](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/toringhom-eq-coe--a0454605da8eb383abd0e22f.md) | 155 | `result-track:a0454605da8eb383abd0e22f53d031d3cb1d018bff4c192de0a2497345eff08e` |
| 20 | `theorem` | [coe_toRingHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-toringhom--753088fd808043f9b21f44cb.md) | 159 | `result-track:753088fd808043f9b21f44cb4e2e2369d184ee25919d3c8d9acf18189e8a5742` |
| 21 | `theorem` | [coe_toMonoidHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-tomonoidhom--38eaf232137c76623b3b0ef5.md) | 163 | `result-track:38eaf232137c76623b3b0ef5b4497c89d985794ea864d056fc22311a21187e34` |
| 22 | `theorem` | [coe_toAddMonoidHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-toaddmonoidhom--a3a6aeb6f264c519b6df6872.md) | 167 | `result-track:a3a6aeb6f264c519b6df687272b65357a7aa9382b9fa02155793e502bf298387` |
| 23 | `theorem` | [toRingHom_toMonoidHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/toringhom-tomonoidhom--178962cb3b772def69062400.md) | 171 | `result-track:178962cb3b772def690624009b06824f2da7915abde923b02e4903c61e886d73` |
| 24 | `theorem` | [toRingHom_toAddMonoidHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/toringhom-toaddmonoidhom--e87030c5c958239fd431fe64.md) | 175 | `result-track:e87030c5c958239fd431fe645015bdd5ce0f4a819d2c1fcb91a0cee21ab041c6` |
| 25 | `theorem` | [coe_fn_injective](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-fn-injective--503bb474ed8b3bcdcac249ce.md) | 180 | `result-track:503bb474ed8b3bcdcac249ceac1f80fe8fa68d5ac85d433e674ceac3138f103b` |
| 26 | `theorem` | [coe_fn_inj](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-fn-inj--08c7df3fb5b4fcc4b09b86d2.md) | 183 | `result-track:08c7df3fb5b4fcc4b09b86d245ccfb94a421bb2e43bedfea8acdf361d34ac82c` |
| 27 | `theorem` | [coe_ringHom_injective](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-ringhom-injective--f54e58ab76ae93696abca111.md) | 186 | `result-track:f54e58ab76ae93696abca11112c731f98192633052422b0e6d2db2020b9d02b5` |
| 28 | `theorem` | [coe_monoidHom_injective](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-monoidhom-injective--6370cd4e2603cc3321ab755f.md) | 189 | `result-track:6370cd4e2603cc3321ab755f33458ca1390debad7bf7e6a3e4e9913a28f90944` |
| 29 | `theorem` | [coe_addMonoidHom_injective](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-addmonoidhom-injective--1b3f95e20078a9d3729acd5c.md) | 192 | `result-track:1b3f95e20078a9d3729acd5c63e2565088dd01374b75ba612397a6ebfd0a94c2` |
| 30 | `theorem` | [congr_fun](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/congr-fun--62bcc6e2cecf5fd3504ec21c.md) | 195 | `result-track:62bcc6e2cecf5fd3504ec21ccf493147a32d5146503c4589c97ce1238e4f2022` |
| 31 | `theorem` | [congr_arg](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/congr-arg--9c61fac1c1998ae2268886f9.md) | 198 | `result-track:9c61fac1c1998ae2268886f9145fdb5b757c22040d5b24957e90072101c511ff` |
| 32 | `theorem` | [ext](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/ext--86ebb7f8e838d0258656e809.md) | 202 | `result-track:86ebb7f8e838d0258656e809beaa6c7325b4094c154e8afd92ea8f3086478681` |
| 33 | `theorem` | [mk_coe](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/mk-coe--9f90714622e220992f3460ef.md) | 206 | `result-track:9f90714622e220992f3460efb5829a9cc0e825f98b961d2ee2680aa9fe3355c1` |
| 34 | `lemma` | [addHomMk_coe](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/addhommk-coe--49ffad2ec75ea909cd1e6e90.md) | 209 | `result-track:49ffad2ec75ea909cd1e6e908deaf5b109d59eebd4445c60cba1bb39d1f75076` |
| 35 | `theorem` | [commutes](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/commutes--3935d25a1c08bb2a551f4334.md) | 212 | `result-track:3935d25a1c08bb2a551f433494c2b5bbd97036b90ecd55413e8a3f9ad0c4168e` |
| 36 | `theorem` | [comp_algebraMap](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/comp-algebramap--d0ef76a00de322e8c64f7daa.md) | 215 | `result-track:d0ef76a00de322e8c64f7daa21271528376fb8b4837fbe0fcfb92d35e25436b8` |
| 37 | `def` | [mk'](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/mk--3d0fd7ef5152b7c8bf287c54.md) | 219 | `declaration-track:3d0fd7ef5152b7c8bf287c547015b38112c8fc5f449f40fc06312e08c596a617` |
| 38 | `theorem` | [coe_mk'](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-mk--0ef301e555dbc275c203223d.md) | 225 | `result-track:0ef301e555dbc275c203223d73fdf8f24846649328dc5dd6e7d96bf5c950acdb` |
| 39 | `def` | [id](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/id--8e6f10fd92656890302cc896.md) | 233 | `declaration-track:8e6f10fd92656890302cc896640a29eec10a2977b7560613d78d93afbd182f45` |
| 40 | `theorem` | [coe_id](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-id--bc4703116bde2307bd51fd23.md) | 237 | `result-track:bc4703116bde2307bd51fd239051efc45d3e1bc1b7324b0391d3f0f022567faf` |
| 41 | `theorem` | [id_toRingHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/id-toringhom--cbe0278d571f222586ea7a55.md) | 241 | `result-track:cbe0278d571f222586ea7a5575b4c336d942900d1373aee9a6d594b8ce21aeb9` |
| 42 | `theorem` | [id_apply](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/id-apply--eef0fa67902760f16e1c4182.md) | 246 | `result-track:eef0fa67902760f16e1c4182c498aef773ec26147c6ee5135ce9d7e7a73ce155` |
| 43 | `def` | [comp](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/comp--dc15c56e245ae86df8586142.md) | 253 | `declaration-track:dc15c56e245ae86df8586142c14f4094f08bb71bf0f0ce9682739cd40b742f0e` |
| 44 | `theorem` | [coe_comp](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-comp--41719d8d9d8caa653d4e21ef.md) | 258 | `result-track:41719d8d9d8caa653d4e21ef43c608175cd2df9d41634cffe3d7e1d27d51ca49` |
| 45 | `theorem` | [comp_apply](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/comp-apply--15bd5f5ce7f03f1dab0e24b4.md) | 261 | `result-track:15bd5f5ce7f03f1dab0e24b49170fd5f8495f1a3821b71de11eba414e0cca865` |
| 46 | `theorem` | [comp_toRingHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/comp-toringhom--ffb351761008fe858348289b.md) | 264 | `result-track:ffb351761008fe858348289bc6751f2a4836b691f6366e8e684916bf0d0f6f97` |
| 47 | `theorem` | [comp_id](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/comp-id--5a6bdea91a0b5fecc1fc04f9.md) | 269 | `result-track:5a6bdea91a0b5fecc1fc04f97b75bb5b5b83c922e8244fce70ae1bc214124dd8` |
| 48 | `theorem` | [id_comp](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/id-comp--411f1e483d8a7769bb6ec487.md) | 273 | `result-track:411f1e483d8a7769bb6ec4877017ca6c174502da6ca430c462804fd04488110d` |
| 49 | `theorem` | [comp_assoc](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/comp-assoc--a057f0efae51ccac2b10c2fe.md) | 276 | `result-track:a057f0efae51ccac2b10c2fef6d3d8d2f4974066b2a1ed415d49bf12b122c25d` |
| 50 | `def` | [toLinearMap](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tolinearmap--d1c8bcfd472a022040757759.md) | 281 | `declaration-track:d1c8bcfd472a022040757759000a4ddaa1c6c78625745d5758203419944f593e` |
| 51 | `theorem` | [toLinearMap_apply](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tolinearmap-apply--c1428c0d5d41511822ee9c8e.md) | 287 | `result-track:c1428c0d5d41511822ee9c8e7977ffb0128fe6e67612f0cb132a4dddcaf2d754` |
| 52 | `theorem` | [toLinearMap_injective](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tolinearmap-injective--23e581092130a548a9484ee3.md) | 290 | `result-track:23e581092130a548a9484ee32c1678b277538e92dd5e5de037ae66b863ba429b` |
| 53 | `theorem` | [comp_toLinearMap](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/comp-tolinearmap--f55016a3e460927200fad0a4.md) | 295 | `result-track:f55016a3e460927200fad0a45b0c587f5db3be72e81b5f6058be58e33660e2ff` |
| 54 | `theorem` | [toLinearMap_id](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tolinearmap-id--4a042d344c4308871bcdb478.md) | 300 | `result-track:4a042d344c4308871bcdb478e1e8d8b47774e336559ee96cab4253c733b9c99d` |
| 55 | `lemma` | [linearMapMk_toAddHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/linearmapmk-toaddhom--6014a3b4dbbe2a0779baaad0.md) | 303 | `result-track:6014a3b4dbbe2a0779baaad0b62eb75a06cea73aad96e4f34edd7b5ba5dde1ae` |
| 56 | `def` | [ofLinearMap](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/oflinearmap--d5d3f512c733ed696d1d7908.md) | 308 | `declaration-track:d5d3f512c733ed696d1d790852e585526b16741c832e6eb209c6114e0f8fda73` |
| 57 | `theorem` | [ofLinearMap_toLinearMap](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/oflinearmap-tolinearmap--10b8f8033e55bc24f4059205.md) | 317 | `result-track:10b8f8033e55bc24f4059205f7f17ea2595b9e0431d5a07104b73cdaa8c30275` |
| 58 | `theorem` | [toLinearMap_ofLinearMap](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tolinearmap-oflinearmap--fcb7eb6b69c053bc3bc27d93.md) | 322 | `result-track:fcb7eb6b69c053bc3bc27d93c4c892b1e369f59858f00e6a2cdca7bd92d90a71` |
| 59 | `theorem` | [ofLinearMap_id](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/oflinearmap-id--07ab450e4214bdb37cad8bed.md) | 327 | `result-track:07ab450e4214bdb37cad8bed838177e8ed3e4df3bffd5c12712cc862ff5b7948` |
| 60 | `theorem` | [map_smul_of_tower](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/map-smul-of-tower--55bbda29fd6379dbafda13ec.md) | 331 | `result-track:55bbda29fd6379dbafda13ecc53202618abaa25c33b6c3efaa1346bc1ac8a1d9` |
| 61 | `instance` | [End](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/end--f72036370aac1965581ad14a.md) | 336 | `declaration-track:f72036370aac1965581ad14af67b93c6040bd748eb067cf484aeaf267d15957f` |
| 62 | `theorem` | [one_apply](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/one-apply--aa54b721deece1e99cc42533.md) | 344 | `result-track:aa54b721deece1e99cc425339b1e6b49656123e633e062e70016623355cdbbbc` |
| 63 | `theorem` | [mul_apply](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/mul-apply--896ccaff77cd10a70bdf0fb2.md) | 348 | `result-track:896ccaff77cd10a70bdf0fb2813e8fc84c0a69e8039a97b4e527fc0db2ac6a05` |
| 64 | `theorem` | [coe_pow](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/coe-pow--04f3b5084d349d26998568db.md) | 351 | `result-track:04f3b5084d349d26998568dbc8bcbf689805b207ab4a6acc7b301e3f9df23f25` |
| 65 | `theorem` | [algebraMap_eq_apply](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/algebramap-eq-apply--3eaf0b4cf48953952311d23c.md) | 354 | `result-track:3eaf0b4cf48953952311d23c783d43f495f278a606b85dc936c3a026fd58b6f6` |
| 66 | `lemma` | [cancel_right](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/cancel-right--78308cbb58559705d7d54a05.md) | 358 | `result-track:78308cbb58559705d7d54a05ed4c5955ec658c408747360b2d88dfd8e63cef14` |
| 67 | `lemma` | [cancel_left](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/cancel-left--3e5b6a76ab7588ae039ffbc1.md) | 362 | `result-track:3e5b6a76ab7588ae039ffbc15cb9112df279480d169f90168aa4b10b004c04fe` |
| 68 | `def` | [toNatAlgHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tonatalghom--31c60faee5b213729cebac49.md) | 374 | `declaration-track:31c60faee5b213729cebac49a7aa2c715556f197f673ac8c44099afeb142a185` |
| 69 | `lemma` | [toNatAlgHom_coe](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tonatalghom-coe--6eb64a7aaaf50cc827f91e05.md) | 380 | `result-track:6eb64a7aaaf50cc827f91e05151f658fd09890103e510451db9ce1bd9c027e87` |
| 70 | `lemma` | [toNatAlgHom_apply](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tonatalghom-apply--785dc7a9acba03f60607d6f1.md) | 383 | `result-track:785dc7a9acba03f60607d6f127133532299841c8191a70f831172b2cdf4ae13b` |
| 71 | `def` | [toIntAlgHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tointalghom--a890452bc64abd3ca7ae4a70.md) | 387 | `declaration-track:a890452bc64abd3ca7ae4a70bc3c11afc5ec1dcb2d3bf3fd5502080a89ac0c0c` |
| 72 | `lemma` | [toIntAlgHom_coe](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tointalghom-coe--51f5ba3b2642a1b705703e7d.md) | 391 | `result-track:51f5ba3b2642a1b705703e7d37a4f5760ebe82589f9f08c5209251945132852e` |
| 73 | `lemma` | [toIntAlgHom_apply](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tointalghom-apply--cd7d8d6e18be0ca428c3e8ae.md) | 394 | `result-track:cd7d8d6e18be0ca428c3e8aea0c7aa3b0f6342d7c995f57d52b35b5462c42b69` |
| 74 | `lemma` | [toIntAlgHom_injective](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/tointalghom-injective--6d8c4f0ce3cc0636ccdb6180.md) | 397 | `result-track:6d8c4f0ce3cc0636ccdb6180e7f954086d52215f619890bc946bda79988b8d97` |
| 75 | `def` | [ofId](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/ofid--67c23e2dba49eaa081a72524.md) | 409 | `declaration-track:67c23e2dba49eaa081a725248208f3a8cf788b91c1c09c307a013a3197af2d16` |
| 76 | `theorem` | [ofId_apply](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/ofid-apply--b177d11f72cd5e22985e5d65.md) | 414 | `result-track:b177d11f72cd5e22985e5d65f19353398d2dd3ec161f38dcbd5ff9473c49c424` |
| 77 | `instance` | [subsingleton_id](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/subsingleton-id--52ba97c95356c3a881c2f32a.md) | 418 | `declaration-track:52ba97c95356c3a881c2f32abd2558bcc1b8c881705378ebbbdd834fdb631790` |
| 78 | `theorem` | [ext_id](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/ext-id--0db230da423a12fb76fea491.md) | 423 | `result-track:0db230da423a12fb76fea491b8ce6e084baddc4b5d6fc4f3e37d09a3df8a4f06` |
| 79 | `theorem` | [comp_ofId](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/comp-ofid--27269e812c50721e8503c83f.md) | 426 | `result-track:27269e812c50721e8503c83f36252faa1bf58b9404e348c7670767f513715001` |
| 80 | `instance` | [(anonymous)](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/instance--93bca68dea1cf07aede9710f.md) | 430 | `declaration-track:93bca68dea1cf07aede9710f5e547e8fcb9f7b1292002c30a4fb7c5ad84e584e` |
| 81 | `theorem` | [smul_units_def](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/smul-units-def--33f38f73b1d51a3f29161108.md) | 438 | `result-track:33f38f73b1d51a3f29161108cc469ac1ae01a1c23896b3b26b6ed06df9707ac0` |
| 82 | `lemma` | [algebraMapSubmonoid_map_eq](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/algebramapsubmonoid-map-eq--16e7426103c821db96a54d36.md) | 445 | `result-track:16e7426103c821db96a54d36979e4bd92475e49b52be6821e8666eacabbf2640` |
| 83 | `lemma` | [algebraMapSubmonoid_le_comap](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/algebramapsubmonoid-le-comap--7d52261bdcb9a1c99a159487.md) | 458 | `result-track:7d52261bdcb9a1c99a15948717ba2cfa37ff2b987020b1133f34f5f5675532b6` |
| 84 | `def` | [toAlgHom](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/toalghom--60c37130fd483c5c71bf33f7.md) | 475 | `declaration-track:60c37130fd483c5c71bf33f75348f36d30e5121cb0b24a6060c1f6d98f4b2cc6` |
| 85 | `theorem` | [toAlgHom_injective](../../../../mathematics/Algebra/Hom/Variant25585fe1a6e457f35884f54521178961c8c812ef4cb8fa67cbb4a01e573b0546.lean/declarations/toalghom-injective--ae1f25721038ce638e8840fb.md) | 480 | `result-track:ae1f25721038ce638e8840fb7a185a57a73ebdb79b5a22c8e7751bcc7b99c644` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
