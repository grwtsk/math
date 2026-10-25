# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Archimedean.Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0f79551e110f648bb3d91097d3e75f6237fb555",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0f79551e110f648bb3d91097d3e75f6237fb555`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.LeastGreatest` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Rat.Floor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Field.Power` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Archimedean](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/archimedean--d2cdc11c43371144b11d3332.md) | 39 | `declaration-track:d2cdc11c43371144b11d3332ff00827c70f8742eabb4f94a56c7fd65a9f5b531` |
| 2 | `instance` | [OrderDual.archimedean](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/orderdual-archimedean--bd07f8f51c71480314cc8b1f.md) | 45 | `declaration-track:bd07f8f51c71480314cc8b1f11369b2751a7914436d22acc238ad2da1e7e5606` |
| 3 | `theorem` | [exists_lt_nsmul](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-lt-nsmul--a3e520b58cd4548c75948a28.md) | 51 | `result-track:a3e520b58cd4548c75948a28bbb4d5ff0899c36c02561f25430bdea867ff1181` |
| 4 | `theorem` | [existsUnique_zsmul_near_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/existsunique-zsmul-near-of-pos--db41c0fe5cb77435e38b46c3.md) | 62 | `result-track:db41c0fe5cb77435e38b46c318245baa46ecf6b4f29d8d4cc50ccc0df9a5a9b3` |
| 5 | `theorem` | [existsUnique_zsmul_near_of_pos'](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/existsunique-zsmul-near-of-pos--7227521cf7fef45973987554.md) | 82 | `result-track:7227521cf7fef459739875546e4065eb6b704984b8c3d831cc98d7ca1ddd1ad9` |
| 6 | `theorem` | [existsUnique_sub_zsmul_mem_Ico](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/existsunique-sub-zsmul-mem-ico--f259b0dfd62bc01134f59fea.md) | 88 | `result-track:f259b0dfd62bc01134f59feaa324744c4aa4d96daca760f24b22ad011dd00a39` |
| 7 | `theorem` | [existsUnique_add_zsmul_mem_Ico](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/existsunique-add-zsmul-mem-ico--badc54ccefe19f871aae5fdc.md) | 94 | `result-track:badc54ccefe19f871aae5fdcb959ac0b647daf2473693294a55f04733f8c2c4b` |
| 8 | `theorem` | [existsUnique_add_zsmul_mem_Ioc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/existsunique-add-zsmul-mem-ioc--0fdb7ebb91219325ec14d231.md) | 101 | `result-track:0fdb7ebb91219325ec14d231cc7eede0b9835a55ef90392bf784a8072ec765d0` |
| 9 | `theorem` | [existsUnique_sub_zsmul_mem_Ioc](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/existsunique-sub-zsmul-mem-ioc--7b2caf671b70200420e1e22a.md) | 109 | `result-track:7b2caf671b70200420e1e22a69ccf304def855357447f5b2514943cfd8cdeafd` |
| 10 | `theorem` | [exists_nat_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-nat-gt--2f458f9fec0de8afea215937.md) | 118 | `result-track:2f458f9fec0de8afea2159373b2cfd17cc2ecfb8773bf514e49aa77606fc69f8` |
| 11 | `theorem` | [exists_nat_ge](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-nat-ge--9b4304fd3d0c6f391da31674.md) | 122 | `result-track:9b4304fd3d0c6f391da3167479095ca40a97d91c0a219ef3a61f477ea383b791` |
| 12 | `theorem` | [add_one_pow_unbounded_of_pos](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/add-one-pow-unbounded-of-pos--0831b117cfbf01fe2430c7e3.md) | 127 | `result-track:0831b117cfbf01fe2430c7e34b2ed65313be64412613856e98fb7ffd0582f1e6` |
| 13 | `theorem` | [pow_unbounded_of_one_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/pow-unbounded-of-one-lt--28a585feda664a88c39992ee.md) | 145 | `result-track:28a585feda664a88c39992ee3040da203f1a0fa64d3a0860c3ee903602005994` |
| 14 | `theorem` | [exists_int_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-int-gt--35ab7d6d7fe52140bd87b96a.md) | 149 | `result-track:35ab7d6d7fe52140bd87b96a098f439129ff7bac4799a02596d7f71382f81f30` |
| 15 | `theorem` | [exists_int_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-int-lt--1f18000be152cd1bdd522348.md) | 154 | `result-track:1f18000be152cd1bdd522348df34ca22103f5336c2529f608e5e125f3224de4e` |
| 16 | `theorem` | [exists_floor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-floor--1037e9b1c73253bdc7b4059d.md) | 159 | `result-track:1037e9b1c73253bdc7b4059de6599507b5bcfb39b2fa61849f269a436f5fd495` |
| 17 | `theorem` | [exists_nat_pow_near](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-nat-pow-near--322bfbc5f42c56a4b20eb3cc.md) | 180 | `result-track:322bfbc5f42c56a4b20eb3ccabcbb56be3cb88a23bccd244497ed8a85db6b179` |
| 18 | `theorem` | [exists_mem_Ico_zpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-mem-ico-zpow--b67dd00f0ba631029f8c4ad8.md) | 202 | `result-track:b67dd00f0ba631029f8c4ad82ea0d04a57838cbf1e10484ff77c6ecc1b0e2b61` |
| 19 | `theorem` | [exists_mem_Ioc_zpow](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-mem-ioc-zpow--30960f9f4e0bfa6dd37c5496.md) | 224 | `result-track:30960f9f4e0bfa6dd37c5496c9de53c63d7b32014e6dabba796b7c4d5243fd7e` |
| 20 | `theorem` | [exists_pow_lt_of_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-pow-lt-of-lt-one--8275abce9c977ec11b7de214.md) | 232 | `result-track:8275abce9c977ec11b7de214c69a32e695dc6a09cd63561b94d2199fd8156da0` |
| 21 | `theorem` | [exists_nat_pow_near_of_lt_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-nat-pow-near-of-lt-one--1975982b09f57011a91d0bcf.md) | 244 | `result-track:1975982b09f57011a91d0bcf3a343d515fb7e21ad9b384083a43b0d9ae9fca0a` |
| 22 | `theorem` | [exists_rat_gt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-rat-gt--3ecd9bc4d09cc15611815bc1.md) | 253 | `result-track:3ecd9bc4d09cc15611815bc10d40d1e8d373182eeb09ea24aa8630ada5ddd226` |
| 23 | `theorem` | [exists_rat_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-rat-lt--aa9b0c83d4466cc45d6c1535.md) | 258 | `result-track:aa9b0c83d4466cc45d6c1535d1ac228986e5c4a78282234dd50b14ec8fd82211` |
| 24 | `theorem` | [exists_rat_btwn](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-rat-btwn--56e1cf86aa6f429ec99e7236.md) | 263 | `result-track:56e1cf86aa6f429ec99e7236bca5347ebb19d1ba7b0f664b11a82789e682c6e4` |
| 25 | `theorem` | [le_of_forall_rat_lt_imp_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/le-of-forall-rat-lt-imp-le--98396b1a79c8178ce49d5548.md) | 284 | `result-track:98396b1a79c8178ce49d554855ab0f4ed07803ef8cd9d7d487380ce0f4bcab51` |
| 26 | `theorem` | [le_of_forall_lt_rat_imp_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/le-of-forall-lt-rat-imp-le--9cc90f49328b60fcf8562a3f.md) | 290 | `result-track:9cc90f49328b60fcf8562a3f41efabe7d794cbcbfd0469f5a8757637c5ea0ccb` |
| 27 | `theorem` | [le_iff_forall_rat_lt_imp_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/le-iff-forall-rat-lt-imp-le--0c197588453370e11dbd5955.md) | 296 | `result-track:0c197588453370e11dbd595567e5ca430010c26f584cf7cf90174b6388d74ce4` |
| 28 | `theorem` | [le_iff_forall_lt_rat_imp_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/le-iff-forall-lt-rat-imp-le--b8310795db75f769dd878753.md) | 299 | `result-track:b8310795db75f769dd878753689e767de2a421cf58ab7a18506328138e537d0d` |
| 29 | `theorem` | [eq_of_forall_rat_lt_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/eq-of-forall-rat-lt-iff-lt--70e7eb786e8a783b934f44e5.md) | 302 | `result-track:70e7eb786e8a783b934f44e535c3991593b5538016c154bc336c98a54e1ca3b9` |
| 30 | `theorem` | [eq_of_forall_lt_rat_iff_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/eq-of-forall-lt-rat-iff-lt--b61db6e7f09abbbd38fd7f2c.md) | 307 | `result-track:b61db6e7f09abbbd38fd7f2cb25c3511eee17085541f3db0abd397e499b8fe36` |
| 31 | `theorem` | [exists_nat_one_div_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-nat-one-div-lt--c32f1f12a97391bf4c880c6c.md) | 312 | `result-track:c32f1f12a97391bf4c880c6c9a294be54acd31483d59d438ce83ee335957923d` |
| 32 | `theorem` | [exists_pos_rat_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-pos-rat-lt--148c38c030199dce03959943.md) | 321 | `result-track:148c38c030199dce0395994318a06994a0044811f4a97f1c6b0c839b380e3c2c` |
| 33 | `theorem` | [exists_rat_near](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/exists-rat-near--bfc6b8f619be947c685e21cd.md) | 325 | `result-track:bfc6b8f619be947c685e21cd221734d6d8e0949bf87ec9a44a47d1ecd52e3379` |
| 34 | `theorem` | [archimedean_iff_nat_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/archimedean-iff-nat-lt--58dd5e35eb0ff2deeb2e274f.md) | 337 | `result-track:58dd5e35eb0ff2deeb2e274fc065e9f7d5997e1b4d9e3182339b88714f55e4c8` |
| 35 | `theorem` | [archimedean_iff_nat_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/archimedean-iff-nat-le--9994d093b917ee9729abeaf2.md) | 343 | `result-track:9994d093b917ee9729abeaf2d8fa80b28bd367a06eb3d809e079b455a246296e` |
| 36 | `theorem` | [archimedean_iff_int_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/archimedean-iff-int-lt--c5e2e3538c2eea1752fd176d.md) | 350 | `result-track:c5e2e3538c2eea1752fd176db11c8af950c82840cf4ef4a4351c641ac963e8ed` |
| 37 | `theorem` | [archimedean_iff_int_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/archimedean-iff-int-le--294dcb179275164f6b45951d.md) | 359 | `result-track:294dcb179275164f6b45951d0fbbb76a84cae659f53ede51b2d7b6bda0fbf73b` |
| 38 | `theorem` | [archimedean_iff_rat_lt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/archimedean-iff-rat-lt--03ad7ce6969ae0a55058a0f9.md) | 366 | `result-track:03ad7ce6969ae0a55058a0f970594e0495d396b2384d957d47ce33dfef4f3aca` |
| 39 | `theorem` | [archimedean_iff_rat_le](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/archimedean-iff-rat-le--32bd060316e9f3e33a76e1e0.md) | 375 | `result-track:32bd060316e9f3e33a76e1e0c3e90b18c53bc7c1741a3e6b0084e5746dc968aa` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/instance--174eb79ec0658b414a1485b6.md) | 384 | `declaration-track:174eb79ec0658b414a1485b6a63864ab065ee524d9790f9a6f3c48a13ee8412d` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/instance--6cf07cb937a0d230a28f5af5.md) | 389 | `declaration-track:6cf07cb937a0d230a28f5af5495a27537ff6b7fea68606a6270cd30605a09386` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/instance--01e1701564660c41ecc9f0f3.md) | 396 | `declaration-track:01e1701564660c41ecc9f0f313a576df166c8a12b1ebadeee8336ad026537c4e` |
| 43 | `def` | [Archimedean.floorRing](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/archimedean-floorring--2a1e6b702d4a1f4d69bca988.md) | 401 | `declaration-track:2a1e6b702d4a1f4d69bca98850f542b353dd7e533556a979ce79b8f2553d219c` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Archimedean/Variantf2b591c850ac2472438ff2c9a3ab230e1776efd681f243a4c6c31f06436204f6.lean/declarations/instance--485ab33952b5b28305db8031.md) | 408 | `declaration-track:485ab33952b5b28305db80319a0ad4e35cdbae24fc1878395a1c85a649edee01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
