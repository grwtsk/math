# Verification target: GRWTSK.Algebra.LinearAlgebra.Different.Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ccab6a1e4dd810a08d6e27d4e0c9b5c2384e5a24",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ccab6a1e4dd810a08d6e27d4e0c9b5c2384e5a24`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.DedekindDomain.Ideal` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Discriminant` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.DedekindDomain.IntegralClosure` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.KummerDedekind` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralClosure.IntegralRestrict` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.Trace.Quotient` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Submodule.traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/submodule-tracedual--1566df69262a86c610a1c3d8.md) | 56 | `declaration-track:1566df69262a86c610a1c3d8fbfdc71d6faca6672362dd987a75cd25df38491e` |
| 2 | `lemma` | [mem_traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/mem-tracedual--cbe0f4b31101f396e323129d.md) | 68 | `result-track:cbe0f4b31101f396e323129d7394cbfac76a61def7e7e24836fa0b7cec82461a` |
| 3 | `lemma` | [le_traceDual_iff_map_le_one](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/le-tracedual-iff-map-le-one--cf1a10f1f07422136524b54c.md) | 72 | `result-track:cf1a10f1f07422136524b54c783fa1a463c4f0505cdb342fe8407f426b464f5c` |
| 4 | `lemma` | [le_traceDual_mul_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/le-tracedual-mul-iff--59bd27aea1b9dbfb1c94c2a7.md) | 78 | `result-track:59bd27aea1b9dbfb1c94c2a7124bd0ffae2bc5bc54e64ab06663512aef435fd9` |
| 5 | `lemma` | [le_traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/le-tracedual--b88ae594e613de602e4edbf2.md) | 82 | `result-track:b88ae594e613de602e4edbf2dd7005e6e28c5aebc88b34dff98239e2f3cb56eb` |
| 6 | `lemma` | [le_traceDual_comm](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/le-tracedual-comm--0d09bea13fee71567fd56ce5.md) | 86 | `result-track:0d09bea13fee71567fd56ce56d80fccecb86e161fb3a6c072691d6ff480d5043` |
| 7 | `lemma` | [le_traceDual_traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/le-tracedual-tracedual--641d297c31c71e6344bad447.md) | 89 | `result-track:641d297c31c71e6344bad447c3d882dad02284fee6c6aea73d9667d041ad8a30` |
| 8 | `lemma` | [traceDual_bot](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/tracedual-bot--835b280807bb6b7159272c87.md) | 93 | `result-track:835b280807bb6b7159272c87be10890e2ef43167d421f89e7721e58f9af93e2f` |
| 9 | `lemma` | [traceDual_top'](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/tracedual-top--c1c44f9bb7e24a24c0ec9828.md) | 97 | `result-track:c1c44f9bb7e24a24c0ec982887ef87fd51fb4a0a9e3df2c91c191325267d058a` |
| 10 | `lemma` | [traceDual_top](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/tracedual-top--3083513f6eb54dc28e95e4f6.md) | 115 | `result-track:3083513f6eb54dc28e95e4f6dd164c0b95ee8573ca406a2ba77156be9071296e` |
| 11 | `lemma` | [map_equiv_traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/map-equiv-tracedual--ec0fbb49962b5d33a5747e7c.md) | 130 | `result-track:ec0fbb49962b5d33a5747e7cce189f876333e6e1a73a6a291c0b1562c553672d` |
| 12 | `lemma` | [Submodule.mem_traceDual_iff_isIntegral](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/submodule-mem-tracedual-iff-isintegral--b802f630548dc6f5f56f0b5d.md) | 158 | `result-track:b802f630548dc6f5f56f0b5dfe3a3390339e4c9e97665b83b2c50535426641c9` |
| 13 | `lemma` | [Submodule.one_le_traceDual_one](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/submodule-one-le-tracedual-one--77d12bb0a69f949b76fce323.md) | 164 | `result-track:77d12bb0a69f949b76fce323b45e16180025bcb1b487078a5fc55096e2d461a2` |
| 14 | `lemma` | [isIntegral_discr_mul_of_mem_traceDual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/isintegral-discr-mul-of-mem-tracedual--03748cd93e75dc7533cca4c1.md) | 178 | `result-track:03748cd93e75dc7533cca4c1978bbc3e9b6e28142b992043f7b2ad08099cf734` |
| 15 | `def` | [dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual--c7c8218be59142c314a9fb0b.md) | 218 | `declaration-track:c7c8218be59142c314a9fb0b7c9fe39a5d2d4016c625265f019a4906b23fe37d` |
| 16 | `lemma` | [coe_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/coe-dual--7aba6bbe173fd4e9f4b45baf.md) | 252 | `result-track:7aba6bbe173fd4e9f4b45bafcb80c62c0aed458e42e976e0e298da529028d368` |
| 17 | `lemma` | [coe_dual_one](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/coe-dual-one--0003504d2d0d2434fc3090dc.md) | 258 | `result-track:0003504d2d0d2434fc3090dc9b041a3e9ac8cae667e8298b2dfcf3e9ca46e23d` |
| 18 | `lemma` | [dual_zero](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-zero--5913712d682a586621e6cd49.md) | 264 | `result-track:5913712d682a586621e6cd4949fdd483b1fb78a3a5acb0cfa7b7fe99c69d155d` |
| 19 | `lemma` | [mem_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/mem-dual--485f7375c2aa318e5ea7dfd7.md) | 269 | `result-track:485f7375c2aa318e5ea7dfd7c45505d7e487cb31ede34dabcad9607d7101d8e1` |
| 20 | `lemma` | [dual_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-ne-zero--2e07ecf1887fee668005bf30.md) | 275 | `result-track:2e07ecf1887fee668005bf30fd9e826f0753cd050a746e87054de1e262fb73b0` |
| 21 | `lemma` | [dual_eq_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-eq-zero-iff--dfbfc7d24476288d490f94ca.md) | 296 | `result-track:dfbfc7d24476288d490f94ca28845a651302db459ba515eefb48acf8dc24c45a` |
| 22 | `lemma` | [dual_ne_zero_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-ne-zero-iff--e7f344e2467ae64cf5880049.md) | 300 | `result-track:e7f344e2467ae64cf5880049a4f204428f8f9807debe1e178d6ebfea8a953e87` |
| 23 | `lemma` | [le_dual_inv_aux](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/le-dual-inv-aux--e388181df6f710134cff7dd9.md) | 305 | `result-track:e388181df6f710134cff7dd9d4b416b5fdf9cc13a34da6defbcb0439491a5316` |
| 24 | `lemma` | [one_le_dual_one](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/one-le-dual-one--67d7a7e3aa237648168be93a.md) | 317 | `result-track:67d7a7e3aa237648168be93a71aa06f040850af6fe7f631d5e7fcbf0254e9af9` |
| 25 | `lemma` | [le_dual_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/le-dual-iff--1d05a1d8c8aabd0212ac7330.md) | 321 | `result-track:1d05a1d8c8aabd0212ac7330cc1b3f93972f124d21c62cffb824ac16d431f2ff` |
| 26 | `lemma` | [inv_le_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/inv-le-dual--b1323b832a5189d34daf94cd.md) | 329 | `result-track:b1323b832a5189d34daf94cd2ec347e030e681c2e00a4d76bf0ffbf6b4d72993` |
| 27 | `lemma` | [dual_inv_le](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-inv-le--e73ad4e11cd4b5532d602f25.md) | 334 | `result-track:e73ad4e11cd4b5532d602f259fc0cb1d667fa23e17d270c2eea5185d91373b58` |
| 28 | `lemma` | [dual_eq_mul_inv](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-eq-mul-inv--2a6c01119521dab9c5a3b4aa.md) | 342 | `result-track:2a6c01119521dab9c5a3b4aa4ea23adc43496b44b78d68d040838e21a1b201a7` |
| 29 | `lemma` | [dual_div_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-div-dual--9dfc5e0dfa0963ab072330f9.md) | 353 | `result-track:9dfc5e0dfa0963ab072330f990a561fd9bd554ce0ccc42752bf1ef6bc2d8e39c` |
| 30 | `lemma` | [dual_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-mul-self--8e0a87792b5a0d2434af64d1.md) | 359 | `result-track:8e0a87792b5a0d2434af64d17112e0cf14abcf70ce24fb5c911cc1ac56d67b75` |
| 31 | `lemma` | [self_mul_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/self-mul-dual--724a993de7eff6a67f1de0f9.md) | 363 | `result-track:724a993de7eff6a67f1de0f9de46913bd91469d2f94cd906aa0c994bc50d3071` |
| 32 | `lemma` | [dual_inv](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-inv--88e1db1b4dd2171ccd11c05d.md) | 367 | `result-track:88e1db1b4dd2171ccd11c05dcb6710ec50ccbc13aee6fd13883ee371d29f9932` |
| 33 | `lemma` | [dual_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-dual--284dc949ef960e8df631cc38.md) | 373 | `result-track:284dc949ef960e8df631cc38cea4b737f5a14c9a745b5036fd847b8c2620f562` |
| 34 | `lemma` | [dual_le_dual](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-le-dual--d0a40eb96739934f6383e1e2.md) | 383 | `result-track:d0a40eb96739934f6383e1e2bb4f71de9dcaf261ee59fa0e3043ba8c7fcd3ae2` |
| 35 | `lemma` | [dual_involutive](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-involutive--61e1639cf37523cafe24ebe9.md) | 390 | `result-track:61e1639cf37523cafe24ebe9289e13323714c966bc4744a54c097132e7591609` |
| 36 | `lemma` | [dual_injective](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/dual-injective--a7f7f2df79092323e7bae449.md) | 393 | `result-track:a7f7f2df79092323e7bae4491a73e58980e461ef0c1075d2265b812d3ead3075` |
| 37 | `def` | [differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/differentideal--d20bfdd433ec39d81f62db19.md) | 404 | `declaration-track:d20bfdd433ec39d81f62db19410f7d7b037959f0000eb0434c63f7947c361eca` |
| 38 | `lemma` | [coeSubmodule_differentIdeal_fractionRing](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/coesubmodule-differentideal-fractionring--1c07256fe3263028a662fbdd.md) | 408 | `result-track:1c07256fe3263028a662fbdd51e56248f87f4992df01fae463e12becef1a9ab1` |
| 39 | `lemma` | [coeSubmodule_differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/coesubmodule-differentideal--d317cb84f86f35b7c2679477.md) | 430 | `result-track:d317cb84f86f35b7c2679477282c7a9715b878328e3fbaafba70eb9cae6a722d` |
| 40 | `lemma` | [coeIdeal_differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/coeideal-differentideal--6d6f0759e19fbb5e90bff787.md) | 459 | `result-track:6d6f0759e19fbb5e90bff7870b7902ff900698741b683ebcd1081775ef7c759b` |
| 41 | `lemma` | [differentialIdeal_le_fractionalIdeal_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/differentialideal-le-fractionalideal-iff--95a78371fa2f904da07fde87.md) | 471 | `result-track:95a78371fa2f904da07fde87c3805139282eebbbdbc9d967e9248546efc29fe0` |
| 42 | `lemma` | [differentialIdeal_le_iff](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/differentialideal-le-iff--237e8c75e9e98157f424726e.md) | 480 | `result-track:237e8c75e9e98157f424726e8a50fbe611c112880c0df7b94edc6f4edc24acbe` |
| 43 | `lemma` | [traceForm_dualSubmodule_adjoin](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/traceform-dualsubmodule-adjoin--a5b0a8dc547ea896336e58c8.md) | 489 | `result-track:a5b0a8dc547ea896336e58c8b87dfc3af370fab4d5e19d4021bf1e5c8c83b1e7` |
| 44 | `lemma` | [conductor_mul_differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/conductor-mul-differentideal--54af11f014cfbbecc6873dae.md) | 534 | `result-track:54af11f014cfbbecc6873daef6daac41f13ab6bc62b3b0edac1058cac21cce32` |
| 45 | `lemma` | [aeval_derivative_mem_differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/aeval-derivative-mem-differentideal--eee7604da0be3a7128c83d2d.md) | 575 | `result-track:eee7604da0be3a7128c83d2d91fb61a9b0ca2e183a09c012bb40e92b64aa0c0b` |
| 46 | `lemma` | [pow_sub_one_dvd_differentIdeal_aux](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/pow-sub-one-dvd-differentideal-aux--b951c65aa573c4fff32f8e0f.md) | 585 | `result-track:b951c65aa573c4fff32f8e0f97b318ca61a9aa8fc4d3957b876c1b74a875746c` |
| 47 | `lemma` | [pow_sub_one_dvd_differentIdeal](../../../../../mathematics/Algebra/LinearAlgebra/Different/Variant05e534dd6c273f50b4c16adb879095bd2fd3d426c1cb66ebf161c189e4f77625.lean/declarations/pow-sub-one-dvd-differentideal--66e3e350bdcb3777a35df294.md) | 635 | `result-track:66e3e350bdcb3777a35df2946e17495f09baf934d1066d94cee9ea855e61f8af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
