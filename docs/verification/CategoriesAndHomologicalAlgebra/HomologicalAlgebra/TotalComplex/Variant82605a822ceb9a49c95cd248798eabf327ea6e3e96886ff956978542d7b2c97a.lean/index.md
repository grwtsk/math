# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.HomologicalAlgebra.TotalComplex.Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37eb229a1df5373418254b4f24b6bc3ab6d18907",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37eb229a1df5373418254b4f24b6bc3ab6d18907`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Linear.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.ComplexShapeSigns` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Homology.HomologicalBicomplex` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Module.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasTotal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/hastotal--c641716a3dfc7bda4879f19a.md) | 49 | `declaration-track:c641716a3dfc7bda4879f19a689c0350c707494668898c6e72e0edb1175d2609` |
| 2 | `lemma` | [hasTotal_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/hastotal-of-iso--9979cb82475d465d6621c04b.md) | 53 | `result-track:9979cb82475d465d6621c04bef96db1495f7417e1eceb59f8aa044f02d1de10a` |
| 3 | `def` | [d₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d--9f61ee7cd1e0fd72c327c582.md) | 65 | `declaration-track:9f61ee7cd1e0fd72c327c582674690d65ef794fe9531fd84d57288ead39a2564` |
| 4 | `def` | [d₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d--3b9874a8f81de0c092f81cb0.md) | 71 | `declaration-track:3b9874a8f81de0c092f81cb0a1518330f72ccc86321857a0f3b6bf49d8a3436e` |
| 5 | `lemma` | [d₁_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq-zero--fff4c9213deb18ef04fda29f.md) | 76 | `result-track:fff4c9213deb18ef04fda29f119f5794233b2ee6e24078c51bafe1b6ef5df75c` |
| 6 | `lemma` | [d₂_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq-zero--81c8fe5320fa57e98783ef07.md) | 81 | `result-track:81c8fe5320fa57e98783ef07a859fb7df395251a7c65a10be3f2318adf64a34c` |
| 7 | `lemma` | [d₁_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq--eae2d2e883175037e54dd407.md) | 95 | `result-track:eae2d2e883175037e54dd4071b87d72519e70e8bc44ac3ed49995e30c61c383f` |
| 8 | `lemma` | [d₁_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq--3a80ebb573ea0ab08b5e6eb3.md) | 101 | `result-track:3a80ebb573ea0ab08b5e6eb37ad5391b376b7bf96b53313c7905ee6d4bd17d78` |
| 9 | `lemma` | [d₂_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq--c152d1fdfad733ae3abf96ef.md) | 107 | `result-track:c152d1fdfad733ae3abf96ef08fe37a4230e732866fe80a4c01f15cd34fd217a` |
| 10 | `lemma` | [d₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq--84364ed4780f7efb5390797e.md) | 113 | `result-track:84364ed4780f7efb5390797ec38f5a36fb9e5006d006859e0223bd703bf69e18` |
| 11 | `lemma` | [d₁_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq-zero--83ebe53eb2ba1d63061439cd.md) | 121 | `result-track:83ebe53eb2ba1d63061439cd8a036d67a5d1bf533fb13cae942b4740a55fc413` |
| 12 | `lemma` | [d₂_eq_zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq-zero--34acb9c35cc01bb8f8e95aaf.md) | 127 | `result-track:34acb9c35cc01bb8f8e95aafed49f37ad98ba7a7495a3f974ace65eb538f7013` |
| 13 | `def` | [D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d--fad7d7b225d1d5689f6fac68.md) | 134 | `declaration-track:fad7d7b225d1d5689f6fac6828e9493d7507329177730f951727d5c383077423` |
| 14 | `def` | [D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d--5276333ad88eb49db63d0b87.md) | 141 | `declaration-track:5276333ad88eb49db63d0b87bc0f2fe868b0e0e0b7c486cc87b1e0a9883c34af` |
| 15 | `lemma` | [ιMapObj_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/mapobj-d--db32269e798cd3a7044903a3.md) | 150 | `result-track:db32269e798cd3a7044903a3263dc42f645ffa59656b4023a027ae32ecb67895` |
| 16 | `lemma` | [ιMapObj_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/mapobj-d--878a33637416406d4b2a9ab0.md) | 156 | `result-track:878a33637416406d4b2a9ab0e661fb13abbefe013c67f473d2a8b806c63430d4` |
| 17 | `lemma` | [D₁_shape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-shape--cc2f686051d1010d4886350f.md) | 163 | `result-track:cc2f686051d1010d4886350fe97fc6e8e14e21218e3b0921572ed684d80171ec` |
| 18 | `lemma` | [D₂_shape](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-shape--ad76c4ea2de1a7efc724c9bc.md) | 172 | `result-track:ad76c4ea2de1a7efc724c9bc648c6d3586353648a668024cf31b2ad7fd52a4bf` |
| 19 | `lemma` | [D₁_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-d--6ea33c04e51e00c271ba88d2.md) | 182 | `result-track:6ea33c04e51e00c271ba88d223894f982e5b04dee7faba253751c2090d4800cb` |
| 20 | `lemma` | [D₂_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-d--ce9dfbc0822e2735862610e6.md) | 202 | `result-track:ce9dfbc0822e2735862610e690309256073ae41fbbc1ce4243095c88030e0fc1` |
| 21 | `lemma` | [D₂_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-d--c30af85a6a49f020624c62fa.md) | 222 | `result-track:c30af85a6a49f020624c62fa205b659d79c7cb18a4b84770766781772d0e9ac8` |
| 22 | `lemma` | [D₁_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-d--bab6a51e1280fc92a55f14cd.md) | 253 | `result-track:bab6a51e1280fc92a55f14cdb1a8996e061de2fa0bd82b4557f3c1eafe0923d8` |
| 23 | `def` | [total](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/total--5e42e4a73cfdd44a9dc36b58.md) | 258 | `declaration-track:5e42e4a73cfdd44a9dc36b582fe4f1c1289c1b2be51caa36250a9a92b160c548` |
| 24 | `def` | [ιTotal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/total--ed7d728c98cb6bd5c2266ef5.md) | 265 | `declaration-track:ed7d728c98cb6bd5c2266ef5f20330862139a03d22a84cba77d9f980e493f717` |
| 25 | `lemma` | [XXIsoOfEq_hom_ιTotal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/xxisoofeq-hom-total--c112b36f1c71b017ee934699.md) | 271 | `result-track:c112b36f1c71b017ee9346991b5cbe24d8f8af7bc211586e4770c3c8c2f9804f` |
| 26 | `lemma` | [XXIsoOfEq_inv_ιTotal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/xxisoofeq-inv-total--039a3ac6207bec4be220e9b5.md) | 279 | `result-track:039a3ac6207bec4be220e9b5a6d999cb2306f8475d4d66fec24fe0bff391cb9d` |
| 27 | `def` | [ιTotalOrZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/totalorzero--f6ecb96b1ae42786286a653d.md) | 287 | `declaration-track:f6ecb96b1ae42786286a653d4359e4c07bf8e06ad2c862336b6c05dfc9b42931` |
| 28 | `lemma` | [ιTotalOrZero_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/totalorzero-eq--1e7363fc5f87ebd17e142e44.md) | 291 | `result-track:1e7363fc5f87ebd17e142e44469e6ffbbe18f582026ada0d282ddc05690fbcc6` |
| 29 | `lemma` | [ιTotalOrZero_eq_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/totalorzero-eq-zero--3b8e807e62ecd020af74ad62.md) | 295 | `result-track:3b8e807e62ecd020af74ad6273a302f01342fc7d545507d53dc09948db4a47a6` |
| 30 | `lemma` | [ι_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d--fa640e955d7b5d718df5f59b.md) | 300 | `result-track:fa640e955d7b5d718df5f59b5f0c8a22d7ed996fe6b001c7cbb2c9317d25f17f` |
| 31 | `lemma` | [ι_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d--4cc354651b38b928be5249d3.md) | 306 | `result-track:4cc354651b38b928be5249d34414b2c4ab25633425ddc2af8f2e62fad34aebed` |
| 32 | `lemma` | [d₁_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq--dc5662b8f39de950cedc3c94.md) | 312 | `result-track:dc5662b8f39de950cedc3c94f2d68093e16a8c0ee5bba76f3e844a507257ee02` |
| 33 | `lemma` | [d₁_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq--14c22690500191ee604def71.md) | 317 | `result-track:14c22690500191ee604def71d27895c4363f6e5d062fefc0d0ffea8341b0f08a` |
| 34 | `lemma` | [d₂_eq'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq--48448fc9f8e80a3339af9cd9.md) | 323 | `result-track:48448fc9f8e80a3339af9cd9032b3b0a991a632f8e937abe6d8d9ba720d80905` |
| 35 | `lemma` | [d₂_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-eq--cbca8ba661dc820177a62b86.md) | 328 | `result-track:cbca8ba661dc820177a62b864e5af58e9b95554e44158dfd4e554e43f7c10b05` |
| 36 | `def` | [totalDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/totaldesc--b60285af3d45805c0c0681a2.md) | 341 | `declaration-track:b60285af3d45805c0c0681a28d4d1ec609d07efe9a0c75ac10da91d941f2b98f` |
| 37 | `lemma` | [ι_totalDesc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/totaldesc--cab0676fa1386b8feda548e4.md) | 345 | `result-track:cab0676fa1386b8feda548e42158a618b17401aaf93e7af30d032f872ad52346` |
| 38 | `lemma` | [hom_ext](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/hom-ext--bdbbb95a750608485fc8629e.md) | 356 | `result-track:bdbbb95a750608485fc8629ebfe6abde9234c2e8d0444f671ec6dbc59213fb67` |
| 39 | `lemma` | [d₁_mapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-mapmap--345eaaa24618813ce0b2c906.md) | 368 | `result-track:345eaaa24618813ce0b2c90602ccaeb1ea142a4109d06c0d1b9c73ee740be1cf` |
| 40 | `lemma` | [d₂_mapMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/d-mapmap--2541014f2b0037aa038b5f41.md) | 376 | `result-track:2541014f2b0037aa038b5f410d76d2d5c99b587ba66e9b3fe4797286a2138d90` |
| 41 | `lemma` | [mapMap_D₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/mapmap-d--2e94ee51baa8e1397b04c7c8.md) | 384 | `result-track:2e94ee51baa8e1397b04c7c8d21e8ecb05ab937a23ac6cbf495ebe84fc7bf757` |
| 42 | `lemma` | [mapMap_D₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/mapmap-d--04381714b564785f2baa0394.md) | 390 | `result-track:04381714b564785f2baa0394025477e1e93198474dd47c834168e3015ceab05a` |
| 43 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/map--7aa9b7572131821de2add63f.md) | 399 | `declaration-track:7aa9b7572131821de2add63fc3deadb58323111405a40403508ca6ba98346b8c` |
| 44 | `lemma` | [forget_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/forget-map--67b34073dc9c6b175dae8b38.md) | 406 | `result-track:67b34073dc9c6b175dae8b38e8c6378be725a8b650a1b089a1b723e6ea659a20` |
| 45 | `lemma` | [map_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/map-id--6e93139cb722b273e9054be4.md) | 412 | `result-track:6e93139cb722b273e9054be437a4c3fc249e3f14c1cf5536f47babaa75f5ada1` |
| 46 | `lemma` | [map_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/map-comp--dd69e4aa1f63905f67bdb61a.md) | 419 | `result-track:dd69e4aa1f63905f67bdb61ab25f8a6f1a649ae377f81ac3fb886f6f1dd5a993` |
| 47 | `def` | [mapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/mapiso--5bc5a233fc76924426e3aebd.md) | 426 | `declaration-track:5bc5a233fc76924426e3aebd997a4819c781caf3e868660818354030ce01e075` |
| 48 | `lemma` | [ιTotal_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/total-map--772f045860449ff4fac1e780.md) | 439 | `result-track:772f045860449ff4fac1e78011a3d46b9692fc82a9f641ee65f700269e25cfdc` |
| 49 | `lemma` | [ιTotalOrZero_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/totalorzero-map--b4b0fd4ca8a81d59e23c10a5.md) | 445 | `result-track:b4b0fd4ca8a81d59e23c10a5520376ae4ad364cff930a3228b551bc203a2b5bc` |
| 50 | `def` | [totalFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/TotalComplex/Variant82605a822ceb9a49c95cd248798eabf327ea6e3e96886ff956978542d7b2c97a.lean/declarations/totalfunctor--6d2cab50eefc832bf8d82926.md) | 457 | `declaration-track:6d2cab50eefc832bf8d82926c2b2b30a61fae53f5101021d43ace05e0547b193` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
