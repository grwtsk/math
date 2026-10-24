# Verification target: GRWTSK.NumberTheory.Chebyshev.SquarePrimeBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1c4d84032068fb77b1c6716957d387dfedeb2301",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/SquarePrimeBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1c4d84032068fb77b1c6716957d387dfedeb2301`.

Source path: `GRWTSK/NumberTheory/Chebyshev/SquarePrimeBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/SquarePrimeBudget.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.HigherPrimePowerSource`](../../../../mathematics/NumberTheory/Chebyshev/HigherPrimePowerSource.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Chebyshev.ProperPrimePowerCorrection`](../../../../mathematics/NumberTheory/Chebyshev/ProperPrimePowerCorrection.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [squareIncrement_eq_source_difference](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/squareincrement-eq-source-difference--6f30be19981739150d145ef0.md) | 37 | `result-track:6f30be19981739150d145ef0e256c6b21c6e8a1ebae39180b649ebe089b57fdf` |
| 2 | `theorem` | [proper_mass_eq_higher_mass](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/proper-mass-eq-higher-mass--4a00f7a934c402dd9ab990ca.md) | 44 | `result-track:4a00f7a934c402dd9ab990caa5c7fdfc8c1bc69112235bcef7772438e55bd48b` |
| 3 | `theorem` | [proper_mass_eq_covering_sum](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/proper-mass-eq-covering-sum--d4fced39130c6ea471fc8b68.md) | 56 | `result-track:d4fced39130c6ea471fc8b68d19a8dcfdb99ca16501ed1cc9bce84feeaf60a80` |
| 4 | `def` | [correctionBudget](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/correctionbudget--dcc7ce6512639993d6a56d0b.md) | 63 | `declaration-track:dcc7ce6512639993d6a56d0be6b0bd5e1316b3780b802d8c339b7abf9e30ec70` |
| 5 | `theorem` | [higher_mass_le_correctionBudget](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/higher-mass-le-correctionbudget--23a49173e46f5e75216c4f4b.md) | 67 | `result-track:23a49173e46f5e75216c4f4b9e504ba224710aa09b784f5f791a0c870c8c6b47` |
| 6 | `theorem` | [proper_mass_le_correctionBudget](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/proper-mass-le-correctionbudget--78fdfe62858c784d481b34e9.md) | 72 | `result-track:78fdfe62858c784d481b34e937898764886628f0cec039df8333c10594ed710e` |
| 7 | `theorem` | [correctionBudget_nonneg](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/correctionbudget-nonneg--7401609d944bd1687f8a64be.md) | 79 | `result-track:7401609d944bd1687f8a64bead94ed31f3ad9988c5c354fa50ef8d0ca5f41661` |
| 8 | `theorem` | [correctionBudget_le_log_envelope](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/correctionbudget-le-log-envelope--d2e94f32abcfcbc2b78e8405.md) | 83 | `result-track:d2e94f32abcfcbc2b78e8405ab7199872a5ec59b0208a022a40a1e00fbe7b767` |
| 9 | `theorem` | [squarePrimeIncrement_pos_iff_squareCount](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/squareprimeincrement-pos-iff-squarecount--413621f99321731498954741.md) | 91 | `result-track:413621f993217314989547419b51670aa4e4d36b507e4d59e4ac889dac238f90` |
| 10 | `theorem` | [squarePrimeIncrement_nonneg](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/squareprimeincrement-nonneg--f30dbed798f0334e27b2678b.md) | 96 | `result-track:f30dbed798f0334e27b2678b691e4f7c4dd6c9746bb2f43a6e1562608bb2cbe5` |
| 11 | `theorem` | [prime_increment_zero_of_count_zero](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/prime-increment-zero-of-count-zero--34e2166981ff3d0fad2dd003.md) | 101 | `result-track:34e2166981ff3d0fad2dd00375dffa2ff8fd25f77409985215ebcf14aad34223` |
| 12 | `theorem` | [squareCount_pos_of_budget_margin](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/squarecount-pos-of-budget-margin--3c996225dc6acdeec8cffea1.md) | 111 | `result-track:3c996225dc6acdeec8cffea15852c747ef3c40a2be558c8d9407433dfa0ddee9` |
| 13 | `theorem` | [exists_prime_of_budget_margin](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/exists-prime-of-budget-margin--ad5f46efb8ff3997e516fcd4.md) | 121 | `result-track:ad5f46efb8ff3997e516fcd47456596843f54958928afac3f4bde26cf2ac93e8` |
| 14 | `theorem` | [squareCount_pos_of_two_error_budget](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/squarecount-pos-of-two-error-budget--7d06dcfd7dcbfc474b6ceb0a.md) | 128 | `result-track:7d06dcfd7dcbfc474b6ceb0af32bce9b62650889070d8b6245b884b084dde0de` |
| 15 | `theorem` | [legendre_of_prefix_and_budget_margins](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/legendre-of-prefix-and-budget-margins--b4ccf1183d8cba8b8af4ac2e.md) | 140 | `result-track:b4ccf1183d8cba8b8af4ac2e596f730c5e0f6650fbdcc855b8f26823172db3e0` |
| 16 | `theorem` | [prime_free_card_mul_sq_le](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/prime-free-card-mul-sq-le--24f10cff360215c249155fd1.md) | 150 | `result-track:24f10cff360215c249155fd1076019bccebc5a7fb13ba46587086101837ed9cb` |
| 17 | `theorem` | [all_squareCounts_pos_of_small_budget](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/all-squarecounts-pos-of-small-budget--1b9cb89a5106281d36df348a.md) | 174 | `result-track:1b9cb89a5106281d36df348a655a71664d8fef70379a7b1bf3628ed21b71191b` |
| 18 | `theorem` | [upper_square_charge_preserved](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/upper-square-charge-preserved--7ba289e1fb36d0f10f87c483.md) | 193 | `result-track:7ba289e1fb36d0f10f87c483bc1596e69dc9405c6cb812a113eb0ead687cdd1f` |
| 19 | `theorem` | [threshold_equality_allows_zero_output](../../../../mathematics/NumberTheory/Chebyshev/SquarePrimeBudget.lean/declarations/threshold-equality-allows-zero-output--af51ca2b0be779899f2c326a.md) | 201 | `result-track:af51ca2b0be779899f2c326a995c63a8a45a06b2383b171a19025a8c1206bddc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
