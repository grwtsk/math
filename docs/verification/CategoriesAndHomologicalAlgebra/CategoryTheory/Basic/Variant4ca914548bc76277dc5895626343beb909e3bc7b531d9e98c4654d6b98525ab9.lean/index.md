# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Basic.Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6fbd4398e5491e1d1e103b3c01fae7be0ca3c99b",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6fbd4398e5491e1d1e103b3c01fae7be0ca3c99b`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Limits.Final` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Functor.TwoSquare` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [costructuredArrowRightwards](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/costructuredarrowrightwards--e2f75ce632080c5750697836.md) | 66 | `declaration-track:e2f75ce632080c57506978369779ed8e92e030442834fa4e23149e72ad5d5e7d` |
| 2 | `def` | [structuredArrowDownwards](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/structuredarrowdownwards--dc30a339823a73bb88d0bbd8.md) | 74 | `declaration-track:dc30a339823a73bb88d0bbd8e41b1095367f6e86922730922834d870e002fde2` |
| 3 | `abbrev` | [StructuredArrowRightwards](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/structuredarrowrightwards--f9972c9137829af252ea89d9.md) | 93 | `declaration-track:f9972c9137829af252ea89d9c8e01df69eb6d2db38747cdc9aa5fde6b1e63efc` |
| 4 | `abbrev` | [CostructuredArrowDownwards](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/costructuredarrowdownwards--4b3e7b51af2677ea3d2abe5b.md) | 99 | `declaration-track:4b3e7b51af2677ea3d2abe5b062041d81df4802eb788ae9d6dbd46c07a00f17d` |
| 5 | `abbrev` | [StructuredArrowRightwards.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/structuredarrowrightwards-mk--f91c2438d6ff146b5e5be29e.md) | 107 | `declaration-track:f91c2438d6ff146b5e5be29ed1791ae889f693ed9437e0d03aedcf608e0fa0bb` |
| 6 | `abbrev` | [CostructuredArrowDownwards.mk](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/costructuredarrowdownwards-mk--32c579d228f53e46e81ef6ec.md) | 112 | `declaration-track:32c579d228f53e46e81ef6ecfd298ba85cbe7a72a5802cff17d0ef10a43f84c1` |
| 7 | `lemma` | [StructuredArrowRightwards.mk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/structuredarrowrightwards-mk-surjective--2f4e4804f8691db45546a60a.md) | 119 | `result-track:2f4e4804f8691db45546a60a9d41297a31f87170c83c7c316e08b7b1a35a9dab` |
| 8 | `lemma` | [CostructuredArrowDownwards.mk_surjective](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/costructuredarrowdownwards-mk-surjective--9c21d103d540857aee391c01.md) | 128 | `result-track:9c21d103d540857aee391c01cf78fa6ad2a159640f36807356efbc732b157cf5` |
| 9 | `def` | [functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/functor--cde28a8bfdb771fd9517e87b.md) | 144 | `declaration-track:cde28a8bfdb771fd9517e87be3b010a04295ef446c8986e8d7b1a7c78c566f75` |
| 10 | `def` | [inverse](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/inverse--20de056ae1aff05f1625558e.md) | 157 | `declaration-track:20de056ae1aff05f1625558eb04072fa52eac273f8c78c2f13c43082a759dc51` |
| 11 | `def` | [equivalenceJ](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/equivalencej--a94f946b77556d711cf4e157.md) | 173 | `declaration-track:a94f946b77556d711cf4e157d8ccd883a802db8e8add497025dead6a7f3a504b` |
| 12 | `lemma` | [isConnected_rightwards_iff_downwards](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/isconnected-rightwards-iff-downwards--cbee77cf115db89681f4f50d.md) | 179 | `result-track:cbee77cf115db89681f4f50d37d6ac69567ed516bbf0206ced059d4bbc61f9a1` |
| 13 | `def` | [costructuredArrowDownwardsPrecomp](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/costructuredarrowdownwardsprecomp--ccf26943a918217592f1cefe.md) | 190 | `declaration-track:ccf26943a918217592f1cefebb3868d9cc3856d3ad7a849d22ee956e95514c86` |
| 14 | `class` | [GuitartExact](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/guitartexact--620e85c8358e025d7af64e46.md) | 215 | `declaration-track:620e85c8358e025d7af64e46b5c01d1efd1a02a25af9bae571e122e445bf07e6` |
| 15 | `lemma` | [guitartExact_iff_isConnected_rightwards](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/guitartexact-iff-isconnected-rightwards--54a359fdf8b9bba99ef644a0.md) | 219 | `result-track:54a359fdf8b9bba99ef644a0e91e95949e5a896f6df0428b50bc1c3e967ff238` |
| 16 | `lemma` | [guitartExact_iff_isConnected_downwards](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/guitartexact-iff-isconnected-downwards--1f440638a69feada0bfcff23.md) | 224 | `result-track:1f440638a69feada0bfcff23db65b8e297e68f86bb03d96080a4e590fca3a69d` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/instance--03e20e7bddb923a8a89fd014.md) | 230 | `declaration-track:03e20e7bddb923a8a89fd014e74e61f7c06c4d18c048c9d84b65ee04f268f95e` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/instance--ac99719a302da0727f8fe628.md) | 235 | `declaration-track:ac99719a302da0727f8fe628aeaf7b79618b222eda816cfd21dd8c015d3db16a` |
| 19 | `lemma` | [guitartExact_iff_final](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/guitartexact-iff-final--f49e48c4fb1f1a1df733cc03.md) | 240 | `result-track:f49e48c4fb1f1a1df733cc03e8f92634307034d4b208d51aef5aa12eeb3c00d5` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/instance--90f9b911530a83fa0ecb06a8.md) | 244 | `declaration-track:90f9b911530a83fa0ecb06a8d207b10633eeaeaa568ba8d914a5fb0da86a3014` |
| 21 | `lemma` | [guitartExact_iff_initial](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/guitartexact-iff-initial--944ccbd0d618f2236c47b3df.md) | 249 | `result-track:944ccbd0d618f2236c47b3dfec7b862014fa8f982b63c2423307af651280af9c` |
| 22 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/instance--e4c11ed84f3e16b40c370999.md) | 256 | `declaration-track:e4c11ed84f3e16b40c3709996b3b306fd2544d9b08d99250a9f042efc184e7f7` |
| 23 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/instance--55d509cdabc60c70ad6dd7dd.md) | 263 | `declaration-track:55d509cdabc60c70ad6dd7ddfa8414ce6af7666daa4eaa8695df891d75062328` |
| 24 | `instance` | [guitartExact_id](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant4ca914548bc76277dc5895626343beb909e3bc7b531d9e98c4654d6b98525ab9.lean/declarations/guitartexact-id--3c69268671cd3c03614f3f4e.md) | 274 | `declaration-track:3c69268671cd3c03614f3f4e6df77286b66b758e921c470240371a6b46e09148` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
