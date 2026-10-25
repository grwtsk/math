# Verification target: GRWTSK.Logic.InformationLoss.LinearObservationKernels

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89ccada5df2c052fbc97522159eabfa4ce2aae7f",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/InformationLoss/LinearObservationKernels.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/LinearObservationKernels.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/LinearObservationKernels.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89ccada5df2c052fbc97522159eabfa4ce2aae7f`.

Source path: `GRWTSK/Logic/InformationLoss/LinearObservationKernels.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/InformationLoss/LinearObservationKernels.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.InformationLoss.AugmentedRepairCriterion`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/AugmentedRepairCriterion.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.LinearAlgebra.Prod` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [pairedLinearObservation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/LinearObservationKernels.lean/declarations/pairedlinearobservation--3e166e307a7abb4cc2d6faad.md) | 32 | `declaration-track:3e166e307a7abb4cc2d6faad6a55a29ca95eeaafa57ad9d00875b7afc793695a` |
| 2 | `theorem` | [pairedLinear_zero_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/LinearObservationKernels.lean/declarations/pairedlinear-zero-iff--abef159fa1f70710ac8fdc6e.md) | 37 | `result-track:abef159fa1f70710ac8fdc6eeed3b8fb5a135605ae92b0a90e58e76fc643df89` |
| 3 | `theorem` | [linear_fiberConstant_iff_kernelContainment](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/LinearObservationKernels.lean/declarations/linear-fiberconstant-iff-kernelcontainment--2a2b8962d11921467fff35e4.md) | 43 | `result-track:2a2b8962d11921467fff35e4467bc3a9dd641914fea551dfbd2d9242d232e38e` |
| 4 | `theorem` | [linear_augmented_unique_reconstruction_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/LinearObservationKernels.lean/declarations/linear-augmented-unique-reconstruction-iff--9b80cd0d3ccfd1715df5d745.md) | 63 | `result-track:9b80cd0d3ccfd1715df5d7457ae9b96b91d3fd3929bd98970eadedea20ba6d78` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
