# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Grp.Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ddf010a791bf0dc0074b8ff80a2e09fd835f0e4",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ddf010a791bf0dc0074b8ff80a2e09fd835f0e4`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Monoidal.Cartesian.Mon_` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.Pullback.CommSq` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.ExactFunctor` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [Grp_Class](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/grp-class--117439abbfe761b35030ec47.md) | 32 | `declaration-track:117439abbfe761b35030ec475ad1741cdc84ce171c740d24b04dfb3b8ac5a65b` |
| 2 | `theorem` | [left_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/left-inv--7e08038b7b1b053f802efe89.md) | 50 | `result-track:7e08038b7b1b053f802efe890951eefba5d195edfd474a42b7d7a9337404bd32` |
| 3 | `theorem` | [right_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/right-inv--97a1c151f0639ce0eefe8cdb.md) | 53 | `result-track:97a1c151f0639ce0eefe8cdbdb7902f6476b70007b0bbbd738dcf69bf81ed71b` |
| 4 | `structure` | [Grp_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/grp--6cb643702ac781387f34abf4.md) | 60 | `declaration-track:6cb643702ac781387f34abf4d2a7a767eed221cb6c584411496d5bc0c346771a` |
| 5 | `def` | [trivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/trivial--68df91ace93f562ebd66f7c3.md) | 73 | `declaration-track:68df91ace93f562ebd66f7c321d16ba332492918bef527bfc07b183b2a8583d0` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/instance--f35a3013136c3620556a2126.md) | 76 | `declaration-track:f35a3013136c3620556a2126d83fc18e889021c972e60d3a65dd6e6831a804e2` |
| 7 | `def` | [mk'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mk--ac71f68e018730fd0cd099fc.md) | 82 | `declaration-track:ac71f68e018730fd0cd099fc9fada9db109e148920dcb3141733a780d37b906d` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/instance--3bab93dedf57048eccc4d6d2.md) | 86 | `declaration-track:3bab93dedf57048eccc4d6d2873ba5b2c0b724af17e3cd67aaf9d36c61d30467` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/instance--d11a2ec708983d9d088f11f4.md) | 91 | `declaration-track:d11a2ec708983d9d088f11f4fa38078522f39e40a18933dc816b1462dd2a6afb` |
| 10 | `theorem` | [id_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/id-hom--5924b71cd6200d5b30a66315.md) | 95 | `result-track:5924b71cd6200d5b30a6631541bcfa0879fe103d0e852ad8c88ee04562d3fd02` |
| 11 | `theorem` | [comp_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/comp-hom--9e7d73a26f06a01c3e5848fd.md) | 99 | `result-track:9e7d73a26f06a01c3e5848fde768274413bdd154ce94bfc2cf8410c8bf02501c` |
| 12 | `theorem` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/hom-ext--af9669b3baf1f63cdd98f820.md) | 104 | `result-track:af9669b3baf1f63cdd98f82024be914bdccf520c6a1fcb98d89ffbd6c3578f4e` |
| 13 | `lemma` | [id'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/id--df4079616508331b268445ed.md) | 108 | `result-track:df4079616508331b268445ed762760db5d803462c6fc6351b40fa6f7f196d07b` |
| 14 | `lemma` | [comp'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/comp--a5ebd37889bdfd155300ad79.md) | 111 | `result-track:a5ebd37889bdfd155300ad793606a077a155701d082bb4979151e31c7fd08ab8` |
| 15 | `theorem` | [lift_comp_inv_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/lift-comp-inv-right--97d59a5e0e4c27518570bb0b.md) | 115 | `result-track:97d59a5e0e4c27518570bb0bcf349760da52f4a2fc996cb5fbc68624976b78e7` |
| 16 | `theorem` | [lift_inv_comp_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/lift-inv-comp-right--e01f04a8617fb6fa5f212ed6.md) | 121 | `result-track:e01f04a8617fb6fa5f212ed6f3705cd883749cab2cdf18360f6abab16b537685` |
| 17 | `theorem` | [lift_comp_inv_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/lift-comp-inv-left--0d4c291505d69e37c4e2d249.md) | 127 | `result-track:0d4c291505d69e37c4e2d24944dc5d82a991a7c73e1e9d65cf9c222586e2e24e` |
| 18 | `theorem` | [lift_inv_comp_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/lift-inv-comp-left--c57a668b12e5f451f5a48270.md) | 133 | `result-track:c57a668b12e5f451f5a482709ed3573c122220d76891bdc1d5d137db71331da5` |
| 19 | `theorem` | [eq_lift_inv_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/eq-lift-inv-left--e5c0107f7ad63b9b44a9be9a.md) | 138 | `result-track:e5c0107f7ad63b9b44a9be9aca9f7c61a8820aaac960580e454bf9d654365f18` |
| 20 | `theorem` | [lift_inv_left_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/lift-inv-left-eq--c4be002b93e2d2bad23364d3.md) | 142 | `result-track:c4be002b93e2d2bad23364d3f7de08de67ace5e2c435992094d302db9be5b54c` |
| 21 | `theorem` | [eq_lift_inv_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/eq-lift-inv-right--eb878e96d6a3723d439b0062.md) | 146 | `result-track:eb878e96d6a3723d439b00625e9edc70004282a2784b449fce6bdf616ae2cf4b` |
| 22 | `theorem` | [lift_inv_right_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/lift-inv-right-eq--afbea1fb4af410d6b2115a93.md) | 150 | `result-track:afbea1fb4af410d6b2115a93ddcc3a1a78711ee07f10f5bc61d190d0ba055b32` |
| 23 | `theorem` | [lift_left_mul_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/lift-left-mul-ext--c1b07f0e31ec4873062aa094.md) | 154 | `result-track:c1b07f0e31ec4873062aa094c837137044303469e5581cdd4461388ec16f4e0c` |
| 24 | `theorem` | [inv_comp_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/inv-comp-inv--b43e3a9886ac9f9775dca5c6.md) | 159 | `result-track:b43e3a9886ac9f9775dca5c6dd41b056abd0e4b6b564ac4529f0793ab59d9fd7` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/instance--34467185f04c87369c0f1664.md) | 163 | `declaration-track:34467185f04c87369c0f16644a9977e9163be8e2121d5d24cf89255f1c37bbff` |
| 26 | `theorem` | [inv_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/inv-inv--0034e70ff24fad0ca0a3369d.md) | 167 | `result-track:0034e70ff24fad0ca0a3369d1e492e3cc78d03dfdf00350180cf29725e0858e1` |
| 27 | `theorem` | [mul_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mul-inv--8a4bba931da3e287f6a8ed60.md) | 171 | `result-track:8a4bba931da3e287f6a8ed6022fa277e703c0a0cf33360b3908d993a03dab765` |
| 28 | `theorem` | [tensorHom_inv_inv_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/tensorhom-inv-inv-mul--efe796592498680ca23c17f0.md) | 182 | `result-track:efe796592498680ca23c17f0af33ceb87bdc9eefddc033d9f8c916d765cf6c00` |
| 29 | `def` | [mulRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mulright--bc5118d57dae990445132695.md) | 188 | `declaration-track:bc5118d57dae9904451326952e958fd1c1bfaa29fc47ddad4873cd9802e06a6f` |
| 30 | `lemma` | [mulRight_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mulright-one--394bf6fc7604398b0636d507.md) | 195 | `result-track:394bf6fc7604398b0636d5072bcc6e4e7ec057370a0d0f13193eab688753f2f8` |
| 31 | `theorem` | [isPullback](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/ispullback--fe290e12d4d81d3abef200ff.md) | 203 | `result-track:fe290e12d4d81d3abef200ffb10f6f3ac57ea15acbac19d2e280a8857ed1e4f7` |
| 32 | `theorem` | [inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/inv-hom--1f9f8e66d0e91370b6d934a7.md) | 237 | `result-track:1f9f8e66d0e91370b6d934a78591ebe8a5f7ab82493a486e539c139553a563e7` |
| 33 | `lemma` | [_root_.IsMon_Hom.inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/root-ismon-hom-inv-hom--a476553d30c39b604f4ca4d4.md) | 245 | `result-track:a476553d30c39b604f4ca4d42dac2bd707b13c6903dc57f402cb529fcb9f3f15` |
| 34 | `lemma` | [_root_.Grp_Class.toMon_Class_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/root-grp-class-tomon-class-injective--d8dfbad7a2d2537002edbfd0.md) | 249 | `result-track:d8dfbad7a2d2537002edbfd08b93f42ae0087f659ffc29c3e2df55b12f4d8b94` |
| 35 | `lemma` | [_root_.Grp_Class.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/root-grp-class-ext--69b053a95a855622785ad30e.md) | 261 | `result-track:69b053a95a855622785ad30eab40cb5f6da9d8485d1d5da34f70e68bd1515696` |
| 36 | `def` | [forget₂Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/forget-mon--5acc86593daaf4e475e85f1f.md) | 270 | `declaration-track:5acc86593daaf4e475e85f1f91ce96dd3fe0cceda650ed1b99f2cfd2bb2583a1` |
| 37 | `def` | [fullyFaithfulForget₂Mon_](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/fullyfaithfulforget-mon--79d0a6f96fd2e1fe4365864e.md) | 274 | `declaration-track:79d0a6f96fd2e1fe4365864eb83d591e8a2906b7101e98fd9f2d55a0e2424399` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/instance--6649c36c47c04d22fff0d129.md) | 277 | `declaration-track:6649c36c47c04d22fff0d12989f8116e866c9f738ea249b8bd2703012f83106f` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/instance--c884a4162c72d46a3bf04448.md) | 278 | `declaration-track:c884a4162c72d46a3bf0444810eb69bb277bf180bf89142ce5f5403a3fa95c6e` |
| 40 | `theorem` | [forget₂Mon_obj_one](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/forget-mon-obj-one--aa6adb2fbe68fb7fdc4ee66f.md) | 281 | `result-track:aa6adb2fbe68fb7fdc4ee66f7c5bec54e60818fe31529a1334ceead2e813c69b` |
| 41 | `theorem` | [forget₂Mon_obj_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/forget-mon-obj-mul--099d31cf12ea1c74351f8f76.md) | 285 | `result-track:099d31cf12ea1c74351f8f76007a39227817d87e0f81ae77877fe84bcca346ca` |
| 42 | `theorem` | [forget₂Mon_map_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/forget-mon-map-hom--256f115a578c0e037fddb2b3.md) | 289 | `result-track:256f115a578c0e037fddb2b326d54ec0598a55e29a040e915fce9de6a4fa386b` |
| 43 | `def` | [forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/forget--4f738c1008f9d0b6ef2cddfa.md) | 294 | `declaration-track:4f738c1008f9d0b6ef2cddfa73cd63831d52d6231ef0131d59556bcbc55fe9b8` |
| 44 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/instance--58b2d68406de76bab8c11fc7.md) | 297 | `declaration-track:58b2d68406de76bab8c11fc7b3220bb78d83dd1c9716de2d9d5a18aa27e48a9b` |
| 45 | `theorem` | [forget₂Mon_comp_forget](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/forget-mon-comp-forget--1031544a2cf77d31d2ee813d.md) | 300 | `result-track:1031544a2cf77d31d2ee813d6e602bab65e5520e8c70c66d39da07b5b39e1ecf` |
| 46 | `def` | [mkIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mkiso--c6536e2735e77628aaa908cb.md) | 310 | `declaration-track:c6536e2735e77628aaa908cb15c2b8bc816da7205887b3226b069cd68f1db3dd` |
| 47 | `lemma` | [mkIso_hom_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mkiso-hom-hom--1fecca79325ec6759e2b47c5.md) | 313 | `result-track:1fecca79325ec6759e2b47c5121f14a9f25cae7f3131552a83eda5ef37021278` |
| 48 | `lemma` | [mkIso_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mkiso-inv-hom--a5a19bfe181cb616b00b5c02.md) | 314 | `result-track:a5a19bfe181cb616b00b5c026253d837e34e057a4842118881a242be21eb8489` |
| 49 | `instance` | [uniqueHomFromTrivial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/uniquehomfromtrivial--6c6ed80d5e41e98a3b56ba0e.md) | 318 | `declaration-track:6c6ed80d5e41e98a3b56ba0eccc58fbcfeefb21613f240b6fadd38cae439d07d` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/instance--8d4f8fbe299a8606ed94239f.md) | 321 | `declaration-track:8d4f8fbe299a8606ed94239f449b9536d8e7bcc5940a67742a03381134d0a84a` |
| 51 | `def` | [mapGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mapgrp--15801fdf5c35fd748a0ea587.md) | 339 | `declaration-track:15801fdf5c35fd748a0ea587e7cbc74374d02f3896086af9aac80a1175c8709a` |
| 52 | `def` | [mapGrpIdIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mapgrpidiso--fee92295751cb6df0ec774fb.md) | 353 | `declaration-track:fee92295751cb6df0ec774fba12aaa1c9b5bb311bb5251c141a517dbd33ff320` |
| 53 | `def` | [mapGrpCompIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mapgrpcompiso--a33318c803ddb67122aea385.md) | 359 | `declaration-track:a33318c803ddb67122aea385305f2c25117a4c378822395c73b2de7476ec10d6` |
| 54 | `def` | [mapGrpNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mapgrpnattrans--ef1c43ae69417931fc091b5d.md) | 365 | `declaration-track:ef1c43ae69417931fc091b5dddee647871211afbd45ce73fb332b821768f12b5` |
| 55 | `def` | [mapGrpNatIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mapgrpnatiso--3bf2d35a9f94cf75abae141e.md) | 370 | `declaration-track:3bf2d35a9f94cf75abae141e20489950601b0e7501f113ea38dfde92de65da10` |
| 56 | `def` | [mapGrpFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mapgrpfunctor--70cd54e578bc0c54c930d884.md) | 376 | `declaration-track:70cd54e578bc0c54c930d884e1075d5165b6f28fdd80d78777e321c28e9f5d87` |
| 57 | `def` | [mapGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mapgrp--72348ecdef3bfe55ac422658.md) | 388 | `declaration-track:72348ecdef3bfe55ac4226589fd7769d13a926d71eafdd43fc51d4bde78ab9e6` |
| 58 | `def` | [mapGrp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variante55b17dd9806787750d4825911e8bf6e1e982fd87e681fa915d33bf77f538127.lean/declarations/mapgrp--accc9ecdf46beac40f96db8f.md) | 398 | `declaration-track:accc9ecdf46beac40f96db8fc91cf94211351f4e11f527dd341aaa17c743dc7a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
