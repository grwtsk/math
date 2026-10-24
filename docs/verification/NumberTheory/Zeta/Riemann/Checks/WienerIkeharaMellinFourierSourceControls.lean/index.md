# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.WienerIkeharaMellinFourierSourceControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2d9323421ef01fb690bbdec376c304f3953163b4",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2d9323421ef01fb690bbdec376c304f3953163b4`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaMellinFourierSource`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaMellinFourierSource.lean/index.md) — import line 9; pinned internal source present.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mellinFourier_source_witness_for_all_coefficients](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean/declarations/mellinfourier-source-witness-for-all-coefficients--598b8e9d516f98f6491489e9.md) | 29 | `result-track:598b8e9d516f98f6491489e98a274f1363978c0b030d4c13b858b12809765f55` |
| 2 | `theorem` | [mellinFourier_source_unit_frequency](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean/declarations/mellinfourier-source-unit-frequency--77c637c914d3aa64aebd4949.md) | 51 | `result-track:77c637c914d3aa64aebd494929914b1b9e068979229a0350e595272427012608` |
| 3 | `theorem` | [mellinFourier_source_two_pi_frequency](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean/declarations/mellinfourier-source-two-pi-frequency--0f9f7e759b9e6326a74ab2c8.md) | 63 | `result-track:0f9f7e759b9e6326a74ab2c89b6d64416f10d91d019607a53906ba0940d51ef9` |
| 4 | `def` | [stillOpenAnalyticObligations](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/WienerIkeharaMellinFourierSourceControls.lean/declarations/stillopenanalyticobligations--8ecc1cbf53ef86eab5f83267.md) | 86 | `declaration-track:8ecc1cbf53ef86eab5f83267218c94342cc96e3bb6a1f16a012c2becbe57d2a7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
