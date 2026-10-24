# Verification target: GRWTSK.NumberTheory.Farey.DynamicSoficSpectralCover

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5881a2f2caf1aa0b1ec9267376cecb5895327afe",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5881a2f2caf1aa0b1ec9267376cecb5895327afe`.

Source path: `GRWTSK/NumberTheory/Farey/DynamicSoficSpectralCover.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Farey/DynamicSoficSpectralCover.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Farey.HeatFlowCompressionSofic`](../../../../mathematics/NumberTheory/Farey/HeatFlowCompressionSofic.lean/index.md) — import line 8; pinned internal source present.
- [`GRWTSK.Logic.InformationLoss.DynamicPartitionRecovery`](../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/DynamicPartitionRecovery.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Data.Fintype.Basic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [no_finite_state_initial_recovery_from_unanchored_difference](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/no-finite-state-initial-recovery-from-unanchored-difference--2d1558f208c32d8af01385b5.md) | 46 | `result-track:2d1558f208c32d8af01385b570b9bb25bdbb415eabdfe6335532d5e66cab15f4` |
| 2 | `theorem` | [readout_factorsThrough_anchoredDifference](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/readout-factorsthrough-anchoreddifference--64dfe84ee018426f6c380cac.md) | 70 | `result-track:64dfe84ee018426f6c380cacddb14de0ad6a5bceaeedbda87d0f33c8acb1d344` |
| 3 | `structure` | [DynamicPartition](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/dynamicpartition--9040609b1e620120a85c72c8.md) | 82 | `declaration-track:9040609b1e620120a85c72c8fae7530ab2eb21e120a98fc6f754a971a83937a0` |
| 4 | `def` | [RecoverableAtStage](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/recoverableatstage--11c2f2d59a29f6c212d045a1.md) | 89 | `declaration-track:11c2f2d59a29f6c212d045a18a757ea6fb22835132d7d85bf965d832de3a80d5` |
| 5 | `theorem` | [not_recoverableAtStage_of_collision](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/not-recoverableatstage-of-collision--e79fb07d32e197764caaf127.md) | 96 | `result-track:e79fb07d32e197764caaf1271231cc9586a69c7aa159f7e9e565113bb3bf06c4` |
| 6 | `def` | [ProportionRecoverableAtStage](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/proportionrecoverableatstage--296ba9fa68f64b00cea00df1.md) | 108 | `declaration-track:296ba9fa68f64b00cea00df1d8799ab83b3c3791abbd371d78bdb8c49eb2914c` |
| 7 | `theorem` | [proportion_not_compressible_at_collision](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/proportion-not-compressible-at-collision--e019257af66421a12dc2f54d.md) | 115 | `result-track:e019257af66421a12dc2f54df4987708dcc0b439a4fa961b5e9c9f17f678c9a1` |
| 8 | `structure` | [SoficGraph](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/soficgraph--edaa4629d9a6cabaad844d95.md) | 127 | `declaration-track:edaa4629d9a6cabaad844d95b8764e430ddaa67cba2f0d17ba8d67e4ef2aa57b` |
| 9 | `structure` | [DynamicSoficPresentation](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/dynamicsoficpresentation--a423f04d808241c3e3aeff3e.md) | 132 | `declaration-track:a423f04d808241c3e3aeff3ebf6a900afc3de77083cc8be8e5e02c6ee17f4a7f` |
| 10 | `theorem` | [trace_factorsThrough_partition](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/trace-factorsthrough-partition--35009dd2538392e44b8ddb69.md) | 145 | `result-track:35009dd2538392e44b8ddb692ddd7adfe459b7159b240b723966080bd8c365d2` |
| 11 | `theorem` | [no_partition_sofic_trace_cover_of_collision](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/no-partition-sofic-trace-cover-of-collision--ea6bf4c55bfca64a8536b3f6.md) | 159 | `result-track:ea6bf4c55bfca64a8536b3f681129b248d35b0b0802dafef7ef2da92e4319877` |
| 12 | `structure` | [ZeroProblem](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/zeroproblem--f6349fa8d0ce5361623cb3d6.md) | 178 | `declaration-track:f6349fa8d0ce5361623cb3d6ca8ebe1a9c2d4b14b9e3e3419e046ed1209249d6` |
| 13 | `def` | [ZeroProblem.Hypothesis](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/zeroproblem-hypothesis--c1685ee718cb7f1195e42fef.md) | 182 | `declaration-track:c1685ee718cb7f1195e42fef79ceebea5433020d2c3b2a05e3c30af2ba6191ea` |
| 14 | `structure` | [SpectralZeroCover](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/spectralzerocover--d78e3a76cb850c4209fdd80b.md) | 186 | `declaration-track:d78e3a76cb850c4209fdd80b4975a40bfbe134c1d7880f29ab00729f51bce963` |
| 15 | `theorem` | [SpectralZeroCover.transport_hypothesis](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/spectralzerocover-transport-hypothesis--37f4a99c93d99f30af3b17ab.md) | 198 | `result-track:37f4a99c93d99f30af3b17abcc6e439509ef623c86792c8c325e70b084e53c22` |
| 16 | `def` | [GeneralizedHypothesis](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/generalizedhypothesis--1dc3a268d3d7850d0f5d6171.md) | 209 | `declaration-track:1dc3a268d3d7850d0f5d61717c754ad98cc5dd0afd6702c9134aa69ceb4adb67` |
| 17 | `structure` | [SpectralCoverFamily](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/spectralcoverfamily--9eae84684784f9afdab371cb.md) | 215 | `declaration-track:9eae84684784f9afdab371cb12ceb8708feb67783d1e16346396a6afd87fad75` |
| 18 | `theorem` | [rh_implies_generalized_of_spectralCoverFamily](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/rh-implies-generalized-of-spectralcoverfamily--ab35ebf6453906a06fdd1b5d.md) | 223 | `result-track:ab35ebf6453906a06fdd1b5de80884f5658c056bec576c12575f118c7141a612` |
| 19 | `structure` | [BaseSpecialization](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/basespecialization--d23ee39dfca743c9246c2c60.md) | 238 | `declaration-track:d23ee39dfca743c9246c2c607173d201eed82cbf64a4d331d70ce38d1a6eb57b` |
| 20 | `def` | [BaseSpecialization.ofMap](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/basespecialization-ofmap--6df94bb5e2a655990b4bc2e0.md) | 253 | `declaration-track:6df94bb5e2a655990b4bc2e0cba52ef39f1587910aec687c3acabce2dc532c58` |
| 21 | `theorem` | [generalized_implies_base_of_map](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/generalized-implies-base-of-map--05d074b8b0b3f1047acb0b2a.md) | 271 | `result-track:05d074b8b0b3f1047acb0b2aeea621942cae149c75b584eb67ab2732851a29c0` |
| 22 | `theorem` | [generalized_implies_base_of_member_specialization](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/generalized-implies-base-of-member-specialization--2d0de3a1e1f2c7c14052ba22.md) | 293 | `result-track:2d0de3a1e1f2c7c14052ba2277f3f630915ef417854286d17fbbacac4a4e64ff` |
| 23 | `theorem` | [rh_iff_generalized_of_spectralCovers_and_member_specialization](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/rh-iff-generalized-of-spectralcovers-and-member-specialization--d51379e224cd4e4c8ee79f11.md) | 312 | `result-track:d51379e224cd4e4c8ee79f116cdc569ae9b016c9390a568912fe9d54de326d0e` |
| 24 | `theorem` | [rh_iff_generalized_of_spectralCovers_and_specialization](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/rh-iff-generalized-of-spectralcovers-and-specialization--a17357912304c07d817f4d0e.md) | 327 | `result-track:a17357912304c07d817f4d0e342c3628a2fc334a874eb42f4599efada5913479` |
| 25 | `structure` | [DynamicSoficSpectralSystem](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/dynamicsoficspectralsystem--bdd5af2a0e69f0e17f4c1856.md) | 340 | `declaration-track:bdd5af2a0e69f0e17f4c185686ce4cd0d382059f223f80fc207c8a4ff97a857b` |
| 26 | `theorem` | [DynamicSoficSpectralSystem.trace_factorsThrough_stage](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/dynamicsoficspectralsystem-trace-factorsthrough-stage--3ca77bc69356fa3a3da64489.md) | 354 | `result-track:3ca77bc69356fa3a3da6448987cd1a8fc90cd62c052a4cd20bbd6a1df660d502` |
| 27 | `theorem` | [DynamicSoficSpectralSystem.no_trace_collision](../../../../mathematics/NumberTheory/Farey/DynamicSoficSpectralCover.lean/declarations/dynamicsoficspectralsystem-no-trace-collision--29cbb60141820457732a9890.md) | 369 | `result-track:29cbb60141820457732a98904fc40850c42aabd07b16b48cd55856891a7e1abf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
