# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedPrimeWeightBoundedCapacityControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "988ee9f275b6c5a5e187990f74f83ac291b9a1f7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `988ee9f275b6c5a5e187990f74f83ac291b9a1f7`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ClauseIndexedPinnedPrimeWeightCapacity`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/ClauseIndexedPinnedPrimeWeightCapacity.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [positivePolarity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/declarations/positivepolarity--fc17a34744cf60277f0bde18.md) | 15 | `declaration-track:fc17a34744cf60277f0bde1802085e2c5fd16d05cf6f39e107acc8abb36184fc` |
| 2 | `theorem` | [concrete_three_clause_fixed_capacity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/declarations/concrete-three-clause-fixed-capacity--ed239b63df394e454546d8de.md) | 20 | `result-track:ed239b63df394e454546d8dea53a6288cd2cf6b7db58f13ea7fd0a90fa96af6c` |
| 3 | `theorem` | [concrete_two_clause_fixed_capacity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/declarations/concrete-two-clause-fixed-capacity--3b932d935d3ae492aa1db276.md) | 31 | `result-track:3b932d935d3ae492aa1db276933eb457c09f74aee4a2417716968e984c20da69` |
| 4 | `theorem` | [coefficient_inside_budget_cannot_beat_capacity](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/declarations/coefficient-inside-budget-cannot-beat-capacity--3c2cc7e450e9c9a1151b5143.md) | 42 | `result-track:3c2cc7e450e9c9a1151b51430ba233dbb5efa72f5c1de0f18478ced700d40d80` |
| 5 | `theorem` | [dyadic_capacity_deficit_forces_amplitude](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/declarations/dyadic-capacity-deficit-forces-amplitude--27fd03e8c58becc5bb4e6289.md) | 50 | `result-track:27fd03e8c58becc5bb4e6289e230aa56c03fa93c050cb4544142d4592b6f2e02` |
| 6 | `theorem` | [zero_budget_is_complete_deficit](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/declarations/zero-budget-is-complete-deficit--97bb9439ea7d5f4c503f00e8.md) | 63 | `result-track:97bb9439ea7d5f4c503f00e8f5e348b44adb89e9ec25f7ac91210fc4d1c054b6` |
| 7 | `theorem` | [zero_amplitude_is_complete_deficit](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/declarations/zero-amplitude-is-complete-deficit--f3726d8a00fc313db58282ef.md) | 71 | `result-track:f3726d8a00fc313db58282ef69c07a6be823de384b19404139d8ed7331b73ef4` |
| 8 | `theorem` | [constant_optimizer_source_label](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/declarations/constant-optimizer-source-label--fc7d8d77285228af7c60d285.md) | 80 | `result-track:fc7d8d77285228af7c60d2858a254f802e07b894407078be2830f7dd8ae52abc` |
| 9 | `def` | [requiredCapacityObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/declarations/requiredcapacityobligations--7e9f6ea82162595c12182d5f.md) | 88 | `declaration-track:7e9f6ea82162595c12182d5f2c89b63b836420b89c957b3b9651a64c875ae0b8` |
| 10 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedPrimeWeightBoundedCapacityControls.lean/declarations/prohibitedpromotions--c8007db3c9e16209b01cac02.md) | 96 | `declaration-track:c8007db3c9e16209b01cac02d97ea1faac55a81363c8a5aee5ced1f0a54c313b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
