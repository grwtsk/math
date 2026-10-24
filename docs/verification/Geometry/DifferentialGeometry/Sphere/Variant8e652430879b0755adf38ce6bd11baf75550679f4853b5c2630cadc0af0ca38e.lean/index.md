# Verification target: GRWTSK.Geometry.DifferentialGeometry.Sphere.Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8c1e43eaf555101bf034f2c3a0690715663ec66f",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8c1e43eaf555101bf034f2c3a0690715663ec66f`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.BallAction` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.Calculus` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.Instances.Real` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `macro_rules` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/macro-rules--06ca8d9696da07efd992540a.md) | 75 | `declaration-track:06ca8d9696da07efd992540ae328de29a1448a06abc290e5ed2376a218191cb8` |
| 2 | `def` | [stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereotofun--307961709ed1340d36481947.md) | 88 | `declaration-track:307961709ed1340d3648194741d5c2d4d6048f36689348a40679f262e6f49148` |
| 3 | `theorem` | [stereoToFun_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereotofun-apply--c0d1912d31abfa035bd8420c.md) | 95 | `result-track:c0d1912d31abfa035bd8420cae91589268045540428ae3b2db0bf38aff0e1a6a` |
| 4 | `theorem` | [contDiffOn_stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/contdiffon-stereotofun--7a3e3be9be8affb1689c23b1.md) | 100 | `result-track:7a3e3be9be8affb1689c23b16f3fc0936850e116685551837ea640389ca5ba0f` |
| 5 | `theorem` | [continuousOn_stereoToFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/continuouson-stereotofun--8eea5f332122ae9bf49296a5.md) | 109 | `result-track:8eea5f332122ae9bf49296a5ddd3b1f9fa07489157482e5782df10e7922387b2` |
| 6 | `def` | [stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereoinvfunaux--f82f2a366578c1768a28a839.md) | 121 | `declaration-track:f82f2a366578c1768a28a839377bbb48f5c2bf525b0d7f6cde1f688b2c49e931` |
| 7 | `theorem` | [stereoInvFunAux_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereoinvfunaux-apply--dd4b6963ecad375560f6101d.md) | 128 | `result-track:dd4b6963ecad375560f6101dfe0b623631aca4c84f431f29a8f1605233579cf3` |
| 8 | `theorem` | [stereoInvFunAux_mem](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereoinvfunaux-mem--d8758aff98b203fd90c52ca4.md) | 133 | `result-track:d8758aff98b203fd90c52ca42b1bef9e74bc67bf7fc809e5cdbce60d4f9e662f` |
| 9 | `theorem` | [hasFDerivAt_stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/hasfderivat-stereoinvfunaux--c0972101fe37539c3e9dc8bc.md) | 147 | `result-track:c0972101fe37539c3e9dc8bc52dd67a47ea53a411befd657bbe4464e0c957af4` |
| 10 | `theorem` | [hasFDerivAt_stereoInvFunAux_comp_coe](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/hasfderivat-stereoinvfunaux-comp-coe--d5c15723956844a120375fa8.md) | 165 | `result-track:d5c15723956844a120375fa89bea4715260da4e56b30a94e8d338f31f90e48e4` |
| 11 | `theorem` | [contDiff_stereoInvFunAux](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/contdiff-stereoinvfunaux--0dfffae1ab27f14dee39039b.md) | 172 | `result-track:0dfffae1ab27f14dee39039bfbff2a0279e6e3e6508e759d2a42e3edd727812a` |
| 12 | `def` | [stereoInvFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereoinvfun--5ab40f6ed3c4c18637d6dc5b.md) | 186 | `declaration-track:5ab40f6ed3c4c18637d6dc5b2d7b1b9d7c0266e89b2d5df83b7145b008c4486c` |
| 13 | `theorem` | [stereoInvFun_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereoinvfun-apply--7d9f0e825f445c21167d26c6.md) | 191 | `result-track:7d9f0e825f445c21167d26c6a71dfe264acb77ed97f8571c8220ece673f13b2d` |
| 14 | `theorem` | [stereoInvFun_ne_north_pole](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereoinvfun-ne-north-pole--012d174d334e5450a661d211.md) | 196 | `result-track:012d174d334e5450a661d211f86d1fdf2828c288eccf7e712c92fc1767c9b7c8` |
| 15 | `theorem` | [continuous_stereoInvFun](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/continuous-stereoinvfun--47387df16d6ce59a0bd79e9f.md) | 210 | `result-track:47387df16d6ce59a0bd79e9fb7826fccb594d5ef3d56a22407a8fcb36147b6f9` |
| 16 | `theorem` | [stereo_left_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereo-left-inv--9511062cadf423616504a0f2.md) | 214 | `result-track:9511062cadf423616504a0f2e31a6bceb4cf587e486c2bb61877838a3bebbd9f` |
| 17 | `theorem` | [stereo_right_inv](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereo-right-inv--c613e69a109c6187c167fa67.md) | 270 | `result-track:c613e69a109c6187c167fa678a2e25b4500d16c697e1ccc8ce18ddb77fd41e5d` |
| 18 | `def` | [stereographic](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereographic--9b5737798dd0ee2939a1a972.md) | 286 | `declaration-track:9b5737798dd0ee2939a1a9721e1936888f5a808d7ad9a214cea0862fcf438a68` |
| 19 | `theorem` | [stereographic_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereographic-apply--4735c1ec8807cc7676ec7f24.md) | 309 | `result-track:4735c1ec8807cc7676ec7f24717269440ed8f48333de2a42863208cc56c9345d` |
| 20 | `theorem` | [stereographic_source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereographic-source--fa6fd0232454d668fbd60bf6.md) | 315 | `result-track:fa6fd0232454d668fbd60bf6fc8e7ade32279fa072fcd42e561a667bf360febd` |
| 21 | `theorem` | [stereographic_target](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereographic-target--046de465789b78d8ae543a37.md) | 320 | `result-track:046de465789b78d8ae543a37d90c7be4c58be4a0fb2d1ff7fbf36355a579e1dc` |
| 22 | `theorem` | [stereographic_apply_neg](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereographic-apply-neg--306b4b9f70423c5ea6a16451.md) | 325 | `result-track:306b4b9f70423c5ea6a16451bf61e65aa33a93802619fd25929fbd508a19ca71` |
| 23 | `theorem` | [stereographic_neg_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereographic-neg-apply--7f112a35f841c7e2523a8338.md) | 331 | `result-track:7f112a35f841c7e2523a8338f0f90f6078515eabe3698c0b1c6084fe7a9520aa` |
| 24 | `theorem` | [findim](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/findim--b3289d533ad3fa4aa33f0f34.md) | 361 | `result-track:b3289d533ad3fa4aa33f0f349515965f800595a8794c16dc6fd4902960e42d94` |
| 25 | `def` | [stereographic'](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereographic--fc2dfdd5cd39bec5041404f0.md) | 368 | `declaration-track:fc2dfdd5cd39bec5041404f06cbb57b303210245d1d1acff83d8ca5a8fe0e748` |
| 26 | `theorem` | [stereographic'_source](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereographic-source--75d79b535c30da72e9bc83d1.md) | 376 | `result-track:75d79b535c30da72e9bc83d1c71bef49ea6563bb1e1a5add9ccbadca5b1a87d8` |
| 27 | `theorem` | [stereographic'_target](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereographic-target--10e9c0744b1ca1018adb7261.md) | 381 | `result-track:10e9c0744b1ca1018adb726145299795ad45fb4a6a9c29b46b2e33652bde2cd7` |
| 28 | `instance` | [chartedSpace](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/chartedspace--3371bee2e285d331f6fcbfd1.md) | 387 | `declaration-track:3371bee2e285d331f6fcbfd103917a3e08967ca3fe0ab6f33d9504f9b9985815` |
| 29 | `theorem` | [sphere_ext_iff](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/sphere-ext-iff--6689fd1788b976551df6f310.md) | 398 | `result-track:6689fd1788b976551df6f310b81f779b101eaf1be81546ece749d6a3589d7926` |
| 30 | `theorem` | [stereographic'_symm_apply](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/stereographic-symm-apply--429aa2f5ccad11632eef206d.md) | 402 | `result-track:429aa2f5ccad11632eef206d21d5af3cb4e0e5638104163d6074ce84c1d5a242` |
| 31 | `instance` | [smoothMfldWithCorners](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/smoothmfldwithcorners--9ea92fd1e6e8698f40b65a41.md) | 416 | `declaration-track:9ea92fd1e6e8698f40b65a417a41e9a2073cf9dcee34730f9c91d23e7bfebcca` |
| 32 | `theorem` | [contMDiff_coe_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/contmdiff-coe-sphere--54aa7b1cc256405a84dee1e7.md) | 447 | `result-track:54aa7b1cc256405a84dee1e7aba54912ddea4c8bc2f9bb7d86bb46eb458acad4` |
| 33 | `theorem` | [ContMDiff.codRestrict_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/contmdiff-codrestrict-sphere--89c185f49c0253f26644962b.md) | 472 | `result-track:89c185f49c0253f26644962bdadf93ab27a44b5f71dd85ff9962eb8755f99887` |
| 34 | `theorem` | [contMDiff_neg_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/contmdiff-neg-sphere--4a7fcc255e7c0bdab6b0e957.md) | 497 | `result-track:4a7fcc255e7c0bdab6b0e957f66a1d0c1a5cab07ea4a542d9e6ad70a83c89f04` |
| 35 | `theorem` | [range_mfderiv_coe_sphere](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/range-mfderiv-coe-sphere--e45cdd60769b0e91a7c9ea04.md) | 512 | `result-track:e45cdd60769b0e91a7c9ea04faa0919bb774408f47b61b1e2bb111020e07f40e` |
| 36 | `theorem` | [mfderiv_coe_sphere_injective](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/mfderiv-coe-sphere-injective--dc8463784afaf00298592a72.md) | 556 | `result-track:dc8463784afaf00298592a7220192b35151cccef18da44a66c20f7c7ec6324fa` |
| 37 | `theorem` | [finrank_real_complex_fact'](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/finrank-real-complex-fact--fcdd4a8eedbe57ffa7dc5cd8.md) | 588 | `result-track:fcdd4a8eedbe57ffa7dc5cd8745f9f92f198852e72dea33add328eca23530cf3` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/instance--b8ab283139159ec36fa4ce5b.md) | 595 | `declaration-track:b8ab283139159ec36fa4ce5be25b3006b9373b8fd24bed70d1df42532091dfcb` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/instance--9e31162f1ffd5c01e58bde70.md) | 598 | `declaration-track:9e31162f1ffd5c01e58bde709e0b74b35f61b8f9423eba740f38b16fd2a88349` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/instance--7b80dd3e280b1ddeb6ee0a1c.md) | 602 | `declaration-track:7b80dd3e280b1ddeb6ee0a1c197b35d9542bec8ad2f43ad314b5b0e32dc84464` |
| 41 | `theorem` | [contMDiff_expMapCircle](../../../../../mathematics/Geometry/DifferentialGeometry/Sphere/Variant8e652430879b0755adf38ce6bd11baf75550679f4853b5c2630cadc0af0ca38e.lean/declarations/contmdiff-expmapcircle--89f0c7f5f63c8fe551fc0bca.md) | 620 | `result-track:89f0c7f5f63c8fe551fc0bca6a79c66606d4a1c91d656d4d3648b13d3ed3c8c9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
