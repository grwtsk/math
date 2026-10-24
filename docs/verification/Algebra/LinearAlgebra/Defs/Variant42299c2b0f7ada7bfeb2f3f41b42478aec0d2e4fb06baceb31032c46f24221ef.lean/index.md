# Verification target: GRWTSK.Algebra.LinearAlgebra.Defs.Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fced5507b5bf2d98b47bb92d688f7c52484edac0",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fced5507b5bf2d98b47bb92d688f7c52484edac0`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.GroupAction.SubMulAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Submodule](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/submodule--633bb071fe9193eb104c862b.md) | 37 | `declaration-track:633bb071fe9193eb104c862b13a09893137daeb423c4f0a9301c48e8e0d3b5c7` |
| 2 | `instance` | [setLike](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/setlike--acfa18ba5db05d2817372ed6.md) | 50 | `declaration-track:acfa18ba5db05d2817372ed66de02f223efe04a419e92966b73ae52aa562ee15` |
| 3 | `lemma` | [carrier_eq_coe](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/carrier-eq-coe--3aa49d136ab27d523c650156.md) | 56 | `result-track:3aa49d136ab27d523c6501563befaa81a14fda6d2c61c18616e9abe94a21da8a` |
| 4 | `def` | [ofClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/ofclass--a338c792c2c01e82d8aa46e1.md) | 60 | `declaration-track:a338c792c2c01e82d8aa46e16745f6368c201057b4777c4f38a6d3b863f1cc8a` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/instance--425a62e94cea0d7599e87eb8.md) | 67 | `declaration-track:425a62e94cea0d7599e87eb8db4e7bdd140e2a342b53a342176204f658705c8d` |
| 6 | `instance` | [addSubmonoidClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/addsubmonoidclass--e49bb7d3a2348987896a1eb2.md) | 76 | `declaration-track:e49bb7d3a2348987896a1eb2e4fe3f951b0694312880d55bf0f7afbbfe233f95` |
| 7 | `instance` | [smulMemClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/smulmemclass--4d8067404a986062fb98b0ab.md) | 80 | `declaration-track:4d8067404a986062fb98b0ab6b96b4d1b164bed7039a6808078e130844788957` |
| 8 | `theorem` | [mem_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/mem-toaddsubmonoid--292e108be7a0e9526b046700.md) | 84 | `result-track:292e108be7a0e9526b046700a23147de1340a7cfa5d7f736925577e0d5559d8a` |
| 9 | `theorem` | [mem_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/mem-mk--b0deffe398bce53108c379ae.md) | 90 | `result-track:b0deffe398bce53108c379ae9569e19211e808ca4366155a5882020dbfbacfba` |
| 10 | `theorem` | [coe_set_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-set-mk--dcd8248e9c67460a65f501a3.md) | 94 | `result-track:dcd8248e9c67460a65f501a3a6d0ed1e920340580ff9ad7c379941cf1e24fc7a` |
| 11 | `theorem` | [eta](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/eta--498b52bc7f9590e2a759d047.md) | 97 | `result-track:498b52bc7f9590e2a759d047f3413fc068b18815514d92a35d2aaa72954c693e` |
| 12 | `theorem` | [mk_le_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/mk-le-mk--d645f85e25c7ed460baa6328.md) | 101 | `result-track:d645f85e25c7ed460baa63285e349df1a5f5b0a39fc3aeecd3a4b7a1d594811a` |
| 13 | `theorem` | [ext](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/ext--d98aa40b4e7817064e6b5839.md) | 106 | `result-track:d98aa40b4e7817064e6b58394cc1a5c19974ca677713974b28b26b4eb1c56dc2` |
| 14 | `theorem` | [carrier_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/carrier-inj--57acbff8b3ce56d8ed2e92ef.md) | 110 | `result-track:57acbff8b3ce56d8ed2e92efcea3093ff1d0971003fd95ef10780c683228d832` |
| 15 | `def` | [copy](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/copy--ff1d3ef5b71c2cfc1f7bc7a1.md) | 116 | `declaration-track:ff1d3ef5b71c2cfc1f7bc7a1e437fce2e69daeeac257c6672253251818eaae89` |
| 16 | `theorem` | [copy_eq](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/copy-eq--0c8037b7462728f243a86fe9.md) | 122 | `result-track:0c8037b7462728f243a86fe97eba262c12bdaa4a192931e5605a387e1e3d865d` |
| 17 | `theorem` | [toAddSubmonoid_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/toaddsubmonoid-injective--068b5bfc287774de399d260e.md) | 125 | `result-track:068b5bfc287774de399d260ea18e881f709fb515d57bb090241e1da1ab912d66` |
| 18 | `theorem` | [toAddSubmonoid_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/toaddsubmonoid-inj--dd1828984ebc7b86d422eb06.md) | 129 | `result-track:dd1828984ebc7b86d422eb06f756509bdec2b48805f73c89be62c9f4addb3636` |
| 19 | `theorem` | [coe_toAddSubmonoid](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-toaddsubmonoid--4437d25c79d323ab6f7a9802.md) | 135 | `result-track:4437d25c79d323ab6f7a9802a94fb009952176631f8da1434d204aa79e4afd49` |
| 20 | `theorem` | [toSubMulAction_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/tosubmulaction-injective--62bc367cf2d5191c2058b13b.md) | 138 | `result-track:62bc367cf2d5191c2058b13b9c561a21447508c6330efe28d378d3391950bf6b` |
| 21 | `theorem` | [toSubMulAction_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/tosubmulaction-inj--54b92874ec1437a41a0ec72d.md) | 141 | `result-track:54b92874ec1437a41a0ec72d2a8bb29674e392abf84ce47c0c56a7b9be4a829c` |
| 22 | `theorem` | [coe_toSubMulAction](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-tosubmulaction--95a2bdd82d867da24de6ea86.md) | 147 | `result-track:95a2bdd82d867da24de6ea8638353cc06289d994e828d6e2f3c76d052d3ebd47` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/instance--daadf5a894f4928e5af1f146.md) | 159 | `declaration-track:daadf5a894f4928e5af1f1468bc9c2840c6d2016a4ef2d2d7c7d96ae45f1f75a` |
| 24 | `def` | [toModule'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/tomodule--3337067f3ee9400d1cd04c82.md) | 164 | `declaration-track:3337067f3ee9400d1cd04c82ad556de05dff9cc185824d7a251d1b8b0fd7d688` |
| 25 | `theorem` | [mem_carrier](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/mem-carrier--b60a7be49d02d32d782edaf8.md) | 186 | `result-track:b60a7be49d02d32d782edaf8d20434744fcbdd8f29f1d5b4af8366ff872ce908` |
| 26 | `theorem` | [zero_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/zero-mem--8c78e1483408b8057e5ce8fa.md) | 190 | `result-track:8c78e1483408b8057e5ce8fa7e732642f30711ddfc3cd48373ca750ab8874869` |
| 27 | `theorem` | [add_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/add-mem--55896544d098e5cf5af4af38.md) | 193 | `result-track:55896544d098e5cf5af4af386a142489ccb61382e573bb8b37a4ea921168782e` |
| 28 | `theorem` | [smul_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/smul-mem--71019930275b7c94306b66da.md) | 196 | `result-track:71019930275b7c94306b66dada8f97d152984b6cec851f0288966426a17156b8` |
| 29 | `theorem` | [smul_of_tower_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/smul-of-tower-mem--56e295be07c752a722991f11.md) | 199 | `result-track:56e295be07c752a722991f119ac45b1369c3d29f5b017dd86986b17c0d717fdb` |
| 30 | `theorem` | [smul_mem_iff'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/smul-mem-iff--8e1df5ce72d870b0ae0919a1.md) | 204 | `result-track:8e1df5ce72d870b0ae0919a1ceed801363472c7f9addeab9404e91e353f10206` |
| 31 | `lemma` | [smul_mem_iff''](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/smul-mem-iff--c42b728b85df1a4aa87b5617.md) | 209 | `result-track:c42b728b85df1a4aa87b5617603ffa083fcf9a88240ce766d4e4a36643e165b9` |
| 32 | `lemma` | [smul_mem_iff_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/smul-mem-iff-of-isunit--b1ad0d751bc3b08511fdff38.md) | 215 | `result-track:b1ad0d751bc3b08511fdff3857e3656455e864ee1bf71cf06c88ec65eb0cc896` |
| 33 | `instance` | [add](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/add--cd3a5279fe4fdd8df6d70e9c.md) | 220 | `declaration-track:cd3a5279fe4fdd8df6d70e9c6b67e3fc6b5a5e4dd52a199d998c51256df6336a` |
| 34 | `instance` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/zero--f9e8342d4eafce77f1eed6a2.md) | 223 | `declaration-track:f9e8342d4eafce77f1eed6a2314301e891267b5d306094c0077a8f600e6aac9a` |
| 35 | `instance` | [inhabited](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/inhabited--ed6fe9f56c2cd9cae2783191.md) | 226 | `declaration-track:ed6fe9f56c2cd9cae278319194a099a456c3ad57242cb2bc6abdade0e0de600e` |
| 36 | `instance` | [smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/smul--04e4c5dfb2f68d9e6b1805cc.md) | 229 | `declaration-track:04e4c5dfb2f68d9e6b1805ccf82cace3b1047e6594f172b182ed1ebeff2d3865` |
| 37 | `instance` | [isScalarTower](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/isscalartower--617f4710eb85c085894570cf.md) | 232 | `declaration-track:617f4710eb85c085894570cff977421306f8638dbb84e4d22e9d4b872e17f510` |
| 38 | `instance` | [isScalarTower'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/isscalartower--633119ff8c15528a084f9dc5.md) | 235 | `declaration-track:633119ff8c15528a084f9dc5e2624f71c60b777b8717b8e622eece00889c8cd2` |
| 39 | `theorem` | [nonempty](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/nonempty--f84fc99facfb8e203d08abb2.md) | 239 | `result-track:f84fc99facfb8e203d08abb286ecdcf55ac6615f81f518e603c0ebdcb0b95ed0` |
| 40 | `theorem` | [mk_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/mk-eq-zero--32ba79f8a47cd8b56551e1dc.md) | 243 | `result-track:32ba79f8a47cd8b56551e1dc2d56f143a7e13ffd78514b13db877bd53adeea40` |
| 41 | `theorem` | [coe_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-eq-zero--b529832cb66ac1c46937146f.md) | 249 | `result-track:b529832cb66ac1c46937146f1ace6534e5b2d4edccbf727463b29a1c03629013` |
| 42 | `theorem` | [coe_add](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-add--3c96eed4c7817e710dedcefa.md) | 253 | `result-track:3c96eed4c7817e710dedcefa9cab2a78a4d025d47a306c522ba2e8053ad38bd8` |
| 43 | `theorem` | [coe_zero](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-zero--e563d3d7aa4b3bdb9e547c0a.md) | 257 | `result-track:e563d3d7aa4b3bdb9e547c0aa70d35f2690f0d53f50d2db27edb57079af00de5` |
| 44 | `theorem` | [coe_smul](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-smul--3ae1a0451f4a289d3584996b.md) | 261 | `result-track:3ae1a0451f4a289d3584996bdb4c9013aee5a3f99d24f9931c6430cd0e33a205` |
| 45 | `theorem` | [coe_smul_of_tower](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-smul-of-tower--151d0d5d488ec9a5f74fe89c.md) | 265 | `result-track:151d0d5d488ec9a5f74fe89c97bf652cb21510b16ff494fb0d0e9171f655beef` |
| 46 | `theorem` | [coe_mk](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-mk--97fc196d7fcee2f155baa794.md) | 270 | `result-track:97fc196d7fcee2f155baa79466af194f6a692f01fb76a0390a3717f83cef462d` |
| 47 | `theorem` | [coe_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-mem--6caa80adc7cdfa8f7d768316.md) | 273 | `result-track:6caa80adc7cdfa8f7d768316c9442c150488d8a044e80489ba1e70d0e60190fc` |
| 48 | `instance` | [addCommMonoid](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/addcommmonoid--b2cbd29755b1f4814c4d1fce.md) | 278 | `declaration-track:b2cbd29755b1f4814c4d1fce425de242c8b5510085425a9c45045e855a82658e` |
| 49 | `instance` | [module'](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/module--fe7586e5ccd2b5d02351a3c1.md) | 281 | `declaration-track:fe7586e5ccd2b5d02351a3c1ce9ba9f5a452888c23640f4f654fadc0e25425f6` |
| 50 | `instance` | [module](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/module--3ff02768ced6911b3eddc019.md) | 289 | `declaration-track:3ff02768ced6911b3eddc01914e2b950046a23a1f81d423beb56bac4008ff92d` |
| 51 | `instance` | [addSubgroupClass](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/addsubgroupclass--31ef369db7e501ddf2213f2b.md) | 301 | `declaration-track:31ef369db7e501ddf2213f2b4755bbaf5a357dc7d1c3306e51915fec031aea76` |
| 52 | `theorem` | [neg_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/neg-mem--a5b534de522a8b7e4979e92f.md) | 304 | `result-track:a5b534de522a8b7e4979e92fee9ffa37e8c3a5ed8132999dacbf2b9f9fbbd9e2` |
| 53 | `def` | [toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/toaddsubgroup--9e576b55ef341ef53b0e4459.md) | 308 | `declaration-track:9e576b55ef341ef53b0e44593d30524cb008f46573286e82832a7bff0e26bbbb` |
| 54 | `theorem` | [coe_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-toaddsubgroup--b4b4be1f1965d75b8437079a.md) | 312 | `result-track:b4b4be1f1965d75b8437079a3e8718992237d8af21b1e9f1b88ebdf9f7b54116` |
| 55 | `theorem` | [mem_toAddSubgroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/mem-toaddsubgroup--816c87c0fb30792d56846f12.md) | 316 | `result-track:816c87c0fb30792d56846f128efabdee9d926896ba5b72391b376a0a25793317` |
| 56 | `theorem` | [toAddSubgroup_injective](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/toaddsubgroup-injective--bbd2f9c56b9e625736ce6b69.md) | 319 | `result-track:bbd2f9c56b9e625736ce6b6992d7d06647efbc4c519c16dfdc333f9fcbcda43d` |
| 57 | `theorem` | [toAddSubgroup_inj](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/toaddsubgroup-inj--31e0d48ea63da82ecf6e39e8.md) | 323 | `result-track:31e0d48ea63da82ecf6e39e8d79e04f1b6aa7214ffa84aaa674eb5b14e4db709` |
| 58 | `theorem` | [sub_mem](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/sub-mem--adfb204597b2dce6fe29aaab.md) | 328 | `result-track:adfb204597b2dce6fe29aaabe62071df28897f40df6deb6a8ff39e2af5fbed93` |
| 59 | `theorem` | [neg_mem_iff](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/neg-mem-iff--789859e7205493f47c9e19d1.md) | 331 | `result-track:789859e7205493f47c9e19d1cec3c03e7a6354007bd81eb3a56cd0e495052a53` |
| 60 | `theorem` | [add_mem_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/add-mem-iff-left--ec667b24265c5c0f9eba4bfa.md) | 334 | `result-track:ec667b24265c5c0f9eba4bfa368293eccd9e0e8ea2fcc8a6a0e87aad328048e4` |
| 61 | `theorem` | [add_mem_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/add-mem-iff-right--26f9e8421d6d6ff2a16709b3.md) | 337 | `result-track:26f9e8421d6d6ff2a16709b39fa5d6963f04a42ad74c5c0abd079a5732e5a2ac` |
| 62 | `theorem` | [coe_neg](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-neg--18176f62147b693c27d75c24.md) | 340 | `result-track:18176f62147b693c27d75c2436b15fad3c54f6e1e0ca0eddaae42d935966f4fd` |
| 63 | `theorem` | [coe_sub](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/coe-sub--a1cea85f83daa849df3aec43.md) | 343 | `result-track:a1cea85f83daa849df3aec433fea0ef0e47867a12bc371f884deb840ab2988e1` |
| 64 | `theorem` | [sub_mem_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/sub-mem-iff-left--9b2c77685781d3d31add70f8.md) | 346 | `result-track:9b2c77685781d3d31add70f87f22e1339e1f0b3c41c22f455f35b9acf902cbaf` |
| 65 | `theorem` | [sub_mem_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/sub-mem-iff-right--6b0b1dbe5c1b47a6f8f4af08.md) | 349 | `result-track:6b0b1dbe5c1b47a6f8f4af083f4baa958d0d8be30053d4b41f5bbea7860f2731` |
| 66 | `instance` | [addCommGroup](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/addcommgroup--cce3670dfa618330ce2740c5.md) | 352 | `declaration-track:cce3670dfa618330ce2740c5e06f237663a5eb4a62ffa6ed20d551fb758f7b98` |
| 67 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/instance--6a9f77b15b51453b206e712e.md) | 361 | `declaration-track:6a9f77b15b51453b206e712e7c44349aa8700d5a99c375f5a1695cc11279cfb8` |
| 68 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Defs/Variant42299c2b0f7ada7bfeb2f3f41b42478aec0d2e4fb06baceb31032c46f24221ef.lean/declarations/instance--a46ebc7ba8015452334d09f4.md) | 371 | `declaration-track:a46ebc7ba8015452334d09f492b418337d9fcbda5b943eb4cddea2afdc15d3cf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
