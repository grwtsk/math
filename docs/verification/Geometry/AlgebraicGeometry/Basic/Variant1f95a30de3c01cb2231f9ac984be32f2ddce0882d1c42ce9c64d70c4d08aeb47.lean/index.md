# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Basic.Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f45eb43f9d01633687caca22cbd5b9bb380d15b8",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f45eb43f9d01633687caca22cbd5b9bb380d15b8`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Pullbacks` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Limits` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Limits` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TFAE` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [IsLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/islocalattarget--6fb64ca5ee90134346361f47.md) | 109 | `declaration-track:6fb64ca5ee90134346361f4724e7436a8f85be6d36429aeb2152088efe8fe62a` |
| 2 | `lemma` | [mk'](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/mk--e87338cac18fd36f8c08cc8d.md) | 127 | `result-track:e87338cac18fd36f8c08cc8d75f372885089cd4fe9a1bf189cad166a600ac754` |
| 3 | `instance` | [inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/inf--63104d50a11258cc527d69ad.md) | 139 | `declaration-track:63104d50a11258cc527d69ad02bb0b62a18db6ddb2a11440e12296c18cac6a33` |
| 4 | `lemma` | [of_isPullback](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-ispullback--5601dc8db6ed8da9f7b58d1c.md) | 148 | `result-track:5601dc8db6ed8da9f7b58d1c66f46e83727b88bd22dddaa9a76eaf80620e0698` |
| 5 | `theorem` | [restrict](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/restrict--92104cae93231ec8f1918ca9.md) | 153 | `result-track:92104cae93231ec8f1918ca939adc29b634a1226711fbe4b9336a815c5087d65` |
| 6 | `lemma` | [of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-isup-eq-top--6f7961ecb818f316507ec112.md) | 156 | `result-track:6f7961ecb818f316507ec1127fc3d0e612e9da09c98055201b27a568bbe9ce17` |
| 7 | `theorem` | [iff_of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/iff-of-isup-eq-top--50901bba2ecfb1c28540bc11.md) | 166 | `result-track:50901bba2ecfb1c28540bc119491fc60e1ebb6c5b7fffd325d010c7214c5c6f2` |
| 8 | `lemma` | [of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-opencover--b1afc432ae524a11df72a764.md) | 170 | `result-track:b1afc432ae524a11df72a764ed6537245adfbce40a764a1ede8e2f7bde330365` |
| 9 | `theorem` | [iff_of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/iff-of-opencover--3ae43b148112b7fc8b7580c1.md) | 174 | `result-track:3ae43b148112b7fc8b7580c12bb11c12c28f2f608612e184e138cbf0430318eb` |
| 10 | `lemma` | [of_range_subset_iSup](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-range-subset-isup--9aa3b288cf921f725b1bbc5b.md) | 178 | `result-track:9aa3b288cf921f725b1bbc5bb70327bbd2a886afeac58a534e6c9634e696a53e` |
| 11 | `instance` | [top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/top--5534c9e7a62cc0ae95ff1ce5.md) | 198 | `declaration-track:5534c9e7a62cc0ae95ff1ce5964c7eb7d379800b04068f7cdad70d4415a73823` |
| 12 | `class` | [IsLocalAtSource](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/islocalatsource--234233eb0c0353325995f0e0.md) | 209 | `declaration-track:234233eb0c0353325995f0e00c1ff3116d6eb649b326c31b9e7fad8dd68ef51b` |
| 13 | `lemma` | [mk'](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/mk--c1547c8d7edfa4aeba09578d.md) | 227 | `result-track:c1547c8d7edfa4aeba09578daed0758faff7b9cb4690b86edfdf7486c7829408` |
| 14 | `instance` | [inf](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/inf--6a2792afb6bad626363f9ed1.md) | 246 | `declaration-track:6a2792afb6bad626363f9ed1ba2e610c605ddc6e2d2743792245998b84e9a485` |
| 15 | `lemma` | [comp](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/comp--7a528f7bb70dbaf63ed7d35e.md) | 256 | `result-track:7a528f7bb70dbaf63ed7d35e241e86a34329cd31ec11b3a52b6c2e2928699ab3` |
| 16 | `instance` | [respectsLeft_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/respectsleft-isopenimmersion--145bc7004ad8b70534ff966f.md) | 261 | `declaration-track:145bc7004ad8b70534ff966fbbf48cd1e97001f3428bbb0b9c8999284041f8e4` |
| 17 | `lemma` | [of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-isup-eq-top--d85640228819273972aa38e3.md) | 265 | `result-track:d85640228819273972aa38e3d7580a0ec6eb73360bae98ccc0f87c07cbc01440` |
| 18 | `theorem` | [iff_of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/iff-of-isup-eq-top--b1c662c71c67dd97e95c8e53.md) | 272 | `result-track:b1c662c71c67dd97e95c8e530805ab5ca1af289c0d692a7f8b64134c4c58f4bb` |
| 19 | `lemma` | [of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-opencover--4567c4c3687ac9a8b6ca596e.md) | 276 | `result-track:4567c4c3687ac9a8b6ca596e67de6d31a04ca001e5f37fc4a5a88b8a14d9cc97` |
| 20 | `theorem` | [iff_of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/iff-of-opencover--53025c505e69d9e04b71f940.md) | 283 | `result-track:53025c505e69d9e04b71f940da4153432abb5c9188cad6c581967980e6c64bce` |
| 21 | `lemma` | [of_isOpenImmersion](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-isopenimmersion--dbd2861ff73f67d670dee7d4.md) | 288 | `result-track:dbd2861ff73f67d670dee7d4fa46c9023382a168a1977ad7dbf86b03e98144de` |
| 22 | `lemma` | [isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/islocalattarget--f0709e5c4dc5c2b47108e924.md) | 291 | `result-track:f0709e5c4dc5c2b47108e92443b90d13dda9725b84b5951d423745c28bc641ca` |
| 23 | `lemma` | [sigmaDesc](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/sigmadesc--a877d4fb37a8771539f39537.md) | 301 | `result-track:a877d4fb37a8771539f39537531641ea5aeb660d77939c43f16cbe7800cf6333` |
| 24 | `instance` | [top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/top--b9e29ec954a69b6274af1744.md) | 306 | `declaration-track:b9e29ec954a69b6274af1744e683f578d66f67cd949c3fbf06757485457a2268` |
| 25 | `lemma` | [resLE](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/resle--9c7ec341b07501ffa8cc33ba.md) | 313 | `result-track:9c7ec341b07501ffa8cc33bae422cc6719a4fc9e7a552f092e446a50e0057906` |
| 26 | `lemma` | [iff_exists_resLE](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/iff-exists-resle--cdba5b4386d3d01c28bbdc72.md) | 319 | `result-track:cdba5b4386d3d01c28bbdc7240549705ba57563e8794ee3f5aa777f4641f9140` |
| 27 | `def` | [AffineTargetMorphismProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/affinetargetmorphismproperty--8263d71773317350a9bdb74f.md) | 339 | `declaration-track:8263d71773317350a9bdb74f010d30b3c760ee5766a27694ed7b798d58f080e6` |
| 28 | `lemma` | [ext](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/ext--f4bce5f0cdfbc1148a427694.md) | 345 | `result-track:f4bce5f0cdfbc1148a427694464b6700fab6ebe61ac6c3ddf6f94f1c1d48e270` |
| 29 | `def` | [of](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of--6c1b1c8284e46ce9d144eed6.md) | 350 | `declaration-track:6c1b1c8284e46ce9d144eed629fe64206676802178cd65a43f32a301cfcbf808` |
| 30 | `def` | [toProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/toproperty--802ba59e75f55384138d88f4.md) | 355 | `declaration-track:802ba59e75f55384138d88f4562b265481bbd9e5d8cd0ed12aac97be67168dd2` |
| 31 | `theorem` | [toProperty_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/toproperty-apply--23621418f53da2f2e5c0e98f.md) | 358 | `result-track:23621418f53da2f2e5c0e98ffe0206f2add7d8cbf1c4a05bb109d004dd65d78b` |
| 32 | `theorem` | [cancel_left_of_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/cancel-left-of-respectsiso--9d486a1b37980f6a8717a5f0.md) | 362 | `result-track:9d486a1b37980f6a8717a5f07577af82a6fc3451144a7383a998ff78709d7113` |
| 33 | `theorem` | [cancel_right_of_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/cancel-right-of-respectsiso--72d0030249e52c0e6bebbde5.md) | 367 | `result-track:72d0030249e52c0e6bebbde516e4b4fa2bdb219f83f78d68930753f8c7313d7b` |
| 34 | `theorem` | [arrow_mk_iso_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/arrow-mk-iso-iff--454483929a7a175ff2265577.md) | 373 | `result-track:454483929a7a175ff2265577367a770a8172df364549e2ddeb9ba6d3ec0aed69` |
| 35 | `theorem` | [respectsIso_mk](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/respectsiso-mk--f50fc649ab5d09b2c14951ad.md) | 381 | `result-track:f50fc649ab5d09b2c14951adcd9ff5849c739385a1d71cc6b9877a3ec132e333` |
| 36 | `instance` | [respectsIso_of](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/respectsiso-of--1768b136c970f8a1282c1b2a.md) | 390 | `declaration-track:1768b136c970f8a1282c1b2a510e7ebc41f866c0f2262d67237b0d09acfc1009` |
| 37 | `class` | [IsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/islocal--a86c4882db145097631067dd.md) | 404 | `declaration-track:a86c4882db145097631067dd8e414780f3e91a3d860a3edc563ac5197289cc91` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/instance--7864e12bef1830478985ea29.md) | 419 | `declaration-track:7864e12bef1830478985ea2933a37bd7c9b1367ff183e997c720b2afa27c5cf7` |
| 39 | `def` | [IsStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/isstableunderbasechange--eca725c84b867fc240b36051.md) | 427 | `declaration-track:eca725c84b867fc240b36051b9970ca89de9b36bf422f847f7f95cd9665bb421` |
| 40 | `lemma` | [IsStableUnderBaseChange.mk](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/isstableunderbasechange-mk--1d2418c78500c37bfeffd275.md) | 431 | `result-track:1d2418c78500c37bfeffd27587170024007d2603bd5c9a027eaaa48019630f98` |
| 41 | `def` | [targetAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/targetaffinelocally--64ad2a5bdddb877f4120f449.md) | 444 | `declaration-track:64ad2a5bdddb877f4120f44906421c64caf59b69c96ff43a279b52802fc18d8d` |
| 42 | `theorem` | [of_targetAffineLocally_of_isPullback](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-targetaffinelocally-of-ispullback--c17553bac18cb85328f9ea62.md) | 447 | `result-track:c17553bac18cb85328f9ea6217a2626357b151aca0c0789fb589d9fee513adc9` |
| 43 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/instance--5fab1571967e071e1ff9046e.md) | 456 | `declaration-track:5fab1571967e071e1ff9046eee574785f798bc858892c69c308dbbae41567f45` |
| 44 | `class` | [HasAffineProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/hasaffineproperty--06081dbfe0f4d494eb0509e1.md) | 476 | `declaration-track:06081dbfe0f4d494eb0509e1f6f5b879f06abdc092183d54e1d58c9ba9927c2a` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/instance--93ca2ecaaaf6b427d41eb7b8.md) | 486 | `declaration-track:93ca2ecaaaf6b427d41eb7b86f8ac982e499acec6e9b24a6c1a3a96d1aa0351b` |
| 46 | `lemma` | [eq_targetAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/eq-targetaffinelocally--769d64799938b075fe042a8f.md) | 490 | `result-track:769d64799938b075fe042a8f87719bba4fe5362e8df10ba2975e69b6c0911f8a` |
| 47 | `lemma` | [of_isLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-islocalattarget--dba29b812dcac9c30a95c9d1.md) | 494 | `result-track:dba29b812dcac9c30a95c9d1c502dd3c121f695cdc5b661c6308afc7e70583a0` |
| 48 | `lemma` | [copy](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/copy--7e83dd63f2464d58a4accf6f.md) | 506 | `result-track:7e83dd63f2464d58a4accf6f73da679f0a2dcb3620b6811dbbec2b9706fcba7a` |
| 49 | `theorem` | [of_isPullback](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-ispullback--0f4160fe7a76430d456c496d.md) | 513 | `result-track:0f4160fe7a76430d456c496d83d669dba57b7ef7dc1ff8f889502a8d57393f97` |
| 50 | `theorem` | [restrict](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/restrict--d29bb1bda328c5a805645339.md) | 519 | `result-track:d29bb1bda328c5a805645339b8e5b5b8a67b6112ed0faa9364289d618eb33b95` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/instance--98e97687799406f961989784.md) | 523 | `declaration-track:98e97687799406f96198978482cbfa57f1bdf9a6ae0c2b902a4c055e5fd0a11a` |
| 52 | `theorem` | [of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-isup-eq-top--754340ca192da57394b7856b.md) | 528 | `result-track:754340ca192da57394b7856bd1d35f1a70633fe1c66b7f66ceac48c7ec42e015` |
| 53 | `theorem` | [iff_of_iSup_eq_top](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/iff-of-isup-eq-top--76f8bf5d9696848ffcd4115d.md) | 551 | `result-track:76f8bf5d9696848ffcd4115d77b02c41b9e6879c8e01f837b38ef62215b863a3` |
| 54 | `theorem` | [of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/of-opencover--4ac3de3a021071729c6bfd5c.md) | 556 | `result-track:4ac3de3a021071729c6bfd5c5d9eb95e58936e86afdbb3d594aa299c72a72c4e` |
| 55 | `theorem` | [iff_of_openCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/iff-of-opencover--293ecc7108af4cbc8db1a622.md) | 564 | `result-track:293ecc7108af4cbc8db1a622637fc332600ebf62851991b83277093cfe74b97a` |
| 56 | `theorem` | [iff_of_isAffine](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/iff-of-isaffine--67301b874c45a763cb2b177e.md) | 572 | `result-track:67301b874c45a763cb2b177e87ed0944a7758fc98622a3317e0ca0019331cb9f` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/instance--f1ffe6800d2bec1f82759118.md) | 583 | `declaration-track:f1ffe6800d2bec1f8275911836c56a5de96b52485ba504efb0777977694d3146` |
| 58 | `theorem` | [iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/iff--da667bcd7dce0857b55f1e60.md) | 603 | `result-track:da667bcd7dce0857b55f1e60969919920534e6f1a158d3ab20d4cfaadef3391e` |
| 59 | `theorem` | [pullback_fst_of_right](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/pullback-fst-of-right--e760c7d40d1a68b345f3dbd9.md) | 608 | `result-track:e760c7d40d1a68b345f3dbd930dd139dcac4a993ceb29b5b05a9a5dc99edd9a0` |
| 60 | `theorem` | [isStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/isstableunderbasechange--926f66da00f4517c940981ee.md) | 621 | `result-track:926f66da00f4517c940981ee7251f44f959cfc61e31116259cd55609f272b603` |
| 61 | `lemma` | [isLocalAtSource](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/islocalatsource--390fe4d463f54529773e00af.md) | 643 | `result-track:390fe4d463f54529773e00af51030fa0003ad0676f9b4a306f0ff78d0bae2c82` |
| 62 | `lemma` | [hasOfPostcompProperty_isOpenImmersion_of_morphismRestrict](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/hasofpostcompproperty-isopenimmersion-of-morphismrestrict--11165d75c36c44ced14a80ba.md) | 659 | `result-track:11165d75c36c44ced14a80bad0a4d8936902345f9eb4bb2ea0e98227eb01e56a` |
| 63 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant1f95a30de3c01cb2231f9ac984be32f2ddce0882d1c42ce9c64d70c4d08aeb47.lean/declarations/instance--7d1f3c446ec6c1f3ca1c664b.md) | 670 | `declaration-track:7d1f3c446ec6c1f3ca1c664b6ff6c3ca28d2702ad2845cad3c126c894ed0488e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
