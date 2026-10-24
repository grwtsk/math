# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Combination.Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b95499f4e25da6d40581ef8f91a895ed42cc8a21",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b95499f4e25da6d40581ef8f91a895ed42cc8a21`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Hull` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Basis` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finset.centerMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass--5a203c1dc09666904d767935.md) | 40 | `declaration-track:5a203c1dc09666904d767935bff46e70e1c5f383a998d83929825ec37b66849e` |
| 2 | `theorem` | [Finset.centerMass_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-empty--ad3e0e5234767343169bb8b6.md) | 48 | `result-track:ad3e0e5234767343169bb8b62e1353054f2ca8b9d589518b8a40c9d3c8727e4a` |
| 3 | `theorem` | [Finset.centerMass_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-pair--826106b99826ea7f39513fd9.md) | 52 | `result-track:826106b99826ea7f39513fd91918a2503ba7d7ee71e7a8349d038ff8bfe1f2e8` |
| 4 | `theorem` | [Finset.centerMass_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-insert--f20c66fa0e5097655d52fee1.md) | 59 | `result-track:f20c66fa0e5097655d52fee19b5f9f1a7ea3db8514be2848ec67643235cfc66b` |
| 5 | `theorem` | [Finset.centerMass_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-singleton--5747a0ff0c15b086f531362e.md) | 68 | `result-track:5747a0ff0c15b086f531362ec4c8b1c2864795c5bf2b9fbe8a8fdf69c091eb4c` |
| 6 | `theorem` | [Finset.centerMass_eq_of_sum_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-eq-of-sum-1--6414425307ca89b82a04528c.md) | 72 | `result-track:6414425307ca89b82a04528c369a2bd3988a9cd111ff0474d12da160d38463aa` |
| 7 | `theorem` | [Finset.centerMass_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-smul--cbc6582f37b7bfaccbfdfc46.md) | 77 | `result-track:cbc6582f37b7bfaccbfdfc46a34ab2f92a810d023290a63cac6734cf559d326a` |
| 8 | `theorem` | [Finset.centerMass_segment'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-segment--e9cb875db227b79bea0e96c0.md) | 83 | `result-track:e9cb875db227b79bea0e96c0e004aa9b313db3a2359dc2b48b12d159c0f6dda0` |
| 9 | `theorem` | [Finset.centerMass_segment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-segment--90e14b2e6e8035ccd7f1748b.md) | 95 | `result-track:90e14b2e6e8035ccd7f1748b1b04eb79351990554289ca7aefed1803d4ae4e91` |
| 10 | `theorem` | [Finset.centerMass_ite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-ite-eq--c21e7be424b780b3a6e26682.md) | 105 | `result-track:c21e7be424b780b3a6e266823c868663a493a9945af8917b7c3e98a6148b07e5` |
| 11 | `theorem` | [Finset.centerMass_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-subset--e547fe122e97f0c6773118ba.md) | 118 | `result-track:e547fe122e97f0c6773118bafa453c4f5812053917c5f906d69331b4383ba4eb` |
| 12 | `theorem` | [Finset.centerMass_filter_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-filter-ne-zero--bff643ea70fdf924d833e336.md) | 126 | `result-track:bff643ea70fdf924d833e3369248e209fae929c6dd28f7807f043b5626ae545d` |
| 13 | `theorem` | [centerMass_le_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/centermass-le-sup--04925daf8a1bfa0627b68f9c.md) | 134 | `result-track:04925daf8a1bfa0627b68f9c4f0da5e681ffc6cbdb72e072247a1c31ee4f8023` |
| 14 | `theorem` | [inf_le_centerMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/inf-le-centermass--a6909fb0840b90b4cb0f130c.md) | 141 | `result-track:a6909fb0840b90b4cb0f130c5a6b9d7a4373052ec3f7fa8fd3bea3af6a4e347d` |
| 15 | `theorem` | [Convex.centerMass_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convex-centermass-mem--c4d5ff417610e552f77a6dd7.md) | 153 | `result-track:c4d5ff417610e552f77a6dd77662dc0a0e2432cf2776460c146e2ef86a716a0a` |
| 16 | `theorem` | [Convex.sum_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convex-sum-mem--2ef453884dbe70e36b2177d3.md) | 176 | `result-track:2ef453884dbe70e36b2177d3ff2223d48b43507a2e908ae2541efbc04915f01e` |
| 17 | `theorem` | [Convex.finsum_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convex-finsum-mem--f8af3976ccf58aca0610e49e.md) | 186 | `result-track:f8af3976ccf58aca0610e49ed9d78d8167ce7b7930689903c62ef22772b8feb3` |
| 18 | `theorem` | [convex_iff_sum_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convex-iff-sum-mem--b73b7cc8e1ac76cdbd7c5992.md) | 201 | `result-track:b73b7cc8e1ac76cdbd7c599228da682380651b918aa257d8b64507eabd0c5b4a` |
| 19 | `theorem` | [Finset.centerMass_mem_convexHull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-mem-convexhull--235a16260968db8bdc177107.md) | 220 | `result-track:235a16260968db8bdc17710760a3c979ea51bed17a66bd5f60e6a4705c0ece2e` |
| 20 | `theorem` | [Finset.centerMass_id_mem_convexHull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centermass-id-mem-convexhull--fbdb6dade22d9ef94d627e07.md) | 228 | `result-track:fbdb6dade22d9ef94d627e07605f93d7d2d31b0c087b20caabd0b6d18c9bc44b` |
| 21 | `theorem` | [affineCombination_eq_centerMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/affinecombination-eq-centermass--a6fa98d8b8c3832ff59b995b.md) | 233 | `result-track:a6fa98d8b8c3832ff59b995beb306ce68ebea343d1e692f5c6f5f55ecb09c5c0` |
| 22 | `theorem` | [affineCombination_mem_convexHull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/affinecombination-mem-convexhull--60c87b2727677ec1e9499b3d.md) | 240 | `result-track:60c87b2727677ec1e9499b3d3b450e0e4ddcd4cba2fa7cb9bf3b80874c3782af` |
| 23 | `theorem` | [Finset.centroid_eq_centerMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centroid-eq-centermass--f56aabdcbec1c8aca79114b9.md) | 251 | `result-track:f56aabdcbec1c8aca79114b96a778ae6b814ea45a3990ee2bc412fadc7f1afc7` |
| 24 | `theorem` | [Finset.centroid_mem_convexHull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-centroid-mem-convexhull--2bad306ce632b32ffa8c8038.md) | 256 | `result-track:2bad306ce632b32ffa8c80380abc5efda78474557e734e31ede1434612138847` |
| 25 | `theorem` | [convexHull_range_eq_exists_affineCombination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convexhull-range-eq-exists-affinecombination--9b24776690e253a16b76edb6.md) | 266 | `result-track:9b24776690e253a16b76edb6f57d60a07e6cb4f761e15cfda0494114319f35c9` |
| 26 | `theorem` | [convexHull_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convexhull-eq--a8138e64d8a3a9e609662e5b.md) | 302 | `result-track:a8138e64d8a3a9e609662e5b624a2bcb746f9f18cbc764a877e33dd74ee7f676` |
| 27 | `theorem` | [Finset.convexHull_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-convexhull-eq--0affa965fc909a2297038c05.md) | 326 | `result-track:0affa965fc909a2297038c053def835ad1850f2862b897d256cbb4f6ba51f3a0` |
| 28 | `theorem` | [Finset.mem_convexHull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/finset-mem-convexhull--faf1116f4101306b93fd186c.md) | 348 | `result-track:faf1116f4101306b93fd186cff8ddf6a1808f6dc261ca2936a73ea7e6ce133b8` |
| 29 | `theorem` | [Set.Finite.convexHull_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/set-finite-convexhull-eq--6d80291a7cd81512fcef1682.md) | 353 | `result-track:6d80291a7cd81512fcef1682742cef3386e5e182302597c0eef491c39b0bd5df` |
| 30 | `theorem` | [convexHull_eq_union_convexHull_finite_subsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convexhull-eq-union-convexhull-finite-subsets--1be9d56607e4e813d1ab90bf.md) | 361 | `result-track:1be9d56607e4e813d1ab90bf8b3a72896b3b4de173bd065ec2af3c45337c9597` |
| 31 | `theorem` | [mk_mem_convexHull_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/mk-mem-convexhull-prod--b6fff5ceba21ee2faf57c01b.md) | 376 | `result-track:b6fff5ceba21ee2faf57c01bbaa3accd71ed0dc6f15a8af1fe12286d1545dff4` |
| 32 | `theorem` | [convexHull_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convexhull-prod--004e0ee5718653404fc39324.md) | 419 | `result-track:004e0ee5718653404fc39324d9ed2b6fbda4f192ad39b78149e6e6dfff64e5d5` |
| 33 | `theorem` | [convexHull_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convexhull-add--ac379347883e5e1dbfd9c24f.md) | 427 | `result-track:ac379347883e5e1dbfd9c24f5c51096e591934197efe7fe6fa1fd58e952ad074` |
| 34 | `def` | [convexHullAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convexhulladdmonoidhom--b71baea489af7357a67a535f.md) | 437 | `declaration-track:b71baea489af7357a67a535f02108a0542612d0108e743f4130e67135980a1aa` |
| 35 | `theorem` | [convexHull_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convexhull-sub--10fb2c77dbbb597f1535e92d.md) | 445 | `result-track:10fb2c77dbbb597f1535e92d436ae6c6ad7211e761470a23ae10d45f6dc78fd8` |
| 36 | `theorem` | [convexHull_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convexhull-list-sum--4e8d4e939bafe2e030673a84.md) | 449 | `result-track:4e8d4e939bafe2e030673a84911cf15448984c9e19aa89cce20677278a15cbc1` |
| 37 | `theorem` | [convexHull_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convexhull-multiset-sum--b10c5c822f88fbbfa51d8290.md) | 453 | `result-track:b10c5c822f88fbbfa51d82901aeb23fb53a8b5c42b92386526c8a92d21736162` |
| 38 | `theorem` | [convexHull_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convexhull-sum--f3f9d717c81f7ef35c962f24.md) | 458 | `result-track:f3f9d717c81f7ef35c962f24070553cdd8377f64d96ab0443759df6dae43fec3` |
| 39 | `theorem` | [convexHull_basis_eq_stdSimplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/convexhull-basis-eq-stdsimplex--7424fa58dbba2d0e5c517256.md) | 469 | `result-track:7424fa58dbba2d0e5c517256a1fb81dcf251e70515ba4d97ee97a4f7912f89fa` |
| 40 | `theorem` | [Set.Finite.convexHull_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/set-finite-convexhull-eq-image--aa75600648dbd0dcbeed22e0.md) | 488 | `result-track:aa75600648dbd0dcbeed22e0aee0466497c7cc2d8513b31ca17e667a5e11d6a2` |
| 41 | `theorem` | [mem_Icc_of_mem_stdSimplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/mem-icc-of-mem-stdsimplex--77775061dd7252bc194849b7.md) | 503 | `result-track:77775061dd7252bc194849b7a305348a2f87294905c7de2cbc082bc2e61d4209` |
| 42 | `theorem` | [AffineBasis.convexHull_eq_nonneg_coord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantaf245b13443e822ecf3d352510e12734f9f33ffc0dd9c24c75e6c76313b98c76.lean/declarations/affinebasis-convexhull-eq-nonneg-coord--ec49e309d21d6a7da4150ea4.md) | 509 | `result-track:ec49e309d21d6a7da4150ea44375993f4a90ad67ed6a8a3265212869f9a77a71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
