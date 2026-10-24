# Verification target: GRWTSK.NumberTheory.ArithmeticFunctions.Checks.PrimePowerAtomControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ce1276cc80e0ff3e7b3a4c1a8e86cd5d642e1ce",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ce1276cc80e0ff3e7b3a4c1a8e86cd5d642e1ce`.

Source path: `GRWTSK/NumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ArithmeticFunctions.PrimePowerAtoms`](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/PrimePowerAtoms.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [square_atom_distinct_from_two_unit_atoms](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean/declarations/square-atom-distinct-from-two-unit-atoms--2c4a0ca32e1ec967d55b617c.md) | 16 | `result-track:2c4a0ca32e1ec967d55b617cd61563966396d946edc87003b40a87333a06e31d` |
| 2 | `theorem` | [square_atom_and_two_unit_atoms_same_collapse](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean/declarations/square-atom-and-two-unit-atoms-same-collapse--e5a2b9e137c914ebde6139b9.md) | 24 | `result-track:e5a2b9e137c914ebde6139b9940af60d3459f6cad7c3f4bb86927495fd95ba46` |
| 3 | `theorem` | [atom_collapse_information_loss](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean/declarations/atom-collapse-information-loss--51af2adbcd6dae516f51283f.md) | 32 | `result-track:51af2adbcd6dae516f51283f1c4156b5bd017a08c38ab50a739368ecd4f67511` |
| 4 | `theorem` | [nonlinear_readout_rejected](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean/declarations/nonlinear-readout-rejected--701a8958d2a4952badeb2211.md) | 38 | `result-track:701a8958d2a4952badeb2211523e1440cb67c0189d453bc4bfcb5f283126e817` |
| 5 | `theorem` | [collapse_has_section](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean/declarations/collapse-has-section--31dad43c57f6abd4b0df57bc.md) | 43 | `result-track:31dad43c57f6abd4b0df57bc36e13d1262cc02c957fa87631bc7dd6b1d0c2dd4` |
| 6 | `def` | [twoAtomStage](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean/declarations/twoatomstage--de7b88df0b844f897ce990ec.md) | 49 | `declaration-track:de7b88df0b844f897ce990ec5b04ee74181ca75f65dd29008a09c9a087cae400` |
| 7 | `theorem` | [twoAtomStage_card](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean/declarations/twoatomstage-card--223dab71e871984b5b088846.md) | 52 | `result-track:223dab71e871984b5b088846c2eceff5fac3a2bc553559e6bbd3c65baa9b1ccb` |
| 8 | `theorem` | [triangle_remains_three](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean/declarations/triangle-remains-three--befca1fdb047dd809b309a03.md) | 60 | `result-track:befca1fdb047dd809b309a031356bcec052b200337540b89898cfd96939f9b82` |
| 9 | `theorem` | [no_triangle_fin_four](../../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/Checks/PrimePowerAtomControls.lean/declarations/no-triangle-fin-four--dfc81ab29f5125e271a1a078.md) | 65 | `result-track:dfc81ab29f5125e271a1a0786a2d4e12e618dad7bd457a930f6eeebb154b3b64` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
