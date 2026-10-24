# Verification target: GRWTSK.Topology.GeneralTopology.EqHaar.Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df05ce0845ed32a0bb7ac052cf509c7af6e46f82",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df05ce0845ed32a0bb7ac052cf509c7af6e46f82`.

Source path: `GRWTSK/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.FiniteDimensional` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Group.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Doubling` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/macro-rules--7fcfe6532b4ac9245c259821.md) | 46 | `declaration-track:7fcfe6532b4ac9245c259821de03996d618f1ee01512efc045fd055524d3d779` |
| 2 | `def` | [TopologicalSpace.PositiveCompacts.Icc01](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/topologicalspace-positivecompacts-icc01--cb2ad9964df7b4a8ebd4cf59.md) | 55 | `declaration-track:cb2ad9964df7b4a8ebd4cf59d1af6ca5ab5bff4f8cccd0f4b75d6ed344e79f0c` |
| 3 | `def` | [TopologicalSpace.PositiveCompacts.piIcc01](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/topologicalspace-positivecompacts-piicc01--a19bc08a348baf0a50369582.md) | 64 | `declaration-track:a19bc08a348baf0a50369582ab0586ab615295d0a58d84c0c3c28da9959a813b` |
| 4 | `theorem` | [Basis.parallelepiped_basisFun](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/basis-parallelepiped-basisfun--6052ee3974df94533b62f01d.md) | 74 | `result-track:6052ee3974df94533b62f01db0e262775cd22707388f51337a606182483cd7e6` |
| 5 | `theorem` | [addHaarMeasure_eq_volume](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaarmeasure-eq-volume--a1928a52bf1319755dc41dbc.md) | 91 | `result-track:a1928a52bf1319755dc41dbc91e8db103e174543ff2543a46e491e8ffd02f76c` |
| 6 | `theorem` | [addHaarMeasure_eq_volume_pi](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaarmeasure-eq-volume-pi--d21719f3e1e4ccec857ca1f0.md) | 96 | `result-track:d21719f3e1e4ccec857ca1f0fa9c6d5db4e900e0fe0435c67002ff5370317817` |
| 7 | `instance` | [isAddHaarMeasure_volume_pi](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/isaddhaarmeasure-volume-pi--400ece0c8fc090c638729be6.md) | 104 | `declaration-track:400ece0c8fc090c638729be63591c9b51ab909c2d9892c762b2980c7f1bb55a0` |
| 8 | `theorem` | [addHaar_eq_zero_of_disjoint_translates_aux](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-eq-zero-of-disjoint-translates-aux--a8cb5c862ed2adcdfe4c8b0f.md) | 118 | `result-track:a8cb5c862ed2adcdfe4c8b0f7a84b61b0442753873f87e3794f7e127c6335471` |
| 9 | `theorem` | [addHaar_eq_zero_of_disjoint_translates](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-eq-zero-of-disjoint-translates--1c7dc30be27797bcd580332a.md) | 136 | `result-track:1c7dc30be27797bcd580332affdd83aef10853c11d6d5ede382a5ca973d4a5f6` |
| 10 | `theorem` | [addHaar_submodule](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-submodule--13bcbfe1f7f378152186a864.md) | 155 | `result-track:13bcbfe1f7f378152186a864b839332086e4733dd8c77126231f1ffa5c2e0b4c` |
| 11 | `theorem` | [addHaar_affineSubspace](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-affinesubspace--d7c84832334af614067bd412.md) | 183 | `result-track:d7c84832334af614067bd4128c6ae49662b3a518652a391d5b1a22cada007206` |
| 12 | `theorem` | [map_linearMap_addHaar_pi_eq_smul_addHaar](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/map-linearmap-addhaar-pi-eq-smul-addhaar--a057a9645e61a34a16a11762.md) | 203 | `result-track:a057a9645e61a34a16a11762e7fe44221033f6dbbde49aa4e918766c457d8278` |
| 13 | `theorem` | [map_linearMap_addHaar_eq_smul_addHaar](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/map-linearmap-addhaar-eq-smul-addhaar--c21ddfc6c28acf3d5e18bef3.md) | 218 | `result-track:c21ddfc6c28acf3d5e18bef3c020d40b1fafdf08b090e24deba8ef8ebb2dcd74` |
| 14 | `theorem` | [addHaar_preimage_linearMap](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-preimage-linearmap--8794fef8714fe6849495fada.md) | 249 | `result-track:8794fef8714fe6849495fadafe8dfb5ab7482c017daf030a9503b1b43b155ce6` |
| 15 | `theorem` | [addHaar_preimage_continuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-preimage-continuouslinearmap--65edc82d824056835bb3440f.md) | 262 | `result-track:65edc82d824056835bb3440f113a4aae329cd568b6b85c38d0b0b22601ba1870` |
| 16 | `theorem` | [addHaar_preimage_linearEquiv](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-preimage-linearequiv--bab17e6a1d7a09b65c412c65.md) | 271 | `result-track:bab17e6a1d7a09b65c412c65ec80a3075a31f5ef5ac881323d9ff9e32923d287` |
| 17 | `theorem` | [addHaar_preimage_continuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-preimage-continuouslinearequiv--bab1d1ab3a4524ea7db3129c.md) | 281 | `result-track:bab1d1ab3a4524ea7db3129c83dd3ec499f4c3a39aee23dec530f15337a92145` |
| 18 | `theorem` | [addHaar_image_linearMap](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-image-linearmap--be7f9689ffab04663ccc2284.md) | 289 | `result-track:be7f9689ffab04663ccc2284cc90cb15d2a5ea61c3d27b9e3bb2149969ffc696` |
| 19 | `theorem` | [addHaar_image_continuousLinearMap](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-image-continuouslinearmap--0b785592124cadd67e5169b7.md) | 305 | `result-track:0b785592124cadd67e5169b7205596cd192572f07fb8d23a2299e34355a12933` |
| 20 | `theorem` | [addHaar_image_continuousLinearEquiv](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-image-continuouslinearequiv--d1b5692fc4044a6c5647bb96.md) | 313 | `result-track:d1b5692fc4044a6c5647bb968880ee57557d971013d6e6a3a5f1dac6f74c0928` |
| 21 | `theorem` | [map_addHaar_smul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/map-addhaar-smul--661a2267e8e47c99c8d470e8.md) | 323 | `result-track:661a2267e8e47c99c8d470e8fb4894b6c62b5fc9020b1060567ac031a4caeceb` |
| 22 | `theorem` | [addHaar_preimage_smul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-preimage-smul--d23006ecb206284e527a716d.md) | 335 | `result-track:d23006ecb206284e527a716dcf21eeff79e683c695beddcd52fdc87d473bd463` |
| 23 | `theorem` | [addHaar_smul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-smul--678b26ee1b81bd45fa1a6e34.md) | 347 | `result-track:678b26ee1b81bd45fa1a6e34038f28b7efcce086b6d43c02572adb70d4a257e9` |
| 24 | `theorem` | [addHaar_smul_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-smul-of-nonneg--5664f09364f91ed9814baf11.md) | 363 | `result-track:5664f09364f91ed9814baf11504d5cffe7e397699c574012d89c49582b323f65` |
| 25 | `theorem` | [NullMeasurableSet.const_smul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/nullmeasurableset-const-smul--e2d2a06711202d301629cec4.md) | 372 | `result-track:e2d2a06711202d301629cec4ff355837b1ca024d1b5cf825bd3ff6d4b796418e` |
| 26 | `theorem` | [addHaar_image_homothety](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-image-homothety--d3daebccc5d0b83d55eeeaed.md) | 387 | `result-track:d3daebccc5d0b83d55eeeaede785dfd82c9146c0e92f13038ea7b445f2e48ea9` |
| 27 | `theorem` | [addHaar_ball_center](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-ball-center--1ef14dc599b55ca191bb948b.md) | 402 | `result-track:1ef14dc599b55ca191bb948bd00fe030641a9b3a2f3a344871e5d0d8810009a0` |
| 28 | `theorem` | [addHaar_closedBall_center](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-closedball-center--e3bfd5ccb68bf88a409ec913.md) | 408 | `result-track:e3bfd5ccb68bf88a409ec91384e92b8cf2c20cd064b61b815a90f1b56dafc4d2` |
| 29 | `theorem` | [addHaar_ball_mul_of_pos](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-ball-mul-of-pos--bae579618fb27857c65b7145.md) | 415 | `result-track:bae579618fb27857c65b714539b821d64601358659ba7d294d25df05e9ad2547` |
| 30 | `theorem` | [addHaar_ball_of_pos](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-ball-of-pos--e2d157044276153d203e8f0e.md) | 422 | `result-track:e2d157044276153d203e8f0ecd94c19f5d5a85ebd60b23b3ad73ad4cb94f0e3d` |
| 31 | `theorem` | [addHaar_ball_mul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-ball-mul--fb5f0f3f01bcc845b811afe5.md) | 427 | `result-track:fb5f0f3f01bcc845b811afe529e5f7f831fd692ff454672e1f0c8545b7a52549` |
| 32 | `theorem` | [addHaar_ball](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-ball--f881f80f87f9c69f455eddc7.md) | 435 | `result-track:f881f80f87f9c69f455eddc73e9dd15fa44e2f493148573bcb19275e94c160b4` |
| 33 | `theorem` | [addHaar_closedBall_mul_of_pos](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-closedball-mul-of-pos--ce6fa4fc69f0139e63b5e5be.md) | 440 | `result-track:ce6fa4fc69f0139e63b5e5be750d3a927ee98e5187023e2f3acca98204cbe97b` |
| 34 | `theorem` | [addHaar_closedBall_mul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-closedball-mul--a70850de44e1791c22e14c39.md) | 447 | `result-track:a70850de44e1791c22e14c39eceee7f1aca56cde70758dbe5724204c4fa78721` |
| 35 | `theorem` | [addHaar_closedBall'](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-closedball--133a95beb33ab91a7a86820a.md) | 457 | `result-track:133a95beb33ab91a7a86820a7f8e34940e14c31a990c871a87e22665b7510577` |
| 36 | `theorem` | [addHaar_closed_unit_ball_eq_addHaar_unit_ball](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-closed-unit-ball-eq-addhaar-unit-ball--742b2525450baf503816bec8.md) | 462 | `result-track:742b2525450baf503816bec88662e539ae066d7d5e5ffb45999187f538e3ea56` |
| 37 | `theorem` | [addHaar_closedBall](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-closedball--1b5dfdb644392c5d73380424.md) | 478 | `result-track:1b5dfdb644392c5d733804244b930839b741a68f01cfd9b502a1641ddcc87816` |
| 38 | `theorem` | [addHaar_closedBall_eq_addHaar_ball](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-closedball-eq-addhaar-ball--7f5ac393c97e8cf666e739e3.md) | 483 | `result-track:7f5ac393c97e8cf666e739e33782285451b768cd67269fb901106bdb10ea384b` |
| 39 | `theorem` | [addHaar_sphere_of_ne_zero](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-sphere-of-ne-zero--cf1c4304128deca31a4adab2.md) | 491 | `result-track:cf1c4304128deca31a4adab2d1c49d7670e4cb3425ca8ba08cf1d38d24e00a07` |
| 40 | `theorem` | [addHaar_sphere](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-sphere--aeea9fa8010aeb325a0fafca.md) | 499 | `result-track:aeea9fa8010aeb325a0fafca61ec2977b349e959c3ae3288417af8d3e53660de` |
| 41 | `theorem` | [addHaar_singleton_add_smul_div_singleton_add_smul](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-singleton-add-smul-div-singleton-add-smul--4e79600007a15819c6144825.md) | 505 | `result-track:4e79600007a15819c6144825342c219a18faf2863922f44c8c84b85246d3312c` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/instance--7b7f161afbba4451e55b1051.md) | 524 | `declaration-track:7b7f161afbba4451e55b1051e10c0932c0e2fca07a38f5eeddd938d46f7b08c1` |
| 43 | `theorem` | [addHaar_parallelepiped](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/addhaar-parallelepiped--ab3ca6a5f393b1260540cb9d.md) | 542 | `result-track:ab3ca6a5f393b1260540cb9d70570c8ee2583a5292613ec54b3e36f3ef0533de` |
| 44 | `theorem` | [_root_.AlternatingMap.measure_parallelepiped](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/root-alternatingmap-measure-parallelepiped--c2f7f7297e318c7f9c74378a.md) | 564 | `result-track:c2f7f7297e318c7f9c74378a90b01bda250d473371e869aea2f06f012c21d0df` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/instance--4842773ffff0439546778660.md) | 572 | `declaration-track:4842773ffff04395467786607e2d95f80b660185cc02339a0a3090ddc6f3f7b6` |
| 46 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/instance--4f36e3885df6b00f650e4fcf.md) | 575 | `declaration-track:4f36e3885df6b00f650e4fcfdd401935e596cbaab1ee607a859c56c485e253a6` |
| 47 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero_aux1](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero-aux1--7dadaff46febfb205f59d8e2.md) | 604 | `result-track:7dadaff46febfb205f59d8e28e1970fa54ab380e73f6c26045c6d17306973905` |
| 48 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero_aux2](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero-aux2--8d84004e047f8863c94d83e5.md) | 656 | `result-track:8d84004e047f8863c94d83e5ab3c64090450eab5102021449f615c979fc27efb` |
| 49 | `theorem` | [tendsto_addHaar_inter_smul_zero_of_density_zero](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/tendsto-addhaar-inter-smul-zero-of-density-zero--280a08ef4a2f1d821b150678.md) | 691 | `result-track:280a08ef4a2f1d821b1506788acaaf7fc797a6fbd28f2390ee632faf19dc703d` |
| 50 | `theorem` | [tendsto_addHaar_inter_smul_one_of_density_one_aux](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/tendsto-addhaar-inter-smul-one-of-density-one-aux--d68e7f6760a645395790af22.md) | 751 | `result-track:d68e7f6760a645395790af22ceb91411bf101390aea49a569bdca8a36efd6aab` |
| 51 | `theorem` | [tendsto_addHaar_inter_smul_one_of_density_one](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/tendsto-addhaar-inter-smul-one-of-density-one--9a3c075323bd02056868b9d3.md) | 807 | `result-track:9a3c075323bd02056868b9d3ff01dc6a32b837e16b3986074312e442114ac8b2` |
| 52 | `theorem` | [eventually_nonempty_inter_smul_of_density_one](../../../../../mathematics/Topology/GeneralTopology/EqHaar/Variant3e8022282b7382bfde3b9a757d313e36a1ab83a9f252686a94becec4998d6680.lean/declarations/eventually-nonempty-inter-smul-of-density-one--edcbaaa1670f98bcf3d1f5e1.md) | 834 | `result-track:edcbaaa1670f98bcf3d1f5e11894d36be9e7bde82f1fe0bdcc15a9ee4a0c5b2c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
