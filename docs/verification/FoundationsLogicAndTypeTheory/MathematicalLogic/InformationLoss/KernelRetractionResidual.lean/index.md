# Verification target: GRWTSK.Logic.InformationLoss.KernelRetractionResidual

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a23da086c9a61578d22551febec5ca677beb8f69",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/InformationLoss/KernelRetractionResidual.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRetractionResidual.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRetractionResidual.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a23da086c9a61578d22551febec5ca677beb8f69`.

Source path: `GRWTSK/Logic/InformationLoss/KernelRetractionResidual.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/InformationLoss/KernelRetractionResidual.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.InformationLoss.KernelSplittingSharpness`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelSplittingSharpness.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [kernelRetractionResidual](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRetractionResidual.lean/declarations/kernelretractionresidual--4b44e8a058e8a31792856ebc.md) | 27 | `declaration-track:4b44e8a058e8a31792856ebca70fab7efe583dd018488aa24315f65586d03bf6` |
| 2 | `theorem` | [kernelRetractionResidual_preserves_observation](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRetractionResidual.lean/declarations/kernelretractionresidual-preserves-observation--726f5c4c7d9b6235b7fe22ee.md) | 32 | `result-track:726f5c4c7d9b6235b7fe22ee84234ece152c462df888cbd7cd1e2048755152d9` |
| 3 | `theorem` | [kernelRetractionResidual_projection_zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRetractionResidual.lean/declarations/kernelretractionresidual-projection-zero--edc83fd0897473718a041389.md) | 42 | `result-track:edc83fd0897473718a04138999e3b1266b802d86aa8404adabec023f8d1cf57f` |
| 4 | `theorem` | [kernelRetraction_decompose](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/KernelRetractionResidual.lean/declarations/kernelretraction-decompose--ed3842f3ed3bb1feb4643136.md) | 54 | `result-track:ed3842f3ed3bb1feb46431369f40f899158eca45a644786800bb4e14cd43f1c0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
