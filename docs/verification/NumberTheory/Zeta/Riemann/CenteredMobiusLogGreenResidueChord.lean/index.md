# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenResidueChord

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "033e0644af78adbd2cd83ceeffb730c8d71e6243",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `033e0644af78adbd2cd83ceeffb730c8d71e6243`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenAbel`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenAbel.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GreenCenteredResidue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean/declarations/greencenteredresidue--2197c4114d379d6381956b1a.md) | 17 | `declaration-track:2197c4114d379d6381956b1af7f24b35509fe4224746f234dd6f82a28e3d68cd` |
| 2 | `theorem` | [greenMeshPhase_eq_residue](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean/declarations/greenmeshphase-eq-residue--7d18289a99c7ed708dd8603c.md) | 24 | `result-track:7d18289a99c7ed708dd8603c0121566d8746a7906fd6c5d26480578f396496a0` |
| 3 | `theorem` | [norm_one_sub_greenMeshPhase_eq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean/declarations/norm-one-sub-greenmeshphase-eq--59eff708b25dabbe4471e1ea.md) | 41 | `result-track:59eff708b25dabbe4471e1ea9f3978c3e41582440bd043aba151607a98ccdfda` |
| 4 | `theorem` | [four_mul_abs_residue_div_X_le_norm_one_sub_phase](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean/declarations/four-mul-abs-residue-div-x-le-norm-one-sub-phase--763497b433c1342ee8009c75.md) | 52 | `result-track:763497b433c1342ee8009c75383e2dbe5774b78b4bbc7ed597ad645c88999df4` |
| 5 | `theorem` | [centeredResidue_chord_lower_bound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenResidueChord.lean/declarations/centeredresidue-chord-lower-bound--2a40ac2b5464514f6e9dd280.md) | 89 | `result-track:2a40ac2b5464514f6e9dd280f89c5f688a75c6d2cc04e6f9db7fc8f787c78c7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
