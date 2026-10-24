# Verification target: GRWTSK.NumberTheory.Moebius.LogarithmicPickupSampling

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1eb0558ffdaf4ae826fea883a8c60a3e3fefdb5e",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/LogarithmicPickupSampling.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1eb0558ffdaf4ae826fea883a8c60a3e3fefdb5e`.

Source path: `GRWTSK/NumberTheory/Moebius/LogarithmicPickupSampling.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/LogarithmicPickupSampling.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.CofinalEnergyDamping`](../../../../mathematics/NumberTheory/Moebius/CofinalEnergyDamping.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sampledPickup](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/sampledpickup--7e116c3df107fa2d7a573f12.md) | 31 | `declaration-track:7e116c3df107fa2d7a573f122ed63f00c069564112be8f023d292764b47cca03` |
| 2 | `theorem` | [sampledPickup_measurable](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/sampledpickup-measurable--83e1d204317607b5e06a99e8.md) | 34 | `result-track:83e1d204317607b5e06a99e87a7262d2031d966192b0a171a3408e832d531097` |
| 3 | `theorem` | [floor_exp_ge_one](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/floor-exp-ge-one--1ac1ccbde2a0915a5c1ef8ba.md) | 39 | `result-track:1ac1ccbde2a0915a5c1ef8ba0e6c606b33c58c222808527911327ccc1f531382` |
| 4 | `theorem` | [wholePickup_log_nat](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/wholepickup-log-nat--5c86bde73e83ceb6e5f86b8e.md) | 44 | `result-track:5c86bde73e83ceb6e5f86b8e60282adad82889f64a0a5744570c01c327a12b9e` |
| 5 | `theorem` | [sampledPickup_zero](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/sampledpickup-zero--fd2d58f5004ab8bc0087cf52.md) | 54 | `result-track:fd2d58f5004ab8bc0087cf52566b1f8bc751e62d1490b1a6518b43227f801e6c` |
| 6 | `theorem` | [sampledPickup_at_log_nat](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/sampledpickup-at-log-nat--49af1fbe1bb6ab4ee1c6feda.md) | 58 | `result-track:49af1fbe1bb6ab4ee1c6feda7f17d3357ef88993891a2d3bf7c55fb3b767808c` |
| 7 | `theorem` | [sampledPickup_on_cell](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/sampledpickup-on-cell--2c4895635d7a9a76488734af.md) | 65 | `result-track:2c4895635d7a9a76488734afe36ae645f2174162419cd3b8c693500bef023b0e` |
| 8 | `theorem` | [sampling_difference](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/sampling-difference--7d9624cb4bf8a8f097cfc9a5.md) | 79 | `result-track:7d9624cb4bf8a8f097cfc9a5b582806aafad426666e7f1178b929dfb268b2c32` |
| 9 | `theorem` | [cell_drift_bound](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/cell-drift-bound--1100ac966c82c1eda672527c.md) | 93 | `result-track:1100ac966c82c1eda672527c9383edf823bba5b66b4ac91daace82d6fc5b3a97` |
| 10 | `theorem` | [sampling_difference_abs_le](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/sampling-difference-abs-le--bc0653c52089c4301c10a495.md) | 113 | `result-track:bc0653c52089c4301c10a4952af9a961d545b46ee56c7babc5dc645edc953a1d` |
| 11 | `theorem` | [weighted_sampling_error_le](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/weighted-sampling-error-le--1bb191ca909e390aa32d0bac.md) | 133 | `result-track:1bb191ca909e390aa32d0bac96f5c6a557220c5bfd65e785ae035688b8d227a2` |
| 12 | `theorem` | [weighted_sampling_error_measurable](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/weighted-sampling-error-measurable--195dc5a6a36791259e61954d.md) | 147 | `result-track:195dc5a6a36791259e61954d816d025f3952c816fc3e9b29f1e3308c96ca1fd7` |
| 13 | `theorem` | [weighted_sampling_error_integrable](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/weighted-sampling-error-integrable--a6f71315a5e032e8503b84dd.md) | 154 | `result-track:a6f71315a5e032e8503b84dd4d0b58b79330573d7d7a0d276312aadf8243c871` |
| 14 | `theorem` | [weighted_sampling_error_integral_le](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/weighted-sampling-error-integral-le--dd295c8499923f964baf943a.md) | 167 | `result-track:dd295c8499923f964baf943aa0918080455d88ea0cba63d874f76e48758e90a5` |
| 15 | `theorem` | [undamped_sampling_error](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/undamped-sampling-error--84bcf363b5b02d81347e684f.md) | 184 | `result-track:84bcf363b5b02d81347e684f7bc7f560c78353fcae8c9a346567b1bef23447cc` |
| 16 | `theorem` | [weighted_square_comparisons](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/weighted-square-comparisons--7798857494148349ac8921d8.md) | 192 | `result-track:7798857494148349ac8921d85a6dee4be82390707ad507713dd2f3879e1aef1d` |
| 17 | `theorem` | [weighted_integrable_iff_sampled](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/weighted-integrable-iff-sampled--42aa1b813326453a665b2c6d.md) | 210 | `result-track:42aa1b813326453a665b2c6deb649d9399a53f5b0a28177ac434186d2bd3bab1` |
| 18 | `theorem` | [actual_energy_le_sampled](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/actual-energy-le-sampled--a59dd9f108ab5371637887f3.md) | 235 | `result-track:a59dd9f108ab5371637887f348698dd6e8b635cf454bc251f25e08f0792f5dad` |
| 19 | `theorem` | [sampled_energy_le_actual](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/sampled-energy-le-actual--c163db7cf2f46f59bec7471a.md) | 254 | `result-track:c163db7cf2f46f59bec7471ae62fb10db4b753c034ad59a5265874642b052830` |
| 20 | `theorem` | [sampled_weighted_square_integrableOn_Icc](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/sampled-weighted-square-integrableon-icc--e401cebee565a2a889f6ecd0.md) | 273 | `result-track:e401cebee565a2a889f6ecd08424bd0ae2f8e24ec268b4944afd35fb75a7be48` |
| 21 | `theorem` | [finite_weighted_comparisons](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/finite-weighted-comparisons--7fdffe79916ced70407fe762.md) | 292 | `result-track:7fdffe79916ced70407fe7622d54651afd7146da0c5bf140a188e19b4847837c` |
| 22 | `theorem` | [abscissa_zero_iff_sampled_reciprocal](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/abscissa-zero-iff-sampled-reciprocal--66ddcbf6523475b4d4aef53b.md) | 333 | `result-track:66ddcbf6523475b4d4aef53b2f52548baec44ed937649ebf6a81bcd427524c52` |
| 23 | `theorem` | [riemannHypothesis_of_sampled_reciprocal](../../../../mathematics/NumberTheory/Moebius/LogarithmicPickupSampling.lean/declarations/riemannhypothesis-of-sampled-reciprocal--9ac956f4241d5c5457902fb4.md) | 348 | `result-track:9ac956f4241d5c5457902fb4f633650e27489dd4d293eb25880480e91fd5d433` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
