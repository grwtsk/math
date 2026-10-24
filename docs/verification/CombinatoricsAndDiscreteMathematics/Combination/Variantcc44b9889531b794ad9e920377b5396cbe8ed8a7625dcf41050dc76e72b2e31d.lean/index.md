# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Combination.Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34df82812a2bb352a11a6900f202dd878c99807e",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34df82812a2bb352a11a6900f202dd878c99807e`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Order` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Hull` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Basis` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Finset.centerMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass--8c38cd823dcc6ea6e6e7095b.md) | 48 | `declaration-track:8c38cd823dcc6ea6e6e7095be6dfe626a6b4ddf8bb44b276e3907d17fcb56002` |
| 2 | `theorem` | [Finset.centerMass_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-empty--21e5b35c40b6bed804599b44.md) | 56 | `result-track:21e5b35c40b6bed804599b4426c645526881d6dd4e2211e2793f7369b54b3848` |
| 3 | `theorem` | [Finset.centerMass_pair](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-pair--1c2b579586a7bd03403231d0.md) | 60 | `result-track:1c2b579586a7bd03403231d0e5de1f3a78f08707dd6aa1cab7b1e2e4fc21f57e` |
| 4 | `theorem` | [Finset.centerMass_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-insert--221473db91a10934b00969f2.md) | 67 | `result-track:221473db91a10934b00969f2dddd3cfa072fc9a29bed563ef7ed7f3722b50d80` |
| 5 | `theorem` | [Finset.centerMass_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-singleton--59885d688a5902cd0ed29702.md) | 76 | `result-track:59885d688a5902cd0ed29702a50d027dd63006a70b7758ffcf2c2bb577cfce1b` |
| 6 | `theorem` | [Finset.centerMass_eq_of_sum_1](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-eq-of-sum-1--6666c21855374bd2b9e48f71.md) | 80 | `result-track:6666c21855374bd2b9e48f7125cbf46dc9d73107a740180c5a0b5567019fea2d` |
| 7 | `theorem` | [Finset.centerMass_smul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-smul--afe2dfc3be1c29d6a57c8b73.md) | 85 | `result-track:afe2dfc3be1c29d6a57c8b732045e1e1a52bbf158a2570a391bd8a3703183b59` |
| 8 | `theorem` | [Finset.centerMass_segment'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-segment--5807c66d7c387dd2d19debd6.md) | 91 | `result-track:5807c66d7c387dd2d19debd6be720f458bb4c97db6c2eac44a5df240d68a37ca` |
| 9 | `theorem` | [Finset.centerMass_segment](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-segment--85e24cff6437194cb4ef5d24.md) | 103 | `result-track:85e24cff6437194cb4ef5d24c27a7699c023bda1bf28c8baa05a8f02d36c7623` |
| 10 | `theorem` | [Finset.centerMass_ite_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-ite-eq--31adc343029f364bc2a9aa8b.md) | 113 | `result-track:31adc343029f364bc2a9aa8b575a4b9af2941f2e7286a2b3e7df3a5e88fb7ad9` |
| 11 | `theorem` | [Finset.centerMass_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-subset--d135204c202e61039a512667.md) | 126 | `result-track:d135204c202e61039a512667abf06262148eb763e440cc406a35ccda0804db77` |
| 12 | `theorem` | [Finset.centerMass_filter_ne_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-filter-ne-zero--3f76c623fa0015447557d89d.md) | 134 | `result-track:3f76c623fa0015447557d89df1e88498158a16f58225741f034d35e043704b93` |
| 13 | `theorem` | [centerMass_le_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/centermass-le-sup--3a6c1b49367f133fe7f4817d.md) | 142 | `result-track:3a6c1b49367f133fe7f4817dda62affd506bacbc0f98a08090c1756cca22c160` |
| 14 | `theorem` | [inf_le_centerMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/inf-le-centermass--9eedf910a44550cccec9f23e.md) | 149 | `result-track:9eedf910a44550cccec9f23ec8a6f716c366b6924439911f746f5a41e52addde` |
| 15 | `theorem` | [Convex.centerMass_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convex-centermass-mem--23207d298942b48a9bdc4e88.md) | 161 | `result-track:23207d298942b48a9bdc4e88db21bc24977dd84199b085df5521257f9c5e65e3` |
| 16 | `theorem` | [Convex.sum_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convex-sum-mem--4ac9e18aaf81f9465eeaba31.md) | 184 | `result-track:4ac9e18aaf81f9465eeaba319f955ad1c43b5cc5783b2e1260fccca7e49368d5` |
| 17 | `theorem` | [Convex.finsum_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convex-finsum-mem--b2ca01f56988d1030084d89e.md) | 194 | `result-track:b2ca01f56988d1030084d89eee5c42aaa7cbf47e1b14706c7450b180d6a3664d` |
| 18 | `theorem` | [convex_iff_sum_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convex-iff-sum-mem--550453f71dc2092dd8dfbf5e.md) | 209 | `result-track:550453f71dc2092dd8dfbf5efdd0297d7876b227ae21697ed02b8e6c8cf72fec` |
| 19 | `theorem` | [Finset.centerMass_mem_convexHull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-mem-convexhull--fad29a0b024d016b888c2b94.md) | 228 | `result-track:fad29a0b024d016b888c2b9425833f194b3f966cd4f60d838cf82aabc132f4eb` |
| 20 | `theorem` | [Finset.centerMass_id_mem_convexHull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centermass-id-mem-convexhull--b1386d84305dccd077c580ab.md) | 236 | `result-track:b1386d84305dccd077c580ab8ea15a77bbd1b2236b2d573f58c01d75a9074691` |
| 21 | `theorem` | [affineCombination_eq_centerMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/affinecombination-eq-centermass--3d3d858a46ff4102e731b37f.md) | 241 | `result-track:3d3d858a46ff4102e731b37fb0ffdb9e5e2e60edeca47554dde945243d141fea` |
| 22 | `theorem` | [affineCombination_mem_convexHull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/affinecombination-mem-convexhull--916e6a4889e03a141bb634d1.md) | 248 | `result-track:916e6a4889e03a141bb634d15a3e705c4cf5ee98403788cb9247b7e3396f57f7` |
| 23 | `theorem` | [Finset.centroid_eq_centerMass](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centroid-eq-centermass--c74e02acd999d211a6a40363.md) | 259 | `result-track:c74e02acd999d211a6a40363f071323965a81ad770d9e41dbb971c30a9d3d0bb` |
| 24 | `theorem` | [Finset.centroid_mem_convexHull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-centroid-mem-convexhull--f856211c099fe5b472b8a0e6.md) | 264 | `result-track:f856211c099fe5b472b8a0e618d4684b12166905ab5f78662e05bda711fe1662` |
| 25 | `theorem` | [convexHull_range_eq_exists_affineCombination](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convexhull-range-eq-exists-affinecombination--685ce15771e16a431d9e8340.md) | 274 | `result-track:685ce15771e16a431d9e8340c60e2cb57ba42627f143c545231d13baf3ad538e` |
| 26 | `theorem` | [convexHull_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convexhull-eq--defbc8b8afaadf3cd22b0385.md) | 310 | `result-track:defbc8b8afaadf3cd22b0385508259dad32259136efc240acdd7d3cebf12e552` |
| 27 | `theorem` | [Finset.convexHull_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-convexhull-eq--86b4829e2037f3d905910c5d.md) | 334 | `result-track:86b4829e2037f3d905910c5de1dcccd2758f46c504b4afccbfbfdf003d02d4e9` |
| 28 | `theorem` | [Finset.mem_convexHull](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/finset-mem-convexhull--ef95aa073b1acbc9998c221f.md) | 356 | `result-track:ef95aa073b1acbc9998c221fec0fd4d49907b97ded66fa4b56496f9f49fb44cd` |
| 29 | `theorem` | [Set.Finite.convexHull_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/set-finite-convexhull-eq--8f1a64bf8cccd8b8002b1644.md) | 361 | `result-track:8f1a64bf8cccd8b8002b164425486ff30e41aecb9ddc6b0bffc19c6333144ace` |
| 30 | `theorem` | [convexHull_eq_union_convexHull_finite_subsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convexhull-eq-union-convexhull-finite-subsets--8dd738d761114939ca783cc5.md) | 369 | `result-track:8dd738d761114939ca783cc5160c26adcc5e1690b71c050dc213110a695ae31f` |
| 31 | `theorem` | [mk_mem_convexHull_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/mk-mem-convexhull-prod--b22ea91359cf97820baa80e9.md) | 384 | `result-track:b22ea91359cf97820baa80e9a43198fa1a6ebebd1db67b5ee21a06deba1a9936` |
| 32 | `theorem` | [convexHull_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convexhull-prod--985bd252150fbb819c042d1c.md) | 427 | `result-track:985bd252150fbb819c042d1cc327d3e600277e5b2093cfab3f8db3f92d6ddd4e` |
| 33 | `theorem` | [convexHull_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convexhull-add--9fd00043f1060e760536a979.md) | 435 | `result-track:9fd00043f1060e760536a979baadae08a6e34d29a9e5ba01af8dd25a62dc69fd` |
| 34 | `def` | [convexHullAddMonoidHom](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convexhulladdmonoidhom--f2bc38577c944ca49cd14cc3.md) | 445 | `declaration-track:f2bc38577c944ca49cd14cc386d0c846c7e2613284f21d68aa64b0c75b2b5874` |
| 35 | `theorem` | [convexHull_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convexhull-sub--ea118af03c25a84a0951945d.md) | 453 | `result-track:ea118af03c25a84a0951945da576fb891a528a0c423ea46948e3ce4bb508d640` |
| 36 | `theorem` | [convexHull_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convexhull-list-sum--8a8a019d4a0df8b7a0548923.md) | 457 | `result-track:8a8a019d4a0df8b7a05489232e6fc38013ac79123447e34800e5ce3a8fea0d25` |
| 37 | `theorem` | [convexHull_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convexhull-multiset-sum--1a892e0f8433de9e77d709e5.md) | 461 | `result-track:1a892e0f8433de9e77d709e591dc70bb819b179c957408ce6584fd2f8f4c1dc5` |
| 38 | `theorem` | [convexHull_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convexhull-sum--3e95b4420d6243e23ded7e77.md) | 466 | `result-track:3e95b4420d6243e23ded7e7772ea4144019120c22beb1ac0e04048a6b84842dd` |
| 39 | `theorem` | [convexHull_basis_eq_stdSimplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/convexhull-basis-eq-stdsimplex--ec52ca573c3dcd09238e5897.md) | 477 | `result-track:ec52ca573c3dcd09238e5897de6021f5cf4985351c40c22c395791c03c6399b7` |
| 40 | `theorem` | [Set.Finite.convexHull_eq_image](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/set-finite-convexhull-eq-image--2013d1c40c3e82251c091973.md) | 496 | `result-track:2013d1c40c3e82251c091973a51250b8d0a6d95e2d5a543f5acb3ca87338d677` |
| 41 | `theorem` | [mem_Icc_of_mem_stdSimplex](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/mem-icc-of-mem-stdsimplex--24d0734e85d11b0efd03dfdf.md) | 511 | `result-track:24d0734e85d11b0efd03dfdfb8f9b9234a0527ed8628dbe36147e8e4cfa4e4be` |
| 42 | `theorem` | [AffineBasis.convexHull_eq_nonneg_coord](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Combination/Variantcc44b9889531b794ad9e920377b5396cbe8ed8a7625dcf41050dc76e72b2e31d.lean/declarations/affinebasis-convexhull-eq-nonneg-coord--4ca36775fe79bd9d13bd563d.md) | 517 | `result-track:4ca36775fe79bd9d13bd563d70ae3a869c555fe8450820b413d7609e9df6583c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
