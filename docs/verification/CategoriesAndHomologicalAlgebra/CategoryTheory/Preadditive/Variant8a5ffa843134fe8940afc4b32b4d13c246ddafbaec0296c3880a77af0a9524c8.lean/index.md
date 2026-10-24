# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.Preadditive.Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dc2093d709c80399a0706fd89dfc401b67d3a430",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dc2093d709c80399a0706fd89dfc401b67d3a430`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Preadditive.AdditiveFunctor` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Monoidal.Functor` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [MonoidalPreadditive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/monoidalpreadditive--16bb46eb30999e5142d21ba9.md) | 39 | `declaration-track:16bb46eb30999e5142d21ba99359984eddb8b8786d558ff9709c83ce9ef85f4d` |
| 2 | `theorem` | [tensor_zero](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/tensor-zero--2d2bb629ae67ff9d6b360285.md) | 55 | `result-track:2d2bb629ae67ff9d6b360285fe8aadf109dad5ca2409bb327b10a91bffeed765` |
| 3 | `theorem` | [zero_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/zero-tensor--4fc5997e9e3c40713d9d4946.md) | 60 | `result-track:4fc5997e9e3c40713d9d4946aa11912b88e52161ffdca153f859649058f7ce97` |
| 4 | `theorem` | [tensor_add](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/tensor-add--c3ab8cef80c6938fb0d27b11.md) | 63 | `result-track:c3ab8cef80c6938fb0d27b11740405535efb937971d84b598e4ba8290171b287` |
| 5 | `theorem` | [add_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/add-tensor--1ef9fbd0eac484f576ef994f.md) | 66 | `result-track:1ef9fbd0eac484f576ef994fe8c65c049e7bb30f247d99123cdb327c56843260` |
| 6 | `instance` | [tensorLeft_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/tensorleft-additive--383fcbdd643aca06f1b37d20.md) | 71 | `declaration-track:383fcbdd643aca06f1b37d20cebc857df517f7741c5975532e7626dca1e1de6f` |
| 7 | `instance` | [tensorRight_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/tensorright-additive--804c462e55e04dc5bea64568.md) | 73 | `declaration-track:804c462e55e04dc5bea645688ed2c0f12d8dd6757a868872d04c0ca0296b636e` |
| 8 | `instance` | [tensoringLeft_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/tensoringleft-additive--52f79e8528e65d3730866886.md) | 75 | `declaration-track:52f79e8528e65d3730866886ff6720e9671811f699e2d94cc3cc2d89856534eb` |
| 9 | `instance` | [tensoringRight_additive](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/tensoringright-additive--c6de440ba3fc639b288e5ed6.md) | 77 | `declaration-track:c6de440ba3fc639b288e5ed6dc16abe87347597fedb74d97fe1570fdfdc4d2e0` |
| 10 | `theorem` | [monoidalPreadditive_of_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/monoidalpreadditive-of-faithful--a4b94e3fde9416e57b0a4ff5.md) | 81 | `result-track:a4b94e3fde9416e57b0a4ff5558d909d93362be7b715057675433e2579124836` |
| 11 | `theorem` | [whiskerLeft_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/whiskerleft-sum--317436dab2d04bc93a33862f.md) | 103 | `result-track:317436dab2d04bc93a33862f4115d6aaebe804a7d21496ed6cc5995ffd9e19fc` |
| 12 | `theorem` | [sum_whiskerRight](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/sum-whiskerright--027377cc9bb9232664ee9e16.md) | 107 | `result-track:027377cc9bb9232664ee9e1603b4ad070ef2832c80875130ba25cb4c88f55ab0` |
| 13 | `theorem` | [tensor_sum](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/tensor-sum--cdde6631ceb414b7a33c2d2e.md) | 111 | `result-track:cdde6631ceb414b7a33c2d2e245bd42896cf53290928fa023ebeba4798e844a3` |
| 14 | `theorem` | [sum_tensor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/sum-tensor--22b4e39b74be45230090f1a4.md) | 115 | `result-track:22b4e39b74be45230090f1a4dc0443a4dc0bfdd35b32b635a6b48bb39bbb8e9b` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/instance--5f41f06368f1bb3a7d75aa11.md) | 122 | `declaration-track:5f41f06368f1bb3a7d75aa11fbdf54459f5359eddd346cb80812a770063b1867` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/instance--db0276f501235bc757faf2ea.md) | 132 | `declaration-track:db0276f501235bc757faf2eaf816f9a20d0f9c10c78fecd6863efcd9f50596be` |
| 17 | `def` | [leftDistributor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/leftdistributor--ad73d8408c4d81259339b528.md) | 145 | `declaration-track:ad73d8408c4d81259339b528dbd1b4ec62508cb4bd04a9d057c4ce08dfb55f75` |
| 18 | `theorem` | [leftDistributor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/leftdistributor-hom--8899f3c5c4d076a40fad445e.md) | 148 | `result-track:8899f3c5c4d076a40fad445efcf2561be6473c994d93d26108331f03977df72a` |
| 19 | `theorem` | [leftDistributor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/leftdistributor-inv--8b0ab73f9244031e11b3074d.md) | 158 | `result-track:8b0ab73f9244031e11b3074d1a7cbefab6935188bbbffe1763120ed3aa1c96a5` |
| 20 | `theorem` | [leftDistributor_hom_comp_biproduct_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/leftdistributor-hom-comp-biproduct--2c40586cf8c6bacf6aa4c91b.md) | 168 | `result-track:2c40586cf8c6bacf6aa4c91b46664fede5d7b29faa299a9b78d32feae993d162` |
| 21 | `theorem` | [biproduct_ι_comp_leftDistributor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/biproduct-comp-leftdistributor-hom--1516068c5eb66e9900815fcc.md) | 175 | `result-track:1516068c5eb66e9900815fcc82880c19e157200a9460285369a91a30aff402c1` |
| 22 | `theorem` | [leftDistributor_inv_comp_biproduct_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/leftdistributor-inv-comp-biproduct--166df2b9eda345f56e68144b.md) | 183 | `result-track:166df2b9eda345f56e68144be2384458d58ba7abcc8a225a8930e85c634e7a94` |
| 23 | `theorem` | [biproduct_ι_comp_leftDistributor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/biproduct-comp-leftdistributor-inv--312fe93e733cfac15937ed53.md) | 191 | `result-track:312fe93e733cfac15937ed53d94b20cbd99095c600d2a89a8f62c7da7922f44f` |
| 24 | `theorem` | [leftDistributor_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/leftdistributor-assoc--03361296e7082236544dbb2c.md) | 197 | `result-track:03361296e7082236544dbb2c42bdfcb4a60211f31733a687347f58b656df4ea9` |
| 25 | `def` | [rightDistributor](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/rightdistributor--4df40525854790d7b21d1f8f.md) | 213 | `declaration-track:4df40525854790d7b21d1f8fe792dc51ee1218859d82f92955efb54efac01f2a` |
| 26 | `theorem` | [rightDistributor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/rightdistributor-hom--07d25621d0e04268c6f14590.md) | 216 | `result-track:07d25621d0e04268c6f145900cf4f56090b466142b6445fde8923498c0fa7200` |
| 27 | `theorem` | [rightDistributor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/rightdistributor-inv--9cc49e8512c7cf79d7a6e858.md) | 226 | `result-track:9cc49e8512c7cf79d7a6e8580df52e400956c6d99c11584983c8024fc5c4ae2e` |
| 28 | `theorem` | [rightDistributor_hom_comp_biproduct_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/rightdistributor-hom-comp-biproduct--6bbba37597905f184b1a7625.md) | 235 | `result-track:6bbba37597905f184b1a7625154761b268a4a4ff35cefbda469c5d768f3ba635` |
| 29 | `theorem` | [biproduct_ι_comp_rightDistributor_hom](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/biproduct-comp-rightdistributor-hom--8f8b04b53ad76028bfde99a2.md) | 242 | `result-track:8f8b04b53ad76028bfde99a2deae9fb93fce5ecdc01da8de925b4bda6c47a0ad` |
| 30 | `theorem` | [rightDistributor_inv_comp_biproduct_π](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/rightdistributor-inv-comp-biproduct--104d731fd1da407040aae8c6.md) | 250 | `result-track:104d731fd1da407040aae8c67b6dac487681ff703a0acceb90c5ce9b10b83cd6` |
| 31 | `theorem` | [biproduct_ι_comp_rightDistributor_inv](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/biproduct-comp-rightdistributor-inv--41c9f6791991513fa4ae8400.md) | 258 | `result-track:41c9f6791991513fa4ae8400398216c8a47cb9a2e4dfd406ee1e42b78e5eb1bd` |
| 32 | `theorem` | [rightDistributor_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/rightdistributor-assoc--46e1f2ececfdb740761bbe6b.md) | 265 | `result-track:46e1f2ececfdb740761bbe6b894e9b50145b8c0209c5277b11c73412166f8314` |
| 33 | `theorem` | [leftDistributor_rightDistributor_assoc](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/leftdistributor-rightdistributor-assoc--756d223e5522a061e1754a51.md) | 280 | `result-track:756d223e5522a061e1754a517d02ae9352ac7ee91b807fb163cfe4dd5a68c329` |
| 34 | `theorem` | [leftDistributor_ext_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/leftdistributor-ext-left--04b586b99cc082699ece8d4d.md) | 300 | `result-track:04b586b99cc082699ece8d4d269479e476d275fd38da5e387a608ec840f535b8` |
| 35 | `theorem` | [leftDistributor_ext_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/leftdistributor-ext-right--8eabb1adb2e15f290f9e3dc9.md) | 312 | `result-track:8eabb1adb2e15f290f9e3dc99d20f09ab1cc5f9b8fe65b9a73b941c9ea594cd2` |
| 36 | `theorem` | [leftDistributor_ext₂_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/leftdistributor-ext-left--53f36244cb421481266ee420.md) | 327 | `result-track:53f36244cb421481266ee420ce9e30cc4f2d122c3b3f2214baa67d31e7efb792` |
| 37 | `theorem` | [leftDistributor_ext₂_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/leftdistributor-ext-right--0574c6c01a43e3114f4f06f7.md) | 336 | `result-track:0574c6c01a43e3114f4f06f7f948de5045399b55df1453f8f50a8a0119213ae1` |
| 38 | `theorem` | [rightDistributor_ext_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/rightdistributor-ext-left--42578e0f128ee712a25d7ada.md) | 345 | `result-track:42578e0f128ee712a25d7ada2eecff9d82f61029e1490644bfbaa088a9ee1a17` |
| 39 | `theorem` | [rightDistributor_ext_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/rightdistributor-ext-right--7017a42c25563335357bc145.md) | 358 | `result-track:7017a42c25563335357bc14523bc21964a65db38ace06bb7fa524a7be9e6647d` |
| 40 | `theorem` | [rightDistributor_ext₂_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/rightdistributor-ext-left--5a3159f93ec688b3fcbbb913.md) | 372 | `result-track:5a3159f93ec688b3fcbbb913c99db9a78e598ce8bfaad108315e6cbae041d93f` |
| 41 | `theorem` | [rightDistributor_ext₂_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/Preadditive/Variant8a5ffa843134fe8940afc4b32b4d13c246ddafbaec0296c3880a77af0a9524c8.lean/declarations/rightdistributor-ext-right--7750b66d8af1fc903249420d.md) | 381 | `result-track:7750b66d8af1fc903249420d5ae5d5e1d9b96fe5074e951b2472fcb7aa66f656` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
