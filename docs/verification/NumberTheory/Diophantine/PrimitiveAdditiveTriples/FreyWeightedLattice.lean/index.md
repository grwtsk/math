# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedLattice

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "17f4e6c0174cebf8ee5c7f1132a6ad653ef87962",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `17f4e6c0174cebf8ee5c7f1132a6ad653ef87962`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.LinearAlgebra.WeightedPermutationIntegral`](../../../../../mathematics/Algebra/LinearAlgebra/WeightedPermutationIntegral.lean/index.md) — import line 11; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyWeightedEnergy`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedEnergy.lean/index.md) — import line 12; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [reverse](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/reverse--8ee9a0c74955c88270087cb5.md) | 24 | `declaration-track:8ee9a0c74955c88270087cb58f5e66869ee13dd14f8a928f23032fdeb93b2ebc` |
| 2 | `def` | [weight](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/weight--cbae627a2b46e89894e83c2f.md) | 27 | `declaration-track:cbae627a2b46e89894e83c2f38e470047f5d81673e31a062a745545e4ab89460` |
| 3 | `def` | [integerMap](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/integermap--e64506c1389ef899b57b3566.md) | 32 | `declaration-track:e64506c1389ef899b57b356680959e6e6510cb4e01ac6768983f3590e339b91f` |
| 4 | `theorem` | [integerMap_at](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/integermap-at--f87f5a78bbb43a27f4224301.md) | 35 | `result-track:f87f5a78bbb43a27f4224301e0b1851f1add08bf2b2fe26fbcc2238c7895ba05` |
| 5 | `theorem` | [integer_image_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/integer-image-iff--f431c6c5015b2a09dc5d87e2.md) | 40 | `result-track:f431c6c5015b2a09dc5d87e2b99bc9a2fc944aaac3d1fd627fbe26ca6b4ee4e1` |
| 6 | `theorem` | [weight_dvd_power](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/weight-dvd-power--721d02c55080c96090ab13d2.md) | 45 | `result-track:721d02c55080c96090ab13d2adb43f0e3f2bdb08ef476e2e7bdf8718a38d9bac` |
| 7 | `theorem` | [integer_clearing_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/integer-clearing-iff--f15b27763cc8e4027fe0bb12.md) | 61 | `result-track:f15b27763cc8e4027fe0bb12858bca8f67223e8876d4e5f23a67d8e4bed37eee` |
| 8 | `def` | [synthesize](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/synthesize--1dd31e61e60032a422df6156.md) | 71 | `declaration-track:1dd31e61e60032a422df61567ae68bfbe722520050a36f68b8c0595e34fb07f8` |
| 9 | `theorem` | [synthesize_coordinate](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/synthesize-coordinate--fed6d42cfe940f10dc85ffa1.md) | 74 | `result-track:fed6d42cfe940f10dc85ffa14cf6881bca0712b3e0e3e71818e0c70bb7ba3b4b` |
| 10 | `theorem` | [synthesize_injective](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/synthesize-injective--1f6c8c242ac3267c5635de23.md) | 80 | `result-track:1f6c8c242ac3267c5635de230efdf0f86f5c0e97725adc5dfc93ac0f55e2355a` |
| 11 | `theorem` | [synthesize_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/synthesize-zero--4a6119da6f61f36f6ada5705.md) | 87 | `result-track:4a6119da6f61f36f6ada5705dc6dc43b42651ec295264ea6bb705f3688b203c6` |
| 12 | `theorem` | [synthesize_add](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/synthesize-add--18c9428f60f039a62d66a4b4.md) | 90 | `result-track:18c9428f60f039a62d66a4b4ecbecc8fdbc17c389327a08e93274f0314d97967` |
| 13 | `def` | [embedding](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/embedding--ea0e44b18b4d864e09e6f432.md) | 95 | `declaration-track:ea0e44b18b4d864e09e6f432fa45c785781992197667143bdcec3911160dadc1` |
| 14 | `def` | [lattice](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/lattice--ca3be42a4791f90858319695.md) | 105 | `declaration-track:ca3be42a4791f90858319695f5ad09acaa6fbff2bf0b13b42a086fdb6462c0f5` |
| 15 | `theorem` | [mem_lattice_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/mem-lattice-iff--b8daa51325cda4b890d751a0.md) | 108 | `result-track:b8daa51325cda4b890d751a0aa2aa0d64a523023eac0139621e42a1aa1eb110d` |
| 16 | `def` | [rationalLift](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/rationallift--aeda5104c4b7c76d15525cc4.md) | 112 | `declaration-track:aeda5104c4b7c76d15525cc438cdac4cc79fcbffb237b552505b6b27e80d3848` |
| 17 | `theorem` | [rationalLift_basis](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/rationallift-basis--5bae3114e59096b2223203ee.md) | 117 | `result-track:5bae3114e59096b2223203eef3d871e359c2702bc14868985b20bfd6d603c4d5` |
| 18 | `theorem` | [rationalLift_synthesize](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/rationallift-synthesize--daae1a8ddea27fb8480cf021.md) | 145 | `result-track:daae1a8ddea27fb8480cf0211c335b985b0c7bd7562d7c5d58429f36ea4d1d29` |
| 19 | `theorem` | [rationalLift_mem_lattice](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/rationallift-mem-lattice--23b1ee62802b0a126864b1ee.md) | 160 | `result-track:23b1ee62802b0a126864b1eeeebb40859b279446b6e98b63005bd3d1fd3c0a87` |
| 20 | `theorem` | [lattice_image_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/lattice-image-iff--bfb318809fe3ecd8338494d2.md) | 168 | `result-track:bfb318809fe3ecd8338494d257a79466b9ebf5dc343165ba09b9ba59cd4140a2` |
| 21 | `theorem` | [inverse_mem_lattice_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/inverse-mem-lattice-iff--2030b84f2a2e760b7801a689.md) | 182 | `result-track:2030b84f2a2e760b7801a68982b683b6dfa69c9b9d3fba005589937aaa94f67b` |
| 22 | `theorem` | [inverse_clearing_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/inverse-clearing-iff--ae3d2179ae86e9f4c25c4f69.md) | 197 | `result-track:ae3d2179ae86e9f4c25c4f69f9286855204896b8729313475f7613718998a651` |
| 23 | `theorem` | [scalar_lattice_clearing_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/scalar-lattice-clearing-iff--003dd7dd31044204aabbe024.md) | 206 | `result-track:003dd7dd31044204aabbe0249b7230d70d0ad3da48110121dc3897a2803df52d` |
| 24 | `theorem` | [native_two_three_not_unimodular](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/native-two-three-not-unimodular--2950cb67fd4f40e647e22223.md) | 225 | `result-track:2950cb67fd4f40e647e22223010bf61c34e17199ca2d79483d5fc95859899a79` |
| 25 | `theorem` | [no_depth_erasure_fixture](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyWeightedLattice.lean/declarations/no-depth-erasure-fixture--49614e7f3700f6f8b8b6bb71.md) | 232 | `result-track:49614e7f3700f6f8b8b6bb715592038ff93ac45776b7984b7f28fb1d0a5e3ef1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
