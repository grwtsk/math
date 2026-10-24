# Verification target: GRWTSK.Geometry.DifferentialGeometry.SmoothSection.Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2925d751958cc32bd309ee4e3541b1f3bff295cc",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2925d751958cc32bd309ee4e3541b1f3bff295cc`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Geometry.Manifold.Algebra.LieGroup` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.MFDeriv.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Geometry.Manifold.VectorBundle.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ContMDiffSection](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/contmdiffsection--3e9dc37f75081f5910929126.md) | 36 | `declaration-track:3e9dc37f75081f5910929126526723270112b01d5e025f4a5b62143ef2a23ba9` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/instance--c971740fd030c65f584fba8c.md) | 51 | `declaration-track:c971740fd030c65f584fba8ca6fcc763dd8cc1c3a0c9e04c4030950b4d43678b` |
| 3 | `theorem` | [coeFn_mk](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coefn-mk--72017ec05f0237f789ee792a.md) | 58 | `result-track:72017ec05f0237f789ee792a60ed5a936972dcc60cbf47976e174cd4e86a7145` |
| 4 | `theorem` | [contMDiff](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/contmdiff--d334c5281bcbad77b834e70f.md) | 63 | `result-track:d334c5281bcbad77b834e70f33581c3f5302d9c9f02ded95f4375c72ce8c6ae0` |
| 5 | `theorem` | [coe_inj](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coe-inj--496282c2ce856389af948349.md) | 69 | `result-track:496282c2ce856389af9483491b03cda5f85095b93f87c557c21bd2c7e9055c38` |
| 6 | `theorem` | [coe_injective](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coe-injective--c1e6f1a7e082e8bc8db909b7.md) | 72 | `result-track:c1e6f1a7e082e8bc8db909b7b8ad9592409549a553e8275cb8bf26b3b7e55fa8` |
| 7 | `theorem` | [ext](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/ext--0a0695972355409e689fa16c.md) | 76 | `result-track:0a0695972355409e689fa16c5c69e6fd2b36efd7677fd5c921bb195f13fc9111` |
| 8 | `instance` | [instAdd](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/instadd--5d907733fc0e730c715f01be.md) | 81 | `declaration-track:5d907733fc0e730c715f01beee889c70ce9c2967764e6fe9d540115ab392612c` |
| 9 | `theorem` | [coe_add](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coe-add--8475c6d1c1c14b3960ce8b4e.md) | 94 | `result-track:8475c6d1c1c14b3960ce8b4ef4e7a019dd483c2a1c1bcc320b2adf5e8b6cb636` |
| 10 | `instance` | [instSub](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/instsub--54c869dbd671c37737f8f25e.md) | 97 | `declaration-track:54c869dbd671c37737f8f25e3a83fc7e9b666f4bf05bb5ec224c92f0fa8dd4bc` |
| 11 | `theorem` | [coe_sub](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coe-sub--0a33bdc2f460425a50fe6070.md) | 110 | `result-track:0a33bdc2f460425a50fe607068993fc1c878b0e7ac2599e81ce3474f32df71e7` |
| 12 | `instance` | [instZero](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/instzero--722baee9234b5defc626740f.md) | 113 | `declaration-track:722baee9234b5defc626740fb6dcb398efc5e6b00caad06c3b4bcca28a860141` |
| 13 | `instance` | [inhabited](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/inhabited--45336de8ad6bce913fad68b3.md) | 116 | `declaration-track:45336de8ad6bce913fad68b37c2e8dc9a59ea65e37f7cd73a05b696e7200249c` |
| 14 | `theorem` | [coe_zero](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coe-zero--998f35d0087842d536f45266.md) | 120 | `result-track:998f35d0087842d536f45266c60e9c3768fd534a8822d5ffd35e3ff3ec262e32` |
| 15 | `instance` | [instNeg](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/instneg--a3a8cea21467f6339e1ec756.md) | 123 | `declaration-track:a3a8cea21467f6339e1ec756d1cc4412ac95b87710be9def9cf4b928996be70d` |
| 16 | `theorem` | [coe_neg](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coe-neg--0393d06b8b4f3db4d39a9f60.md) | 135 | `result-track:0393d06b8b4f3db4d39a9f609b15d504972feb682d12f1dac1918ef7f14c0ce7` |
| 17 | `instance` | [instNSMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/instnsmul--f562df158977c8e310b5abf5.md) | 138 | `declaration-track:f562df158977c8e310b5abf59d5f94ee32e4151daf0f2967efc03864f9ca4941` |
| 18 | `theorem` | [coe_nsmul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coe-nsmul--80be9cf832e8b43235f8e88c.md) | 142 | `result-track:80be9cf832e8b43235f8e88c32be158d22ac74d5d28557f8dfe816b5c3cc529d` |
| 19 | `instance` | [instZSMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/instzsmul--265867033b63e3262d0e8ddd.md) | 147 | `declaration-track:265867033b63e3262d0e8dddc277d5d1d365ddbc5c4b0f9e69ce8d2fc592faee` |
| 20 | `theorem` | [coe_zsmul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coe-zsmul--5dc298b615f0f0ee8b4fb39e.md) | 151 | `result-track:5dc298b615f0f0ee8b4fb39ed9a442953abb296e06f157a5cb8087e68d486306` |
| 21 | `instance` | [instAddCommGroup](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/instaddcommgroup--3aba9d0826bb5ebf258f3957.md) | 158 | `declaration-track:3aba9d0826bb5ebf258f395738d45a72439d546a9ab070a2ad844a4b9ed49c77` |
| 22 | `instance` | [instSMul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/instsmul--798aed0d27892adaa054bf49.md) | 161 | `declaration-track:798aed0d27892adaa054bf49965d22541f9fd085d772008999b66fde3e5baae1` |
| 23 | `theorem` | [coe_smul](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coe-smul--c49c96d9c5df7cc7a4d34dcf.md) | 173 | `result-track:c49c96d9c5df7cc7a4d34dcfa57755197b5df10bca09f89cd5a10465cd04c2eb` |
| 24 | `def` | [coeAddHom](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coeaddhom--6099ce5d03710b18ec72e245.md) | 178 | `declaration-track:6099ce5d03710b18ec72e2455b64b86be3c9431aea37717a5af24ae2fc13eb97` |
| 25 | `theorem` | [coeAddHom_apply](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/coeaddhom-apply--3f4cc75bb378fa962820814c.md) | 184 | `result-track:3f4cc75bb378fa962820814ca8fee5bc6b941ed93f27ec6bfc1539540e7adc36` |
| 26 | `instance` | [instModule](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/instmodule--e544d3ee495069afbb7551a2.md) | 186 | `declaration-track:e544d3ee495069afbb7551a238df5ff655bb86f72a1b07f665eb45611a5ce97e` |
| 27 | `theorem` | [mdifferentiable'](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/mdifferentiable--7f439d8382b2f267f4435a5d.md) | 191 | `result-track:7f439d8382b2f267f4435a5ddc5cc637b5981938bcd6f37605b17d3a7381e89a` |
| 28 | `theorem` | [mdifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/mdifferentiable--b1cde2e0d1ff33371d755a27.md) | 195 | `result-track:b1cde2e0d1ff33371d755a27242aebe1c6c49f4aa708e6cb2c1d1aeb4b4a7a52` |
| 29 | `theorem` | [mdifferentiableAt](../../../../../mathematics/Geometry/DifferentialGeometry/SmoothSection/Variant2f95d76d12c6009b12a5dbb26683bd3dbdeacb7c2748e40c8a71fa5180ecbc7d.lean/declarations/mdifferentiableat--a2f163094810278a7a7dd7c3.md) | 199 | `result-track:a2f163094810278a7a7dd7c398f8ff80a665f30098237272910389968e2a0d2f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
