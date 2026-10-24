# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Cartesian.Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5cec0fec095510a1004cebef8b6ccb7f8bc2732",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5cec0fec095510a1004cebef8b6ccb7f8bc2732`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.EpiMono` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Shapes.FiniteProducts` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.OfHasFiniteProducts` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Preserves.Shapes.BinaryProducts` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Limits` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Adjunction.Mates` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Closed.Monoidal` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Exponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/exponentiable--39056502cfa207096681565a.md) | 57 | `declaration-track:39056502cfa207096681565af84deee5ff1aa1e413b0425847a97bd04dd24e33` |
| 2 | `def` | [binaryProductExponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/binaryproductexponentiable--a733f5215dbf1f9ed90d8aa8.md) | 65 | `declaration-track:a733f5215dbf1f9ed90d8aa80f08cd97628d199dddf49cbbb0825513541917a5` |
| 3 | `def` | [terminalExponentiable](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/terminalexponentiable--a8e69c324e8bbc561fc169e3.md) | 74 | `declaration-track:a8e69c324e8bbc561fc169e311e6880121a692400e9eeeff826309c9a57fe5cb` |
| 4 | `abbrev` | [CartesianClosed](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/cartesianclosed--5d203abffde12076b422f179.md) | 82 | `declaration-track:5d203abffde12076b422f17916f0532dfd7c7c69b1951412d693155a60fa2b8d` |
| 5 | `def` | [CartesianClosed.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/cartesianclosed-mk--835d77f1b39c2858b3ed4038.md) | 88 | `declaration-track:835d77f1b39c2858b3ed403899118ca0b44986ebe67101ebbb7fd76f6f4114ae` |
| 6 | `abbrev` | [exp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/exp--e373cac341fd806d2897f48f.md) | 99 | `declaration-track:e373cac341fd806d2897f48f6592c304b96e9ee5c02e61ef0e2f6f5fe4eb0833` |
| 7 | `abbrev` | [adjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/adjunction--fd7f47d67cdef6b4dc4701ea.md) | 106 | `declaration-track:fd7f47d67cdef6b4dc4701eacb53de55b38c6ff9fcea09a4966a771e53438933` |
| 8 | `abbrev` | [ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/ev--28cae74c21aad019ab1d779c.md) | 111 | `declaration-track:28cae74c21aad019ab1d779cf2de5adfb23709025daaa53764a827bf9dcabe08` |
| 9 | `abbrev` | [coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/coev--e44539be6bc62d96b464e27b.md) | 116 | `declaration-track:e44539be6bc62d96b464e27b69a49ebf6bf80f80297ce9a28b01fe33bb52f3fd` |
| 10 | `def` | [delabPrefunctorObjExp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/delabprefunctorobjexp--e0ab3cd008889ca00e8ee26e.md) | 126 | `declaration-track:e0ab3cd008889ca00e8ee26eafa526166bb7b6a071a5107d61f4e1d6961658a1` |
| 11 | `theorem` | [ev_coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/ev-coev--97bf4a8170136798481e3fc4.md) | 144 | `result-track:97bf4a8170136798481e3fc45b6067e80b60dfa327bcb94bfa54c10c180dc496` |
| 12 | `theorem` | [coev_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/coev-ev--d41a85d7379f960c328b5d97.md) | 149 | `result-track:d41a85d7379f960c328b5d97f9d07549c3a4717ad9b02d5e1376422d39c258bc` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/instance--98930c92ba0390f629760787.md) | 155 | `declaration-track:98930c92ba0390f62976078751c63ccb661f9562d9eaf7613bdd1ba81c00925f` |
| 14 | `def` | [curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/curry--8bcb0fd58152798d7e750f14.md) | 164 | `declaration-track:8bcb0fd58152798d7e750f143b94ffd5c3c0dc86be0018811cc6294f9ca9986e` |
| 15 | `def` | [uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/uncurry--ec04d04d86d9cca8cbe56f72.md) | 169 | `declaration-track:ec04d04d86d9cca8cbe56f72846ce04d4169f5d57fb897ee4a439910b76a40bd` |
| 16 | `theorem` | [homEquiv_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/homequiv-apply-eq--5033f289d7c0a2927a7d3d03.md) | 174 | `result-track:5033f289d7c0a2927a7d3d039d9714eb18dcf23c0b5fff32eeb2c45f4892b04c` |
| 17 | `theorem` | [homEquiv_symm_apply_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/homequiv-symm-apply-eq--e1ef34871e46c692147cfa0b.md) | 179 | `result-track:e1ef34871e46c692147cfa0bafbe19d2a2d17e6ce6dde7b7b053887de3395538` |
| 18 | `theorem` | [curry_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/curry-natural-left--8074306277f77e55b3e5b609.md) | 185 | `result-track:8074306277f77e55b3e5b60914b8ba2308b0e3e44f0d20a0fd43b5f6a10990c9` |
| 19 | `theorem` | [curry_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/curry-natural-right--8fdfec77a384f288a95e370a.md) | 191 | `result-track:8fdfec77a384f288a95e370afc469786077bbb8371f1b9c89deef81af4f93332` |
| 20 | `theorem` | [uncurry_natural_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/uncurry-natural-right--52288602f720223deff8fcac.md) | 197 | `result-track:52288602f720223deff8fcacaefc8d0df86e6e8df2873dc2f47b61212bc69f95` |
| 21 | `theorem` | [uncurry_natural_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/uncurry-natural-left--23b6e6f62c1dfc6d681fe47c.md) | 203 | `result-track:23b6e6f62c1dfc6d681fe47cb05fee04929d298d3994acd6117cabdf6be558fc` |
| 22 | `theorem` | [uncurry_curry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/uncurry-curry--3e98a00a43656105030592ad.md) | 209 | `result-track:3e98a00a43656105030592ad6892e8ad84be69a4935149e9954d2d2bc6fbb1e7` |
| 23 | `theorem` | [curry_uncurry](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/curry-uncurry--834192779520327a5e4e2a3a.md) | 214 | `result-track:834192779520327a5e4e2a3a99872b42e715346c0ee2bb295f2aa6e8cc873816` |
| 24 | `theorem` | [curry_eq_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/curry-eq-iff--350ec0afb882b84a119f392a.md) | 219 | `result-track:350ec0afb882b84a119f392a201962847620453496b8c6d287bdf624723ebc9c` |
| 25 | `theorem` | [eq_curry_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/eq-curry-iff--2101acf49832758372852b91.md) | 224 | `result-track:2101acf49832758372852b919d2d409ecbb5869ce0e5b40eb8d5aa3cb27cb94e` |
| 26 | `theorem` | [uncurry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/uncurry-eq--832a97f9173968109470b043.md) | 229 | `result-track:832a97f9173968109470b043c6ff31e3be6eb360e75a688ee28b7dba3ed8bc4c` |
| 27 | `theorem` | [curry_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/curry-eq--bfa26badca73165dd3c85762.md) | 233 | `result-track:bfa26badca73165dd3c857625d192f1d05371e82f656483e64d7f8c47a7d404b` |
| 28 | `theorem` | [uncurry_id_eq_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/uncurry-id-eq-ev--4df77c7fb8ff7d9776907e64.md) | 237 | `result-track:4df77c7fb8ff7d9776907e649b375ecefe34b69bb2d56485083b32bbfd247c53` |
| 29 | `theorem` | [curry_id_eq_coev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/curry-id-eq-coev--f25d678e26d29f761a6e2d77.md) | 241 | `result-track:f25d678e26d29f761a6e2d774b0ab808bff76ff76685cc7afafa5a1fbf52f2cc` |
| 30 | `theorem` | [curry_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/curry-injective--e595e665ef028c774f685baf.md) | 245 | `result-track:e595e665ef028c774f685baf3ef1dd438fd3a50356f620acde19a42bf9e6c79b` |
| 31 | `theorem` | [uncurry_injective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/uncurry-injective--07696434ce7ebd1f3eb06b41.md) | 249 | `result-track:07696434ce7ebd1f3eb06b418fd42c78a0c5d065db434eea4869bb69f4861da2` |
| 32 | `def` | [expTerminalIsoSelf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/expterminalisoself--fcc735bcbced173da3334777.md) | 261 | `declaration-track:fcc735bcbced173da3334777679e39ae93d2473252bfec03881bd2efac45433f` |
| 33 | `def` | [internalizeHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/internalizehom--593d7bd2e6ef34615a584d40.md) | 275 | `declaration-track:593d7bd2e6ef34615a584d40a45aface578ed370a7e4f9872170d818b5223114` |
| 34 | `def` | [pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/pre--94ae79387fb8b0161fceb5a9.md) | 284 | `declaration-track:94ae79387fb8b0161fceb5a996e73460cca41cafa28741d584c7563112ce3444` |
| 35 | `theorem` | [prod_map_pre_app_comp_ev](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/prod-map-pre-app-comp-ev--ca40354e11ab62feb60030e2.md) | 288 | `result-track:ca40354e11ab62feb60030e227f723aa8f7157940b93e5b1aeae139fa084e699` |
| 36 | `theorem` | [uncurry_pre](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/uncurry-pre--90ccf5d5ed5b857940142e70.md) | 294 | `result-track:90ccf5d5ed5b857940142e7049a75566f3fb037a93238e21f0fa2b981d975ed2` |
| 37 | `theorem` | [coev_app_comp_pre_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/coev-app-comp-pre-app--5495dc4eae8820d12ebcb457.md) | 299 | `result-track:5495dc4eae8820d12ebcb45792b4f8f4a251a696aa81f46d7f7dcfaf59a2e26e` |
| 38 | `theorem` | [pre_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/pre-id--d7178c262045a1367d16cd9f.md) | 306 | `result-track:d7178c262045a1367d16cd9f92b8d442ae1faf507df3db7cb7dd3e55db52a485` |
| 39 | `theorem` | [pre_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/pre-map--28f97e70c5919ca71127daf7.md) | 310 | `result-track:28f97e70c5919ca71127daf72838ff19cccd4c4650e1481d40564b1bc8ae4376` |
| 40 | `def` | [internalHom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/internalhom--27ddeb606d331345df417262.md) | 318 | `declaration-track:27ddeb606d331345df41726225cbaeb6897b12318a9736342fc23146a6d24120` |
| 41 | `def` | [zeroMul](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/zeromul--706c1c342bd66a3baabe452d.md) | 325 | `declaration-track:706c1c342bd66a3baabe452d5ea603b7172da4c57850f22bbae8c9b3b6f9349c` |
| 42 | `def` | [mulZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/mulzero--f21d99c2333d781a6bdb7353.md) | 338 | `declaration-track:f21d99c2333d781a6bdb7353391b4c822fef6218ab12d3186af39f013833a370` |
| 43 | `def` | [powZero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/powzero--556dd44f57ffdb4eafbb81dc.md) | 343 | `declaration-track:556dd44f57ffdb4eafbb81dc220f07c62f53dc569b39a2ab40dd15fa56848269` |
| 44 | `def` | [prodCoprodDistrib](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/prodcoproddistrib--08442e4ad52f624be5cee67d.md) | 355 | `declaration-track:08442e4ad52f624be5cee67d9e35a5cab5d529dbb10d0b6b09a46ad957df8f9e` |
| 45 | `theorem` | [strict_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/strict-initial--32e5d33f3a30a6e5957bb865.md) | 379 | `result-track:32e5d33f3a30a6e5957bb8653df51b5dbab6def8d4f9498ee1b2a534ef5b6f81` |
| 46 | `instance` | [to_initial_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/to-initial-isiso--3b05e08e3d07ab6e716821c6.md) | 386 | `declaration-track:3b05e08e3d07ab6e716821c6903e680e09dd3ec70492f0985098a35e7b61e613` |
| 47 | `theorem` | [initial_mono](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/initial-mono--8a38718fb8b50d23be55d3c8.md) | 391 | `result-track:8a38718fb8b50d23be55d3c8bdf385cbb9e2071c98c4f272a1e9c88f9791f93b` |
| 48 | `instance` | [Initial.mono_to](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/initial-mono-to--6b05101daf383692f6dd36ad.md) | 398 | `declaration-track:6b05101daf383692f6dd36ad91f9ff4342e276fc2fe6deb7996ff0016a65621c` |
| 49 | `def` | [cartesianClosedOfEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Cartesian/Variant6c84423c99c7882ce88fd14287cfa1f9904743b0ee331e8473e8d2228cca5f61.lean/declarations/cartesianclosedofequiv--1507ebf36044e3b7980ba0a0.md) | 413 | `declaration-track:1507ebf36044e3b7980ba0a0677a6b5f7a891a146535a1b6f96fffed11a60e53` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
