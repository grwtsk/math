# Verification target: GRWTSK.Algebra.LinearAlgebra.Invariant.Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "64ca0f0519a4d8358774c8944e447259f4456d1c",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `64ca0f0519a4d8358774c8944e447259f4456d1c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/invtsubmodule--b4f748e8789f51198928eacd.md) | 42 | `declaration-track:b4f748e8789f51198928eacd47a950ba5c187d7a22145c254759b0503ffb4376` |
| 2 | `lemma` | [mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/mem-invtsubmodule--d0a05a2cd6818f5e63a661a8.md) | 51 | `result-track:d0a05a2cd6818f5e63a661a809020d3622ea517ddf6934ce3c71196eca5727e8` |
| 3 | `theorem` | [mem_invtSubmodule_iff_map_le](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/mem-invtsubmodule-iff-map-le--9f77055ab161c9f98cc4d52f.md) | 56 | `result-track:9f77055ab161c9f98cc4d52f5d4076e5b7376160ce6bded6e3a231793e09b080` |
| 4 | `theorem` | [mem_invtSubmodule_iff_mapsTo](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/mem-invtsubmodule-iff-mapsto--c84b926754c2be0b2c7fdbde.md) | 60 | `result-track:c84b926754c2be0b2c7fdbdec82e40747bdb5237a143bc40ba3aa8fcbc91401d` |
| 5 | `theorem` | [mem_invtSubmodule_iff_forall_mem_of_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/mem-invtsubmodule-iff-forall-mem-of-mem--7553d3bc6d34919ced3d80fe.md) | 65 | `result-track:7553d3bc6d34919ced3d80fe95b22c61fe874e6b3781878685d93353e2f7cea7` |
| 6 | `lemma` | [mem_invtSubmodule_symm_iff_le_map](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/mem-invtsubmodule-symm-iff-le-map--4b4bd726685b787fdda67b93.md) | 70 | `result-track:4b4bd726685b787fdda67b93f8ca7693e1397edf6d292c75372717ae290e9e61` |
| 7 | `lemma` | [invtSubmodule_inf_invtSubmodule_le_invtSubmodule_add](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/invtsubmodule-inf-invtsubmodule-le-invtsubmodule-add--9172be95df016fe35c910ee8.md) | 74 | `result-track:9172be95df016fe35c910ee8489ac938d03fd9487690d054ecdeb291fb09ec74` |
| 8 | `lemma` | [invtSubmodule_le_invtSubmodule_smul](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/invtsubmodule-le-invtsubmodule-smul--558b88aaa2537d1c2cded69a.md) | 83 | `result-track:558b88aaa2537d1c2cded69a35bf87cf6dd73d7f271815c858094e5c91b6f244` |
| 9 | `lemma` | [invtSubmodule_smul](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/invtsubmodule-smul--32a8751716306d4c110ac560.md) | 87 | `result-track:32a8751716306d4c110ac560850df6980196e89308fc64a8ebe5191d60dd3ff6` |
| 10 | `lemma` | [inf_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/inf-mem--ad70a133031169792b1b7a9f.md) | 98 | `result-track:ad70a133031169792b1b7a9f8d63b6991c4f9fa7202d96f62b04718db04d1490` |
| 11 | `lemma` | [sup_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/sup-mem--c5b41b711f308ee153d4c032.md) | 102 | `result-track:c5b41b711f308ee153d4c032db1be26c93e0b1cc816ce934f254f97213ea7aa3` |
| 12 | `lemma` | [top_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/top-mem--fc189da3e54ffd3a82be6dea.md) | 110 | `result-track:fc189da3e54ffd3a82be6dead88e7706d1d008a43614ad01df82e7f40e779d2c` |
| 13 | `lemma` | [bot_mem](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/bot-mem--25a701aaa1d72523486ffbd5.md) | 114 | `result-track:25a701aaa1d72523486ffbd53a59bbf7796db9d16fcaa647393611f4c9503426` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/instance--369edfd5d8ec09f833555e42.md) | 116 | `declaration-track:369edfd5d8ec09f833555e42a0739b50084538cd2c810fecaf448e4474a743f6` |
| 15 | `lemma` | [zero](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/zero--02162187a811862b694b0efb.md) | 123 | `result-track:02162187a811862b694b0efba37595f37d054c00844dfcb585a9e7ce0285c73f` |
| 16 | `lemma` | [id](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/id--e14361065f84e17f09fc5140.md) | 128 | `result-track:e14361065f84e17f09fc5140e33b9f2a3697249e41dd9b6149685dd814c79ee1` |
| 17 | `lemma` | [one](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/one--f5dd40a646df0491769da8eb.md) | 133 | `result-track:f5dd40a646df0491769da8eb290e9ef6fe83e89af6e4cb212c33292b349189a4` |
| 18 | `lemma` | [mk_eq_bot_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/mk-eq-bot-iff--e69c49ee9ed0448278501896.md) | 138 | `result-track:e69c49ee9ed044827850189682fc9360da8c9262f837068ead0123e94f0b8e60` |
| 19 | `lemma` | [mk_eq_top_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/mk-eq-top-iff--c99368086fcdb82632fd7ba2.md) | 143 | `result-track:c99368086fcdb82632fd7ba2fb27f5087cf9232a09f201a322728a07b3157ed2` |
| 20 | `lemma` | [disjoint_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/disjoint-mk-iff--655ecea76e2e1d0e10ae3271.md) | 148 | `result-track:655ecea76e2e1d0e10ae3271137193c9e5b9b92cafe66bf8685ca0237c3ed61f` |
| 21 | `lemma` | [disjoint_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/disjoint-iff--3584d5396e3b765bb063e81f.md) | 154 | `result-track:3584d5396e3b765bb063e81f5a73310e5a396318e2340a9fdf0d227cc5133e6f` |
| 22 | `lemma` | [codisjoint_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/codisjoint-mk-iff--0a3267848bca7ac7b45497cc.md) | 161 | `result-track:0a3267848bca7ac7b45497cc0615efc4708c7c88769220ea64b60746f6aaa7dd` |
| 23 | `lemma` | [codisjoint_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/codisjoint-iff--224a0047cdc13e80f3d7a0bf.md) | 167 | `result-track:224a0047cdc13e80f3d7a0bf0bdd1822c29de8ccee644bd597c824ddbff7b1f4` |
| 24 | `lemma` | [isCompl_mk_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/iscompl-mk-iff--06ba9d311a2bed95c140976e.md) | 174 | `result-track:06ba9d311a2bed95c140976ee2df7c8fe7b38b4d9da34f3765e68629ac0a2a82` |
| 25 | `lemma` | [isCompl_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/iscompl-iff--115a676a10a852b3c185b948.md) | 179 | `result-track:115a676a10a852b3c185b948c7811ddc08bbe39b31a02adc8bf0132ff1b2dcdd` |
| 26 | `lemma` | [map_subtype_mem_of_mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/map-subtype-mem-of-mem-invtsubmodule--5883ab16418527443aa19c23.md) | 186 | `result-track:5883ab16418527443aa19c233f481ccdf6cabd43f29e4e2feb92e5a10625e160` |
| 27 | `lemma` | [comp](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/comp--11c812bd12bf943ed2844f7a.md) | 194 | `result-track:11c812bd12bf943ed2844f7aef13d4cf3fc8cdf61e487ca93c7e644ac760f7b7` |
| 28 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.InvtSubmodule.Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.LinearEquiv.map_mem_invtSubmodule_conj_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/root-grwtsk-algebra-linearalgebra-invtsubmodule-variant2a1d291c62179e9d5--da81ac03db63144ec18e3643.md) | 199 | `result-track:da81ac03db63144ec18e36439401c80f1b52174ce11a0d054b2cf6bf17a6dcfb` |
| 29 | `lemma` | [_root_.GRWTSK.Algebra.LinearAlgebra.InvtSubmodule.Variant2a1d291c62179e9d54e915cc3a81f2e59eb85c0fb3745b8dfaa151e11b871837.LinearEquiv.map_mem_invtSubmodule_iff](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/root-grwtsk-algebra-linearalgebra-invtsubmodule-variant2a1d291c62179e9d5--48d5d77322efb50ecd9ed66b.md) | 207 | `result-track:48d5d77322efb50ecd9ed66b06311737db1070f56ff0180118af3b587c324d29` |
| 30 | `lemma` | [span_orbit_mem_invtSubmodule](../../../../../mathematics/Algebra/LinearAlgebra/Invariant/Variant81761be901041be79dae154d14c0472e9f5cbaf3065df47ffcd099734d6a785d.lean/declarations/span-orbit-mem-invtsubmodule--e31410f5284a61a8e1fbbb75.md) | 216 | `result-track:e31410f5284a61a8e1fbbb75acd6f87fa5638f40068b3a30bc827c38ec8947e9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
