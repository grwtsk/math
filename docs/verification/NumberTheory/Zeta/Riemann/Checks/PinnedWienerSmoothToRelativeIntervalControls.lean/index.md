# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PinnedWienerSmoothToRelativeIntervalControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1117a82c75489816511e948d7ff53689a73dec4f",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1117a82c75489816511e948d7ff53689a73dec4f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PinnedWienerSmoothToRelativeInterval`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PinnedWienerSmoothToRelativeInterval.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [literal_ceil_index_iff](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/declarations/literal-ceil-index-iff--2b3887907bf365fb1be7ad87.md) | 16 | `result-track:2b3887907bf365fb1be7ad8720b2e0e7070afa98712883777fcc39a89c0752d1` |
| 2 | `theorem` | [exact_right_endpoint_excluded](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/declarations/exact-right-endpoint-excluded--3ffb7c5ff4cb21ce5eeb9096.md) | 23 | `result-track:3ffb7c5ff4cb21ce5eeb9096381609f72e0d5024bc213077c44db2c0eae45e8e` |
| 3 | `theorem` | [zero_index_excluded_of_positive_left](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/declarations/zero-index-excluded-of-positive-left--e57fcc715b6560d006ede2f1.md) | 34 | `result-track:e57fcc715b6560d006ede2f10cf5bbbd63b1930ff21133d850d54e232942837b` |
| 4 | `theorem` | [actual_lambda_indicator_tsum_is_finite_window](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/declarations/actual-lambda-indicator-tsum-is-finite-window--0f407ffb45680325ff50f2ce.md) | 44 | `result-track:0f407ffb45680325ff50f2cec0d32b27a43194960f8b51ab19f4dfa679d9a789` |
| 5 | `theorem` | [actual_lambda_smooth_weight_summable](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/declarations/actual-lambda-smooth-weight-summable--0034f345a37b6a08297234f3.md) | 56 | `result-track:0034f345a37b6a08297234f31639b035694ca79c11c40b99d0f91bb6cb4f4d80` |
| 6 | `theorem` | [actual_lambda_relativeWindow_of_smoothWiener](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/declarations/actual-lambda-relativewindow-of-smoothwiener--63cfc6d67b1f29815c922d22.md) | 66 | `result-track:63cfc6d67b1f29815c922d223900dc57f171e089f41be37a26ea544e34e5dd1c` |
| 7 | `theorem` | [actual_lambda_weakPNT_of_smoothWiener](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/declarations/actual-lambda-weakpnt-of-smoothwiener--913147c67a2491687e35ffaf.md) | 73 | `result-track:913147c67a2491687e35ffaf47663bb2b3739108c0e02c6cadd85284bfaa05e2` |
| 8 | `theorem` | [zero_sequence_rejects_unit_smoothTestLimit](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/declarations/zero-sequence-rejects-unit-smoothtestlimit--9196b9c887d55a112c0b6cd3.md) | 85 | `result-track:9196b9c887d55a112c0b6cd3eb63968f6f5cedc1f04b2aa34d3b2eecb157a26e` |
| 9 | `def` | [remainingSmoothWienerProofObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/declarations/remainingsmoothwienerproofobligations--10bf56e5117bbee3f5a46e35.md) | 111 | `declaration-track:10bf56e5117bbee3f5a46e35f24d5471f0f38638d7872f2157705568f594b2fe` |
| 10 | `def` | [prohibitedPromotions](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PinnedWienerSmoothToRelativeIntervalControls.lean/declarations/prohibitedpromotions--879f3874ebe939e592a93351.md) | 119 | `declaration-track:879f3874ebe939e592a933511fd4be526a44a9794175fe356cbc6c0e40856706` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
