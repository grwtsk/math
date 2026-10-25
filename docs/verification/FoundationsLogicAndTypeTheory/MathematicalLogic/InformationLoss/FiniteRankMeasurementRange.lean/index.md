# Verification target: GRWTSK.Logic.InformationLoss.FiniteRankMeasurementRange

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ab79d157b60ae8dd33f8fff2b664e88f26772be4",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/InformationLoss/FiniteRankMeasurementRange.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FiniteRankMeasurementRange.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FiniteRankMeasurementRange.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ab79d157b60ae8dd33f8fff2b664e88f26772be4`.

Source path: `GRWTSK/Logic/InformationLoss/FiniteRankMeasurementRange.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/InformationLoss/FiniteRankMeasurementRange.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.InformationLoss.FiniteMeasurementCapacity`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FiniteMeasurementCapacity.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.LinearAlgebra.Dimension.Finrank` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extraOnOldKernel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FiniteRankMeasurementRange.lean/declarations/extraonoldkernel--9e8f51807c6d1547104cb24f.md) | 31 | `declaration-track:9e8f51807c6d1547104cb24f953f486f7a0228375f84986793586b3b3b1daa16` |
| 2 | `theorem` | [extraOnOldKernel_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FiniteRankMeasurementRange.lean/declarations/extraonoldkernel-injective--e9be566d1b686da69af24cd6.md) | 36 | `result-track:e9be566d1b686da69af24cd63756a7731e6ae889963491e3c33d3d71918156fb` |
| 3 | `theorem` | [finrank_extra_range_eq_old_kernel](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FiniteRankMeasurementRange.lean/declarations/finrank-extra-range-eq-old-kernel--3e10f4916ce5b476476879ce.md) | 51 | `result-track:3e10f4916ce5b476476879ceac9c3e7b5b5e8c8b91d3a1b00ff4559c3327db0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
