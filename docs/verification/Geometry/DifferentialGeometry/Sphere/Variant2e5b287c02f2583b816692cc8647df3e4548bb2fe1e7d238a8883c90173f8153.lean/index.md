# Verification target: GRWTSK.Geometry.DifferentialGeometry.Sphere.Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4988d581da34e5f744eddcce5caeb0ccd62c7df7",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4988d581da34e5f744eddcce5caeb0ccd62c7df7`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Circle` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.BallAction` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.FiniteDimensional` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Instances.Real` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Module` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereotofun--74e56dafad700e6dbedbac99.md) | 87 | `declaration-track:74e56dafad700e6dbedbac99cab9e23d4d89c952faab77909005fa4bb0bc7801` |
| 2 | `theorem` | [stereoToFun_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereotofun-apply--ab0b615606ff19a71cbc0a88.md) | 93 | `result-track:ab0b615606ff19a71cbc0a8896586507c08e8ead5d933f973c2469b45e9981c8` |
| 3 | `theorem` | [contDiffOn_stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/contdiffon-stereotofun--5f03dda927d8f5603a64369a.md) | 97 | `result-track:5f03dda927d8f5603a64369a020a10947b6bd715859ead8004cbde8f78659a6e` |
| 4 | `theorem` | [continuousOn_stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/continuouson-stereotofun--0edc37982f6ed55f8c4b1403.md) | 105 | `result-track:0edc37982f6ed55f8c4b14033e713c9c092026fdba682a644112df695d3e2ca8` |
| 5 | `def` | [stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereoinvfunaux--931d3bddb102cd619b229e1d.md) | 115 | `declaration-track:931d3bddb102cd619b229e1dc2327f493ed6e0df1868588dd5d6a1eaae52a9da` |
| 6 | `theorem` | [stereoInvFunAux_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereoinvfunaux-apply--b7aefa282e5e94dd0ea9f189.md) | 119 | `result-track:b7aefa282e5e94dd0ea9f189b27426cc6089f3639b7faf3f6116b0e26783d8aa` |
| 7 | `theorem` | [stereoInvFunAux_mem](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereoinvfunaux-mem--8d125b4bec7b4bde09c2ab88.md) | 123 | `result-track:8d125b4bec7b4bde09c2ab88dc13cf047f88803864dcbb6ac440e81781f681da` |
| 8 | `theorem` | [hasFDerivAt_stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/hasfderivat-stereoinvfunaux--c352189390201674f4231a75.md) | 136 | `result-track:c352189390201674f4231a75e9973b2a994841c68b448f8c47f9810d022ca95f` |
| 9 | `theorem` | [hasFDerivAt_stereoInvFunAux_comp_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/hasfderivat-stereoinvfunaux-comp-coe--52363d850676ae0870d79377.md) | 153 | `result-track:52363d850676ae0870d793775a58f17e6ad746be2a2d4ad6654ee0aea750a027` |
| 10 | `theorem` | [contDiff_stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/contdiff-stereoinvfunaux--2a8e0eca6bca6bf0c2879fa5.md) | 159 | `result-track:2a8e0eca6bca6bf0c2879fa550a21933b9cbf558aed689afb15c73e735e9b793` |
| 11 | `def` | [stereoInvFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereoinvfun--366cd01126b176b760bd4e88.md) | 172 | `declaration-track:366cd01126b176b760bd4e885e017a551c98f894cfbec5a8e923a6ac969eda34` |
| 12 | `theorem` | [stereoInvFun_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereoinvfun-apply--216da192e9b799af530e438b.md) | 176 | `result-track:216da192e9b799af530e438b79afa249d9f5c6017b1398f818964763d55dbcde` |
| 13 | `theorem` | [stereoInvFun_ne_north_pole](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereoinvfun-ne-north-pole--831bf996678ac1a1c261fb3c.md) | 181 | `result-track:831bf996678ac1a1c261fb3cca0e81e71bb267d5e265cf2690cbce4aad4d853a` |
| 14 | `theorem` | [continuous_stereoInvFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/continuous-stereoinvfun--f0ba7efa5d48e8493c0e7f4c.md) | 194 | `result-track:f0ba7efa5d48e8493c0e7f4ca6525b6fa8b6cb67a0aa3f2e7bf4051a9918d440` |
| 15 | `theorem` | [stereo_left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereo-left-inv--f5d6bf07c356e62b7f553f11.md) | 200 | `result-track:f5d6bf07c356e62b7f553f116ccc5a80cdc0f7419c391becb0edefe3ebe34a0e` |
| 16 | `theorem` | [stereo_right_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereo-right-inv--e9720d4612df03d79a7f5040.md) | 229 | `result-track:e9720d4612df03d79a7f504031196317a747a7bdb1f62869c199560a46f605cc` |
| 17 | `def` | [stereographic](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereographic--4662508f7ad3b16235d3d788.md) | 245 | `declaration-track:4662508f7ad3b16235d3d788a49ee22c7ab0f30e1bcb8b4d7cac47a650e1b7ae` |
| 18 | `theorem` | [stereographic_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereographic-apply--32247a3a6559eb1b94bbca39.md) | 267 | `result-track:32247a3a6559eb1b94bbca3967c1546efb31adce339fad3ed88d7d2a9f3430f6` |
| 19 | `theorem` | [stereographic_source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereographic-source--ae3a1016d7cf570384208531.md) | 272 | `result-track:ae3a1016d7cf5703842085319f2ce2b787f26a5ea6308485bd08e63cd4160524` |
| 20 | `theorem` | [stereographic_target](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereographic-target--376a5d5ee9223f8ea5d4c8da.md) | 276 | `result-track:376a5d5ee9223f8ea5d4c8da58fcf3ee5561e6ad04694179bf02a512a94e4a6a` |
| 21 | `theorem` | [stereographic_apply_neg](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereographic-apply-neg--52a7c554ebf976d6b005155c.md) | 280 | `result-track:52a7c554ebf976d6b005155c2b0032a48b17135544296c48198e5a6b57426bd8` |
| 22 | `theorem` | [stereographic_neg_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereographic-neg-apply--572c3485de6e714b1aa5c7a5.md) | 285 | `result-track:572c3485de6e714b1aa5c7a502c9a31bc877dca36b2090f759e7af8378dc1a8f` |
| 23 | `theorem` | [findim](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/findim--7391fcc04cb71a1f9554a22d.md) | 314 | `result-track:7391fcc04cb71a1f9554a22ddb600e4c11cd042510249a604f62edf14d826f44` |
| 24 | `def` | [stereographic'](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereographic--b69f018fa644a946dfdfa0cb.md) | 321 | `declaration-track:b69f018fa644a946dfdfa0cb93f7df7d94dff55de27cad3de3203c3886df1389` |
| 25 | `theorem` | [stereographic'_source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereographic-source--59db905ffc420200cd0ad2ad.md) | 328 | `result-track:59db905ffc420200cd0ad2ad06b675e1a128f828f2c1919d614c6db7206f36af` |
| 26 | `theorem` | [stereographic'_target](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereographic-target--3ef039f7d680c3d5d133b715.md) | 332 | `result-track:3ef039f7d680c3d5d133b7156b5b0e57edc6fb32947f2505a1e9097bd0e7f715` |
| 27 | `instance` | [EuclideanSpace.instChartedSpaceSphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/euclideanspace-instchartedspacesphere--97fafbadc976696a341ccbf1.md) | 337 | `declaration-track:97fafbadc976696a341ccbf1bd3518e2c2ade10c025f6f74602405757712fea8` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/instance--bc763e3edca7a063cfbad8c7.md) | 344 | `declaration-track:bc763e3edca7a063cfbad8c7ad55ec86ab65b8f8a20861d262dd1f29b95f50e0` |
| 29 | `theorem` | [sphere_ext_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/sphere-ext-iff--9bc8ace8a2d3c9603b4f0576.md) | 355 | `result-track:9bc8ace8a2d3c9603b4f05762ff48edfbd8f4d3f9509307d6569e9e9eaf12dc2` |
| 30 | `theorem` | [stereographic'_symm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereographic-symm-apply--6ad411c07011c6b111887ff3.md) | 358 | `result-track:6ad411c07011c6b111887ff3da3d6e40c67254d76551ee7a41cecc2638901867` |
| 31 | `instance` | [EuclideanSpace.instIsManifoldSphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/euclideanspace-instismanifoldsphere--657d8a7004c668faee5fad14.md) | 371 | `declaration-track:657d8a7004c668faee5fad147e5666377264d99f8d1d181c88c955ff06eeabda` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/instance--c73f8d3771943dc79fbf11e1.md) | 400 | `declaration-track:c73f8d3771943dc79fbf11e1c87273867d8d88b8c84058a5dce7442e6a1e5d38` |
| 33 | `theorem` | [contMDiff_coe_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/contmdiff-coe-sphere--5ce72d9b821b5932df27ba16.md) | 405 | `result-track:5ce72d9b821b5932df27ba16be74701a68f2ec0901a74a5cec808d51313fb690` |
| 34 | `theorem` | [ContMDiff.codRestrict_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/contmdiff-codrestrict-sphere--d0ccd635c894b1bdc2d9a4b2.md) | 427 | `result-track:d0ccd635c894b1bdc2d9a4b257831158dd5ae40ab481eb91256339b040d7f3fd` |
| 35 | `theorem` | [contMDiff_neg_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/contmdiff-neg-sphere--9b4377793f3b036df28948b9.md) | 451 | `result-track:9b4377793f3b036df28948b9e73ce93473071d171c53f5c7bd9f22cc64b02a3d` |
| 36 | `lemma` | [stereographic'_neg](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/stereographic-neg--bacb0f047dd59fe374ccf38a.md) | 458 | `result-track:bacb0f047dd59fe374ccf38a115dcb025e2e893c897b104ba03bbf750df66a3a` |
| 37 | `theorem` | [range_mfderiv_coe_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/range-mfderiv-coe-sphere--2552af520e040352b6006c98.md) | 471 | `result-track:2552af520e040352b6006c9873803d2b0c8a7e0c43897342f7dfbf49d84cdee8` |
| 38 | `theorem` | [mfderiv_coe_sphere_injective](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/mfderiv-coe-sphere-injective--1952167e569c139883938857.md) | 509 | `result-track:1952167e569c1398839388573f49b049a57c8670f4cb582ade2075d91c2f2842` |
| 39 | `theorem` | [finrank_real_complex_fact'](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/finrank-real-complex-fact--4175465a6d39502baa4180f4.md) | 536 | `result-track:4175465a6d39502baa4180f4a0a31762d70287ddf7a1c76544e1fc99df57ac00` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/instance--d6a16ca7565376c8e76d7bc0.md) | 543 | `declaration-track:d6a16ca7565376c8e76d7bc01ee2bf8153e3baae450b0e10e8bb72ac49b310d1` |
| 41 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/instance--5babe0c3e55cd04381137ca9.md) | 546 | `declaration-track:5babe0c3e55cd04381137ca9e24a595fe8dbdc5c2046049d60e824b68d10eb17` |
| 42 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/instance--7f89a068b8dcd88abae6aa73.md) | 550 | `declaration-track:7f89a068b8dcd88abae6aa73b09df66523b1f39b8faf42034390482bcbfa37ef` |
| 43 | `theorem` | [contMDiff_circleExp](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant2e5b287c02f2583b816692cc8647df3e4548bb2fe1e7d238a8883c90173f8153.lean/declarations/contmdiff-circleexp--a87b1287cc6f98d23158c0d5.md) | 567 | `result-track:a87b1287cc6f98d23158c0d5be4c4abb100c4263f21d97a2e1d93de445cddaf1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
