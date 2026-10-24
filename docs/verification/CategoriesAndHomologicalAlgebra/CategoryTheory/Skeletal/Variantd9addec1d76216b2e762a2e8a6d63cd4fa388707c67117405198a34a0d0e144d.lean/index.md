# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Skeletal.Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "78c86a3a75e9afc92a80a4767580403f3daf2827",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `78c86a3a75e9afc92a80a4767580403f3daf2827`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Category.Preorder` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.IsomorphismClasses` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Thin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/skeletal--9d79bb27d39ae3ae6b7ca392.md) | 42 | `declaration-track:9d79bb27d39ae3ae6b7ca39229f5231400fd0ea93e48f718f1b5c7ad39fcd323` |
| 2 | `structure` | [IsSkeletonOf](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/isskeletonof--1fc1dbb699df7d0372b0e217.md) | 49 | `declaration-track:1fc1dbb699df7d0372b0e217bff241171893d9b2049f3ff47b31223db2bd401f` |
| 3 | `theorem` | [Functor.eq_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/functor-eq-of-iso--3e218b2052fc98a344aa0ad6.md) | 61 | `result-track:3e218b2052fc98a344aa0ad63fce7f547655f396f802933a360df176bcfeea29` |
| 4 | `theorem` | [functor_skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/functor-skeletal--7401d190b8ed59d8f1bfdcff.md) | 69 | `result-track:7401d190b8ed59d8f1bfdcff89c7199232f318c92bcee7cbafc871d7fc483ec4` |
| 5 | `def` | [Skeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/skeleton--339d74f2578a11335250127c.md) | 78 | `declaration-track:339d74f2578a11335250127c751cece46e11e130421de69d446ba4bd4b592fd1` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/instance--5e9c82ab5d8d7daeec5c8728.md) | 81 | `declaration-track:5e9c82ab5d8d7daeec5c8728e28f333312557b8d6a069a07785519327080cd35` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/instance--9bd33329a7b13065553d8fe6.md) | 85 | `declaration-track:9bd33329a7b13065553d8fe6ac13d611ba5b77aa000e60f2f4a2eddd9a6fd234` |
| 8 | `def` | [fromSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/fromskeleton--1f3ec9a21f17d0dd14d42c83.md) | 90 | `declaration-track:1f3ec9a21f17d0dd14d42c83c73df47a1058e4bcc106310e22a757c7540fabf3` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/instance--57a3f437e6f57eba87b6f233.md) | 95 | `declaration-track:57a3f437e6f57eba87b6f2330bb036ce7dbe2a1ea9ac9ab292d9f145eb65fdff` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/instance--1ede08745323e38f309920c1.md) | 97 | `declaration-track:1ede08745323e38f309920c17ede0d237bdabd0271ed0be05e7848c6238348a4` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/instance--13a739ce1b028eee6ec24b81.md) | 100 | `declaration-track:13a739ce1b028eee6ec24b81843d75814323fbe3bc25aa14e716370ce24ae69f` |
| 12 | `instance` | [fromSkeleton.isEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/fromskeleton-isequivalence--34e1b2190a34324b2b371090.md) | 103 | `declaration-track:34e1b2190a34324b2b371090839b7ecfa5feca555a76858a3a6fffee21d6938a` |
| 13 | `def` | [skeletonEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/skeletonequivalence--e74f73feb6d6938cac5e11f4.md) | 107 | `declaration-track:e74f73feb6d6938cac5e11f402445812737a18ae1b0ee50a0fd970b6abf9e4b7` |
| 14 | `theorem` | [skeleton_skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/skeleton-skeletal--89fe98d052b0667998922791.md) | 111 | `result-track:89fe98d052b066799892279123ab95f73122d4015264f9809fbe074f36d614d2` |
| 15 | `def` | [skeletonIsSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/skeletonisskeleton--5576b8bfadb693bdfea2665b.md) | 118 | `declaration-track:5576b8bfadb693bdfea2665bd7cc7a9807bbf96eae875f48a7cbe418bcf481c6` |
| 16 | `def` | [Equivalence.skeletonEquiv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/equivalence-skeletonequiv--b669da1e4658f51a10c6f44c.md) | 129 | `declaration-track:b669da1e4658f51a10c6f44c3adc0005566819965fa3206cb6758ff080e55ab0` |
| 17 | `def` | [ThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/thinskeleton--60e3f006427d4a64c96289fe.md) | 143 | `declaration-track:60e3f006427d4a64c96289fedf7f99e6629897f9cdae73bc3524cdf05f4caae3` |
| 18 | `instance` | [inhabitedThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/inhabitedthinskeleton--1203c9e42d890a90e9bb0133.md) | 147 | `declaration-track:1203c9e42d890a90e9bb0133e2d070e34f8754e99fd509502a730dcc4594273f` |
| 19 | `instance` | [ThinSkeleton.preorder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/thinskeleton-preorder--ec68ffbbf9cd706c077856b3.md) | 151 | `declaration-track:ec68ffbbf9cd706c077856b33543383c3009d7411e56dd2c4c413f8bbaf0b0d0` |
| 20 | `def` | [toThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/tothinskeleton--93e912588d941bf4da5877ae.md) | 170 | `declaration-track:93e912588d941bf4da5877aea8f622e0ca90478ce577f37ac06ca10164687132` |
| 21 | `instance` | [thin](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/thin--21ef4d2370f19b56870991dc.md) | 184 | `declaration-track:21ef4d2370f19b56870991dcc93d858cf242a2357475f9b1b8a14404cefb74fd` |
| 22 | `def` | [map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/map--8c73d2801a5f49a66c1e4382.md) | 194 | `declaration-track:8c73d2801a5f49a66c1e43824afd0120f0db15f25bed8be7a7fb0c06d53267c1` |
| 23 | `theorem` | [comp_toThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/comp-tothinskeleton--79c1e3bd878a741dafbdedda.md) | 199 | `result-track:79c1e3bd878a741dafbdeddac0c60473b5dde81e4e0609c8a000d8137e10154b` |
| 24 | `def` | [mapNatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/mapnattrans--ac8cfc57bc8674ddaaf34941.md) | 204 | `declaration-track:ac8cfc57bc8674ddaaf34941a1f8c4172f1f7c07321f60d42ffa621ed61a4ff1` |
| 25 | `def` | [map₂ObjMap](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/map-objmap--a4e683e03c21c7d7dcf46cfc.md) | 220 | `declaration-track:a4e683e03c21c7d7dcf46cfc2f6239910a973e209dc69ee388dbd8bd6762f199` |
| 26 | `def` | [map₂Functor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/map-functor--721bf506fdd4c349f4676ced.md) | 227 | `declaration-track:721bf506fdd4c349f4676cedbc93608b6db262d0efbf28af6f0cd41d3817011a` |
| 27 | `def` | [map₂NatTrans](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/map-nattrans--d99381a36dcedb64e7b7f8c2.md) | 237 | `declaration-track:d99381a36dcedb64e7b7f8c223a35dea522bac89e1364d24f868ffac2c90def6` |
| 28 | `def` | [map₂](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/map--c8a970d2fff04a2c41797aa9.md) | 248 | `declaration-track:c8a970d2fff04a2c41797aa95a9282c18a4b8acd2e6b79c8bd99255fac0b9c67` |
| 29 | `instance` | [toThinSkeleton_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/tothinskeleton-faithful--1217807426f2f3f011efaa21.md) | 259 | `declaration-track:1217807426f2f3f011efaa21ab228eae47c012c7684b92c452eb3af88ba36586` |
| 30 | `def` | [fromThinSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/fromthinskeleton--f1414f10351062f45ee7afa9.md) | 264 | `declaration-track:f1414f10351062f45ee7afa935c33a535f9ab6b7938295d2fcf2bd48166a5641` |
| 31 | `instance` | [fromThinSkeletonEquivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/fromthinskeletonequivalence--290dc68b557bbf005a248628.md) | 271 | `declaration-track:290dc68b557bbf005a248628a66a95cfbf94fc862f24a3d3f61980785bbb59ac` |
| 32 | `def` | [equivalence](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/equivalence--d8131a3d2ffe3238f78debab.md) | 279 | `declaration-track:d8131a3d2ffe3238f78debab250e9bd050f48f6bdaf332ae2e8eaacb7565c6fe` |
| 33 | `theorem` | [equiv_of_both_ways](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/equiv-of-both-ways--3fc9f8f71781c4445c3aace0.md) | 285 | `result-track:3fc9f8f71781c4445c3aace09488c0c5e61c4a2a3b70df4a98eb02c9a70f7af0` |
| 34 | `instance` | [thinSkeletonPartialOrder](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/thinskeletonpartialorder--a13f8e6b51beb06f2cde2a49.md) | 289 | `declaration-track:a13f8e6b51beb06f2cde2a49696b8dc9a178f6231c1b5fe7e6e072984eb05efa` |
| 35 | `theorem` | [skeletal](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/skeletal--f7327535408aa8f7162904e7.md) | 298 | `result-track:f7327535408aa8f7162904e7300e96041089c2c0d47d7b07050223d9d4f46b9b` |
| 36 | `theorem` | [map_comp_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/map-comp-eq--7e5f69083191133bcd0ee42e.md) | 302 | `result-track:7e5f69083191133bcd0ee42ecd083928b3b145ac60553ed5df29734a37ee31d7` |
| 37 | `theorem` | [map_id_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/map-id-eq--f667798d178d52c5c5bdef7e.md) | 307 | `result-track:f667798d178d52c5c5bdef7e19679912351e8e77bff0b3cd8bda5ae5d97852f0` |
| 38 | `theorem` | [map_iso_eq](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/map-iso-eq--8352500eed0f4f0c1bce5377.md) | 312 | `result-track:8352500eed0f4f0c1bce5377e90cf1890adacdaeffb4b6a142f4d898662d11d5` |
| 39 | `def` | [thinSkeletonIsSkeleton](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/thinskeletonisskeleton--83f26c4a424dd1c39560666c.md) | 319 | `declaration-track:83f26c4a424dd1c39560666c122d52b66f7173e6eb3219f87cf3817446b537a7` |
| 40 | `instance` | [isSkeletonOfInhabited](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/isskeletonofinhabited--ef310aa4a15da1f783e26274.md) | 325 | `declaration-track:ef310aa4a15da1f783e262744ee4da57c6ab311ad6203f1ab31051d25fc6ea8d` |
| 41 | `def` | [lowerAdjunction](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/loweradjunction--b8183340f618160c11550f5e.md) | 335 | `declaration-track:b8183340f618160c11550f5ef0c49756a697e75f76c165c84d21664847b1ec7d` |
| 42 | `def` | [Equivalence.thinSkeletonOrderIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Skeletal/Variantd9addec1d76216b2e762a2e8a6d63cd4fa388707c67117405198a34a0d0e144d.lean/declarations/equivalence-thinskeletonorderiso--eb9249591a23ca1a702a3bc2.md) | 362 | `declaration-track:eb9249591a23ca1a702a3bc2e9e36511e2aef4af8003609ec3e70119b78a8990` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
