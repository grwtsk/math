# Verification target: GRWTSK.Algebra.LinearAlgebra.Basic.Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6957a071316db5dec80d3139f58003ae0570c79c",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6957a071316db5dec80d3139f58003ae0570c79c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.RingQuot` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.TensorAlgebra.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.QuadraticForm.IsometryEquiv` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Rel](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/rel--8a463ff06e9c8a12640083de.md) | 63 | `declaration-track:8a463ff06e9c8a12640083dee86141867465ffe57925ebffd26a11847e666de5` |
| 2 | `def` | [CliffordAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/cliffordalgebra--dd8ee66c0fe252a983e95563.md) | 71 | `declaration-track:dd8ee66c0fe252a983e9556319fbdbfc25c23a89c149a4739abee1289f57cdd9` |
| 3 | `instance` | [instInhabited](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/instinhabited--b8d08aa5497f0bc71a481a3f.md) | 78 | `declaration-track:b8d08aa5497f0bc71a481a3fd78dac88ecb5e66fd92b950a4290aa554b588450` |
| 4 | `instance` | [instRing](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/instring--8403d76f936f77e19a87892f.md) | 80 | `declaration-track:8403d76f936f77e19a87892f4b7402f56680a986bfa244f24295e870ca1f3e50` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/instance--f11b874637c887d95aa90e24.md) | 83 | `declaration-track:f11b874637c887d95aa90e24722063ba14adb685db1b78e6264c2e10af3185f7` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/example--1080ae60a5afae47403edd2c.md) | 90 | `declaration-track:1080ae60a5afae47403edd2c548732e73211188c0494392a3c298f14eff0c01a` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/example--fbc3a49a9d924c0e5f2442f8.md) | 91 | `declaration-track:fbc3a49a9d924c0e5f2442f84b1a1b1c086b6e85002f4741c3f638f48db3e15c` |
| 8 | `instance` | [instAlgebra](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/instalgebra--f9db2141f1aff162c381ea71.md) | 94 | `declaration-track:f9db2141f1aff162c381ea71b0133e0b75d995d7cf1e7afaeebdd85dc00f270f` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/instance--676124f50f238019cf7c18f4.md) | 97 | `declaration-track:676124f50f238019cf7c18f419cdc9f2426b434b7a7824fbc7af2cb73b4cc15d` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/instance--28fb8eee930726fadf40a439.md) | 103 | `declaration-track:28fb8eee930726fadf40a4390e5d800838958325a2e7c1df64cfbd8a7421c9b3` |
| 11 | `def` | [ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/anonymous--a2fd33795ed9e6f96e53f849.md) | 111 | `declaration-track:a2fd33795ed9e6f96e53f849b888b033e3c42aa3f76cb89af996a899308444c4` |
| 12 | `theorem` | [ι_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/sq-scalar--c2a43e6d9dfc9383a253a72f.md) | 117 | `result-track:c2a43e6d9dfc9383a253a72f32e1707107fcb9d22aa5ed0e1a8636b0b093bd3d` |
| 13 | `theorem` | [comp_ι_sq_scalar](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/comp-sq-scalar--dad54ea59952dbe34fb77725.md) | 125 | `result-track:dad54ea59952dbe34fb77725ca4f636e9d4b4a3f9f0467c23d876c4154a77ffe` |
| 14 | `def` | [lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/lift--c5565ff8d21955582836e7d3.md) | 137 | `declaration-track:c5565ff8d21955582836e7d310107dd5d1d9805c8207a1d8d0904016deface39` |
| 15 | `theorem` | [ι_comp_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/comp-lift--46e61151f5fe2489886f2985.md) | 163 | `result-track:46e61151f5fe2489886f29859c2a023fad5a2be54cbc93a93693dd03fc9bc7f6` |
| 16 | `theorem` | [lift_ι_apply](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/lift-apply--4623d911753eb2e153275685.md) | 169 | `result-track:4623d911753eb2e15327568549cd49014bd14f3f296b11a24e06cb5121d334d9` |
| 17 | `theorem` | [lift_unique](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/lift-unique--5a442e0589a646e611ffe9f1.md) | 175 | `result-track:5a442e0589a646e611ffe9f1bc24623ce6791f4428099cf676c215742d525d8f` |
| 18 | `theorem` | [lift_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/lift-comp--f287c13a6fa290a064407b24.md) | 183 | `result-track:f287c13a6fa290a064407b245c3dea7f3ad0ff750d5b41c0b496f729947e41ee` |
| 19 | `theorem` | [hom_ext](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/hom-ext--7d0ce4d4a7870404ea845b7a.md) | 191 | `result-track:7d0ce4d4a7870404ea845b7aa8f2e8ccfb098f7326ba82bee640e36655e2bd06` |
| 20 | `theorem` | [induction](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/induction--9b97817fefa69478c1592dcb.md) | 206 | `result-track:9b97817fefa69478c1592dcb468823fb2e7d4b337b5917ac5b5b0d83b47b0b9b` |
| 21 | `theorem` | [ι_mul_ι_add_swap](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/mul-add-swap--503bae72bc418136f79902fb.md) | 233 | `result-track:503bae72bc418136f79902fb6b7ed17853e1c9f0b7810c17b0fe5a032286adcb` |
| 22 | `theorem` | [ι_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/mul-comm--7ba4cf3d4485091967f4719d.md) | 244 | `result-track:7ba4cf3d4485091967f4719dc417547b61b159dd2d53b8249ab20fc51f29f817` |
| 23 | `theorem` | [ι_mul_ι_mul_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/mul-mul--752cd17e13f0dcac5fff07cf.md) | 250 | `result-track:752cd17e13f0dcac5fff07cffa61b847705de44300352872e01ffe12950b1ffd` |
| 24 | `theorem` | [ι_range_map_lift](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/range-map-lift--007028fa9f7331f077bfcd56.md) | 257 | `result-track:007028fa9f7331f077bfcd5675a50ae6e1330ad14179ea38ffe63307ec400430` |
| 25 | `def` | [map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/map--52b03ade8a19c6ee5f98b4ae.md) | 275 | `declaration-track:52b03ade8a19c6ee5f98b4ae9471ed264d6d9200c14ca8e314f0bfaab628384d` |
| 26 | `theorem` | [map_comp_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/map-comp--272117aa7ee47b59aaccea31.md) | 282 | `result-track:272117aa7ee47b59aaccea31cdcf3d5d95f58cdd86fc59f2f13b654db82781d8` |
| 27 | `theorem` | [map_apply_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/map-apply--e9207feebc2fb6ae031ad12e.md) | 288 | `result-track:e9207feebc2fb6ae031ad12eee6976779a91484e91a30ea9b54801538691d637` |
| 28 | `theorem` | [map_id](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/map-id--f4032b35adaf7777eb1a13dc.md) | 293 | `result-track:f4032b35adaf7777eb1a13dc5855b3c7458a3a10e788d63dc0cee22469c120a3` |
| 29 | `theorem` | [map_comp_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/map-comp-map--1c52527d24f6b85b3c8d2f78.md) | 299 | `result-track:1c52527d24f6b85b3c8d2f789351b045d8c4d0e72ca5aa84909f703d94b116be` |
| 30 | `theorem` | [ι_range_map_map](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/range-map-map--e1c497d09e300ad4f9ee4024.md) | 308 | `result-track:e1c497d09e300ad4f9ee402412f87cc69bba8a125b860995bd10e21bb4626445` |
| 31 | `def` | [equivOfIsometry](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/equivofisometry--2aa571a6be761e50e0d344ed.md) | 318 | `declaration-track:2aa571a6be761e50e0d344ed7dfe496aaa1040d8dc364c314edc71f63483d5e8` |
| 32 | `theorem` | [equivOfIsometry_symm](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/equivofisometry-symm--6d402575ef2cc09a73f0e554.md) | 331 | `result-track:6d402575ef2cc09a73f0e554955aae7e47c8a064de9a56db5b544c4000936365` |
| 33 | `theorem` | [equivOfIsometry_trans](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/equivofisometry-trans--3ff307998cac0cf2669e4c64.md) | 337 | `result-track:3ff307998cac0cf2669e4c6492114adbf087eb1a7b06f74b0d472415fe75d2d7` |
| 34 | `theorem` | [equivOfIsometry_refl](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/equivofisometry-refl--0938dfcb7dd68c25f6a549c1.md) | 344 | `result-track:0938dfcb7dd68c25f6a549c1664567d9ef99cf35ff5cd5b2eeb3c6d6281c3431` |
| 35 | `def` | [invertibleιOfInvertible](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/invertible-ofinvertible--eb1565af668e31c958bb4149.md) | 355 | `declaration-track:eb1565af668e31c958bb41497fc3f316777e0f151ba241303099f4d771311b30` |
| 36 | `theorem` | [invOf_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/invof--2e1e68473b29513f38848d37.md) | 364 | `result-track:2e1e68473b29513f38848d37f8b2afbf6122a0d5666c015fe2e75232cb42ef13` |
| 37 | `theorem` | [isUnit_ι_of_isUnit](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/isunit-of-isunit--29f267abdd53f21f8b5bafab.md) | 370 | `result-track:29f267abdd53f21f8b5bafabadb0eb084a313f69d98d0a180b0a0fcf7a4abca2` |
| 38 | `theorem` | [ι_mul_ι_mul_invOf_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/mul-mul-invof--8e5ebcdaec93ae25577b6fd1.md) | 377 | `result-track:8e5ebcdaec93ae25577b6fd1733d888428f863eb66c7316759ada649cf947b3a` |
| 39 | `theorem` | [invOf_ι_mul_ι_mul_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/invof-mul-mul--32219c4522195e6646d35fcb.md) | 384 | `result-track:32219c4522195e6646d35fcb5d0786d2ff4445b7c0f17dc1f77a0fa1285204f5` |
| 40 | `def` | [toClifford](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/toclifford--da3b601c41c5d18a9a6978c6.md) | 398 | `declaration-track:da3b601c41c5d18a9a6978c6d4f80fd01b998ac58063b67edeafd0b4a881d0c3` |
| 41 | `theorem` | [toClifford_ι](../../../../../mathematics/Algebra/LinearAlgebra/Basic/Variant2ce1ca86357acccee7da7eb59fa3dfad4f2c1f89ee3c2c1c8a76a2504d98e939.lean/declarations/toclifford--2590fa376491ade3641ce422.md) | 403 | `result-track:2590fa376491ade3641ce4225caf40bb75017d95433e5dc8bbe699168d87146d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
