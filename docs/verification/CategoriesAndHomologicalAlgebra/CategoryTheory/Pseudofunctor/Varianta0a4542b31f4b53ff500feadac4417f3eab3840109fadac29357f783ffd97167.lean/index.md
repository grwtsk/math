# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Pseudofunctor.Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7d7956ade403e8393c9c049626cbce4db70e51e9",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7d7956ade403e8393c9c049626cbce4db70e51e9`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Functor.Oplax` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Bicategory.Functor.Lax` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Pseudofunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/pseudofunctor--626480c7ae4f8729bc958dd6.md) | 62 | `declaration-track:626480c7ae4f8729bc958dd61d256258eb7459fa9603c21673e3295cfd05029d` |
| 2 | `def` | [toOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/tooplax--ca4492232e32428ef8522bf6.md) | 116 | `declaration-track:ca4492232e32428ef8522bf66fad2d285d403429ffa2924f7429520d2bf63095` |
| 3 | `instance` | [hasCoeToOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/hascoetooplax--6838b7c2fe5f122b783d0b97.md) | 121 | `declaration-track:6838b7c2fe5f122b783d0b97987d6241743209f47b15fc5433599535b32d9e64` |
| 4 | `def` | [toLax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/tolax--11bfebe10d36aba14d7cf47a.md) | 126 | `declaration-track:11bfebe10d36aba14d7cf47affbad127eed686118ef3c92e9284fc5d1f39c65c` |
| 5 | `instance` | [hasCoeToLax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/hascoetolax--93d8cdd3e89b9aa16522d17c.md) | 137 | `declaration-track:93d8cdd3e89b9aa16522d17c73b91f8024366fc62eb07e73d8caa78226e14cd8` |
| 6 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/id--ea6a15c5d1ebe9ec46b521c9.md) | 142 | `declaration-track:ea6a15c5d1ebe9ec46b521c99ee7406fa1ea409279d8934a3e87b308051ce502` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/instance--5dac8ad9a38f7387a5e8a1b7.md) | 147 | `declaration-track:5dac8ad9a38f7387a5e8a1b75e2ccdc8dd62bbff7ead97c44c53e59235c72712` |
| 8 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/comp--77700e7a5972bc397a2f1a94.md) | 152 | `declaration-track:77700e7a5972bc397a2f1a944442e6db0dff4dc2bb6b7f066d8516a896c9cbee` |
| 9 | `lemma` | [mapComp_assoc_right_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mapcomp-assoc-right-hom--054e4b39f94ec6ed06400def.md) | 168 | `result-track:054e4b39f94ec6ed06400def34963f0bbd5e9d55a497803e39f8217e13a9dec4` |
| 10 | `lemma` | [mapComp_assoc_left_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mapcomp-assoc-left-hom--b57ccfc8788b573d01977558.md) | 175 | `result-track:b57ccfc8788b573d01977558ca8ad217519449dd745bacfbf8b240a2fe5da4bf` |
| 11 | `lemma` | [mapComp_assoc_right_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mapcomp-assoc-right-inv--9ccf4cc8131004fa6a675ab6.md) | 182 | `result-track:9ccf4cc8131004fa6a675ab67267672cca3e0a98594a6618c31af0dadd1a750f` |
| 12 | `lemma` | [mapComp_assoc_left_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mapcomp-assoc-left-inv--caf3b0fe095f0b968987878e.md) | 189 | `result-track:caf3b0fe095f0b968987878e3b96bda663c8e52879f1121760baf7221ccd9f19` |
| 13 | `lemma` | [mapComp_id_left_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mapcomp-id-left-hom--c4d6c6013495ea554afa4841.md) | 196 | `result-track:c4d6c6013495ea554afa4841fcbf2b08956327883c013daff28c3b26fa6042fe` |
| 14 | `lemma` | [mapComp_id_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mapcomp-id-left--39437324448799bf05fb3d42.md) | 200 | `result-track:39437324448799bf05fb3d4225fcde886bdda3e8c3894ce50a74e73e160059d2` |
| 15 | `lemma` | [mapComp_id_left_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mapcomp-id-left-inv--b95e5c1722ddd801305aeaef.md) | 205 | `result-track:b95e5c1722ddd801305aeaef93b8498775e189914d56b85868009fad433dad7f` |
| 16 | `lemma` | [whiskerRightIso_mapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/whiskerrightiso-mapid--1b64c61e449879e66fcbe17c.md) | 209 | `result-track:1b64c61e449879e66fcbe17c39d63d65fa78d939943d104881dc145d348268e6` |
| 17 | `lemma` | [whiskerRight_mapId_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/whiskerright-mapid-hom--f84302d87390cec7bd9db7f4.md) | 214 | `result-track:f84302d87390cec7bd9db7f4a1acb4fce3274a0b819688a4bd282e3e3f0d1ce2` |
| 18 | `lemma` | [whiskerRight_mapId_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/whiskerright-mapid-inv--61e71eabe7d8911f8180d7f0.md) | 219 | `result-track:61e71eabe7d8911f8180d7f00a1144734ea368541f8590da97268a467ad0ffe3` |
| 19 | `lemma` | [mapComp_id_right_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mapcomp-id-right-hom--dc4d0896aa887a072b84d055.md) | 224 | `result-track:dc4d0896aa887a072b84d05581051ac66b78f650e6abcb4ab1fe1166773b243d` |
| 20 | `lemma` | [mapComp_id_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mapcomp-id-right--ef1783eb4abbc4622457abf2.md) | 228 | `result-track:ef1783eb4abbc4622457abf2c2fb6eda9c1a66ad0eaa4e4536029f552213566a` |
| 21 | `lemma` | [mapComp_id_right_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mapcomp-id-right-inv--afdf75b5e31277a3f42a4ccb.md) | 233 | `result-track:afdf75b5e31277a3f42a4ccbe59e8b77c7836cb8605a00e7f21b44be09344bf1` |
| 22 | `lemma` | [whiskerLeftIso_mapId](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/whiskerleftiso-mapid--8458eba09ed953fde5cdf6ef.md) | 237 | `result-track:8458eba09ed953fde5cdf6efd481c67ce22b6ffda4a5a75d47089bb10d68879c` |
| 23 | `lemma` | [whiskerLeft_mapId_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/whiskerleft-mapid-hom--8867a3591554c1e41a371d69.md) | 242 | `result-track:8867a3591554c1e41a371d695ad81d23c461080091aa6b5886920a7422f1c584` |
| 24 | `lemma` | [whiskerLeft_mapId_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/whiskerleft-mapid-inv--08c804c5f42a8617a26f1651.md) | 247 | `result-track:08c804c5f42a8617a26f1651c2458200bad0edd841a5512a702c99b1c1a385bc` |
| 25 | `def` | [mkOfOplax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mkofoplax--33c6c8b55cdf66cd85eaa456.md) | 255 | `declaration-track:33c6c8b55cdf66cd85eaa4565774e1ccf0a991cf86f9be00d1f873675d090f02` |
| 26 | `def` | [mkOfOplax'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mkofoplax--c067106671062d5366ecc17e.md) | 272 | `declaration-track:c067106671062d5366ecc17e336d61eadad5f74de063a58102788ec67b095691` |
| 27 | `def` | [mkOfLax](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mkoflax--008ee851e71500a55e3993ce.md) | 291 | `declaration-track:008ee851e71500a55e3993ce59952a887e716586edf53056f73276e20a4e0c78` |
| 28 | `def` | [mkOfLax'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Pseudofunctor/Varianta0a4542b31f4b53ff500feadac4417f3eab3840109fadac29357f783ffd97167.lean/declarations/mkoflax--90640f02668c8bfc6c3765e8.md) | 309 | `declaration-track:90640f02668c8bfc6c3765e8d6b0a5fdf0280d0edad486d34fc6d5d892f462f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
