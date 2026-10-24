# Verification target: GRWTSK.Algebra.LinearAlgebra.Orientation.Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b9e291f43dfd1b3c6efdf230d535908e477c505d",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b9e291f43dfd1b3c6efdf230d535908e477c505d`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.LinearAlgebra.Ray` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Determinant` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation--2dbf13eaa983bda2d46b5c41.md) | 46 | `declaration-track:2dbf13eaa983bda2d46b5c41183cda8364d3186f21bc749089adc8b2d5984f39` |
| 2 | `class` | [Module.Oriented](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/module-oriented--441a8b1e5f5ca9b5f34c25a0.md) | 49 | `declaration-track:441a8b1e5f5ca9b5f34c25a06721d94d46237661800d07ba03aaa5f9b86d835b` |
| 3 | `def` | [Orientation.map](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-map--f1211e77fdfcef6eb42ae776.md) | 58 | `declaration-track:f1211e77fdfcef6eb42ae776688320dfab3963c74b252612a7b119f87221e4fe` |
| 4 | `theorem` | [Orientation.map_apply](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-map-apply--955ceeda48f04395426a9dfb.md) | 62 | `result-track:955ceeda48f04395426a9dfb4eb72ee75e8b0ba236b128c86245ba96b740acc1` |
| 5 | `theorem` | [Orientation.map_refl](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-map-refl--8df7a112f5076c90a70ab039.md) | 68 | `result-track:8df7a112f5076c90a70ab03915b47191fcdddbc52f7bebfd08b6f8acddd46794` |
| 6 | `theorem` | [Orientation.map_symm](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-map-symm--f9af731d4e3dae76f3a45de9.md) | 72 | `result-track:f9af731d4e3dae76f3a45de9a71d94a80adbeeba40c2a9ccb3aef71a905ce362` |
| 7 | `def` | [Orientation.reindex](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-reindex--f2c06c5e95ebee1bd85d9ea1.md) | 80 | `declaration-track:f2c06c5e95ebee1bd85d9ea1731e2828ffea897f2d58bf8a59873d4e37daaf1c` |
| 8 | `theorem` | [Orientation.reindex_apply](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-reindex-apply--6884f3af2fa243ae7b5c7450.md) | 84 | `result-track:6884f3af2fa243ae7b5c7450daac8da44eb36d422b2a784f2bb0b4638c0e6f87` |
| 9 | `theorem` | [Orientation.reindex_refl](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-reindex-refl--74aa4f4318ea3631c1068f98.md) | 90 | `result-track:74aa4f4318ea3631c1068f9812f1b93045152bbafe5a8176f9fde181eca8b7bb` |
| 10 | `theorem` | [Orientation.reindex_symm](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-reindex-symm--e1b607dc1ad9fdbd60dfe213.md) | 94 | `result-track:e1b607dc1ad9fdbd60dfe21337797338d1e8c68186f26b65ccc76b730e8c094b` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/instance--5704c41eb5c8edd7d352f04d.md) | 101 | `declaration-track:5704c41eb5c8edd7d352f04d0950cb44bf5b045b90e409799867d99fca6f3c9a` |
| 12 | `theorem` | [Orientation.map_positiveOrientation_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-map-positiveorientation-of-isempty--fe834122eee52dab6e1a2a87.md) | 107 | `result-track:fe834122eee52dab6e1a2a877dec331ed6569a318599eed5ffef18694045b353` |
| 13 | `theorem` | [Orientation.map_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-map-of-isempty--62d79a9bd463214f4c078dd2.md) | 111 | `result-track:62d79a9bd463214f4c078dd299b36f89bbeac13cb1792ad93b52d0e5195f6e16` |
| 14 | `theorem` | [Orientation.map_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-map-neg--592b080a843cb0c0a6d4e393.md) | 129 | `result-track:592b080a843cb0c0a6d4e3935e9d2a0c3b7d8c31120c6dae9b30b2bb5290dbb8` |
| 15 | `theorem` | [Orientation.reindex_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-reindex-neg--a1a05df22658f39f20e77720.md) | 134 | `result-track:a1a05df22658f39f20e77720eabbebb4cb3817e2b63ab0a42d038df835f96aa4` |
| 16 | `theorem` | [map_orientation_eq_det_inv_smul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/map-orientation-eq-det-inv-smul--717046e82590ca09b26f4289.md) | 144 | `result-track:717046e82590ca09b26f42897312cb4106572a520aff36f36f700c910eacde7c` |
| 17 | `def` | [orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation--b7eb81147e8eb4bd2d4b5445.md) | 159 | `declaration-track:b7eb81147e8eb4bd2d4b54453daeedf500c7a83f39e1c1826b670c9f903abcfd` |
| 18 | `theorem` | [orientation_map](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-map--48b8078d3b301e7fa98bded9.md) | 162 | `result-track:48b8078d3b301e7fa98bded97bb37489fde3329b6539de2f851ac80599ae3901` |
| 19 | `theorem` | [orientation_reindex](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-reindex--187d5584b68c1a2c80224fb5.md) | 166 | `result-track:187d5584b68c1a2c80224fb5db8ce0b105481bad182bbb85a9d4d1062b634958` |
| 20 | `theorem` | [orientation_unitsSMul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-unitssmul--b7ca329290ab700bb9f69ff9.md) | 172 | `result-track:b7ca329290ab700bb9f69ff9807c263f0cdc67e84cde6082fbffa93918ada9fb` |
| 21 | `theorem` | [orientation_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-isempty--24d485288b41737426fd667a.md) | 181 | `result-track:24d485288b41737426fd667af077b1286d18368cf8ab80103aa4f20f690d2488` |
| 22 | `theorem` | [eq_or_eq_neg_of_isEmpty](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/eq-or-eq-neg-of-isempty--90694b20edfabf3f7704c7f9.md) | 202 | `result-track:90694b20edfabf3f7704c7f9134df44a548ddec64b37bd3fb91a15f34a7e9baf` |
| 23 | `theorem` | [orientation_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-eq-iff-det-pos--c39225911d0a04264fdab3e5.md) | 225 | `result-track:c39225911d0a04264fdab3e584412ecf759359685bc6f3658e720e2b34700ef0` |
| 24 | `theorem` | [orientation_eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-eq-or-eq-neg--3e3a6addcef602a7aa0c93ca.md) | 233 | `result-track:3e3a6addcef602a7aa0c93ca7ea760294e135f6e3d13b2c474e5813ddad45df4` |
| 25 | `theorem` | [orientation_ne_iff_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-ne-iff-eq-neg--dc9c38ca7891453aab2ad7c2.md) | 243 | `result-track:dc9c38ca7891453aab2ad7c26c508630cba81c130d789c59edb3be640cfeb449` |
| 26 | `theorem` | [orientation_comp_linearEquiv_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-comp-linearequiv-eq-iff-det-pos--98cc1dc269e1ad81ae6c1713.md) | 250 | `result-track:98cc1dc269e1ad81ae6c17132d21c0dfa764ad3033bde08ef505064cc20344bd` |
| 27 | `theorem` | [orientation_comp_linearEquiv_eq_neg_iff_det_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-comp-linearequiv-eq-neg-iff-det-neg--754742fad7017f28ee64e80c.md) | 257 | `result-track:754742fad7017f28ee64e80c5a9f6bc01a0d301d76886726b480994ef12044d4` |
| 28 | `theorem` | [orientation_neg_single](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-neg-single--9dd5b4de70c58d6237a6816b.md) | 265 | `result-track:9dd5b4de70c58d6237a6816b795a2ce5414b03e58d962a2503faf415f26d2f48` |
| 29 | `def` | [adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/adjusttoorientation--e89d4cc31ec0e13a3282d6ef.md) | 272 | `declaration-track:e89d4cc31ec0e13a3282d6ef08ba05f945ef23e5bcd740bbf14469f101de1777` |
| 30 | `theorem` | [orientation_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/orientation-adjusttoorientation--c9c1ac700b84ff88b80e29d3.md) | 279 | `result-track:c9c1ac700b84ff88b80e29d32731f3979358108df1fee69fb32f7716fffc0e60` |
| 31 | `theorem` | [adjustToOrientation_apply_eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/adjusttoorientation-apply-eq-or-eq-neg--0798046c5b6493a9c1d2cfe3.md) | 289 | `result-track:0798046c5b6493a9c1d2cfe3f285ef2bda79349df3a08f99cf4f76a737652a54` |
| 32 | `theorem` | [det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/det-adjusttoorientation--3053473d8d4b5ea0b153fb3f.md) | 297 | `result-track:3053473d8d4b5ea0b153fb3fffaf0b60c97ed23301b5057882871c0535f5e7f1` |
| 33 | `theorem` | [abs_det_adjustToOrientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/abs-det-adjusttoorientation--3fc2079f3fd4137462185608.md) | 311 | `result-track:3fc2079f3fd4137462185608cb2fa7fe119868ab6c01a6d9a621ebbb22a720b4` |
| 34 | `theorem` | [eq_or_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/eq-or-eq-neg--d775b2102b68496b104afe36.md) | 333 | `result-track:d775b2102b68496b104afe36d18604a782709f4784017270204a6bb8ff54780c` |
| 35 | `theorem` | [ne_iff_eq_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/ne-iff-eq-neg--411d102b04c91ea16d5d8b6b.md) | 342 | `result-track:411d102b04c91ea16d5d8b6b15f0c95072226f8c0d29f7e59dae90ffe7f97a25` |
| 36 | `theorem` | [map_eq_det_inv_smul](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/map-eq-det-inv-smul--2bdb981325f028a4f381e151.md) | 349 | `result-track:2bdb981325f028a4f381e15158353a44718a08b601a6f0e46aeefdd02b588ba9` |
| 37 | `theorem` | [map_eq_iff_det_pos](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/map-eq-iff-det-pos--d872c0b73478ecd26e27d307.md) | 357 | `result-track:d872c0b73478ecd26e27d307d1d165a8a125baf0afc0944e934f6748f66f094e` |
| 38 | `theorem` | [map_eq_neg_iff_det_neg](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/map-eq-neg-iff-det-neg--7be051a16e7f8f2ee924ffc5.md) | 368 | `result-track:7be051a16e7f8f2ee924ffc556611ad1694ebd3a9e165de5801b376312e863bb` |
| 39 | `def` | [someBasis](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/somebasis--a5713e2a08fec9944c3f6306.md) | 382 | `declaration-track:a5713e2a08fec9944c3f6306f4eb95a19571613386552c1a42260e756d2929d5` |
| 40 | `theorem` | [someBasis_orientation](../../../../../mathematics/Algebra/LinearAlgebra/Orientation/Variant27830cade28eb90c50d1aeeac36c7b554f16434746061bfac31c4d84a997f33e.lean/declarations/somebasis-orientation--3e2f8c5e53296bdffdbf55e1.md) | 388 | `result-track:3e2f8c5e53296bdffdbf55e174ec77cd69982a5ade13976d900f94d01a54a89b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
