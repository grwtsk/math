# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Prelax.Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a4ffae24dcafb4d3920990271529e5046e2daf27",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a4ffae24dcafb4d3920990271529e5046e2daf27`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Bicategory.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [PrelaxFunctorStruct](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/prelaxfunctorstruct--2aa945cb5177f6d11f3b4f5b.md) | 65 | `declaration-track:2aa945cb5177f6d11f3b4f5be764cdf4dfb5da0782b096bbd2dc1d6eeda332c0` |
| 2 | `def` | [mkOfHomPrefunctors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/mkofhomprefunctors--5e62cafa6c8c1e22eb3e663d.md) | 81 | `declaration-track:5e62cafa6c8c1e22eb3e663df9c550841cbc0b44e7e6dc6bcae244960039005a` |
| 3 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/id--e1ebb3b730126060ebca9451.md) | 89 | `declaration-track:e1ebb3b730126060ebca94518c441e0e2a8cc91ef5832906ebf8371ba61e653a` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/instance--380fd3649d08264cf38f2826.md) | 93 | `declaration-track:380fd3649d08264cf38f2826017b1d581685fd351ab59591e1eb2c3cd20232d5` |
| 5 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/comp--02643caea8add3c569bd46a2.md) | 98 | `declaration-track:02643caea8add3c569bd46a2981a439bd36232e750b331e3811a6ab84ced06a0` |
| 6 | `structure` | [PrelaxFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/prelaxfunctor--eae4d13d417017f63f03ccec.md) | 109 | `declaration-track:eae4d13d417017f63f03ccec022385705041dad0b0c405fc7509fe32042747a8` |
| 7 | `def` | [mkOfHomFunctors](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/mkofhomfunctors--1b57c7851890e7a34607eb07.md) | 134 | `declaration-track:1b57c7851890e7a34607eb07a47e3cbab1c0225932ea95fc6faf7b9a659e4b29` |
| 8 | `def` | [id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/id--70c3ca77a800e027c43a5ebb.md) | 142 | `declaration-track:70c3ca77a800e027c43a5ebb4af15f6660811b5c061578ef92cc9983927256fd` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/instance--1a4226dc642532e7b0f179a1.md) | 145 | `declaration-track:1a4226dc642532e7b0f179a1847144765f2561801287e7fe3ebb0f8168838c4d` |
| 10 | `def` | [comp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/comp--9fe84cec6d8c29d966d053e1.md) | 152 | `declaration-track:9fe84cec6d8c29d966d053e1c5450a4cd382551d3339825f9491a2e210aea1eb` |
| 11 | `def` | [mapFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/mapfunctor--2c5aad662fa25c597a1b83d9.md) | 157 | `declaration-track:2c5aad662fa25c597a1b83d9c47698657b062640a1f305a5a70b517c64e700cc` |
| 12 | `lemma` | [mkOfHomFunctors_mapFunctor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/mkofhomfunctors-mapfunctor--4609e98fee9cdeb34318bd62.md) | 162 | `result-track:4609e98fee9cdeb34318bd62cecb347f4333216db311b4b1f16edb96b0412a84` |
| 13 | `abbrev` | [map₂Iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/map-iso--4dbd44a31a790953c376e2d2.md) | 172 | `declaration-track:4dbd44a31a790953c376e2d21d8bf189205e33129102e0e6881ff4bf5d2f7ed2` |
| 14 | `instance` | [map₂_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/map-isiso--872848d4f9eac0f0d09f87de.md) | 175 | `declaration-track:872848d4f9eac0f0d09f87def0b302b978cf2886180bd11c957d8eab62b16e3a` |
| 15 | `lemma` | [map₂_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/map-inv--5cdebe4c958edb1dc10afe03.md) | 179 | `result-track:5cdebe4c958edb1dc10afe03d4e6a876140d86e322d9d1e197be1ac63dba028f` |
| 16 | `lemma` | [map₂_hom_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/map-hom-inv--8a59a8b6f795a3ff8a0ab240.md) | 184 | `result-track:8a59a8b6f795a3ff8a0ab240647355d0a029d3cfcf68629beda1424746863f66` |
| 17 | `lemma` | [map₂_hom_inv_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/map-hom-inv-isiso--a31bb1b4fef7c681090d6a3e.md) | 189 | `result-track:a31bb1b4fef7c681090d6a3eeb2d032e9ea488b5186ba502d8f6fee7f82753c4` |
| 18 | `lemma` | [map₂_inv_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/map-inv-hom--eb63433b709eaeadbdc4a7c3.md) | 194 | `result-track:eb63433b709eaeadbdc4a7c3fbe3a1c15194b6995211b93183e8313fddc8d750` |
| 19 | `lemma` | [map₂_inv_hom_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Prelax/Varianteb3023ac7d9c7c6dfcf58523df98f1d471ab310fe56ae2ce0cd8eb0b0d3eeba6.lean/declarations/map-inv-hom-isiso--493829aac8c6fb4a372c0b43.md) | 199 | `result-track:493829aac8c6fb4a372c0b4317899feeb1f518f8ecb8ca50200d3a83f44afc3d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
