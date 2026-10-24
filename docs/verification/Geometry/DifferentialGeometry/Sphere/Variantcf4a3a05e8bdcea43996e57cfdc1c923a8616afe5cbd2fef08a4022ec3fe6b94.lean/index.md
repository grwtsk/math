# Verification target: GRWTSK.Geometry.DifferentialGeometry.Sphere.Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "52a1e72eb4485c2e15934198c6dad7d3d2f431ba",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `52a1e72eb4485c2e15934198c6dad7d3d2f431ba`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Circle` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.BallAction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 18; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Instances.Real` — import line 19; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereotofun--b2fb1a5553621f94e8ac6a3e.md) | 95 | `declaration-track:b2fb1a5553621f94e8ac6a3e4f05d9d5338575a569720c9a62a398e7c087ec9a` |
| 2 | `theorem` | [stereoToFun_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereotofun-apply--18ed3886b109ca41a785fa3c.md) | 101 | `result-track:18ed3886b109ca41a785fa3cdc08204b07705a1afdd47d383481fdb2f95d10d6` |
| 3 | `theorem` | [contDiffOn_stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/contdiffon-stereotofun--238ded2613c6d9c681fcaf13.md) | 105 | `result-track:238ded2613c6d9c681fcaf13d38d865694db2182d3622d14ee3a450f0332b591` |
| 4 | `theorem` | [continuousOn_stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/continuouson-stereotofun--db112d9ac1af46efcc41c14b.md) | 113 | `result-track:db112d9ac1af46efcc41c14bb27368b3b71a7c46b9471e61a8a62cfd9ad06fdd` |
| 5 | `def` | [stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereoinvfunaux--7463c014c7dff3c414d64a9e.md) | 123 | `declaration-track:7463c014c7dff3c414d64a9e9d71ed63b3e55f3683ae4de7a46987f9d694bd91` |
| 6 | `theorem` | [stereoInvFunAux_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereoinvfunaux-apply--07c30570796ab567ea067424.md) | 127 | `result-track:07c30570796ab567ea0674243fa43d969c19131e9820c25d0564d7551f021f59` |
| 7 | `theorem` | [stereoInvFunAux_mem](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereoinvfunaux-mem--388ab10eedb0276fef99e0f3.md) | 131 | `result-track:388ab10eedb0276fef99e0f3d276f2db205f5a26005fd23de8d0ee3a48d5bd94` |
| 8 | `theorem` | [hasFDerivAt_stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/hasfderivat-stereoinvfunaux--8fa230525eabedaff4646d2e.md) | 144 | `result-track:8fa230525eabedaff4646d2ec3f6b0b59bb486e3fb4206059c3a09e4aabf8905` |
| 9 | `theorem` | [hasFDerivAt_stereoInvFunAux_comp_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/hasfderivat-stereoinvfunaux-comp-coe--23e27a8cca46452927ecc487.md) | 161 | `result-track:23e27a8cca46452927ecc4870b3582b22fbbe5edb5220b032a4aebbc34ceaf70` |
| 10 | `theorem` | [contDiff_stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/contdiff-stereoinvfunaux--9cde76ebd67802b050ba5605.md) | 167 | `result-track:9cde76ebd67802b050ba560572c12fef758a5f013a56847943220f3ee929b51f` |
| 11 | `def` | [stereoInvFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereoinvfun--eb446b6a0de371f93005549d.md) | 180 | `declaration-track:eb446b6a0de371f93005549d31720396f1428d71d119b3009c456e101ee59d5b` |
| 12 | `theorem` | [stereoInvFun_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereoinvfun-apply--22dd8860893d3bc31abeaa9f.md) | 184 | `result-track:22dd8860893d3bc31abeaa9fc7705d975585e6c801d15a91b61cd830ccb551ee` |
| 13 | `theorem` | [stereoInvFun_ne_north_pole](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereoinvfun-ne-north-pole--55c09112131a54698dc56211.md) | 189 | `result-track:55c09112131a54698dc5621108659b22ec3d149893c7d3b3f094e1eae2a94198` |
| 14 | `theorem` | [continuous_stereoInvFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/continuous-stereoinvfun--5e42b4d8a96b6563f9305be6.md) | 202 | `result-track:5e42b4d8a96b6563f9305be6b4e406e8f3fe2c82cff0e336222e790d9ba89cc1` |
| 15 | `theorem` | [stereo_left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereo-left-inv--23ead8378982b7cbc93c3592.md) | 208 | `result-track:23ead8378982b7cbc93c3592cec3d55b7b3cb522263dda333459349aaaebc7a0` |
| 16 | `theorem` | [stereo_right_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereo-right-inv--83f80aeca0bcb787e3f350ab.md) | 237 | `result-track:83f80aeca0bcb787e3f350ab28c07560ad6165062ea61fb15bb8bb5592289d3b` |
| 17 | `def` | [stereographic](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereographic--637122c9bcbaf85bf0b68856.md) | 253 | `declaration-track:637122c9bcbaf85bf0b6885632296b910c41f759169e082aba3988b20d700851` |
| 18 | `theorem` | [stereographic_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereographic-apply--602ea55d3d65cc03c32760c5.md) | 275 | `result-track:602ea55d3d65cc03c32760c551d69c5581fea0883a330a067331aa6503977f08` |
| 19 | `theorem` | [stereographic_source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereographic-source--64ad11f4e3ef7fdeff3d19e5.md) | 280 | `result-track:64ad11f4e3ef7fdeff3d19e522a8ee2ed840654dd5fd07f485fcce4fe8c8391f` |
| 20 | `theorem` | [stereographic_target](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereographic-target--324ec2d6179335167f7ba2f2.md) | 284 | `result-track:324ec2d6179335167f7ba2f23655b7a9fe966aac6a4bf143e4e3f4e0997d2bd1` |
| 21 | `theorem` | [stereographic_apply_neg](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereographic-apply-neg--b12a2c018c9f8f4004e7453a.md) | 288 | `result-track:b12a2c018c9f8f4004e7453a3b45dc2dcab2d716d2b89e32e6ce4a0dbc04825c` |
| 22 | `theorem` | [stereographic_neg_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereographic-neg-apply--e1b2e412c9196358c3d08e4c.md) | 293 | `result-track:e1b2e412c9196358c3d08e4c8ff10db652ccb466d93fb0cdffc58fff593048cd` |
| 23 | `theorem` | [findim](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/findim--a4f936972930309dba014604.md) | 322 | `result-track:a4f936972930309dba0146047ab9bfdf52c761e2a3e4edec858835ecc68c3e95` |
| 24 | `def` | [stereographic'](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereographic--3bbb0170b3e43f0b1b282bfe.md) | 329 | `declaration-track:3bbb0170b3e43f0b1b282bfe6db2d7b626bbffb5908ee50c8bfef176bde162d8` |
| 25 | `theorem` | [stereographic'_source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereographic-source--9781b70f0bc85902259167af.md) | 336 | `result-track:9781b70f0bc85902259167af12eb17be08f9cebcd805898adf63f129d31fc25c` |
| 26 | `theorem` | [stereographic'_target](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereographic-target--5ea24b851f9a29b2c139425d.md) | 340 | `result-track:5ea24b851f9a29b2c139425d2324c6517ab873601dda5d1d71a03984ad25b464` |
| 27 | `instance` | [EuclideanSpace.instChartedSpaceSphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/euclideanspace-instchartedspacesphere--7be660053b2ad4d5ddd1981d.md) | 345 | `declaration-track:7be660053b2ad4d5ddd1981da42a3709fe97894a99a59624a8988c901e6c482c` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/instance--89ee7b8d91fac4d325936831.md) | 352 | `declaration-track:89ee7b8d91fac4d325936831eea32a7bef40d2f27a05697f45b88d42fddb6578` |
| 29 | `theorem` | [sphere_ext_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/sphere-ext-iff--8b8d04500442d80155c216aa.md) | 363 | `result-track:8b8d04500442d80155c216aa6f0a7ff27eada7747cd9d978eb473614a5346894` |
| 30 | `theorem` | [stereographic'_symm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereographic-symm-apply--b39d0944e15f3bda9665ea21.md) | 366 | `result-track:b39d0944e15f3bda9665ea217b5e54fd8fafc655a2c3583fc1d5f272c144b967` |
| 31 | `instance` | [EuclideanSpace.instIsManifoldSphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/euclideanspace-instismanifoldsphere--8402d8119952bd46789aec37.md) | 379 | `declaration-track:8402d8119952bd46789aec37f55bd241225135728cbbcfe86a6d6321611090bf` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/instance--aee822291eff2f5a4384f696.md) | 408 | `declaration-track:aee822291eff2f5a4384f696e4c83d77fc41026959945e83d248c0342606c66a` |
| 33 | `theorem` | [contMDiff_coe_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/contmdiff-coe-sphere--295e1624dbe7d3a0b67d82a3.md) | 413 | `result-track:295e1624dbe7d3a0b67d82a322263fafd01578c0ac1b46c31db059125ddd397f` |
| 34 | `theorem` | [ContMDiff.codRestrict_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/contmdiff-codrestrict-sphere--681f14fe302230e97f2fcb09.md) | 435 | `result-track:681f14fe302230e97f2fcb097c0616c6a0285e927e254c5cc0de0fa8743ea2a6` |
| 35 | `theorem` | [contMDiff_neg_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/contmdiff-neg-sphere--1f9739a5c40a7e1be5ca44a9.md) | 459 | `result-track:1f9739a5c40a7e1be5ca44a945c7fcc84285103075c88e7671e609a2913342f9` |
| 36 | `lemma` | [stereographic'_neg](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/stereographic-neg--63a3067fedb10f75c108356f.md) | 466 | `result-track:63a3067fedb10f75c108356fd2eb2d2938c4b72cb1f5920154b9881484cbdaac` |
| 37 | `theorem` | [range_mfderiv_coe_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/range-mfderiv-coe-sphere--dcabb43d4740572bcbac2e36.md) | 479 | `result-track:dcabb43d4740572bcbac2e361af148a60408a44b58ef24bc85adb75f7ce5b650` |
| 38 | `theorem` | [mfderiv_coe_sphere_injective](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/mfderiv-coe-sphere-injective--0346c502d7ea37082fd7fdfc.md) | 517 | `result-track:0346c502d7ea37082fd7fdfc3af622380a9d160374ba0f4a4311fa57a7716180` |
| 39 | `theorem` | [finrank_real_complex_fact'](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/finrank-real-complex-fact--96bb8e1ad6442bc0704a128b.md) | 544 | `result-track:96bb8e1ad6442bc0704a128b92bd882d17bca20c7304329e0ace4a5c256d7978` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/instance--439c44581014175a181475e3.md) | 551 | `declaration-track:439c44581014175a181475e3e9ed174496e420b98f67ef4f9d4580088327eb38` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/instance--ea19d983b3501f1aac3d6e50.md) | 554 | `declaration-track:ea19d983b3501f1aac3d6e50669ec090595c12b6e63a044af411e0be29d59485` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/instance--a00100745a649e0efb0cd182.md) | 558 | `declaration-track:a00100745a649e0efb0cd182822d62fc59a192365cfd250f6c61494663bb2372` |
| 43 | `theorem` | [contMDiff_circleExp](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantcf4a3a05e8bdcea43996e57cfdc1c923a8616afe5cbd2fef08a4022ec3fe6b94.lean/declarations/contmdiff-circleexp--3a581ba37e97935c2701c3db.md) | 575 | `result-track:3a581ba37e97935c2701c3db49dc55e06ebd4942d670462a3c3a0a408d27f0bf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
