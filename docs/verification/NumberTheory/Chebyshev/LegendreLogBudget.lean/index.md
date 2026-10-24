# Verification target: GRWTSK.NumberTheory.Chebyshev.LegendreLogBudget

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "86278ca72089e9548adc0c70ad99f03a0146e742",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/LegendreLogBudget.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `86278ca72089e9548adc0c70ad99f03a0146e742`.

Source path: `GRWTSK/NumberTheory/Chebyshev/LegendreLogBudget.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/LegendreLogBudget.lean.json)

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
| 1 | `theorem` | [squareIncrement_eq_nat_source](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/squareincrement-eq-nat-source--272609610582f9bb2b7d4872.md) | 38 | `result-track:272609610582f9bb2b7d4872d7b57f28e8541963488e4bb8ef397d96eca412cc` |
| 2 | `theorem` | [properMass_eq_higherMass](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/propermass-eq-highermass--700585192ec5e670119096d3.md) | 45 | `result-track:700585192ec5e670119096d33ba8014b2af2271f169f1de6297fb44f3583ecf2` |
| 3 | `theorem` | [squarePrimeIncrement_pos_iff_count](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/squareprimeincrement-pos-iff-count--74b8ebc7716f3607e8d964f5.md) | 56 | `result-track:74b8ebc7716f3607e8d964f5ea222f1faa0814586cb2c365bd141f36f26748be` |
| 4 | `theorem` | [squarePrimeIncrement_nonneg](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/squareprimeincrement-nonneg--81cc23cec50e4c3c9dd72234.md) | 61 | `result-track:81cc23cec50e4c3c9dd72234b3de04962948da3a80eacf6631503b534e073cf9` |
| 5 | `theorem` | [squarePrimeIncrement_eq_zero_iff_count_zero](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/squareprimeincrement-eq-zero-iff-count-zero--ac1d6112cefdc72af12f9ec5.md) | 67 | `result-track:ac1d6112cefdc72af12f9ec5c36eb3e8b06b51eef71fd1996d488c0ba0f1e620` |
| 6 | `def` | [squareCorrectionBudget](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/squarecorrectionbudget--da8990f73d62118c4c31dca2.md) | 83 | `declaration-track:da8990f73d62118c4c31dca2ae5a4e64401554ee7cadc2a0df9d56f292a851db` |
| 7 | `theorem` | [properMass_le_log_budget](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/propermass-le-log-budget--cf328ac60ab0f7663b10a5b7.md) | 87 | `result-track:cf328ac60ab0f7663b10a5b7043e56f193e60085b522333e1ad458fe115217f6` |
| 8 | `theorem` | [squareCorrectionBudget_nonneg](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/squarecorrectionbudget-nonneg--80af3c267849ba8ad882e035.md) | 93 | `result-track:80af3c267849ba8ad882e0358d72b385d9fbb3feae16902d6d5b34b28e289329` |
| 9 | `theorem` | [squareCount_pos_of_log_budget](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/squarecount-pos-of-log-budget--a9e17fcf2407ae8d8477923b.md) | 98 | `result-track:a9e17fcf2407ae8d8477923b095637adc3722a12ce7c3d26a0087023a396d318` |
| 10 | `theorem` | [prime_in_square_of_log_budget](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/prime-in-square-of-log-budget--9e60f33ff9ff6a98f41c9d3a.md) | 107 | `result-track:9e60f33ff9ff6a98f41c9d3a203be5fdb5cd0bc9a8a3e94323be9d6dd045a020` |
| 11 | `theorem` | [squareCount_pos_of_shifted_log_budget](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/squarecount-pos-of-shifted-log-budget--d03cb971a54db9b2f1870505.md) | 114 | `result-track:d03cb971a54db9b2f187050505da15cceb42bcd5236661a9c1a838a65239202e` |
| 12 | `theorem` | [legendre_of_prefix_and_log_budgets](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/legendre-of-prefix-and-log-budgets--37b22df87986d7ee22b510b2.md) | 122 | `result-track:37b22df87986d7ee22b510b24e056d4e60fa7d60082c508eb55d8ac5abf5a67c` |
| 13 | `theorem` | [prime_free_forces_error](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/prime-free-forces-error--fa2a4c1da9c5e870cf2f3ea6.md) | 132 | `result-track:fa2a4c1da9c5e870cf2f3ea620d391a0cae4a611fc3b28e35b084084c5a6ec09` |
| 14 | `theorem` | [prime_free_obstructs_margin](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/prime-free-obstructs-margin--73864dcc2f95a1cb50f2a738.md) | 144 | `result-track:73864dcc2f95a1cb50f2a7385bbd23aff529456bd1b2fab850985160d194b7cc` |
| 15 | `theorem` | [prime_free_card_mul_sq_le](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/prime-free-card-mul-sq-le--bdaf5572b95252c37d1601f1.md) | 152 | `result-track:bdaf5572b95252c37d1601f14c592f8d4573f5a054a32351554d2a253b4d78a0` |
| 16 | `theorem` | [squareCount_pos_on_finset_of_budget_lt](../../../../mathematics/NumberTheory/Chebyshev/LegendreLogBudget.lean/declarations/squarecount-pos-on-finset-of-budget-lt--98fd4704c16b13c7bf1ef00d.md) | 167 | `result-track:98fd4704c16b13c7bf1ef00d5cc26c564329ad08cc514eb4d49e113ac1c63cf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
