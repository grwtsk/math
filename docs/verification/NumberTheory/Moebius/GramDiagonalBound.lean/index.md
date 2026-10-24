# Verification target: GRWTSK.NumberTheory.Moebius.GramDiagonalBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73170183bfc55c49aa578ffbe940a2f84637ef02",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73170183bfc55c49aa578ffbe940a2f84637ef02`.

Source path: `GRWTSK/NumberTheory/Moebius/GramDiagonalBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/GramDiagonalBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.FiniteResponseSum`](../../../../mathematics/NumberTheory/Moebius/FiniteResponseSum.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.Analysis.Inequalities.ExponentialDiagonal`](../../../../mathematics/Analysis/Inequalities/ExponentialDiagonal.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Analysis.SumIntegralComparisons` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagonalComparison](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonalcomparison--0c5a8dba077b3cec17feec43.md) | 28 | `declaration-track:0c5a8dba077b3cec17feec43167e57e2099cedaff78ac7e6584cbf24550bf292` |
| 2 | `theorem` | [diagonal_sqrt_exp](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonal-sqrt-exp--a75defbba2d24ddea1e1c640.md) | 31 | `result-track:a75defbba2d24ddea1e1c6401e78d7f69a09307b7cba608f67bbf80556fda628` |
| 3 | `theorem` | [diagonal_negative_half_sqrt](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonal-negative-half-sqrt--cfa8f85d1fa468c85815e75e.md) | 38 | `result-track:cfa8f85d1fa468c85815e75e38c581b56e451638245178b3ab865ccb2da4c517` |
| 4 | `theorem` | [diagonalComparison_nonneg](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonalcomparison-nonneg--cbffae3e2193f024c84d5daf.md) | 42 | `result-track:cbffae3e2193f024c84d5dafbd6535511b217ceaeb4a9cc1a767f17976d0a6a7` |
| 5 | `theorem` | [diagonalComparison_continuous](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonalcomparison-continuous--2b8825e63d5cf31ad96e511a.md) | 46 | `result-track:2b8825e63d5cf31ad96e511af896f8f4e4619aaaaee030cc73ab998ebcf6b82d` |
| 6 | `theorem` | [diagonalComparison_antitone](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonalcomparison-antitone--1e49531dcc0ade7e531a7644.md) | 53 | `result-track:1e49531dcc0ade7e531a7644bb1fec46e6461ecbee10051609df146d96cc3eba` |
| 7 | `theorem` | [diagonalComparison_eq_below_one](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonalcomparison-eq-below-one--69ded93cc65fcfddd0a6ba32.md) | 72 | `result-track:69ded93cc65fcfddd0a6ba32e2b152f124a2613e7015271f5a8ea83e9ea5eecf` |
| 8 | `theorem` | [diagonalComparison_eq_above_one](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonalcomparison-eq-above-one--f5832e8694cda48868cb26a9.md) | 76 | `result-track:f5832e8694cda48868cb26a9ac88b9abba1e2ff5edc3211bbd814780aec211e3` |
| 9 | `theorem` | [diagonalComparison_atom](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonalcomparison-atom--694804ca100ab6364e7c50d3.md) | 80 | `result-track:694804ca100ab6364e7c50d33ee41c58c1cf112fd2194fe3cc68ba84c01c78ea` |
| 10 | `theorem` | [diagonal_sum_Icc_eq_range](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonal-sum-icc-eq-range--5731dbc3e3330f13b4fdf7d4.md) | 89 | `result-track:5731dbc3e3330f13b4fdf7d4b398eb309d106cd3e16ac35ea72830c83bb5223f` |
| 11 | `theorem` | [diagonalComparison_sum_le_integral](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonalcomparison-sum-le-integral--d886780c064c35a187910bf2.md) | 107 | `result-track:d886780c064c35a187910bf2788ff2fd74e76afe859b42841943697c62410109` |
| 12 | `theorem` | [diagonal_inverse_sqrt_integral](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonal-inverse-sqrt-integral--a653acde66b5d7dc6ac6cb1c.md) | 124 | `result-track:a653acde66b5d7dc6ac6cb1cac0eb55b267bf10bc9200a668002c8bfe443ddd3` |
| 13 | `theorem` | [diagonalComparison_integral](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonalcomparison-integral--e4c3d3fb34e77c6f463ee74f.md) | 141 | `result-track:e4c3d3fb34e77c6f463ee74f74aa2d2b3537009250faa83a7ec9d9b14577f992` |
| 14 | `theorem` | [pickup_response_square_sum_cutoff](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/pickup-response-square-sum-cutoff--9be4e21d94b9aa2a1be8afe0.md) | 201 | `result-track:9be4e21d94b9aa2a1be8afe05db11b4e007a160814e16196ef5d3b23ff926e5b` |
| 15 | `theorem` | [moebiusReal_sq_le_one](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/moebiusreal-sq-le-one--467cf4e4177db8124c96dd2a.md) | 218 | `result-track:467cf4e4177db8124c96dd2ae3dad24ded5c97e4a1c05684cb818f180f66b6e1` |
| 16 | `theorem` | [pickup_diagonal_density_le](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/pickup-diagonal-density-le--86a66a23158dd2a8e6908fd6.md) | 224 | `result-track:86a66a23158dd2a8e6908fd63ab4881588a5b2a897e4c44a72d1ad1fab19360e` |
| 17 | `theorem` | [pickupDiagonal_eq_integral_density](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/pickupdiagonal-eq-integral-density--0cd0b0b46ab6e2c684c72a47.md) | 246 | `result-track:0cd0b0b46ab6e2c684c72a47a909e37d6ca1ad0d5bc4be339c1922d66fafa4cc` |
| 18 | `theorem` | [diagonal_time_integral](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/diagonal-time-integral--3711c6c27b404953f2a8d9da.md) | 260 | `result-track:3711c6c27b404953f2a8d9dae65e73d71d3dd34b0e3ffc6b6be4cd65498db68f` |
| 19 | `theorem` | [pickupDiagonal_le_sharp](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/pickupdiagonal-le-sharp--422ade9f4029539fc5472398.md) | 278 | `result-track:422ade9f4029539fc547239804aa89d9c51a59c88063e43863e2f23d04577f9b` |
| 20 | `theorem` | [pickupDiagonal_sharp_bound](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/pickupdiagonal-sharp-bound--4aed4b01fffa5a0e6e005b5a.md) | 299 | `result-track:4aed4b01fffa5a0e6e005b5a9c9ad1dc9f4a01a86707b3b88049c67f7b80bdb8` |
| 21 | `theorem` | [pickupDiagonal_quadratic_bound](../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/declarations/pickupdiagonal-quadratic-bound--0c25defc3d836b166f56ec1d.md) | 307 | `result-track:0c25defc3d836b166f56ec1d129a44ebef06f0cc4630a1ec18e378bed7f9ccb3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
