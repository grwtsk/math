# Verification target: GRWTSK.Geometry.DifferentialGeometry.Tangent.Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5d06efd071cf7ec8889d7ad4244e87e21b413d48",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5d06efd071cf7ec8889d7ad4244e87e21b413d48`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.VectorBundle.Basic` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [contDiffOn_fderiv_coord_change](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/contdiffon-fderiv-coord-change--a7c37a8e20440843a5e8bb9f.md) | 61 | `result-track:a7c37a8e20440843a5e8bb9fb9258549f30617d170793acd4f418bd897c192a9` |
| 2 | `def` | [tangentBundleCore](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundlecore--ae4db18484e3ce8a2c2c792d.md) | 87 | `declaration-track:ae4db18484e3ce8a2c2c792d02211670fc2e514a50c09bed346963e008fdc4da` |
| 3 | `theorem` | [tangentBundleCore_baseSet](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundlecore-baseset--09c4287adadce0f90d43c39e.md) | 124 | `result-track:09c4287adadce0f90d43c39e5c9e971406662d5c844e1e0753d72f379c55a7ef` |
| 4 | `theorem` | [tangentBundleCore_coordChange_achart](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundlecore-coordchange-achart--6f954b614efbd781a7789f55.md) | 128 | `result-track:6f954b614efbd781a7789f55c902010ee0ecfd38a6df434c822affe8f02d35b7` |
| 5 | `def` | [TangentSpace](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentspace--a0f07a7e78b13b951caa43e1.md) | 139 | `declaration-track:a0f07a7e78b13b951caa43e140050ec15914f6a559dc12d2397565b0e8acaa7c` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/instance--6627c774a154f1d20caad831.md) | 145 | `declaration-track:6627c774a154f1d20caad831baf70370e7b3ea4bdf9bc051dc5843b8b08434c2` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/instance--263d5ebafe83a064a1c363e0.md) | 146 | `declaration-track:263d5ebafe83a064a1c363e0ae6b4275623d72af7219aad523a4807dd8497133` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/instance--d22cc25371b61c9c9a1b4671.md) | 147 | `declaration-track:d22cc25371b61c9c9a1b46718e0293b6cfcebe85ca352a46b26a14c672cef311` |
| 9 | `def` | [TangentBundle](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundle--e74407b522754956a6fa1e4b.md) | 155 | `declaration-track:e74407b522754956a6fa1e4b4337d857c0edb518ac8587956da9f0297d16d722` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/instance--7894183478fcafb9d66e9071.md) | 170 | `declaration-track:7894183478fcafb9d66e9071d67061ee929f5639dcc3b28469733e278b304403` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/instance--78580190b711f94254da16f2.md) | 172 | `declaration-track:78580190b711f94254da16f2c38f531c5bba7821ba567085879c286829617d42` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/instance--8f396ca9afbec06024b7bd05.md) | 178 | `declaration-track:8f396ca9afbec06024b7bd0501eb41d4f3b6eefb57e681a7dafeaf4fbc1f3a98` |
| 13 | `instance` | [TangentSpace.fiberBundle](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentspace-fiberbundle--17fdb562d7e909fcae1aff81.md) | 181 | `declaration-track:17fdb562d7e909fcae1aff81ade166039dbcb712e0a26a64b4dc1ddbb9536500` |
| 14 | `instance` | [TangentSpace.vectorBundle](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentspace-vectorbundle--18d0e26f8817f4b0ec217a09.md) | 184 | `declaration-track:18d0e26f8817f4b0ec217a09ab367ef171193ddcc1164ea1c37d3bb03edaefc9` |
| 15 | `theorem` | [chartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/chartat--96be2780307665f1e66bad42.md) | 189 | `result-track:96be2780307665f1e66bad42681d690313f15f58bb5cfcc635a3d4f0cabc7d34` |
| 16 | `theorem` | [chartAt_toLocalEquiv](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/chartat-tolocalequiv--1e81fa66c98d095ceeca2252.md) | 196 | `result-track:1e81fa66c98d095ceeca2252b229246fb529f8b2b83b4412bbd7ffb0731283dc` |
| 17 | `theorem` | [trivializationAt_eq_localTriv](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/trivializationat-eq-localtriv--4cca2d34be100895cb8dd141.md) | 203 | `result-track:4cca2d34be100895cb8dd141fb5c1411c81291afc7ef95068d880a2dd9ad4974` |
| 18 | `theorem` | [trivializationAt_source](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/trivializationat-source--22851e67c739793ef38ddfa5.md) | 210 | `result-track:22851e67c739793ef38ddfa55c17f4ce5c523848e475e3416adfe402b58379b2` |
| 19 | `theorem` | [trivializationAt_target](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/trivializationat-target--bb714db1c5b1b311611ba66b.md) | 217 | `result-track:bb714db1c5b1b311611ba66b4998e30ff3bbde5f0f0a2dc405a7b621bb5dc80e` |
| 20 | `theorem` | [trivializationAt_baseSet](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/trivializationat-baseset--cccaa44a2df6031d762f2a73.md) | 223 | `result-track:cccaa44a2df6031d762f2a73a55b303277d3168f57abc41cf45e708d2b3f14d3` |
| 21 | `theorem` | [trivializationAt_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/trivializationat-apply--785e7cac9214cecc7f2a718e.md) | 228 | `result-track:785e7cac9214cecc7f2a718ecbcdc2be33127171ca77fa2a681abb7831a865f1` |
| 22 | `theorem` | [trivializationAt_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/trivializationat-fst--08563205c6afc21f03407f2f.md) | 236 | `result-track:08563205c6afc21f03407f2f599387677101bc615f09b81bcf80b2747ec0808e` |
| 23 | `theorem` | [mem_chart_source_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/mem-chart-source-iff--38d39817c1d805eba4ac9909.md) | 241 | `result-track:38d39817c1d805eba4ac9909bac9946fe103ba4f6aba44e3e5c01157a8034331` |
| 24 | `theorem` | [mem_chart_target_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/mem-chart-target-iff--2fea4a2c08747be1e10677c1.md) | 247 | `result-track:2fea4a2c08747be1e10677c1b9f214f8ddd887ef6c42037eb796093f0138438f` |
| 25 | `theorem` | [coe_chartAt_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/coe-chartat-fst--fd0fd95c31ba2cd2b0f5f7ca.md) | 259 | `result-track:fd0fd95c31ba2cd2b0f5f7caa97b8a16eae2ca5b5c204b064964e847e427a85e` |
| 26 | `theorem` | [coe_chartAt_symm_fst](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/coe-chartat-symm-fst--d98ed525a33815e10961aeb3.md) | 264 | `result-track:d98ed525a33815e10961aeb324c2a3e319b76f5b05af0f08dbfcba52256127ed` |
| 27 | `theorem` | [trivializationAt_continuousLinearMapAt](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/trivializationat-continuouslinearmapat--aecce1f94d17edde2f3144bd.md) | 270 | `result-track:aecce1f94d17edde2f3144bd4b60a8fbb61ba9d62573251f46c210e6c0b9c970` |
| 28 | `theorem` | [trivializationAt_symmL](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/trivializationat-symml--544028ac4816ebecd49aa1fb.md) | 278 | `result-track:544028ac4816ebecd49aa1fb02eaa5a3b6ad8b4c1c004ad85a0bc35b09163e85` |
| 29 | `theorem` | [coordChange_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/coordchange-model-space--3cb89c48bd7c6a44c7629b19.md) | 288 | `result-track:3cb89c48bd7c6a44c7629b19e6bf990a58312166871c0699b242479a8d936aa1` |
| 30 | `theorem` | [symmL_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/symml-model-space--4f4a3295c3386426cb5e8ca9.md) | 296 | `result-track:4f4a3295c3386426cb5e8ca934392bc427ce0289c792fc65df972de41bf6a186` |
| 31 | `theorem` | [continuousLinearMapAt_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/continuouslinearmapat-model-space--df2be5fdbd735708d7a687cd.md) | 305 | `result-track:df2be5fdbd735708d7a687cd43554e8ef4f30185fc1032d1e2898c7c09dc4b88` |
| 32 | `instance` | [tangentBundleCore.isSmooth](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundlecore-issmooth--0832b5fbcab1448c8ff8915c.md) | 313 | `declaration-track:0832b5fbcab1448c8ff8915c46d28aa1f955d9dee2f7c9ce610f4a41e082cff4` |
| 33 | `instance` | [TangentBundle.smoothVectorBundle](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundle-smoothvectorbundle--b7997cd58cd446f3c5e598a6.md) | 324 | `declaration-track:b7997cd58cd446f3c5e598a66a2c1e3985cba8b340c499beb6ea6343bc83a114` |
| 34 | `theorem` | [tangentBundle_model_space_chartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundle-model-space-chartat--224bf3b9b9751705fc0857f7.md) | 336 | `result-track:224bf3b9b9751705fc0857f74311f98211ba2e54df42c2e44d9d73273070ec40` |
| 35 | `theorem` | [tangentBundle_model_space_coe_chartAt](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundle-model-space-coe-chartat--05b77a7297847befee04cdbd.md) | 350 | `result-track:05b77a7297847befee04cdbd7a57e18a5dacd8cb1f4f1cb38fa8b18f67648391` |
| 36 | `theorem` | [tangentBundle_model_space_coe_chartAt_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundle-model-space-coe-chartat-symm--b39364acc5b3e8519a8070cb.md) | 356 | `result-track:b39364acc5b3e8519a8070cbed4a279321de7c5dd5f0dfcbd359e802096d2aa8` |
| 37 | `theorem` | [tangentBundleCore_coordChange_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundlecore-coordchange-model-space--9eec8b6473f32fa55a4c0175.md) | 363 | `result-track:9eec8b6473f32fa55a4c01750bb5754d59161a6ba2bbad441b91cd5988d408da` |
| 38 | `def` | [tangentBundleModelSpaceHomeomorph](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundlemodelspacehomeomorph--c37720fe35005582f0871478.md) | 372 | `declaration-track:c37720fe35005582f0871478a629fc0f9518b42c679648d64d17617303558e8b` |
| 39 | `theorem` | [tangentBundleModelSpaceHomeomorph_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundlemodelspacehomeomorph-coe--e8f133fad36de66952170fdc.md) | 391 | `result-track:e8f133fad36de66952170fdce862541efe147a8a40c36a882ff62ff4a6ec5101` |
| 40 | `theorem` | [tangentBundleModelSpaceHomeomorph_coe_symm](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/tangentbundlemodelspacehomeomorph-coe-symm--1fda48901c60d1c1b4c8dec1.md) | 398 | `result-track:1fda48901c60d1c1b4c8dec162a6c8b0e3c487ca2d2f943fc41b453b5f5f905c` |
| 41 | `theorem` | [inCoordinates_tangent_bundle_core_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/incoordinates-tangent-bundle-core-model-space--8149b4e3852b86314e113c82.md) | 409 | `result-track:8149b4e3852b86314e113c82e34f3c7e748ac6f50ed389eca434a5f5641c8b4d` |
| 42 | `def` | [inTangentCoordinates](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/intangentcoordinates--993a46ac15e049d09a292953.md) | 427 | `declaration-track:993a46ac15e049d09a292953220f1b9bccf0841b51dd2e7e73ae92a4ad706949` |
| 43 | `theorem` | [inTangentCoordinates_model_space](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/intangentcoordinates-model-space--170371d49308c2c432b66e4a.md) | 431 | `result-track:170371d49308c2c432b66e4ac594d60cb597e02c49d9324978a9f1e31c42759b` |
| 44 | `theorem` | [inTangentCoordinates_eq](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/intangentcoordinates-eq--4a44fcb0568018a41cd4e9f1.md) | 436 | `result-track:4a44fcb0568018a41cd4e9f159fac1afd6489945b2be7b13a06c1cb4e1cc87a5` |
| 45 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Tangent/Variantd18823e615273e745c67ec558b37392081831c72088f36f74898ae41c40d492e.lean/declarations/instance--314a627ce9deffd28df39274.md) | 454 | `declaration-track:314a627ce9deffd28df39274375a3e1df6599229fd70f980408c16030189f10c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
