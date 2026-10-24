# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.SequentialThreePointVolumePackingControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f28fd9014f2b4474ea8559eff1e96056c33ddb19",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/SequentialThreePointVolumePackingControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SequentialThreePointVolumePackingControls.lean/index.md) · [Full source](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SequentialThreePointVolumePackingControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f28fd9014f2b4474ea8559eff1e96056c33ddb19`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/SequentialThreePointVolumePackingControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/SequentialThreePointVolumePackingControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.SequentialThreePointVolumePacking`](../../../../../../mathematics/NumberTheory/Zeta/Riemann/SequentialThreePointVolumePacking.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [adjacent_windows_share_first_overlap](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SequentialThreePointVolumePackingControls.lean/declarations/adjacent-windows-share-first-overlap--1355ea35ab4d491216b35603.md) | 15 | `result-track:1355ea35ab4d491216b35603c9cf4911bb2f5657e0183c2f4f86eeb3a627f1b3` |
| 2 | `theorem` | [adjacent_windows_share_second_overlap](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SequentialThreePointVolumePackingControls.lean/declarations/adjacent-windows-share-second-overlap--08e4e091d31a1704e29b2e47.md) | 21 | `result-track:08e4e091d31a1704e29b2e47803b62add678eb3c0b78db5f9abc0d58eed4a088` |
| 3 | `theorem` | [every_window_nonnegative](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SequentialThreePointVolumePackingControls.lean/declarations/every-window-nonnegative--ae72e7799c7898647e635138.md) | 27 | `result-track:ae72e7799c7898647e6351380b5d9ac4ccb7fbb38d612ff0dcad7f5d4709dc2b` |
| 4 | `theorem` | [every_window_source_valid](../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/SequentialThreePointVolumePackingControls.lean/declarations/every-window-source-valid--988047c86abde713982a7f07.md) | 34 | `result-track:988047c86abde713982a7f075d5cff28e82a011f8ccb6c21fda31c76cf9db7b2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
