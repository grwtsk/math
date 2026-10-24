# Verification target: GRWTSK.Geometry.DifferentialGeometry.Sphere.Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3bea2732c79c6b5954fccb03aede9c3303635cb",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3bea2732c79c6b5954fccb03aede9c3303635cb`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.BallAction` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Instances.Real` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/macro-rules--8b3c0317d143dcfef97b666d.md) | 83 | `declaration-track:8b3c0317d143dcfef97b666de85a54b582d1ccfbd1af90329866b6b54d83dd46` |
| 2 | `def` | [stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereotofun--c00c593c41df6e8305c90f06.md) | 96 | `declaration-track:c00c593c41df6e8305c90f06f610eb248afa313098b288ed08b109dca6d26462` |
| 3 | `theorem` | [stereoToFun_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereotofun-apply--6c492fa790e2a27f7b47e635.md) | 103 | `result-track:6c492fa790e2a27f7b47e635a70452d3c0eb23f2e49b4a1fa2685ecdd4924dfc` |
| 4 | `theorem` | [contDiffOn_stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/contdiffon-stereotofun--5195f9124aca847e6e30e9cb.md) | 108 | `result-track:5195f9124aca847e6e30e9cb42728b7000a163ead3795462f390e74abd87815d` |
| 5 | `theorem` | [continuousOn_stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/continuouson-stereotofun--a4691895ea682bf12625d589.md) | 117 | `result-track:a4691895ea682bf12625d58989da10e25c50a4346db9aa71bfdb46444e32bbda` |
| 6 | `def` | [stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereoinvfunaux--b05a6a26ad9d910672e62af9.md) | 129 | `declaration-track:b05a6a26ad9d910672e62af9178d8097c2530cf9add033dcc4b48e65b6dd8eac` |
| 7 | `theorem` | [stereoInvFunAux_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereoinvfunaux-apply--cd6358100972b7ed6546454b.md) | 136 | `result-track:cd6358100972b7ed6546454b4b3452eb64011ba81b9b80e4d4977de4a5ceea30` |
| 8 | `theorem` | [stereoInvFunAux_mem](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereoinvfunaux-mem--c51704f51b6c82c893151fc8.md) | 141 | `result-track:c51704f51b6c82c893151fc868e329ab29aa3549e9004e0c470ab528df123fcd` |
| 9 | `theorem` | [hasFDerivAt_stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/hasfderivat-stereoinvfunaux--6cf32234af3d69a61db9a3b1.md) | 155 | `result-track:6cf32234af3d69a61db9a3b134cc4fb895a682df0c335033b9c96e4a70d9bda1` |
| 10 | `theorem` | [hasFDerivAt_stereoInvFunAux_comp_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/hasfderivat-stereoinvfunaux-comp-coe--3df4b5eaccbb28361ede85bf.md) | 173 | `result-track:3df4b5eaccbb28361ede85bf6b629fcc949f0d0b901e9980796e29b7b3bff8e1` |
| 11 | `theorem` | [contDiff_stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/contdiff-stereoinvfunaux--163153d9063685eeb6ec28ab.md) | 180 | `result-track:163153d9063685eeb6ec28abc78f7620d4e677925a9729deba07c779fbbf0c7b` |
| 12 | `def` | [stereoInvFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereoinvfun--b30c8307b49eb0a9abfa0a8a.md) | 194 | `declaration-track:b30c8307b49eb0a9abfa0a8a58a9737c89a018c289727e6753ae15f1018e0364` |
| 13 | `theorem` | [stereoInvFun_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereoinvfun-apply--76a42beaf0922f0f6e2ccab8.md) | 199 | `result-track:76a42beaf0922f0f6e2ccab8a1e70c61413b9242b99283eff834fed369a0214d` |
| 14 | `theorem` | [stereoInvFun_ne_north_pole](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereoinvfun-ne-north-pole--aa7185d496014e64fd9e9709.md) | 204 | `result-track:aa7185d496014e64fd9e97096a1a96f019bd469dbc8c4207e17020bcbce2328a` |
| 15 | `theorem` | [continuous_stereoInvFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/continuous-stereoinvfun--947fb7d8d3c3e5100c32df83.md) | 218 | `result-track:947fb7d8d3c3e5100c32df830c0b8ee94d128b1d8aceed5e6c5790a7dc096ad3` |
| 16 | `theorem` | [stereo_left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereo-left-inv--fbec98a669c2bec03a8e6f10.md) | 222 | `result-track:fbec98a669c2bec03a8e6f10f015309052e822e0cc8bff5bcf89f7a6cae74f61` |
| 17 | `theorem` | [stereo_right_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereo-right-inv--9668061567ca204b136910f1.md) | 278 | `result-track:9668061567ca204b136910f176e08b005a4d77eb9cceba582fe361ccffed2f4c` |
| 18 | `def` | [stereographic](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereographic--2f3c0860263635094fca42c4.md) | 294 | `declaration-track:2f3c0860263635094fca42c49a89d0fdd1679fe7910e618c09117af350ea2272` |
| 19 | `theorem` | [stereographic_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereographic-apply--2638f826bb29a0f8a8536d17.md) | 317 | `result-track:2638f826bb29a0f8a8536d17a22d4b5f28e55dddc1f0b978c305799f900340fc` |
| 20 | `theorem` | [stereographic_source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereographic-source--ba080b21d75674a50d1d0227.md) | 323 | `result-track:ba080b21d75674a50d1d022796ec21a0f28017d34c00101877c669f4502f5500` |
| 21 | `theorem` | [stereographic_target](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereographic-target--cd8c577a00213beac7920531.md) | 328 | `result-track:cd8c577a00213beac7920531a8ad0196fb53204802bb46f5b9c2239aa350136b` |
| 22 | `theorem` | [stereographic_apply_neg](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereographic-apply-neg--716a62a6cef6ed8901ad6d11.md) | 333 | `result-track:716a62a6cef6ed8901ad6d11106d2901a89ad1ec312369a181d17e6a0a67ecb9` |
| 23 | `theorem` | [stereographic_neg_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereographic-neg-apply--622d1dad3d761163de460751.md) | 339 | `result-track:622d1dad3d761163de460751e947cdfb9d62bd2ef3112d9bb7084875ec22b06c` |
| 24 | `theorem` | [findim](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/findim--9782c47a3bb7105b756febb6.md) | 369 | `result-track:9782c47a3bb7105b756febb6686aadcef4502bb7841ee55783ebc54edfdf67c0` |
| 25 | `def` | [stereographic'](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereographic--1055a035ca9f9617b42914f7.md) | 376 | `declaration-track:1055a035ca9f9617b42914f78d1eb08072f3eb1a74f947471f7f5d5f99ff444e` |
| 26 | `theorem` | [stereographic'_source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereographic-source--5561bec28bfa3e29f0a467b1.md) | 384 | `result-track:5561bec28bfa3e29f0a467b1992b08e14f57221112ea07e25b658daa7f764d96` |
| 27 | `theorem` | [stereographic'_target](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereographic-target--0fbb6d5f031351d72a953137.md) | 389 | `result-track:0fbb6d5f031351d72a95313706291cea9ea95e3f3fea35de444a84242ec10d88` |
| 28 | `instance` | [chartedSpace](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/chartedspace--18dfbd990f3b72dd1a952107.md) | 395 | `declaration-track:18dfbd990f3b72dd1a95210738c75a56160da9917748875bfa2252eeb5b603f3` |
| 29 | `theorem` | [sphere_ext_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/sphere-ext-iff--a994a80434710ec4b8c0a317.md) | 406 | `result-track:a994a80434710ec4b8c0a3179f33672a05354e4e99d770bff1792185301ce6bc` |
| 30 | `theorem` | [stereographic'_symm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/stereographic-symm-apply--b43413fafcb6654a73ad100f.md) | 410 | `result-track:b43413fafcb6654a73ad100fa6b6f2ba6b654d9301384afcc3be39f8bf80c598` |
| 31 | `instance` | [smoothMfldWithCorners](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/smoothmfldwithcorners--e45de50a29f5ff794816f88f.md) | 424 | `declaration-track:e45de50a29f5ff794816f88f6ab3a157648fef6e333a626e7800142983a2e92c` |
| 32 | `theorem` | [contMDiff_coe_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/contmdiff-coe-sphere--50f8d2cde3a42ad6d800f559.md) | 455 | `result-track:50f8d2cde3a42ad6d800f5594b64c70f3419ee1b1a934df3f771b890a5d8a0d7` |
| 33 | `theorem` | [ContMDiff.codRestrict_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/contmdiff-codrestrict-sphere--2d27700ae486be88de89c71c.md) | 480 | `result-track:2d27700ae486be88de89c71c240b58495f8d7901ce7ea4a9c271bf066472a41a` |
| 34 | `theorem` | [contMDiff_neg_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/contmdiff-neg-sphere--318b74eb2bd9c2210d07bb4b.md) | 505 | `result-track:318b74eb2bd9c2210d07bb4b0fcc7124d590eb8948affb94b138ea080b0f21e9` |
| 35 | `theorem` | [range_mfderiv_coe_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/range-mfderiv-coe-sphere--a2cd066d7a1604d64cd6bc55.md) | 520 | `result-track:a2cd066d7a1604d64cd6bc5524c00ae1ee552b01c489aef5b4e599335474566e` |
| 36 | `theorem` | [mfderiv_coe_sphere_injective](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/mfderiv-coe-sphere-injective--00f78dbee1f87bbae60c0aa0.md) | 564 | `result-track:00f78dbee1f87bbae60c0aa07646ab3e51333c262d8bca87378cbcee29f87ce2` |
| 37 | `theorem` | [finrank_real_complex_fact'](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/finrank-real-complex-fact--9e0c90f44acf71c5c6c675a7.md) | 596 | `result-track:9e0c90f44acf71c5c6c675a7b04bdb0a9e54726bf292558c43a7b0b8dcb1c95f` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/instance--fbd5940dc6b85012412cc608.md) | 603 | `declaration-track:fbd5940dc6b85012412cc60806a0d276bba701539e0fa8f7ac5eb0b6a0152a21` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/instance--16c2ac26d123a2c633cf6673.md) | 606 | `declaration-track:16c2ac26d123a2c633cf667320d7d81e8a62df0c89cc19210a3d912b0587b878` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/instance--4911068f0a2ab1cd783a2f97.md) | 610 | `declaration-track:4911068f0a2ab1cd783a2f9714f5f4a6fc4736e2c40593cfa4334b9b91e6a8f0` |
| 41 | `theorem` | [contMDiff_expMapCircle](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variantf58491a5407bd31d6cf7872080af24030b27930819c5b33a44e9ede4554c03d7.lean/declarations/contmdiff-expmapcircle--ca4be7b6685dba868fde2397.md) | 628 | `result-track:ca4be7b6685dba868fde2397c392dd3bed24f767b57be4c1fa4358e1110a36f1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
