# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.TypeTheory.DependentTypeTheory.InductiveTypes.SourceComponents.Variantc0d071bb32068dd2.FactorGrammarConversions

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6c7c7fe016d931561daf1ae2eac20575405d9f0d",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/SourceComponents/Variantc0d071bb32068dd2/FactorGrammarConversions.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/SourceComponents/Variantc0d071bb32068dd2/FactorGrammarConversions.lean/index.md) · [Full source](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/SourceComponents/Variantc0d071bb32068dd2/FactorGrammarConversions.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6c7c7fe016d931561daf1ae2eac20575405d9f0d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/SourceComponents/Variantc0d071bb32068dd2/FactorGrammarConversions.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/SourceComponents/Variantc0d071bb32068dd2/FactorGrammarConversions.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.PrimePower` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticFactorTerm](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/SourceComponents/Variantc0d071bb32068dd2/FactorGrammarConversions.lean/declarations/arithmeticfactorterm--1440886db0f6279fde52fed3.md) | 36 | `declaration-track:1440886db0f6279fde52fed3931727c0a3c7339882e0e1b9b83d9e0c3d55f901` |
| 2 | `inductive` | [CellularFactorTerm](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/SourceComponents/Variantc0d071bb32068dd2/FactorGrammarConversions.lean/declarations/cellularfactorterm--5ef686a3c2d260aac1ec632a.md) | 43 | `declaration-track:5ef686a3c2d260aac1ec632a3f4af50aff187e7dfb00673ca3e3b567d04b06e5` |
| 3 | `def` | [arithmeticToCellular](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/SourceComponents/Variantc0d071bb32068dd2/FactorGrammarConversions.lean/declarations/arithmetictocellular--d1cd9367d5de0265ac46b164.md) | 50 | `declaration-track:d1cd9367d5de0265ac46b164dfcb25339efcd06e3d1d86346630adb44969efe0` |
| 4 | `def` | [cellularToArithmetic](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/SourceComponents/Variantc0d071bb32068dd2/FactorGrammarConversions.lean/declarations/cellulartoarithmetic--1fdf7fd3d9069c3d2d072be7.md) | 55 | `declaration-track:1fdf7fd3d9069c3d2d072be74ab31517ffdb15a7b00693486029b909e35d0bb3` |
| 5 | `theorem` | [cellularToArithmetic_arithmeticToCellular](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/SourceComponents/Variantc0d071bb32068dd2/FactorGrammarConversions.lean/declarations/cellulartoarithmetic-arithmetictocellular--17ac6f1faefd9e06a664fe35.md) | 60 | `result-track:17ac6f1faefd9e06a664fe350b2769788ac875addeb1305795df54a483f81826` |
| 6 | `theorem` | [arithmeticToCellular_cellularToArithmetic](../../../../../../../../mathematics/FoundationsLogicAndTypeTheory/TypeTheory/DependentTypeTheory/InductiveTypes/SourceComponents/Variantc0d071bb32068dd2/FactorGrammarConversions.lean/declarations/arithmetictocellular-cellulartoarithmetic--2a09b149560f07127518bb06.md) | 68 | `result-track:2a09b149560f07127518bb0612d1b8147b2869964a8bf089351dbe5b1ecf8835` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
