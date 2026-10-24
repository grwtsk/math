# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Basic.Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a1c7a80ec5bb2f1f9a9a2a0900875b58687087a6`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Pullbacks` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TFAE` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AffineTargetMorphismProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty--d03673db76f34a980a07506c.md) | 73 | `declaration-track:d03673db76f34a980a07506c17499e6f7f7281074046546f00012f0c7d41b208` |
| 2 | `def` | [Scheme.isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/scheme-isiso--e74e2450019c910d6d90a877.md) | 78 | `declaration-track:e74e2450019c910d6d90a8770703fd5d88986b98223536b8a2558a8718d9a088` |
| 3 | `def` | [Scheme.affineTargetIsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/scheme-affinetargetisiso--2768526d81006b85ee6cec5a.md) | 83 | `declaration-track:2768526d81006b85ee6cec5adedfcc34fc436c4b806d26ff1403ec6a5348887f` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/instance--d40c818b7437f126712197a0.md) | 86 | `declaration-track:d40c818b7437f126712197a001538e14e593fa7b62bdf12fdf33c15957e6d451` |
| 5 | `def` | [AffineTargetMorphismProperty.toProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-toproperty--22b63e772723bdbd2755bfb3.md) | 90 | `declaration-track:22b63e772723bdbd2755bfb3ed584e3eb658222216e94f5764e2fc4e6295d555` |
| 6 | `theorem` | [AffineTargetMorphismProperty.toProperty_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-toproperty-apply--476b16f4d12deca4a5272ac5.md) | 94 | `result-track:476b16f4d12deca4a5272ac59842f6bb8f83de64ab14e2ad680957a24f4e4681` |
| 7 | `theorem` | [affine_cancel_left_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affine-cancel-left-isiso--761a998ac46b9b407c8203de.md) | 99 | `result-track:761a998ac46b9b407c8203de8bf1856fb6261c886c6d57c17d671db11414c5a0` |
| 8 | `theorem` | [affine_cancel_right_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affine-cancel-right-isiso--cd6705bc2b0b15445ddf6da2.md) | 104 | `result-track:cd6705bc2b0b15445ddf6da27c95f15739e028e11c298a85abf8e2840f92b74a` |
| 9 | `theorem` | [AffineTargetMorphismProperty.respectsIso_mk](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-respectsiso-mk--95e74aad9960f5d23d97c751.md) | 109 | `result-track:95e74aad9960f5d23d97c7513de49f22786a759b0b67c5371aaec92f615a9db3` |
| 10 | `def` | [targetAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/targetaffinelocally--02b42f589595d00830cd1f65.md) | 121 | `declaration-track:02b42f589595d00830cd1f652aa3e8cc9f985d11f4dcb2dab5d796ee87ab90f0` |
| 11 | `theorem` | [IsAffineOpen.map_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/isaffineopen-map-isiso--37b479af7b67c61d53f46c49.md) | 125 | `result-track:37b479af7b67c61d53f46c4930d6d1451d88908ac74b9d0a041efaed0c297a68` |
| 12 | `theorem` | [targetAffineLocally_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/targetaffinelocally-respectsiso--08595acc892860946b5dad94.md) | 131 | `result-track:08595acc892860946b5dad94d5065a20608209cc02bacf1771422db1a1c26835` |
| 13 | `structure` | [AffineTargetMorphismProperty.IsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-islocal--4cf64fb8eb4d4c539ba2011d.md) | 154 | `declaration-track:4cf64fb8eb4d4c539ba2011d91a57321d4e1fea8b43d305eb44e1009ae9dca7c` |
| 14 | `theorem` | [targetAffineLocallyOfOpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/targetaffinelocallyofopencover--2e484673a49df6d62a39f079.md) | 169 | `result-track:2e484673a49df6d62a39f07901b2f2fecce279ff38bc8c816a127032296436f2` |
| 15 | `theorem` | [AffineTargetMorphismProperty.IsLocal.affine_openCover_TFAE](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-islocal-affine-opencover-tfae--6ab690284e90e6d92546f534.md) | 233 | `result-track:6ab690284e90e6d92546f534105ef895daca64c8b48dc4266f96bad2fe0754bc` |
| 16 | `theorem` | [AffineTargetMorphismProperty.isLocalOfOpenCoverImply](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-islocalofopencoverimply--8e1dd6664c57093e97462c13.md) | 281 | `result-track:8e1dd6664c57093e97462c134b2d300a31a08bd5b9a346420bd584c74b2c22cc` |
| 17 | `theorem` | [AffineTargetMorphismProperty.IsLocal.affine_openCover_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-islocal-affine-opencover-iff--c2b6e5df735380ad6755351e.md) | 311 | `result-track:c2b6e5df735380ad6755351eb67b9a4c2b2f0c882f56722fffd2c8fc62c657b8` |
| 18 | `theorem` | [AffineTargetMorphismProperty.IsLocal.affine_target_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-islocal-affine-target-iff--d5b41f1021012c5979c4c8a0.md) | 321 | `result-track:d5b41f1021012c5979c4c8a0376a12d6469c40396b46427b6a9cff8788a5d39e` |
| 19 | `structure` | [PropertyIsLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/propertyislocalattarget--d1b0f7a45e51a75cadcb8993.md) | 337 | `declaration-track:d1b0f7a45e51a75cadcb8993d64fbd59b60d19fc40baed12c9a10470260de114` |
| 20 | `theorem` | [AffineTargetMorphismProperty.IsLocal.targetAffineLocallyIsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-islocal-targetaffinelocallyislocal--e98e21d24ed887f64fb70c17.md) | 348 | `result-track:e98e21d24ed887f64fb70c174f051dce80f061a4317fd9e259dfb651401ad9a0` |
| 21 | `theorem` | [PropertyIsLocalAtTarget.openCover_TFAE](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/propertyislocalattarget-opencover-tfae--9906f1f7f129a27c420dd392.md) | 385 | `result-track:9906f1f7f129a27c420dd392d27e4406af2941efa9998cfdfddffff90323bebb` |
| 22 | `theorem` | [PropertyIsLocalAtTarget.openCover_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/propertyislocalattarget-opencover-iff--dae449dd77e7ef9313e451d5.md) | 426 | `result-track:dae449dd77e7ef9313e451d581db39b90419dd086b408b3ef1d9bf11ee40e0fa` |
| 23 | `def` | [StableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/stableunderbasechange--72830d04094943bc183ed1d8.md) | 440 | `declaration-track:72830d04094943bc183ed1d8fb722182699bd42251522e64a490f4d5504f024e` |
| 24 | `theorem` | [IsLocal.targetAffineLocallyPullbackFstOfRightOfStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/islocal-targetaffinelocallypullbackfstofrightofstableunderbasechange--dba82f63c6fa5bdcb8acc690.md) | 445 | `result-track:dba82f63c6fa5bdcb8acc690e095125ae21e848dadee1ceaf952081f0952f0ad` |
| 25 | `theorem` | [IsLocal.stableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/islocal-stableunderbasechange--32b42841d2f9c7d42e4366aa.md) | 460 | `result-track:32b42841d2f9c7d42e4366aab89245375449606546b5d0e9eb566acb5b04e8ab` |
| 26 | `def` | [AffineTargetMorphismProperty.diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-diagonal--a1d9a179b50a30bcbd4c35f1.md) | 494 | `declaration-track:a1d9a179b50a30bcbd4c35f17316369358dd6368bb050843273f93d9a462f6ce` |
| 27 | `theorem` | [AffineTargetMorphismProperty.diagonal_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-diagonal-respectsiso--c3f371046c2d1e18ae9325ef.md) | 501 | `result-track:c3f371046c2d1e18ae9325ef6f9674bdcee8931eb1126847b93fc67f8181e750` |
| 28 | `theorem` | [diagonalTargetAffineLocallyOfOpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/diagonaltargetaffinelocallyofopencover--65ea103297733c9c44542b8a.md) | 518 | `result-track:65ea103297733c9c44542b8ad0e3ac199e7294ee976f9dc565369f3ecc9b6c96` |
| 29 | `theorem` | [AffineTargetMorphismProperty.diagonalOfTargetAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-diagonaloftargetaffinelocally--2ebe6b3ec59795d41effb1bb.md) | 538 | `result-track:2ebe6b3ec59795d41effb1bb4a93e1acdc4d9489aa254e268b1f431d0e386ee7` |
| 30 | `theorem` | [AffineTargetMorphismProperty.IsLocal.diagonal_affine_openCover_TFAE](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-islocal-diagonal-affine-opencover-tfae--7254185da9b0b6e4f8f78683.md) | 563 | `result-track:7254185da9b0b6e4f8f78683dcd235fbd0b3a649c34e3e7d404fed053fe99e55` |
| 31 | `theorem` | [AffineTargetMorphismProperty.IsLocal.diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/affinetargetmorphismproperty-islocal-diagonal--51dd904d6a27585edc3b4cb9.md) | 593 | `result-track:51dd904d6a27585edc3b4cb9e9249421e0e478e38624726245827ffe0ea977a3` |
| 32 | `theorem` | [diagonal_targetAffineLocally_eq_targetAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/diagonal-targetaffinelocally-eq-targetaffinelocally--c834f364934a857472384086.md) | 599 | `result-track:c834f364934a8574723840862b5a8b6338376245be93b251e317e395f389f4ae` |
| 33 | `theorem` | [universallyIsLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/universallyislocalattarget--09b3b88503dd69e8229b55bf.md) | 608 | `result-track:09b3b88503dd69e8229b55bfdf4e92066fcf99923c70dd741a14cb608688c683` |
| 34 | `theorem` | [universallyIsLocalAtTargetOfMorphismRestrict](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/universallyislocalattargetofmorphismrestrict--7bb4d3b7f582c84693d4d2f8.md) | 626 | `result-track:7bb4d3b7f582c84693d4d2f8864b4188d616beb137ea688e720218b3f5473dc8` |
| 35 | `def` | [MorphismProperty.topologically](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variantf4239c929bb55d4343d12f2234a51db2fd9b47b35f89c03c3bc9328b8986919c.lean/declarations/morphismproperty-topologically--f65d6cdbfcefddd50e73666e.md) | 637 | `declaration-track:f65d6cdbfcefddd50e73666e1549d337c96c2d52a627d71591a043dbfecbcec5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
