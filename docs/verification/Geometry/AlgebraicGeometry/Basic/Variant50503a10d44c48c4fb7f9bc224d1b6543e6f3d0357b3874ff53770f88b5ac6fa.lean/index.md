# Verification target: GRWTSK.Geometry.AlgebraicGeometry.Basic.Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e46573ee1ece9b543a3af061d0730edcca8f6617",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/index.md) · [Full source](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e46573ee1ece9b543a3af061d0730edcca8f6617`.

Source path: `GRWTSK/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicGeometry.AffineScheme` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicGeometry.Pullbacks` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.List.TFAE` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [AffineTargetMorphismProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty--5bd306832bdadc06a9af8a3b.md) | 81 | `declaration-track:5bd306832bdadc06a9af8a3b72f870c0ffeb30f13d7f26cb3ef217c82a0d3cea` |
| 2 | `def` | [Scheme.isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/scheme-isiso--e40f24813ae23654c245312c.md) | 86 | `declaration-track:e40f24813ae23654c245312c4b2b25a64483b8c8cb61d77629defb1facc53b6b` |
| 3 | `def` | [Scheme.affineTargetIsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/scheme-affinetargetisiso--61aa72988993ed06cd1b510a.md) | 91 | `declaration-track:61aa72988993ed06cd1b510a3739e18d9e55e7c6bd66e1e70af5de81a364f48d` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/instance--767e0e03862468c20a7c56a4.md) | 94 | `declaration-track:767e0e03862468c20a7c56a4be5c303063f9a7af7560c9b4ae1ddf987171e4f1` |
| 5 | `def` | [AffineTargetMorphismProperty.toProperty](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-toproperty--e2c68128929efd2b8618c97c.md) | 98 | `declaration-track:e2c68128929efd2b8618c97c83676c4a0a1769adbf7ccaadcb07a5c485f4f513` |
| 6 | `theorem` | [AffineTargetMorphismProperty.toProperty_apply](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-toproperty-apply--d8c5ab1e8659e739a92fce24.md) | 102 | `result-track:d8c5ab1e8659e739a92fce24b31a827b9df675b0f43ba767ed3f6c7554b9aa34` |
| 7 | `theorem` | [affine_cancel_left_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affine-cancel-left-isiso--507ef55c3f60ecd308952794.md) | 107 | `result-track:507ef55c3f60ecd308952794c317aa2c95de7ce1dcb24ff0804c96e7f510b021` |
| 8 | `theorem` | [affine_cancel_right_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affine-cancel-right-isiso--f6b4c6d312cf4ebeee0dbb10.md) | 112 | `result-track:f6b4c6d312cf4ebeee0dbb108a757ce8189466547c6d3f00b4d14a08272ce5fd` |
| 9 | `theorem` | [AffineTargetMorphismProperty.respectsIso_mk](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-respectsiso-mk--636545e0e8251408bb5bafbd.md) | 117 | `result-track:636545e0e8251408bb5bafbd78849c1002f816e2c3f971940206c6ff7f0d7fae` |
| 10 | `def` | [targetAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/targetaffinelocally--f92774b7aae698ddc34b99ab.md) | 129 | `declaration-track:f92774b7aae698ddc34b99ab2e7acd7a94419d284710a74bfe811aea0b64e29f` |
| 11 | `theorem` | [IsAffineOpen.map_isIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/isaffineopen-map-isiso--279b45c4f8939a7c41d03bf0.md) | 133 | `result-track:279b45c4f8939a7c41d03bf09ae022bda72f32f3ced8ddfe799b9447c81a0889` |
| 12 | `theorem` | [targetAffineLocally_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/targetaffinelocally-respectsiso--eac78398ef1ca45ff630c142.md) | 139 | `result-track:eac78398ef1ca45ff630c142456066d86939b83ee22fb9d8befc0f9e0b1273ed` |
| 13 | `structure` | [AffineTargetMorphismProperty.IsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-islocal--912280bdf17a1b9d41f85673.md) | 162 | `declaration-track:912280bdf17a1b9d41f85673dfec32c5fec846b86c61b690bf732d1685dfc20c` |
| 14 | `theorem` | [targetAffineLocallyOfOpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/targetaffinelocallyofopencover--b80262b6de1bde0eb5a730e0.md) | 177 | `result-track:b80262b6de1bde0eb5a730e0cec03cf61fc1ae1d536c72b532400914625f604f` |
| 15 | `theorem` | [AffineTargetMorphismProperty.IsLocal.affine_openCover_TFAE](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-islocal-affine-opencover-tfae--80f1d3bea4c3f1fdde65d9d6.md) | 241 | `result-track:80f1d3bea4c3f1fdde65d9d6562327f0d3b6c398204f618a7fd13e6671680d75` |
| 16 | `theorem` | [AffineTargetMorphismProperty.isLocalOfOpenCoverImply](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-islocalofopencoverimply--010d688909a6ad32e6cc654b.md) | 289 | `result-track:010d688909a6ad32e6cc654b112cc86c4e038ea4ca67b29102317729ec51d78e` |
| 17 | `theorem` | [AffineTargetMorphismProperty.IsLocal.affine_openCover_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-islocal-affine-opencover-iff--eb49ee536c27bb1ef632a85f.md) | 319 | `result-track:eb49ee536c27bb1ef632a85f180bed4e1e18ef0d6a5e89310b4d56f300f87a4e` |
| 18 | `theorem` | [AffineTargetMorphismProperty.IsLocal.affine_target_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-islocal-affine-target-iff--cc6479059117765509ceecb2.md) | 329 | `result-track:cc6479059117765509ceecb2799cb5f6f5264dd9e36ecaf5f47299e5adddabcb` |
| 19 | `structure` | [PropertyIsLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/propertyislocalattarget--b5c5e54f8bb3c607c29f0b25.md) | 345 | `declaration-track:b5c5e54f8bb3c607c29f0b25b7df2b2808adaa54936bbfcf8522ba4fcd41a203` |
| 20 | `theorem` | [AffineTargetMorphismProperty.IsLocal.targetAffineLocallyIsLocal](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-islocal-targetaffinelocallyislocal--ec40695b62ba0d8d621c62e8.md) | 356 | `result-track:ec40695b62ba0d8d621c62e8b67d41cd8a06cd04110ad5ccd98e22354ca7fec8` |
| 21 | `theorem` | [PropertyIsLocalAtTarget.openCover_TFAE](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/propertyislocalattarget-opencover-tfae--e880d15c3edf745b09020b48.md) | 393 | `result-track:e880d15c3edf745b09020b489e1d4ca2c64fc6c23b0e6c82dd698f1a64906004` |
| 22 | `theorem` | [PropertyIsLocalAtTarget.openCover_iff](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/propertyislocalattarget-opencover-iff--43716eeea838b3104fd802e1.md) | 434 | `result-track:43716eeea838b3104fd802e1139104930fc59593083cdf767d5284e6cd898b57` |
| 23 | `def` | [StableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/stableunderbasechange--dab4759b5457b764d859cb29.md) | 448 | `declaration-track:dab4759b5457b764d859cb29ed9ed81b11316ed8aa4863c3c905a0616fb16965` |
| 24 | `theorem` | [IsLocal.targetAffineLocallyPullbackFstOfRightOfStableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/islocal-targetaffinelocallypullbackfstofrightofstableunderbasechange--f5a004a874e37044d085973d.md) | 453 | `result-track:f5a004a874e37044d085973d98db3f692ad8803626fa953ae95e5bbdec9b70c2` |
| 25 | `theorem` | [IsLocal.stableUnderBaseChange](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/islocal-stableunderbasechange--7cece4fa11ce45b1bf2c5f6e.md) | 468 | `result-track:7cece4fa11ce45b1bf2c5f6efded2cc8268fb45debffea007b2e49c342e5da38` |
| 26 | `def` | [AffineTargetMorphismProperty.diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-diagonal--cb99b1080ff9abfa53b29211.md) | 502 | `declaration-track:cb99b1080ff9abfa53b292116751875fc6a4063964a00cf146c790aa5fa8825e` |
| 27 | `theorem` | [AffineTargetMorphismProperty.diagonal_respectsIso](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-diagonal-respectsiso--d7095451e716cd3afc3f556d.md) | 509 | `result-track:d7095451e716cd3afc3f556d96498f8d2c410dd241ddd351b127451fb5823b3b` |
| 28 | `theorem` | [diagonalTargetAffineLocallyOfOpenCover](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/diagonaltargetaffinelocallyofopencover--75600312d62566d6ea1d051d.md) | 526 | `result-track:75600312d62566d6ea1d051dc136363879d53b47ce6e40f750d24bed032e0b6c` |
| 29 | `theorem` | [AffineTargetMorphismProperty.diagonalOfTargetAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-diagonaloftargetaffinelocally--07b46e8dfe331604ae14d763.md) | 546 | `result-track:07b46e8dfe331604ae14d763700bbc51db1855d25bda2cd136a1ffcb6b361bc8` |
| 30 | `theorem` | [AffineTargetMorphismProperty.IsLocal.diagonal_affine_openCover_TFAE](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-islocal-diagonal-affine-opencover-tfae--f59b97259b246d7303b53b97.md) | 571 | `result-track:f59b97259b246d7303b53b97fd728f89eaff62b68225e65adac3536fc96e1bbf` |
| 31 | `theorem` | [AffineTargetMorphismProperty.IsLocal.diagonal](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/affinetargetmorphismproperty-islocal-diagonal--99311487b08a79255ff21012.md) | 601 | `result-track:99311487b08a79255ff2101287846089c0de43aabfe672c9f7a7e7f7106366e3` |
| 32 | `theorem` | [diagonal_targetAffineLocally_eq_targetAffineLocally](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/diagonal-targetaffinelocally-eq-targetaffinelocally--35db859dd8b67615ec20cef3.md) | 607 | `result-track:35db859dd8b67615ec20cef3c4de5194ecb3d6403af678332650a63127cb59b4` |
| 33 | `theorem` | [universallyIsLocalAtTarget](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/universallyislocalattarget--450d6595b6114fbd66f635c8.md) | 616 | `result-track:450d6595b6114fbd66f635c8dd099867646134408299816c464110281c2272ac` |
| 34 | `theorem` | [universallyIsLocalAtTargetOfMorphismRestrict](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/universallyislocalattargetofmorphismrestrict--38df6b5e0ddf9ec550a60c0a.md) | 634 | `result-track:38df6b5e0ddf9ec550a60c0a3018f6bc3cd694f8833842f23a0d929979204542` |
| 35 | `def` | [MorphismProperty.topologically](../../../../../mathematics/Geometry/AlgebraicGeometry/Basic/Variant50503a10d44c48c4fb7f9bc224d1b6543e6f3d0357b3874ff53770f88b5ac6fa.lean/declarations/morphismproperty-topologically--3974a482dffe57bd8014cfba.md) | 645 | `declaration-track:3974a482dffe57bd8014cfba810a76ff3b71c453b40433c7cc9ad578dcb988c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
