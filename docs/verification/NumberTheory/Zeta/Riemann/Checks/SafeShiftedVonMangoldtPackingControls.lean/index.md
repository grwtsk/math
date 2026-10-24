# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SafeShiftedVonMangoldtPackingControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3095dbb329bf64010b21d25d716c3a4bc22090a8",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/SafeShiftedVonMangoldtPackingControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SafeShiftedVonMangoldtPackingControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SafeShiftedVonMangoldtPackingControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3095dbb329bf64010b21d25d716c3a4bc22090a8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/SafeShiftedVonMangoldtPackingControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/SafeShiftedVonMangoldtPackingControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SafeShiftedVonMangoldtPacking`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/SafeShiftedVonMangoldtPacking.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [safe_plus_stays_right_of_one](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SafeShiftedVonMangoldtPackingControls.lean/declarations/safe-plus-stays-right-of-one--a0e0f4708333ba7be9554237.md) | 14 | `result-track:a0e0f4708333ba7be9554237ade7ac558b0511487ee023fc7d4f839b71b826d6` |
| 2 | `theorem` | [safe_minus_stays_right_of_one](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SafeShiftedVonMangoldtPackingControls.lean/declarations/safe-minus-stays-right-of-one--863cd1e43268ef12f5bcff4d.md) | 18 | `result-track:863cd1e43268ef12f5bcff4dd26f6e83c7fcc0518619adf5f14be14e3d739feb` |
| 3 | `theorem` | [safe_shift_packing_positive](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SafeShiftedVonMangoldtPackingControls.lean/declarations/safe-shift-packing-positive--b976d5559f8a1d50c996bce5.md) | 22 | `result-track:b976d5559f8a1d50c996bce55919aa5d0e935a84a4f383337cbac828b8573472` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
