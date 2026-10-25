# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.StepSize.Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cf00a615b69fe8cb66f24abf6577d2f543f37c8",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cf00a615b69fe8cb66f24abf6577d2f543f37c8`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Iterators.Types.StepSizeIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/declarations/iterators-types-stepsizeiterator--8dbbab4f1c1680f18df3bdef.md) | 31 | `declaration-track:8dbbab4f1c1680f18df3bdef91b2611e2adc8d0ea97d1cf097f1b7145368bee5` |
| 2 | `def` | [IterM.stepSize](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/declarations/iterm-stepsize--4ab11250fdfefa7ddeeeece8.md) | 61 | `declaration-track:4ab11250fdfefa7ddeeeece8a5dd908d65f87cc726c69072c0b009efd9ad7ac2` |
| 3 | `instance` | [StepSizeIterator.instIterator](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/declarations/stepsizeiterator-institerator--7e11629357e8a05ba36e7b58.md) | 68 | `declaration-track:7e11629357e8a05ba36e7b589263927961adc5a981d55fbd3b9e449aa6e6376c` |
| 4 | `def` | [StepSizeIterator.instFinitenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/declarations/stepsizeiterator-instfinitenessrelation--d5b9912eed2cf750ad238b86.md) | 89 | `declaration-track:d5b9912eed2cf750ad238b8614fcaa7354bead722f4202b9cf0f24f93179f3d6` |
| 5 | `instance` | [StepSizeIterator.instFinite](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/declarations/stepsizeiterator-instfinite--1e744c859b54ac4be8bc3ed0.md) | 119 | `declaration-track:1e744c859b54ac4be8bc3ed0c7b0cb3a055ccf7cbb33b77d0b59484486e036cf` |
| 6 | `def` | [StepSizeIterator.instProductivenessRelation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/declarations/stepsizeiterator-instproductivenessrelation--08ea0c500d0cc4673cf41e1e.md) | 123 | `declaration-track:08ea0c500d0cc4673cf41e1eb3c0b886584796d360f17dd49395034ba469c80b` |
| 7 | `instance` | [StepSizeIterator.instProductive](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/declarations/stepsizeiterator-instproductive--40e3b78e4dc03890f8f28b7a.md) | 143 | `declaration-track:40e3b78e4dc03890f8f28b7a224fa3195ba4e13eab6e492b1e44341ab09262c3` |
| 8 | `instance` | [StepSizeIterator.instIteratorLoop](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/StepSize/Variant468b22a3ce13d5fc86680ed4f3ba43e3484239be2865fc9ea06f0af9cf8da2ea.lean/declarations/stepsizeiterator-institeratorloop--a3b60cee4a2a46365d50a349.md) | 147 | `declaration-track:a3b60cee4a2a46365d50a3498ffcda6ca94fc906e95fd61c38bfa2bc3c14145c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
