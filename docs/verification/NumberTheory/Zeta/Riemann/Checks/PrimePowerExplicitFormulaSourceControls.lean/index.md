# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.PrimePowerExplicitFormulaSourceControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b569b5e4dd1136e2db9c30ab43a804f8462ec93c",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b569b5e4dd1136e2db9c30ab43a804f8462ec93c`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PrimePowerExplicitFormulaSource`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/PrimePowerExplicitFormulaSource.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [linear_quadratic_atomic_separation](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean/declarations/linear-quadratic-atomic-separation--8c9583430619724bf1638cb6.md) | 19 | `result-track:8c9583430619724bf1638cb6aa8f832a7a60b7ac4f6b20e4af6282b40026dfde` |
| 2 | `def` | [zeroAuxSource](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean/declarations/zeroauxsource--b57a9a66820b848db1031c3f.md) | 25 | `declaration-track:b57a9a66820b848db1031c3fe0b36628587c00fdacb19c8345bc3471434e00f4` |
| 3 | `theorem` | [zeroAuxSource_primePower](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean/declarations/zeroauxsource-primepower--8e0b3c276cd0933f9b2a6628.md) | 37 | `result-track:8e0b3c276cd0933f9b2a662831ec849a000bb1781491a0b3b47f25216230a225` |
| 4 | `theorem` | [zeroAuxSource_energy](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean/declarations/zeroauxsource-energy--57ab71c0f3d2a91932d26505.md) | 42 | `result-track:57ab71c0f3d2a91932d2650527691a1af84d9998939418109f0ddc326b4e9fab` |
| 5 | `theorem` | [zeroAuxSource_quadraticization](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean/declarations/zeroauxsource-quadraticization--f24109ea58e5143a3e5903b2.md) | 48 | `result-track:f24109ea58e5143a3e5903b2cd7e87a035789d3f3090ed3c31404eddb22d2b8b` |
| 6 | `theorem` | [zeroAuxSource_complete_decomposition](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean/declarations/zeroauxsource-complete-decomposition--568b547d58edf124dc592ae7.md) | 55 | `result-track:568b547d58edf124dc592ae714ba831f94ac84d1002a39997ca5e72498611a2f` |
| 7 | `theorem` | [triangle_still_three](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/PrimePowerExplicitFormulaSourceControls.lean/declarations/triangle-still-three--95fae04a5d705f2887d7a090.md) | 71 | `result-track:95fae04a5d705f2887d7a090c519be9837f2b144943920f741bebf6b24b801e8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
