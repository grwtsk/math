# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenSeedBinding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e525262a349eb9240a943a2cd12c0cd41066758a",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e525262a349eb9240a943a2cd12c0cd41066758a`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.HeightFifteenSeedLog`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedLog.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [scaledExponent](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/scaledexponent--1a9412a5e463709d59405571.md) | 24 | `declaration-track:1a9412a5e463709d59405571b1df262312089ab8920d41d377752b2b3cd54da0` |
| 2 | `def` | [seedValue](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/seedvalue--7366ce696a4f893751ab2953.md) | 27 | `declaration-track:7366ce696a4f893751ab29537344074bab9c820d0acf69d4799e71762a61c5ae` |
| 3 | `theorem` | [scaled_exponent_value](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/scaled-exponent-value--9b4c3c884de03366dd1b9cbe.md) | 29 | `result-track:9b4c3c884de03366dd1b9cbedf6b83a74b362c9351195daaeb87ff0ae78e1891` |
| 4 | `theorem` | [seed_value](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/seed-value--a48d122e7431768815935ee3.md) | 33 | `result-track:a48d122e7431768815935ee3706efb5a00d39f90da2842f4b902a6013e8797d3` |
| 5 | `theorem` | [seed_real_window](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/seed-real-window--1b22edb996c2ab2b8e995e86.md) | 42 | `result-track:1b22edb996c2ab2b8e995e86ad8130f75fa8a06b8f0f60abf8f9776b19495797` |
| 6 | `theorem` | [seed_imag_window](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/seed-imag-window--294de640126b2289df568bfa.md) | 45 | `result-track:294de640126b2289df568bfa553b8c14e142caf358b5302083554ce6c3e7de92` |
| 7 | `theorem` | [seed_error_window](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/seed-error-window--184dae88ffa5eb4d8e301be3.md) | 48 | `result-track:184dae88ffa5eb4d8e301be31d90924c614e58f88844cb6eaf5b7bc8b0d14e0b` |
| 8 | `theorem` | [seed_binding](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/seed-binding--ac34cd40e9eb9b8c0fb03889.md) | 56 | `result-track:ac34cd40e9eb9b8c0fb03889d5507536cb8408fa87b872dd411cb37853f39d07` |
| 9 | `theorem` | [source_ready](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/source-ready--aaa1e30b64c0826d6c624363.md) | 67 | `result-track:aaa1e30b64c0826d6c6243632e7aace82f964045eead4c12968c9a52f3a14d4c` |
| 10 | `def` | [outputBall](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/outputball--87a8535d7e733a633d2545d9.md) | 70 | `declaration-track:87a8535d7e733a633d2545d9a1e858ed100a5bd1b25343d1df89cdd879a067ef` |
| 11 | `theorem` | [finish_error_window](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/finish-error-window--6d92a1929cca176d4d3f9f5a.md) | 75 | `result-track:6d92a1929cca176d4d3f9f5a79e8ed8d327dcb039bd1a64bdc539a5b3c95b867` |
| 12 | `theorem` | [finish_value](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/finish-value--28ada00058e9b9bcfc471988.md) | 82 | `result-track:28ada00058e9b9bcfc471988b8467c92a60b04ddd191ad4d98b093ee4e722b07` |
| 13 | `theorem` | [leaf_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/leaf-checked--4d7a782dbba24b9d156fb892.md) | 92 | `result-track:4d7a782dbba24b9d156fb892b06e115ae6a3c0b46b857f5852c2644ed0a28d8c` |
| 14 | `theorem` | [original_evaluator_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/original-evaluator-checked--6ce6303187f73b4ef31963e9.md) | 96 | `result-track:6ce6303187f73b4ef31963e9d19913ddd3b7d66df116fbaf991d47150d1881e3` |
| 15 | `theorem` | [power_enclosed](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/power-enclosed--d871c55be1500bae959b3d8e.md) | 100 | `result-track:d871c55be1500bae959b3d8ec72c0aa453ad8cfab1fae3580dc0c245cfdeb958` |
| 16 | `theorem` | [radius_bound](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/radius-bound--548f4bc27126c4d4ecb06d98.md) | 103 | `result-track:548f4bc27126c4d4ecb06d98bf3097398fc38dc86376d8282b47a996455d6fbd` |
| 17 | `theorem` | [requested_tolerance_checked](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/requested-tolerance-checked--4bf2c17b56145b2e51ec40c5.md) | 106 | `result-track:4bf2c17b56145b2e51ec40c5630f5de16b434f4c97dfbdbab53879ea87d45795` |
| 18 | `theorem` | [seed_without_tail_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/seed-without-tail-rejected--a96213b3b04adf39fb5a8442.md) | 117 | `result-track:a96213b3b04adf39fb5a8442e8bd28042f97620b3f0f502b10bb4c81d15bc9ef` |
| 19 | `theorem` | [seed_smaller_error_rejected](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/seed-smaller-error-rejected--635be1696ef7d3ce4a36a2f9.md) | 122 | `result-track:635be1696ef7d3ce4a36a2f9f64baa9c8a7c2e5fd43ab542a82a3c20b48f1737` |
| 20 | `theorem` | [final_error_strictly_above_square_error](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/HeightFifteenSeedBinding.lean/declarations/final-error-strictly-above-square-error--d067a051a282d50e81733a73.md) | 130 | `result-track:d067a051a282d50e81733a73e251107761df1604491ba80daaea06340a839b8d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
