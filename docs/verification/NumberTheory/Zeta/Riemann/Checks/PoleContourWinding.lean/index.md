# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourWinding

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d336c69302a0b181fa78f286580800057cf2619b",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d336c69302a0b181fa78f286580800057cf2619b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.LoopIndexOperations`](../../../../../../mathematics/Analysis/ComplexAnalysis/LoopIndexOperations.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.PoleContourWinding`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PoleContourWinding.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.PoleContourHomotopy`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourHomotopy.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [small_square_source_index_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/small-square-source-index-zero--519603901a15cf51677ee852.md) | 30 | `result-track:519603901a15cf51677ee852f063ae7cba183f65e093652c6fae619e6b2fa1b0` |
| 2 | `theorem` | [signed_turn_controls](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/signed-turn-controls--2f2884338c36a6a77208d0df.md) | 39 | `result-track:2f2884338c36a6a77208d0dfeb63628703bd30106da9f0ca3258285e6b9ff447` |
| 3 | `theorem` | [endpoint_log_control](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/endpoint-log-control--f5fc6235328b95b74580380f.md) | 45 | `result-track:f5fc6235328b95b74580380f4ff4ca26448e1409ee7fc4b85e1cc051a0af2ad2` |
| 4 | `theorem` | [lift_does_not_close_for_one_turn](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/lift-does-not-close-for-one-turn--6df592508f858a96f08a6077.md) | 50 | `result-track:6df592508f858a96f08a6077e877cba465a7820f7d661017933b980f6c7ecd70` |
| 5 | `theorem` | [one_turn_cannot_contract_through_closed_nonzero_loops](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/one-turn-cannot-contract-through-closed-nonzero-loops--067277205c904f494231bce8.md) | 54 | `result-track:067277205c904f494231bce85a8076dfa01d8ef8613bf98f0115d91334e58adb` |
| 6 | `def` | [shiftedTurnLift](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/shiftedturnlift--ddd5803edb7543779e9be0cf.md) | 59 | `declaration-track:ddd5803edb7543779e9be0cfa8f96627d21740a45eb49972ad0e28e8ce2c55c6` |
| 7 | `theorem` | [shifted_turn_lifts](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/shifted-turn-lifts--5a959a166dcdd2695ad18040.md) | 63 | `result-track:5a959a166dcdd2695ad18040bae16a180902cd45472cc809ca6ccc149a79779c` |
| 8 | `theorem` | [arbitrary_initial_branch_same_index](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/arbitrary-initial-branch-same-index--aac0c27e9281c6da18ca99e6.md) | 67 | `result-track:aac0c27e9281c6da18ca99e6ca78e33349ca3e25a88c9f286c60d0c2eb63af70` |
| 9 | `def` | [squareTime](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/squaretime--1bb84237c93686fff5277b7d.md) | 72 | `declaration-track:1bb84237c93686fff5277b7d098b551621e1472c596b289a7cf3d67eb520b5e8` |
| 10 | `theorem` | [nonlinear_time_preserves_index](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/nonlinear-time-preserves-index--ce7ed6dd97d4c8c9d697cf01.md) | 77 | `result-track:ce7ed6dd97d4c8c9d697cf01fb944ac04927d691e8347fb64d212d584c407d12` |
| 11 | `theorem` | [actual_reverse_changes_sign](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/actual-reverse-changes-sign--272da22af1bceb0f2fa85241.md) | 84 | `result-track:272da22af1bceb0f2fa8524174fcb7aa5768ac1199b441b3a68dadd29610963d` |
| 12 | `theorem` | [product_keeps_signed_turn_sum](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/product-keeps-signed-turn-sum--4377376b282ac0c3e0f2b0e4.md) | 88 | `result-track:4377376b282ac0c3e0f2b0e49ba894e1fedc6c99a5cf0e6d1fa1fbb36d5989d4` |
| 13 | `def` | [openLift](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/openlift--724252cbe97c5b2bcf31b399.md) | 95 | `declaration-track:724252cbe97c5b2bcf31b399ecad9a4f0375597f09d4cb88fbb71af26cc1b2f0` |
| 14 | `theorem` | [nonclosed_path_has_no_integer_jump](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/nonclosed-path-has-no-integer-jump--d0f4bfce3fba7b1c7da4c944.md) | 99 | `result-track:d0f4bfce3fba7b1c7da4c9442876d27b95db22dd99eeb56beb35bd13e5949533` |
| 15 | `theorem` | [opposite_value_interpolation_hits_zero](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/opposite-value-interpolation-hits-zero--55bcfd3381c677725c33b648.md) | 107 | `result-track:55bcfd3381c677725c33b6486c4678aecea86a641f2294fcba2f3fb4af102fd9` |
| 16 | `theorem` | [fictitious_contour_still_has_no_source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PoleContourWinding.lean/declarations/fictitious-contour-still-has-no-source--5b07a828c61d973ad696fd0e.md) | 113 | `result-track:5b07a828c61d973ad696fd0e1d4f09423f6d17d41a394347611e96079d4fa882` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
