# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaQOneFiniteSigmaFubiniControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8cf39c7b33e14f4bba5cbd281b018f696e78e6e8",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8cf39c7b33e14f4bba5cbd281b018f696e78e6e8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaQOneFiniteSigmaFubini`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaQOneFiniteSigmaFubini.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [wienerFubini_actual_lambda_zero_term](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/declarations/wienerfubini-actual-lambda-zero-term--be76afe32d22771b81d34e4a.md) | 23 | `result-track:be76afe32d22771b81d34e4a1c588ac811c40f62f93df39b81decd2374bbf1e6` |
| 2 | `theorem` | [wienerFubini_actual_lambda_zero_integrand](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/declarations/wienerfubini-actual-lambda-zero-integrand--d710a01d34ee74947c610873.md) | 30 | `result-track:d710a01d34ee74947c610873cd2bcc1b0c18220dc59e6db4bda1375b5498e9c0` |
| 3 | `theorem` | [wienerFubini_actual_lambda_vertical_norm](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/declarations/wienerfubini-actual-lambda-vertical-norm--e01a639782bb006e5b29b93a.md) | 39 | `result-track:e01a639782bb006e5b29b93ac74bb3685c80883253cf62fc8d7ad8e4c1013587` |
| 4 | `theorem` | [wienerFubini_actual_lambda_norm_domination](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/declarations/wienerfubini-actual-lambda-norm-domination--f6b012fc72d49a9c9618ef19.md) | 50 | `result-track:f6b012fc72d49a9c9618ef195a03713cf6c9661255de640dcd37f03b6ae9a55a` |
| 5 | `theorem` | [wienerFubini_actual_lambda_tsum_integral](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/declarations/wienerfubini-actual-lambda-tsum-integral--c79dc68ec101aa11f28fafc4.md) | 68 | `result-track:c79dc68ec101aa11f28fafc41ecd4c9d19a2790a89e14bd39b4dc6e5e5dd36db` |
| 6 | `theorem` | [wienerFubini_actual_lambda_firstFourier](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/declarations/wienerfubini-actual-lambda-firstfourier--4b0ae0f5b00a58714fdab725.md) | 88 | `result-track:4b0ae0f5b00a58714fdab725f69e3ffebe4c946d67c3b68fb5103b9c7264a375` |
| 7 | `theorem` | [wienerFubini_frequency_at_scale](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/declarations/wienerfubini-frequency-at-scale--052b1254b541dd3e36a6d949.md) | 104 | `result-track:052b1254b541dd3e36a6d949cc74d8ec112da25ffcb1d43dfce80d7fa286905a` |
| 8 | `theorem` | [wienerFubini_log_kernel_positive](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/declarations/wienerfubini-log-kernel-positive--b0d150ed0a3c1f3930836399.md) | 113 | `result-track:b0d150ed0a3c1f3930836399a0e531017d13f864de9a8f96fb2107574ace4634` |
| 9 | `theorem` | [wienerFubini_log_kernel_finite_sum_positive](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/declarations/wienerfubini-log-kernel-finite-sum-positive--e956a6b6b5a119e44473527d.md) | 120 | `result-track:e956a6b6b5a119e44473527d632a24e259bd6a4a38c8e120430f25db9c09eee9` |
| 10 | `def` | [wienerFubini_stillOpen](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/declarations/wienerfubini-stillopen--945a4da76261af98a4cc927f.md) | 127 | `declaration-track:945a4da76261af98a4cc927fb3ceb3998064326157a7af8fadcc52a64c799a97` |
| 11 | `def` | [wienerFubini_prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaQOneFiniteSigmaFubiniControls.lean/declarations/wienerfubini-prohibitedpromotions--a04e19b8204cf8ea785aa928.md) | 136 | `declaration-track:a04e19b8204cf8ea785aa928a0b8376e43e1882c13c92faa1916bfae18a6946c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
