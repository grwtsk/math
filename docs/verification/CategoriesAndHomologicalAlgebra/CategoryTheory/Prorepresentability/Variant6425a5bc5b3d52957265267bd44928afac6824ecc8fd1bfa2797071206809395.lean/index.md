# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prorepresentability.Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "653bf9d4c5cc3d31c9e3f91af36c6071f6f70cbe",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `653bf9d4c5cc3d31c9e3f91af36c6071f6f70cbe`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Category.Grp.Limits` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.CofilteredSystem` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Galois.Decomposition` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.IndYoneda` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Ulift` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PointedGaloisObject](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/pointedgaloisobject--d983769c2b72a845b465b372.md) | 75 | `declaration-track:d983769c2b72a845b465b3720479ba0a671eb1b3c730d6fdde2accfe7f9b9f31` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/instance--3034fda3e796930d1ff5d6d5.md) | 91 | `declaration-track:3034fda3e796930d1ff5d6d5099d15132b8fc9b3c6fd516516da0af688aa1dd1` |
| 3 | `structure` | [Hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/hom--a961f84544393d8e877bb674.md) | 98 | `declaration-track:a961f84544393d8e877bb6742eb7e0a9ac099b3e1bdcbf5fb6591c56b0b86a20` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/instance--49d42c616cb90530d60011fa.md) | 107 | `declaration-track:49d42c616cb90530d60011fa681e39bc0af67dca1ffb2d32e05e5ae8b76cb321` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/instance--f4c13b0413579c63e85e0d5d.md) | 112 | `declaration-track:f4c13b0413579c63e85e0d5da1758a30eb8bc931e946c70fe1abbf4d9a929d7d` |
| 6 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/hom-ext--e66c51848d8f5a515767fe12.md) | 118 | `result-track:e66c51848d8f5a515767fe129d359408a2575b9b2bb6b90918aebea78e7317a0` |
| 7 | `lemma` | [id_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/id-val--1d48970bcc9bfe7bf43494cc.md) | 122 | `result-track:1d48970bcc9bfe7bf43494cc8c3082b7ac516b472ad1f8e59c97f399384dca0f` |
| 8 | `lemma` | [comp_val](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/comp-val--348583bc976e87050c1ae776.md) | 126 | `result-track:348583bc976e87050c1ae7761600d052bd25525f80f81208edbe6c85bff3a256` |
| 9 | `def` | [incl](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/incl--a4642192f3a2f93be7aa36a4.md) | 133 | `declaration-track:a4642192f3a2f93be7aa36a4710cfb54f0b53f268c93c34ce6fc2f100953beca` |
| 10 | `lemma` | [incl_obj](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/incl-obj--beab3160ec1821fea0f915d6.md) | 138 | `result-track:beab3160ec1821fea0f915d61991d71f97b1c9b730311cddd99460f05d48f05f` |
| 11 | `lemma` | [incl_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/incl-map--9ef1b3c9a2191ad02e28f96d.md) | 142 | `result-track:9ef1b3c9a2191ad02e28f96da022bf10712703c2bcfa08dad456a93328733464` |
| 12 | `def` | [cocone](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/cocone--cb954a0a7ee16283d622de21.md) | 153 | `declaration-track:cb954a0a7ee16283d622de2174e4a6611517e8a40c20c6584e6864e3e3437e03` |
| 13 | `lemma` | [cocone_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/cocone-app--1d2e22c7891b309c2bab574a.md) | 164 | `result-track:1d2e22c7891b309c2bab574a6a6647c99ce2813c9ffa9f2e6477626d9574b427` |
| 14 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/instance--a82a577c2a7b6ea0dc3addf7.md) | 171 | `declaration-track:a82a577c2a7b6ea0dc3addf792e2293b912614150a8c34fda68012c8d736a268` |
| 15 | `def` | [isColimit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/iscolimit--bd8756cb3ef8a6d21d3b59ed.md) | 185 | `declaration-track:bd8756cb3ef8a6d21d3b59ed607460506cf70c62dfc299c13566c3a598da6adf` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/instance--04176b546a314176f5ab21e5.md) | 203 | `declaration-track:04176b546a314176f5ab21e54f66ca8c793c15551b8fff9d5e226f83e47e7375` |
| 17 | `def` | [autGaloisSystem](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autgaloissystem--a2252da7deae968eb2bf1ee6.md) | 219 | `declaration-track:a2252da7deae968eb2bf1ee68fa3e8b9745eb811790a5121a8ebab34579d9b4c` |
| 18 | `def` | [AutGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autgalois--142c6522d2724d7b1e443494.md) | 224 | `declaration-track:142c6522d2724d7b1e443494659bbe4c885d5cd4d03fe9d57debf8e0dc9fabcc` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/instance--2d235655346c56c1cce09613.md) | 227 | `declaration-track:2d235655346c56c1cce09613402d640065c935d685f2897bd8519d0bce953dd2` |
| 20 | `def` | [AutGalois.π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autgalois--0456e7428301a75a5c4161cd.md) | 232 | `declaration-track:0456e7428301a75a5c4161cda4445ce8a229c6fbed128f990aabdd5a3675d131` |
| 21 | `lemma` | [AutGalois.π_apply](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autgalois-apply--ec73a220eb5afb6185b301f2.md) | 236 | `result-track:ec73a220eb5afb6185b301f266ce8a5dbc4f14169aa4fa684d96504094783394` |
| 22 | `lemma` | [autGaloisSystem_map_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autgaloissystem-map-surjective--c7f04887852ee83a5dbcd581.md) | 240 | `result-track:c7f04887852ee83a5dbcd581b5c82c4c194cd46404008175ed8f79b3aadf0005` |
| 23 | `lemma` | [AutGalois.ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autgalois-ext--194319c2a876076bc9678cd1.md) | 250 | `result-track:194319c2a876076bc9678cd16fb1d7132fdbda093512a796dfb141cfbeb97661` |
| 24 | `theorem` | [AutGalois.π_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autgalois-surjective--cd838595e262e907f280a901.md) | 259 | `result-track:cd838595e262e907f280a9016f4275252d2e037416203d9a351d0b32eb9f6b73` |
| 25 | `def` | [endEquivSectionsFibers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/endequivsectionsfibers--82b45412d65f66dde899abd8.md) | 301 | `declaration-track:82b45412d65f66dde899abd84a52a74f014d5c29f9e596eb6833ca179ce34a73` |
| 26 | `lemma` | [endEquivSectionsFibers_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/endequivsectionsfibers--26e13b1855c48e4fa70194cd.md) | 315 | `result-track:26e13b1855c48e4fa70194cd0f4c653245eaeb60e909ee19b34d803a521d6e88` |
| 27 | `def` | [autIsoFibers](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autisofibers--db2748526aea5e44d4c2272d.md) | 329 | `declaration-track:db2748526aea5e44d4c2272d4bbdcbc183cf5f42cb10293f410e8b5bf306346d` |
| 28 | `lemma` | [autIsoFibers_inv_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autisofibers-inv-app--3485ac9d7249a31f43f5d299.md) | 338 | `result-track:3485ac9d7249a31f43f5d299f4ebb8f3298f902a71e845b95ca037882286831a` |
| 29 | `def` | [endEquivAutGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/endequivautgalois--b0fd7dac66cd4a3c58b1372b.md) | 344 | `declaration-track:b0fd7dac66cd4a3c58b1372b546ef01fe07f881af3060e51d8b2b1a50927370e` |
| 30 | `lemma` | [endEquivAutGalois_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/endequivautgalois--fd4e52569d16651f0ee18172.md) | 349 | `result-track:fd4e52569d16651f0ee18172566b2dc46791b7b14c17702923cbf2b6581a667c` |
| 31 | `theorem` | [endEquivAutGalois_mul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/endequivautgalois-mul--7af15538d021764dc13a3855.md) | 358 | `result-track:7af15538d021764dc13a385584f289d6949e89f7c8d95518307018886cb7eb0f` |
| 32 | `def` | [endMulEquivAutGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/endmulequivautgalois--2214de3a6cf5aea579e9b707.md) | 369 | `declaration-track:2214de3a6cf5aea579e9b70798efde78bbbe3bb79f5a847405bb865af53a592a` |
| 33 | `lemma` | [endMulEquivAutGalois_pi](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/endmulequivautgalois-pi--7890d5b560d2b702d72014ac.md) | 372 | `result-track:7890d5b560d2b702d72014ac2f6427f43894b0960157cb2e622dc2fea888ea32` |
| 34 | `theorem` | [FibreFunctor.end_isUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/fibrefunctor-end-isunit--350d2d2fc551954808ee2c90.md) | 377 | `result-track:350d2d2fc551954808ee2c90109c6ee87c285c6c0cad1fd1c8de5a76ad9d7763` |
| 35 | `instance` | [FibreFunctor.end_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/fibrefunctor-end-isiso--11eb398b2458a6276e68e42b.md) | 382 | `declaration-track:11eb398b2458a6276e68e42bb8a21cd3c3bb00859398c7bbd8aa571c8c543e12` |
| 36 | `def` | [autMulEquivAutGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autmulequivautgalois--5d9c2d4aa679fb772ee02f61.md) | 389 | `declaration-track:5d9c2d4aa679fb772ee02f61184988a6c0a668d86c5e53034b40134836aef4f1` |
| 37 | `lemma` | [autMulEquivAutGalois_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autmulequivautgalois--10bd3176531831cd2d91bf3a.md) | 401 | `result-track:10bd3176531831cd2d91bf3af9508b5c61b1c2d946dfbd89bee46df415122efe` |
| 38 | `lemma` | [autMulEquivAutGalois_symm_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/autmulequivautgalois-symm-app--1c3f98bbd57707629b2d2197.md) | 409 | `result-track:1c3f98bbd57707629b2d21975c725b8526a52e92db55b3af4de13b13ce051c14` |
| 39 | `theorem` | [FiberFunctor.isPretransitive_of_isGalois](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/fiberfunctor-ispretransitive-of-isgalois--32f63297fd29b485c0830877.md) | 419 | `result-track:32f63297fd29b485c0830877dc681f1208c0435465f5df246d01f43853c3090b` |
| 40 | `instance` | [FiberFunctor.isPretransitive_of_isConnected'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/fiberfunctor-ispretransitive-of-isconnected--14adf9208fa5faba1e7a3d5e.md) | 429 | `declaration-track:14adf9208fa5faba1e7a3d5ee40f56b3c1cd76c13c17f278c8d0c064c649ee05` |
| 41 | `instance` | [FiberFunctor.isPretransitive_of_isConnected](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prorepresentability/Variant6425a5bc5b3d52957265267bd44928afac6824ecc8fd1bfa2797071206809395.lean/declarations/fiberfunctor-ispretransitive-of-isconnected--10e176df988e048f2dd5581a.md) | 450 | `declaration-track:10e176df988e048f2dd5581a4f12abf9f6ee259735507b573328f1c4feb6a20e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
