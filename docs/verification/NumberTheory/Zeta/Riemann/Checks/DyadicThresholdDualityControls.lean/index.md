# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.DyadicThresholdDualityControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5f6e80b451e62b1668a73d0f0cfe9e460e4c63f8",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5f6e80b451e62b1668a73d0f0cfe9e460e4c63f8`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicThresholdDuality`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicThresholdDuality.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [concrete_forward_ladder](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean/declarations/concrete-forward-ladder--cef77679913cd5b7620b8e49.md) | 14 | `result-track:cef77679913cd5b7620b8e497174a31558c5cfe7d6909d4daa4f306d356d5bb1` |
| 2 | `theorem` | [seven_eighths_descends_through_three_quarters_to_half](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean/declarations/seven-eighths-descends-through-three-quarters-to-half--0e45d3e45ff54af24a8992fc.md) | 21 | `result-track:0e45d3e45ff54af24a8992fc6c714b7958127e1316939c384476902e6675d1b9` |
| 3 | `theorem` | [defect_round_trip](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean/declarations/defect-round-trip--81d99b41784e455021b61080.md) | 29 | `result-track:81d99b41784e455021b610803a698e4fdecffff629046f516efd6297f46f59b4` |
| 4 | `def` | [nonimplications](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/DyadicThresholdDualityControls.lean/declarations/nonimplications--a8e195b1469c9d3f653a7326.md) | 35 | `declaration-track:a8e195b1469c9d3f653a7326167bbd3e66a9852e6d29edf92b655f9fc1d1b824` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
