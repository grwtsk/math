# Verification target: GRWTSK.Geometry.DifferentialGeometry.SmoothSection.Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1a57fdf60ba17d7563b1bc8cf8f2a86d822a70a6",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1a57fdf60ba17d7563b1bc8cf8f2a86d822a70a6`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContMDiffSection](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/contmdiffsection--10eef1641bd960c6afb83cb2.md) | 44 | `declaration-track:10eef1641bd960c6afb83cb2a4e3eaa2e9e1ba39564e26adeb8770db2ac2296e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/instance--edb85448bec5a74737f79c05.md) | 59 | `declaration-track:edb85448bec5a74737f79c05a6f197c58f0ff8ebea01181714980483c2114799` |
| 3 | `theorem` | [coeFn_mk](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coefn-mk--f522d54c5ab85683ff121ca8.md) | 66 | `result-track:f522d54c5ab85683ff121ca86bbe60101e6ab13c205db0e4d464a2a3c0af2982` |
| 4 | `theorem` | [contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/contmdiff--d3b16e71168f7603088f6781.md) | 71 | `result-track:d3b16e71168f7603088f6781edb4d2494d02855ad12c26ef16e837b18708ed2e` |
| 5 | `theorem` | [coe_inj](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coe-inj--6511cd6ffdfda327fbc52eae.md) | 77 | `result-track:6511cd6ffdfda327fbc52eae546b2f142fc51d1ef5e7a61a491f9a190fa8374d` |
| 6 | `theorem` | [coe_injective](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coe-injective--3f66c3a4cf89d3de7918f31c.md) | 80 | `result-track:3f66c3a4cf89d3de7918f31c04b4fb007c2faf40bf2fe52999d78ec954af04df` |
| 7 | `theorem` | [ext](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/ext--6e155a534733247903cf8593.md) | 84 | `result-track:6e155a534733247903cf85938668ada781ae5404b8f58397be38d8856fedc2c5` |
| 8 | `instance` | [instAdd](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/instadd--a63755d80ea419d72e792dc8.md) | 89 | `declaration-track:a63755d80ea419d72e792dc858bcc969b66fef52845fdac6b8ae2993e28c1b7b` |
| 9 | `theorem` | [coe_add](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coe-add--861a9852f0c4ec5af0bc3e86.md) | 102 | `result-track:861a9852f0c4ec5af0bc3e863566d958b8e3ea93fb1b8e51ed7108d6564fc522` |
| 10 | `instance` | [instSub](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/instsub--0c4286fcc39cd544f0e6302a.md) | 105 | `declaration-track:0c4286fcc39cd544f0e6302a985de47ee769f5d0167a3ab02b2c0039a9817c37` |
| 11 | `theorem` | [coe_sub](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coe-sub--01efc8868fabe3d5c29ca92f.md) | 118 | `result-track:01efc8868fabe3d5c29ca92fc848cb092d76e77f2233effacc5ccfa4cdd385a0` |
| 12 | `instance` | [instZero](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/instzero--769aa565873181caa235b6fa.md) | 121 | `declaration-track:769aa565873181caa235b6fa81dee115274982a4b70f2811b92a59100a688e1f` |
| 13 | `instance` | [inhabited](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/inhabited--428ef53739b2fc7b849df6d1.md) | 124 | `declaration-track:428ef53739b2fc7b849df6d15c9c83eb2c3ffb88a93619881ecd7b567d998363` |
| 14 | `theorem` | [coe_zero](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coe-zero--18c7de0cb51fcdf61f9626cf.md) | 128 | `result-track:18c7de0cb51fcdf61f9626cf61fc530a4d7fec7e148a1759a92ffd4b6a3b5592` |
| 15 | `instance` | [instNeg](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/instneg--cfea7366c66191cbabca6d0f.md) | 131 | `declaration-track:cfea7366c66191cbabca6d0fb639b5d0c4e4350452ce66ecb551bc599126a5d7` |
| 16 | `theorem` | [coe_neg](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coe-neg--1e9403578631b7d8f3c3da52.md) | 143 | `result-track:1e9403578631b7d8f3c3da5207647ebc1f3048cd78913126b4541bbdea75c811` |
| 17 | `instance` | [instNSMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/instnsmul--7db7719b9d021b7523981d52.md) | 146 | `declaration-track:7db7719b9d021b7523981d5210baa1d19367d7486e6e40d42e770a802a5de40b` |
| 18 | `theorem` | [coe_nsmul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coe-nsmul--1a5585cbb2bbdd3145a31133.md) | 150 | `result-track:1a5585cbb2bbdd3145a311336d083be2b114897fa4082b7b0d9e9348dc51bacb` |
| 19 | `instance` | [instZSMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/instzsmul--772cbe467655e01b54bbf02b.md) | 155 | `declaration-track:772cbe467655e01b54bbf02bf66f37299bdf4de7893cb983822dd35e8280d971` |
| 20 | `theorem` | [coe_zsmul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coe-zsmul--9d35b83887c34c2d4248d110.md) | 159 | `result-track:9d35b83887c34c2d4248d1108f729819af880b94f35638ea49e79f68d4c777a7` |
| 21 | `instance` | [instAddCommGroup](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/instaddcommgroup--3dd0149c93ae95eeccc03e28.md) | 166 | `declaration-track:3dd0149c93ae95eeccc03e28b86a43ec7c70da1a1f4552041584f377cf38379e` |
| 22 | `instance` | [instSMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/instsmul--70c4011bbde6bccf0f048949.md) | 169 | `declaration-track:70c4011bbde6bccf0f0489492539b136a55dde481b3c566414f7090f630ad055` |
| 23 | `theorem` | [coe_smul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coe-smul--c7208e37b95fed4b23227fb0.md) | 181 | `result-track:c7208e37b95fed4b23227fb063538a8beac44c4e2ae70c0a8243b40e4bcd968a` |
| 24 | `def` | [coeAddHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coeaddhom--42de975231f0aae71949169f.md) | 186 | `declaration-track:42de975231f0aae71949169fe92ba83e2c57a08e1474e8c75eb7b38a93519c9e` |
| 25 | `theorem` | [coeAddHom_apply](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/coeaddhom-apply--862e9c304fb32c0dfb0a675d.md) | 192 | `result-track:862e9c304fb32c0dfb0a675deda8d7d4196ccf10b4b8cac8febeba06476dab02` |
| 26 | `instance` | [instModule](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/instmodule--72d23e786837d88fcd444ba5.md) | 194 | `declaration-track:72d23e786837d88fcd444ba59485467adcd253feca0634ce20842fe1c1c4a34b` |
| 27 | `theorem` | [mdifferentiable'](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/mdifferentiable--1b5f52e97b0e7bbc4b43c932.md) | 199 | `result-track:1b5f52e97b0e7bbc4b43c93238dd475ad0605ab8a31c1aec7737b9dcf0d9733a` |
| 28 | `theorem` | [mdifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/mdifferentiable--8e0b71ddb026af70dd9747d4.md) | 203 | `result-track:8e0b71ddb026af70dd9747d40b6da8e1462e7fa7ad7a8f48803f53c8fd8abdd8` |
| 29 | `theorem` | [mdifferentiableAt](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant0831e2d6a7331b2143f4e6e384aaa33e09773b002658bb6188f9c60061c0496c.lean/declarations/mdifferentiableat--c15b47bc5ce292f93a1152cb.md) | 207 | `result-track:c15b47bc5ce292f93a1152cbc602e2fe7c466cf09db28ac73f11feb11b45f07d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
