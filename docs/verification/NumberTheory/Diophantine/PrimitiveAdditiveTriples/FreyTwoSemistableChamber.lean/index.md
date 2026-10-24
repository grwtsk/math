# Verification target: GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyTwoSemistableChamber

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea647742e9dad74403d5bec536369d8f621bc282",
  "lexical_observation_count": 37,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea647742e9dad74403d5bec536369d8f621bc282`.

Source path: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.AlgebraicGeometry.EllipticCurve.IntegralHalfScale`](../../../../../mathematics/Geometry/AlgebraicGeometry/EllipticCurve/IntegralHalfScale.lean/index.md) — import line 12; pinned internal source present.
- [`GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyOddReduction`](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyOddReduction.lean/index.md) — import line 13; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/instance--25cbbfddbe1f7343a80fd519.md) | 26 | `declaration-track:25cbbfddbe1f7343a80fd519a59c4dcdb8fc626c8ff83c34e0dbdf63c237b182` |
| 2 | `structure` | [Chamber](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/chamber--f253ae68f7c666dcc5ee811e.md) | 29 | `declaration-track:f253ae68f7c666dcc5ee811ee82e8aaa7b9c0d0697d63232bec3a9e60ab27e60` |
| 3 | `theorem` | [chamber_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/chamber-iff--9e6861aa72ca725fc8e1939a.md) | 36 | `result-track:9e6861aa72ca725fc8e1939a4cc144719b3525ff863a2d36666132da708eac80` |
| 4 | `theorem` | [Chamber.n_pos](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/chamber-n-pos--dda0ae578a239ebe7e95c7b5.md) | 46 | `result-track:dda0ae578a239ebe7e95c7b5a518ce74d39fb6a9089bd6bb1f92e075fb893406` |
| 5 | `theorem` | [Chamber.a_odd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/chamber-a-odd--1420ab88bbe25d3861feea5e.md) | 51 | `result-track:1420ab88bbe25d3861feea5e7377bea840154c19429cd43ac12652f777ebd0b9` |
| 6 | `theorem` | [Chamber.b_odd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/chamber-b-odd--8c9bc530e0dbab7faa11c64f.md) | 53 | `result-track:8c9bc530e0dbab7faa11c64f3ca14014504394279e063837a33fc70ce605103c` |
| 7 | `theorem` | [Chamber.a_cast](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/chamber-a-cast--21faf9883da6cceb7728871a.md) | 58 | `result-track:21faf9883da6cceb7728871a3d5983da56c30a9d460713b1f081f591e5a18198` |
| 8 | `theorem` | [Chamber.b_cast](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/chamber-b-cast--95fae27e0e95d45c3aae215e.md) | 61 | `result-track:95fae27e0e95d45c3aae215e9f54d9530cff86389f117bb7126b0bd9def75c8c` |
| 9 | `def` | [integralModel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/integralmodel--c2ca1ac94bba38c4a5bdfa4d.md) | 69 | `declaration-track:c2ca1ac94bba38c4a5bdfa4dda8872faf742fe1ddf8bb720ca0edc8c80a27147` |
| 10 | `def` | [changedCurve](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/changedcurve--7eeab0ce0057f1d1fc6ffc20.md) | 72 | `declaration-track:7eeab0ce0057f1d1fc6ffc2022d363ba87dd3ea2f91286d195017a865c88b47e` |
| 11 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/instance--9df152d26a2a8d70d55fc4e4.md) | 75 | `declaration-track:9df152d26a2a8d70d55fc4e4313f4391646b5955e78a2a9474808b1b250d5898` |
| 12 | `theorem` | [integralModel_baseChange](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/integralmodel-basechange--c17856a2fb7824d9e484a551.md) | 79 | `result-track:c17856a2fb7824d9e484a551530745d5e81e3a51d92c8dfb8f2c43df406381fe` |
| 13 | `theorem` | [changedCurve_j](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/changedcurve-j--c376fdc12ce1717b90fd1f38.md) | 90 | `result-track:c376fdc12ce1717b90fd1f3884681bd623054d6e146ad731b4af53526ebf9ff5` |
| 14 | `theorem` | [c4_scaling](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/c4-scaling--257598c69606ec8ef8e719b7.md) | 93 | `result-track:257598c69606ec8ef8e719b782492d1d44faf367f85ad55fc7cbe8d543d06f7e` |
| 15 | `theorem` | [delta_as_square](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/delta-as-square--a04356fbcd02e443eabebe10.md) | 99 | `result-track:a04356fbcd02e443eabebe10d41a9aaaa51922def156d2649cc79f37244514e0` |
| 16 | `theorem` | [delta_scaling](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/delta-scaling--c9eff8da276778f291773998.md) | 103 | `result-track:c9eff8da276778f291773998e411bbeb07ec2b985665ede363b582eb215173e6` |
| 17 | `def` | [localModel](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/localmodel--575aa6f2401cff1a61a42902.md) | 110 | `declaration-track:575aa6f2401cff1a61a4290299d4d85dd36c7c7b8287cd35ea3cf9c3d3201744` |
| 18 | `theorem` | [localModel_baseChange](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/localmodel-basechange--f6c9b1fdf52d1619b98d4e44.md) | 113 | `result-track:f6c9b1fdf52d1619b98d4e44c04840ac106c91c01821f756f395edd15bab86d6` |
| 19 | `theorem` | [local_c4_unit](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/local-c4-unit--2564f2d2ad53793f07b879d6.md) | 121 | `result-track:2564f2d2ad53793f07b879d670712d5e31239242638dbd25d174226da9b0f79c` |
| 20 | `theorem` | [local_delta_unit_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/local-delta-unit-iff--791da48f4e6ed53383a8aa22.md) | 125 | `result-track:791da48f4e6ed53383a8aa228a95802dfbf21fce3b875f14edc3c4cbbb5732e0` |
| 21 | `theorem` | [minimal_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/minimal-at-two--37f57f3d39577237f24b1f1d.md) | 131 | `result-track:37f57f3d39577237f24b1f1d26fe92a432b380d17a16636573cad47ec4db20e4` |
| 22 | `theorem` | [good_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/good-at-two--fe5bb8bdd5439067210c4a58.md) | 136 | `result-track:fe5bb8bdd5439067210c4a58c190bde65c0dfcc9899825a1c72902f35e5831d4` |
| 23 | `theorem` | [multiplicative_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/multiplicative-at-two--078de112b2af805977447f38.md) | 142 | `result-track:078de112b2af805977447f38e96fdf9770821079e8da0687fbf3c228695480fa` |
| 24 | `theorem` | [good_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/good-iff--fc37887472589dff6f4246c9.md) | 151 | `result-track:fc37887472589dff6f4246c9219dc21a21501fb27c228104854ca8450309d961` |
| 25 | `theorem` | [multiplicative_iff](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/multiplicative-iff--82ad6085ffc5116236f911a5.md) | 158 | `result-track:82ad6085ffc5116236f911a550bc82954fcfe4265db3af3df27eac1d56c80ac1` |
| 26 | `theorem` | [multiplicative_iff_32_dvd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/multiplicative-iff-32-dvd--c7da53f9b20cea9378981dda.md) | 167 | `result-track:c7da53f9b20cea9378981dda91b774fa7203f359d4ec5e8718f59b3d74fe0c13` |
| 27 | `theorem` | [good_iff_not_32_dvd](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/good-iff-not-32-dvd--b4ab369a361e2cf7e390f371.md) | 172 | `result-track:b4ab369a361e2cf7e390f371789bf8b7643d86e8cd15d97e47afe9edc1cbf3c9` |
| 28 | `theorem` | [not_additive_at_two](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/not-additive-at-two--01921b5f1930a4e4f4536ca5.md) | 177 | `result-track:01921b5f1930a4e4f4536ca58a51aea3800d6eae4915a11f6821516abc32783e` |
| 29 | `theorem` | [depth_two_zero](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/depth-two-zero--f9ab94cba11462718fd9a9df.md) | 183 | `result-track:f9ab94cba11462718fd9a9dfb587d7ef96ae920651a7aacc69bf4a8509f6450e` |
| 30 | `theorem` | [delta_natAbs](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/delta-natabs--b737a96620c4b493737b9258.md) | 189 | `result-track:b737a96620c4b493737b9258181059369947089240d2bf6462474392886a8061` |
| 31 | `theorem` | [minimal_delta_depth](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/minimal-delta-depth--119f66cd9fd673754eaec0bb.md) | 195 | `result-track:119f66cd9fd673754eaec0bb415cb3fd2fd8fc96881e748303362cd9754e3532` |
| 32 | `theorem` | [source_c_depth](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/source-c-depth--84aea61c3332a8b42ac62c06.md) | 204 | `result-track:84aea61c3332a8b42ac62c061d0031219405b30d563ae8ba8819d221f31a1549` |
| 33 | `theorem` | [minimal_depth_balance](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/minimal-depth-balance--038fca6694c57f2325dcdeb9.md) | 213 | `result-track:038fca6694c57f2325dcdeb978b70faef07a9e860f75a8b98cb4cc181726639a` |
| 34 | `theorem` | [marked_j_agrees](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/marked-j-agrees--152580e9224531c3054e7c7a.md) | 220 | `result-track:152580e9224531c3054e7c7ab3fcd951a4760a29b458659ace676a2a34955f64` |
| 35 | `def` | [unitChamber](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/unitchamber--e1ea151bebe9ee4c7069afdb.md) | 227 | `declaration-track:e1ea151bebe9ee4c7069afdb0d8ab0ba7529ff8af64d98aacbc5662f50605a1b` |
| 36 | `theorem` | [first_family_delta](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/first-family-delta--acefff5f68d6df0d33f962e8.md) | 234 | `result-track:acefff5f68d6df0d33f962e894d33f16b59fde5f63b652b3f27208d2e050acb5` |
| 37 | `theorem` | [second_family_delta](../../../../../mathematics/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyTwoSemistableChamber.lean/declarations/second-family-delta--9fc93d5e6dff0d2cd9dfc9ae.md) | 238 | `result-track:9fc93d5e6dff0d2cd9dfc9ae9c39315ad9fe3ec0bcee9ccfc83ebb6ac084e953` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
