# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachFiniteSingularControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "12bd81765fc7006b4e4a264c0cc305566571a0ee",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `12bd81765fc7006b4e4a264c0cc305566571a0ee`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFiniteSingularBoundary`](../../../../../mathematics/NumberTheory/Primes/GoldbachFiniteSingularBoundary.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.NormNum` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pair_box_zero_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/pair-box-zero-control--8d820707352c8d94e83edf04.md) | 34 | `result-track:8d820707352c8d94e83edf044daffa2b013206c911a52da45dd6ca3901c81332` |
| 2 | `theorem` | [oscillatory_correction_zero_target](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/oscillatory-correction-zero-target--f46d118cab81b361365b866f.md) | 41 | `result-track:f46d118cab81b361365b866f8a6014617cfebd7f7176f2c583f793b0ebb994df` |
| 3 | `theorem` | [oscillatory_budget_zero_target](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/oscillatory-budget-zero-target--c3b50bc98e3d3689df7ec619.md) | 50 | `result-track:c3b50bc98e3d3689df7ec6199622ee12ec7e06b55ba737ff66b84c406abbd412` |
| 4 | `theorem` | [symmetric_integral_zero_target](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/symmetric-integral-zero-target--c05dfe9f100a03fe4455ce0d.md) | 59 | `result-track:c05dfe9f100a03fe4455ce0d81911ef19a2eedea54c8049a2d50b1e64eeaf297` |
| 5 | `theorem` | [off_diagonal_one_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/off-diagonal-one-control--7facad82cc5f37e8dbeaa4a6.md) | 68 | `result-track:7facad82cc5f37e8dbeaa4a667396b4b44228db0c029e6ee3fa8cd9680865d58` |
| 6 | `theorem` | [oscillatory_correction_one](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/oscillatory-correction-one--d279079bfa43c4ad00271979.md) | 74 | `result-track:d279079bfa43c4ad002719796222a78a14b45d708b870b0de2b4be49d176bedd` |
| 7 | `theorem` | [character_window_half_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/character-window-half-control--d98d67e71c968f0529d643d3.md) | 87 | `result-track:d98d67e71c968f0529d643d3b41ef3e430d12d8196ae8baa0899852ef6fc70c2` |
| 8 | `theorem` | [diagonal_main_cancellation_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/diagonal-main-cancellation-control--824acbcd9dc70104098dd9a6.md) | 96 | `result-track:824acbcd9dc70104098dd9a6ff32f30e4ef8f0cbbdd5bc47614163ed3b5ea286` |
| 9 | `theorem` | [symmetric_integral_boundary_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/symmetric-integral-boundary-control--bb840c4e9a4790f683678dfd.md) | 104 | `result-track:bb840c4e9a4790f683678dfd74fa0a86658e54495f208b356c08261dd1a55f82` |
| 10 | `theorem` | [half_period_scale_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/half-period-scale-rejected--43f6b8dbc9e47045f97ca776.md) | 125 | `result-track:43f6b8dbc9e47045f97ca7768e7ec98e34119d2f423d4f75f9864e96f0cc21a7` |
| 11 | `theorem` | [finite_pair_inventory_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/finite-pair-inventory-control--69e4d114645231c01ed8e953.md) | 131 | `result-track:69e4d114645231c01ed8e953b3dd16d8291652d27d77f40a7d16e7026f7ef477` |
| 12 | `theorem` | [evaluated_window_not_goldbach_witness](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/evaluated-window-not-goldbach-witness--671924d5f7409999839671df.md) | 141 | `result-track:671924d5f7409999839671dfd03832a632f15afbcef93a2eb61e462ea78a5050` |
| 13 | `theorem` | [strict_window_margin_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFiniteSingularControls.lean/declarations/strict-window-margin-rejected--c533eef2462ccb29fbc4a700.md) | 148 | `result-track:c533eef2462ccb29fbc4a7001a8389813a2c67bab63cbd423b6667380ffb2fc6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
