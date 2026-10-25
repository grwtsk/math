# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RunningStats.Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "241d573f36054d49819e961a7ce4844ff9a4af63",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `241d573f36054d49819e961a7ce4844ff9a4af63`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024.lean.json)

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
| 1 | `structure` | [RunningStats](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024.lean/declarations/runningstats--d9bb3017a380d5133a6170ef.md) | 39 | `declaration-track:d9bb3017a380d5133a6170ef69a7dc0aa9c2a372ffdd46a5e5cbb4d143127ff3` |
| 2 | `def` | [push](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024.lean/declarations/push--65a6bb80e7c08069b9e2f88a.md) | 53 | `declaration-track:65a6bb80e7c08069b9e2f88a8f43fb07091a5677c5a7519343b11541d0bb8f93` |
| 3 | `def` | [variance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024.lean/declarations/variance--d6b7fe9827b17cd47a02200b.md) | 61 | `declaration-track:d6b7fe9827b17cd47a02200b05dd54be23b0048b3f584e6f2db97e67d1948039` |
| 4 | `def` | [sampleVariance](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024.lean/declarations/samplevariance--c3cae902114eef59bd011786.md) | 66 | `declaration-track:c3cae902114eef59bd011786cdc7f162545b6705a53cb8f1cede8441f22210bb` |
| 5 | `def` | [standardDeviation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024.lean/declarations/standarddeviation--09a6d855ab546bba8f2c51a2.md) | 71 | `declaration-track:09a6d855ab546bba8f2c51a2e3fd7f61fc2dc304ee83fede6d20adba94a8ae68` |
| 6 | `def` | [sampleStandardDeviation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RunningStats/Variante2bc9d8804afc4356f26c286c9d9c37d0e844f1513173229c632fca931b49024.lean/declarations/samplestandarddeviation--46ef3f87e3334075182d7e31.md) | 76 | `declaration-track:46ef3f87e3334075182d7e31f1e64fd17aa96d1a597c615efc027f0d0fcb0ab0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
