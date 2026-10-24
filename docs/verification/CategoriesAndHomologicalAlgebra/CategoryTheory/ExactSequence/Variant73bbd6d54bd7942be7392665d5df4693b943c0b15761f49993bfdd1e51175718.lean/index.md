# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.ExactSequence.Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3e3a1e26d245a45d8edc016072a9ce7078478b38",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3e3a1e26d245a45d8edc016072a9ce7078478b38`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Homology.ShortComplex.Exact` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ComposableArrows` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ShortComplex.toComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/shortcomplex-tocomposablearrows--864cd5c6e29df3d4034b55ee.md) | 36 | `declaration-track:864cd5c6e29df3d4034b55ee1012f85d3a4a249f3bda8d07bdb031dcdab89852` |
| 2 | `def` | [ShortComplex.mapToComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/shortcomplex-maptocomposablearrows--1235b8b17177d1597e3ae54f.md) | 40 | `declaration-track:1235b8b17177d1597e3ae54f83c93c357a028ff9c7c647ab58ea5a7ca87404b8` |
| 3 | `theorem` | [ShortComplex.mapToComposableArrows_app_0](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/shortcomplex-maptocomposablearrows-app-0--e91b51e4bf775881af313dbf.md) | 45 | `result-track:e91b51e4bf775881af313dbf8edc9e919652a24e5826973e60e5fb509fc2b280` |
| 4 | `theorem` | [ShortComplex.mapToComposableArrows_app_1](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/shortcomplex-maptocomposablearrows-app-1--e80f69f2160912154aa24d15.md) | 49 | `result-track:e80f69f2160912154aa24d1545bdebca22ec7d0bd506303d1ae1b09302e90e89` |
| 5 | `theorem` | [ShortComplex.mapToComposableArrows_app_2](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/shortcomplex-maptocomposablearrows-app-2--c8d50b6abf36248beed96b7a.md) | 53 | `result-track:c8d50b6abf36248beed96b7a1c991754f6014dff213ada14d7e3c4f74b11d4c8` |
| 6 | `theorem` | [ShortComplex.mapToComposableArrows_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/shortcomplex-maptocomposablearrows-id--fa24330fabc7641191396643.md) | 57 | `result-track:fa24330fabc764119139664325ddd84f7320ff58919a11a978dd3d786d9a685d` |
| 7 | `theorem` | [ShortComplex.mapToComposableArrows_comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/shortcomplex-maptocomposablearrows-comp--a81a50182ce9030f1c505746.md) | 62 | `result-track:a81a50182ce9030f1c5057462d07f474f56ec53114067965ec3eefbeb9ea7649` |
| 8 | `structure` | [IsComplex](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/iscomplex--b82a56543c76b7fda8ebe9df.md) | 73 | `declaration-track:b82a56543c76b7fda8ebe9dfdb4a596081926683b30d0d8bb7a9251f094256a4` |
| 9 | `lemma` | [IsComplex.zero'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/iscomplex-zero--b31ab0ba3d548335f22186dd.md) | 83 | `result-track:b31ab0ba3d548335f22186dd3876028c5d3e65a767e62156825ef329e8af71ed` |
| 10 | `lemma` | [isComplex_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/iscomplex-of-iso--bb027e30da65daee8c530953.md) | 89 | `result-track:bb027e30da65daee8c530953c36a328fbdebbafeab258cdc4cc0ceba04ed24e8` |
| 11 | `lemma` | [isComplex_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/iscomplex-iff-of-iso--669866e8265e84fa7aaf3911.md) | 96 | `result-track:669866e8265e84fa7aaf3911c3c74fa5a1d3ec693411099978969b3408cafa2a` |
| 12 | `lemma` | [isComplex₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/iscomplex--a464c990c655b86d1979818a.md) | 100 | `result-track:a464c990c655b86d1979818a26f6d52b6866d61c86d2bb344c932c876f20cd65` |
| 13 | `lemma` | [isComplex₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/iscomplex--3f1eb1e772d57dcdca9f2d61.md) | 105 | `result-track:3f1eb1e772d57dcdca9f2d61afc6f97d22ca02329dc3cc978b44ee2ee8978264` |
| 14 | `abbrev` | [sc'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/sc--a47af41be5c0b4fa1cd54941.md) | 112 | `declaration-track:a47af41be5c0b4fa1cd54941abbc19984ff3b2bdf33b47e79375fdaaf56e0df3` |
| 15 | `abbrev` | [sc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/sc--a247909f78dcbc2103b52a22.md) | 119 | `declaration-track:a247909f78dcbc2103b52a22e8fc9bcfc130e21826710de29c08c0a4b25dc252` |
| 16 | `structure` | [Exact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact--34f68e16ba13964639512465.md) | 125 | `declaration-track:34f68e16ba139646395124653b0dafdac3dc67ceeed74ff4aade2aed4eec08e6` |
| 17 | `lemma` | [Exact.exact'](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact-exact--a0da2e74c3c673a5c58d5113.md) | 130 | `result-track:a0da2e74c3c673a5c58d5113fa800d085838411c35f740ff14a96982aff57026` |
| 18 | `def` | [sc'Map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/sc-map--742c5fe2a91c9ec9ce1eb58e.md) | 138 | `declaration-track:742c5fe2a91c9ec9ce1eb58e95e6b8765c7d8629121225a34048e47e08f87bf7` |
| 19 | `def` | [scMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/scmap--5a0a637cab38e6fb156f44dd.md) | 148 | `declaration-track:5a0a637cab38e6fb156f44ddb1a7bd4f8050370ccde9146b9533db94fbeeed4c` |
| 20 | `def` | [sc'MapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/sc-mapiso--ec948a4aef981df82b19c69a.md) | 156 | `declaration-track:ec948a4aef981df82b19c69a954733f412a6ec7c2e1360f6560d8d0c9208e660` |
| 21 | `def` | [scMapIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/scmapiso--af0ddad11c7754fb7825ffb1.md) | 168 | `declaration-track:af0ddad11c7754fb7825ffb1ebbd1e0ea484855c062f64e0ed96fc25763a0f69` |
| 22 | `lemma` | [exact_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact-of-iso--53a9f6e46ffb10152743914a.md) | 177 | `result-track:53a9f6e46ffb10152743914aebb96cbac3141a9b657907f8a07300c4e327e023` |
| 23 | `lemma` | [exact_iff_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact-iff-of-iso--971dcc3ba8a2adaa37405db4.md) | 183 | `result-track:971dcc3ba8a2adaa37405db471812bff706cf9d38a0b6ffb4eae6df8b7200800` |
| 24 | `lemma` | [exact₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact--820d1f5cdb49088d850e5932.md) | 187 | `result-track:820d1f5cdb49088d850e5932c3a45ee2aa026446a6d962a13b14e7c1db90272e` |
| 25 | `lemma` | [exact₁](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact--2aaa5db6fde3914f1b8a4119.md) | 192 | `result-track:2aaa5db6fde3914f1b8a4119cb86b20d71de51ae9afb9452ff70ecabe964ee00` |
| 26 | `lemma` | [isComplex₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/iscomplex-iff--513de8b870a42b9b78bbe9f1.md) | 196 | `result-track:513de8b870a42b9b78bbe9f1e020e690dae91f2556c14374d85f270e18794fe5` |
| 27 | `lemma` | [isComplex₂_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/iscomplex-mk--14c6a6662d167d47c0d3dc8a.md) | 206 | `result-track:14c6a6662d167d47c0d3dc8a1ca70726d4b758c4b03f6f5e95732f603e8b2c90` |
| 28 | `lemma` | [_root_.CategoryTheory.ShortComplex.isComplex_toComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/root-categorytheory-shortcomplex-iscomplex-tocomposablearrows--fa915d2605e3e4ef0517478a.md) | 216 | `result-track:fa915d2605e3e4ef0517478a65d2a594254587bc34ee6ee6cc4cc6eb054ce561` |
| 29 | `lemma` | [exact₂_iff](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact-iff--a7ccec191a7d812575623b16.md) | 220 | `result-track:a7ccec191a7d812575623b16726b711856161c7cabe6bde570eaca4a2c89144d` |
| 30 | `lemma` | [exact₂_mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact-mk--f51a4c7742e1f2169bd62d0b.md) | 230 | `result-track:f51a4c7742e1f2169bd62d0bfa0e936676626c29054ae469a4b4591f82893aa8` |
| 31 | `lemma` | [_root_.CategoryTheory.ShortComplex.Exact.exact_toComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/root-categorytheory-shortcomplex-exact-exact-tocomposablearrows--7d733183d45a1eb7d111b726.md) | 234 | `result-track:7d733183d45a1eb7d111b726c5726ac82e2b379730a458a1de42d0af78002533` |
| 32 | `lemma` | [_root_.CategoryTheory.ShortComplex.exact_iff_exact_toComposableArrows](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/root-categorytheory-shortcomplex-exact-iff-exact-tocomposablearrows--832bd039c6760fc9736c2d64.md) | 239 | `result-track:832bd039c6760fc9736c2d6432f009dc72bbea80912ab3036f1c932b76c58005` |
| 33 | `lemma` | [exact_iff_δ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact-iff--f0603daef983b83ccf78642e.md) | 244 | `result-track:f0603daef983b83ccf78642e7724b37f56c7c3b518c81fe10f14b703e54fb06d` |
| 34 | `lemma` | [Exact.δ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact--daba758fafa4d48d45039885.md) | 264 | `result-track:daba758fafa4d48d45039885894f96e7b9ed973821a89cfd724f02ab60dc34f9` |
| 35 | `lemma` | [exact_of_δ₀](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact-of--4d6ef92f923a4ec1814abf6b.md) | 273 | `result-track:4d6ef92f923a4ec1814abf6bc83116d01f5aa7d63941d9bd912ce27d4bb6116b` |
| 36 | `lemma` | [exact_iff_δlast](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact-iff-last--80ccd5a5a17026ecabfa71b4.md) | 278 | `result-track:80ccd5a5a17026ecabfa71b4c90d119773d00d1a70e901631ffad0b0182657bc` |
| 37 | `lemma` | [Exact.δlast](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact-last--3fde5576205695424f3ec6b2.md) | 300 | `result-track:3fde5576205695424f3ec6b234a95d43ac83af1f91e55a7e32aeca5cb121b3ce` |
| 38 | `lemma` | [exact_of_δlast](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactSequence/Variant73bbd6d54bd7942be7392665d5df4693b943c0b15761f49993bfdd1e51175718.lean/declarations/exact-of-last--930d872cbd2aec296ad97695.md) | 305 | `result-track:930d872cbd2aec296ad9769515d7b3fd03d4c783e9f045712e63c954601c7fa0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
