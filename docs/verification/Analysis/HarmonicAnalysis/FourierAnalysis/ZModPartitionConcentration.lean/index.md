# Verification target: GRWTSK.Analysis.Fourier.ZModPartitionConcentration

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b789d9a7afccd1f449a4acf909017b7471b9a465",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/index.md) · [Full source](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b789d9a7afccd1f449a4acf909017b7471b9a465`.

Source path: `GRWTSK/Analysis/Fourier/ZModPartitionConcentration.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Fourier/ZModPartitionConcentration.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Fourier.ZModBalancedPartition`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModBalancedPartition.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.Fourier.ZModConcentratedFrequencies`](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModConcentratedFrequencies.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Combinatorics.Sequences.BalancedPartitionTails`](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sequences/BalancedPartitionTails.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [sum_parts_pairs](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/sum-parts-pairs--5b61ffde0fa28ce7b2c2b4c1.md) | 26 | `result-track:5b61ffde0fa28ce7b2c2b4c16d811648363a28898dfdddd27f32ce43af03b85a` |
| 2 | `theorem` | [balanced_remainder_size_lower](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/balanced-remainder-size-lower--d2f5eb41f129d126fe75a31c.md) | 46 | `result-track:d2f5eb41f129d126fe75a31cd1b60b753895bca9eefc24947c7a21ff06ab3072` |
| 3 | `theorem` | [row_sum_lower](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/row-sum-lower--e400b665c8901d23f87b43e3.md) | 64 | `result-track:e400b665c8901d23f87b43e31c2c759501f1795808d505c11edf1bc106f43ec6` |
| 4 | `theorem` | [far_labels_card](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/far-labels-card--45b968a6e8b68cf9d5fb01f4.md) | 79 | `result-track:45b968a6e8b68cf9d5fb01f4f34bb038a5426b0441587226cf7da7104de56741` |
| 5 | `theorem` | [balanced_energy_ge_rows](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/balanced-energy-ge-rows--78cb0fb40b94a52ce70be119.md) | 118 | `result-track:78cb0fb40b94a52ce70be1195a42adc7833916650353474607921c50b4cb09dc` |
| 6 | `theorem` | [energy_ge_two_of_far_counts](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/energy-ge-two-of-far-counts--de1147f471047c6311005dca.md) | 136 | `result-track:de1147f471047c6311005dca9db0d8464b1ee21de326f62315a35ed17efab61d` |
| 7 | `theorem` | [energy_ge_two_of_near_counts](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/energy-ge-two-of-near-counts--f95ad89531bbbde2bc7cf73e.md) | 163 | `result-track:f95ad89531bbbde2bc7cf73e3241d094c38f78f9b16a521280849f07c381e98d` |
| 8 | `theorem` | [source_union_exp_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/source-union-exp-le--b56dbd33f02c6fa92699d803.md) | 231 | `result-track:b56dbd33f02c6fa92699d8037fd6a83749f79e381e6e1ea6a05d4c6e744fb244` |
| 9 | `theorem` | [eventProbability_exists_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/eventprobability-exists-le--db1e206ee4debf1f7a78541f.md) | 256 | `result-track:db1e206ee4debf1f7a78541fbdcff1a3f8d056f6a0ec1f808344760a11321a08` |
| 10 | `theorem` | [eventProbability_mono](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/eventprobability-mono--34ffba0397d773ed01ec36ba.md) | 272 | `result-track:34ffba0397d773ed01ec36ba9a3c7bc80d882e744c527abc068a4c2258dc72da` |
| 11 | `theorem` | [partitionProbabilityReal_eq_event](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/partitionprobabilityreal-eq-event--e8f4fa8860f7fc2da3900eee.md) | 286 | `result-track:e8f4fa8860f7fc2da3900eee13bf39f25a1b75c97ae0073a5eb95bb0db805354` |
| 12 | `theorem` | [far_count_bad_probability_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/far-count-bad-probability-le--6a78a5554b31b521b1dc269d.md) | 292 | `result-track:6a78a5554b31b521b1dc269d2131cfe2f1f673a24d5612aff2186cbf70bc9bf8` |
| 13 | `theorem` | [nonconcentrated_probability_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/nonconcentrated-probability-le--c2bf987a76471da8a39d1f99.md) | 340 | `result-track:c2bf987a76471da8a39d1f9913decbe18fce1035e60d5a85ab0e17b5bd0fef3c` |
| 14 | `theorem` | [near_labels_card](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/near-labels-card--d02f169fac771136b02b5042.md) | 372 | `result-track:d02f169fac771136b02b5042b5574074290ec86124ec2345e23307a7d5dadd17` |
| 15 | `theorem` | [near_count_bad_probability_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/near-count-bad-probability-le--7800aa3562725dd2e97d4c25.md) | 393 | `result-track:7800aa3562725dd2e97d4c25d836ced36a43debbe1f010ce3b4ef9c1e87a1f4b` |
| 16 | `theorem` | [concentrated_probability_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/concentrated-probability-le--f2f5dcb7a837335bb1eba69c.md) | 439 | `result-track:f2f5dcb7a837335bb1eba69cc0fb207a575c591daaa9a58c7ab8f6c6efa8d29b` |
| 17 | `theorem` | [outside_smallEnergy_probability_le](../../../../../mathematics/Analysis/HarmonicAnalysis/FourierAnalysis/ZModPartitionConcentration.lean/declarations/outside-smallenergy-probability-le--c694e9161b0cb2553462e811.md) | 491 | `result-track:c694e9161b0cb2553462e8112a7dd9ec005e994a827bce86b5ec36a0b0ab6cd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
