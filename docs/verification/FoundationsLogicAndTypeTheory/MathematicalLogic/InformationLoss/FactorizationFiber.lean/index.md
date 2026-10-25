# Verification target: GRWTSK.Logic.InformationLoss.FactorizationFiber

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3f58f67ffca2894a7350fecfd78a9fa65b9bc9fd",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Logic/InformationLoss/FactorizationFiber.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiber.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiber.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3f58f67ffca2894a7350fecfd78a9fa65b9bc9fd`.

Source path: `GRWTSK/Logic/InformationLoss/FactorizationFiber.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Logic/InformationLoss/FactorizationFiber.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Logic.Function.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [FactorsThrough](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiber.lean/declarations/factorsthrough--242c7db6f101cad0b8ddfb94.md) | 33 | `declaration-track:242c7db6f101cad0b8ddfb941084c59f55700c2187fb4cf9b2012ddc577d1186` |
| 2 | `theorem` | [eq_of_factorsThrough](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiber.lean/declarations/eq-of-factorsthrough--e5c123619c559d7bce2edf34.md) | 38 | `result-track:e5c123619c559d7bce2edf34cef40b2bf304950f64c7aa393d36863de535d067` |
| 3 | `theorem` | [not_factorsThrough_of_collision](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiber.lean/declarations/not-factorsthrough-of-collision--93849ccbf6d5e827fe5a4123.md) | 49 | `result-track:93849ccbf6d5e827fe5a4123a9be690f5563cd538d1764be277c1dd994a38a73` |
| 4 | `def` | [augmentedProfile](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiber.lean/declarations/augmentedprofile--ae442a0b27640f6cf6b39f87.md) | 62 | `declaration-track:ae442a0b27640f6cf6b39f871fef5b213baeae2c695f8a00fb35e090cd14c593` |
| 5 | `theorem` | [augmentedProfile_separates](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/InformationLoss/FactorizationFiber.lean/declarations/augmentedprofile-separates--1dc071646856f67cd06c0ea6.md) | 69 | `result-track:1dc071646856f67cd06c0ea6df8cc53e411fc67d9b62f55c522feac0d154112f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
