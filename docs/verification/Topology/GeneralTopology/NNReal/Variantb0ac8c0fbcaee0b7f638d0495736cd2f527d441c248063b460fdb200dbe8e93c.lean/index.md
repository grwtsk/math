# Verification target: GRWTSK.Topology.GeneralTopology.NNReal.Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9c0da48c4ccc71fa99973a41e66746de24100ee8",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9c0da48c4ccc71fa99973a41e66746de24100ee8`.

Source path: `GRWTSK/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.InfiniteSum.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.InfiniteSum.Ring` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Instances.Real` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/instance--0b182b89a797dfe37afb8a57.md) | 61 | `declaration-track:0b182b89a797dfe37afb8a573f58a35bf66ee6b1fadeca7add86e55c5ab080a0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/instance--222dd5f58b618069370472f9.md) | 64 | `declaration-track:222dd5f58b618069370472f9e94e06c839c75cf499ed900474cc82bd9c85fbb2` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/instance--76b06260d9aa37d853e2880c.md) | 68 | `declaration-track:76b06260d9aa37d853e2880c95f7a363268813ecf71f2a7115faac35b988a4d8` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/instance--308b0b5e6dbea5791349962a.md) | 71 | `declaration-track:308b0b5e6dbea5791349962a0362fe9cbc290d3b14d67da89784f85682fff5d4` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/instance--6a596bb2d147da3c6f556534.md) | 74 | `declaration-track:6a596bb2d147da3c6f5565345763980e62ebef6064202fc01bfbf0f6e5cd2040` |
| 6 | `theorem` | [_root_.continuous_real_toNNReal](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/root-continuous-real-tonnreal--347c2ca7702f2d9576e997b7.md) | 83 | `result-track:347c2ca7702f2d9576e997b7162775d507798b339b40ef3fad6e17c5f4b0ccf1` |
| 7 | `theorem` | [continuous_coe](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/continuous-coe--51ec5a61b43c0679579af55d.md) | 87 | `result-track:51ec5a61b43c0679579af55d07a3287f5998d3dfb45b17ecea4024fb1eda6e7b` |
| 8 | `def` | [_root_.ContinuousMap.coeNNRealReal](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/root-continuousmap-coennrealreal--39436c7bd4fa64ced0b57dbe.md) | 93 | `declaration-track:39436c7bd4fa64ced0b57dbeef8bb23444ff6c85ed460925d5dc4d7455e33ebc` |
| 9 | `instance` | [ContinuousMap.canLift](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/continuousmap-canlift--9cb5424e1bab4504011a1652.md) | 98 | `declaration-track:9cb5424e1bab4504011a1652490f2fc6fc5c5d5beb5b9e096c67677586ffe38d` |
| 10 | `theorem` | [tendsto_coe](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/tendsto-coe--13c095ecf88ef24cff2e093f.md) | 104 | `result-track:13c095ecf88ef24cff2e093fbea767d87beb973b374754ac028cc929d641998c` |
| 11 | `theorem` | [tendsto_coe'](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/tendsto-coe--a73ab9388f0fd53be70a32b8.md) | 109 | `result-track:a73ab9388f0fd53be70a32b8b23f2ead97e70708b7e6db50d07f0040617fcd68` |
| 12 | `theorem` | [map_coe_atTop](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/map-coe-attop--9e8918d4167935805644538e.md) | 114 | `result-track:9e8918d4167935805644538e2502301ec597840d7425c69b3ed7fdd7af8d6fb0` |
| 13 | `theorem` | [comap_coe_atTop](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/comap-coe-attop--cf8185e1abc2f3e50cecf5b9.md) | 117 | `result-track:cf8185e1abc2f3e50cecf5b93eccc36beba99c7cd5adbf5005ff193edc0de9d3` |
| 14 | `theorem` | [tendsto_coe_atTop](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/tendsto-coe-attop--e3b2c775447e81de2c8c36d6.md) | 121 | `result-track:e3b2c775447e81de2c8c36d612c70fc25c3b609765245104997154da191dc56e` |
| 15 | `theorem` | [_root_.tendsto_real_toNNReal](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/root-tendsto-real-tonnreal--5de59001606c35baf9c63138.md) | 126 | `result-track:5de59001606c35baf9c63138b565f99d9e455e3c0e04b1784dc00d107b7bdf7b` |
| 16 | `theorem` | [_root_.tendsto_real_toNNReal_atTop](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/root-tendsto-real-tonnreal-attop--04fb50416cbe817329d0a13e.md) | 131 | `result-track:04fb50416cbe817329d0a13e62b1edd870235c73196ffabe99b8de2790840be6` |
| 17 | `theorem` | [nhds_zero](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/nhds-zero--39ae66027de21f3f9c3bd96e.md) | 136 | `result-track:39ae66027de21f3f9c3bd96e9b170b5f2a00864240ff6e33320ad784cdab030c` |
| 18 | `theorem` | [nhds_zero_basis](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/nhds-zero-basis--9764e783f17a5a921c229025.md) | 140 | `result-track:9764e783f17a5a921c229025a5215f0b5eca03bfc40197269733408b23c32fc8` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/instance--918fd84b6bb67adfbb3c7d39.md) | 144 | `declaration-track:918fd84b6bb67adfbb3c7d3950b021f25f2ac3957369d6654616f6277fb2a505` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/instance--d3cf95601808715c3e0e44da.md) | 147 | `declaration-track:d3cf95601808715c3e0e44da6435041bc642410a4b6f0de72e433d04fbd35794` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/instance--b1459abcb3899f6a08c27ca6.md) | 149 | `declaration-track:b1459abcb3899f6a08c27ca6222975347078c5ed692f7b7296a3079d9a8fe620` |
| 22 | `theorem` | [hasSum_coe](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/hassum-coe--4c3b1b5db6068d3cc4fde81b.md) | 154 | `result-track:4c3b1b5db6068d3cc4fde81b04c39ccce3657b3bfb6199e8c3927ab88fa958e5` |
| 23 | `theorem` | [_root_.HasSum.toNNReal](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/root-hassum-tonnreal--b2d395fff8ca8c18bebb730b.md) | 158 | `result-track:b2d395fff8ca8c18bebb730b7e01fcae8bff4c262cde24651e016b8f14f3dba9` |
| 24 | `theorem` | [hasSum_real_toNNReal_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/hassum-real-tonnreal-of-nonneg--77c6ed1c32a335ca2a303de6.md) | 164 | `result-track:77c6ed1c32a335ca2a303de62d2067ef39dbbc6a29c4a15d95beb0d51301a9be` |
| 25 | `theorem` | [summable_coe](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/summable-coe--7030cb2b2c40118a2a717152.md) | 170 | `result-track:7030cb2b2c40118a2a717152b919f6f707c5ccd3dec27b9adb5e5df430ac4041` |
| 26 | `theorem` | [summable_mk](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/summable-mk--af6407e90dd34f3137918d1d.md) | 176 | `result-track:af6407e90dd34f3137918d1da36e12b69ebb1a01152409a05a7263972cc1c57c` |
| 27 | `theorem` | [coe_tsum](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/coe-tsum--f2d02a1b76376887013d9a5f.md) | 184 | `result-track:f2d02a1b76376887013d9a5f563a9e0865022a011362499a3aa22b11985e20b3` |
| 28 | `theorem` | [coe_tsum_of_nonneg](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/coe-tsum-of-nonneg--977f2828752d97859e94699b.md) | 189 | `result-track:977f2828752d97859e94699bddef994ec7bdbdcbc30139bd8249bd8726a35479` |
| 29 | `theorem` | [tsum_mul_left](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/tsum-mul-left--0322cd5e503577dc0e803ee7.md) | 194 | `result-track:0322cd5e503577dc0e803ee7467bff8d7ac7a532be1bc7846213a41e5013b4ee` |
| 30 | `theorem` | [tsum_mul_right](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/tsum-mul-right--797c6ba684eedf5655a59f9a.md) | 198 | `result-track:797c6ba684eedf5655a59f9a1d504b4172f1f9f31b912a740575d47089c87d11` |
| 31 | `theorem` | [summable_comp_injective](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/summable-comp-injective--807b0bb9599d034d411c5334.md) | 202 | `result-track:807b0bb9599d034d411c5334ba84a26f855a5d6d82ef1734211a267823991a6b` |
| 32 | `theorem` | [summable_nat_add](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/summable-nat-add--aeff46457892931ed6789ed1.md) | 208 | `result-track:aeff46457892931ed6789ed1c5a4811a29c942ce226ea35701b20f0794b99dbf` |
| 33 | `theorem` | [summable_nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/summable-nat-add-iff--61a5c8e52e56937fefd5f4cb.md) | 212 | `result-track:61a5c8e52e56937fefd5f4cbae24e1cfd0df84a6d055e010acf463b446112b8f` |
| 34 | `theorem` | [hasSum_nat_add_iff](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/hassum-nat-add-iff--2f6266ef9a0893a6ed4f959f.md) | 218 | `result-track:2f6266ef9a0893a6ed4f959f91d8d5d5602b68e1b10407bd4e1d656d6f92b91c` |
| 35 | `theorem` | [sum_add_tsum_nat_add](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/sum-add-tsum-nat-add--418b4318e7f98fc7ecee4ead.md) | 223 | `result-track:418b4318e7f98fc7ecee4eadd7bf0ae31819fa8cebf15a73aea51f8fe16f6b01` |
| 36 | `theorem` | [iInf_real_pos_eq_iInf_nnreal_pos](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/iinf-real-pos-eq-iinf-nnreal-pos--7d00be868024267817e60068.md) | 228 | `result-track:7d00be868024267817e600684ea4808e8d03148e4440ef45928208a73ad6e70c` |
| 37 | `theorem` | [tendsto_cofinite_zero_of_summable](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/tendsto-cofinite-zero-of-summable--04595694d47bb8e881440da7.md) | 235 | `result-track:04595694d47bb8e881440da79809b7cd573e0455d0581d245bd56b14b5a5e892` |
| 38 | `theorem` | [tendsto_atTop_zero_of_summable](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/tendsto-attop-zero-of-summable--96b4ec2a37393decc35e89a4.md) | 241 | `result-track:96b4ec2a37393decc35e89a4c48ca92bff52b73a6d05c6dcaf4a465e16ab438c` |
| 39 | `theorem` | [tendsto_tsum_compl_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/tendsto-tsum-compl-attop-zero--b51b5de831bb6845f27570e2.md) | 248 | `result-track:b51b5de831bb6845f27570e2496b3993880b478c2d7bd0e15919b9073bc5ba9a` |
| 40 | `def` | [powOrderIso](../../../../../mathematics/Topology/GeneralTopology/NNReal/Variantb0ac8c0fbcaee0b7f638d0495736cd2f527d441c248063b460fdb200dbe8e93c.lean/declarations/poworderiso--923cc6b4d1060800ebc5cf8e.md) | 255 | `declaration-track:923cc6b4d1060800ebc5cf8ee0ee5ab8dad051852117b36b43c0955131cd4e4f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
