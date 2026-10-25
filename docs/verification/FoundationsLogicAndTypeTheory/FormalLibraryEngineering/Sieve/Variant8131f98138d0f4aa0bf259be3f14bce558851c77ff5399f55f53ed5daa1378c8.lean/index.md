# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sieve.Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d9427eba94fdb0ece26e90b26aa4adda7e243100",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d9427eba94fdb0ece26e90b26aa4adda7e243100`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FCRS.ControlledPlane.Foundations` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [FactoringSieve](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/factoringsieve--67a2810bd1d8241d22490ef6.md) | 11 | `declaration-track:67a2810bd1d8241d22490ef659dfeb308f9abfbff5549c2938656038fc883290` |
| 2 | `structure` | [TraversalOccurrence](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/traversaloccurrence--51e34e5b55392f7f0087b15e.md) | 23 | `declaration-track:51e34e5b55392f7f0087b15e33a8111f9c315ca7932d21ecec7d8566acf4edc1` |
| 3 | `structure` | [TraversalTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/traversaltransport--e0974849ebf456927be9412d.md) | 29 | `declaration-track:e0974849ebf456927be9412d0c1f1dd024817876fd7c45797916d7ebc600acc1` |
| 4 | `structure` | [SieveTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/sievetransport--a4903f1ec9df17fbfc3ed07a.md) | 42 | `declaration-track:a4903f1ec9df17fbfc3ed07aa7b76457274e35aa4a70de64dd0ae73ba62ea259` |
| 5 | `def` | [toTraversalTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/totraversaltransport--b4ade744e35f449f98271dfa.md) | 71 | `declaration-track:b4ade744e35f449f98271dfa36e6df1d7e818899a7ceca614b020b383ee22d50` |
| 6 | `def` | [AdmissibleEdge](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/admissibleedge--e042ebfd7e258abe11f62327.md) | 93 | `declaration-track:e042ebfd7e258abe11f623274f05fabe5998e59d841336b877000b36a87bf1ee` |
| 7 | `theorem` | [admissibleEdge_preserved_of_sieveTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/admissibleedge-preserved-of-sievetransport--490c6d2b9f77711fd23fa65b.md) | 107 | `result-track:490c6d2b9f77711fd23fa65bd8a94a93bdf2c087fecdcad577cf19b0fa114fb9` |
| 8 | `structure` | [TraversalWeight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/traversalweight--f73539d156609c1f3600ab1a.md) | 127 | `declaration-track:f73539d156609c1f3600ab1a2e61630fe1faba6de44324b5fcbff9d9a4f2f4b0` |
| 9 | `def` | [AdmissibilityWeightSound](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/admissibilityweightsound--0d986b77302b8eff05f1a61d.md) | 131 | `declaration-track:0d986b77302b8eff05f1a61df23a6894b50b8cde19f655cc1450cb45678aafe1` |
| 10 | `def` | [TraversalWeightCorrect](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/traversalweightcorrect--3024ba589aa127906aff675c.md) | 143 | `declaration-track:3024ba589aa127906aff675c1bc058fe9615864324ad45c4ec4e797a584c0491` |
| 11 | `def` | [OccurrencePreserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/occurrencepreserved--01236f83399642fbfe8140a9.md) | 150 | `declaration-track:01236f83399642fbfe8140a9772449ee044d9e9535293ebfc42fc2a08fac4b95` |
| 12 | `theorem` | [occurrencePreserved_of_sieveTransport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/occurrencepreserved-of-sievetransport--c58d6aa624d6b8f465493efb.md) | 161 | `result-track:c58d6aa624d6b8f465493efb564879933c0bdaf837abe36cad932c13fb44a315` |
| 13 | `def` | [TraversalWeightPreserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/traversalweightpreserved--698d3013bad29207c6bda82b.md) | 178 | `declaration-track:698d3013bad29207c6bda82bc177e855513bf48ebbbbad70328267a59e5c64a3` |
| 14 | `def` | [TraversalPreserved](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/traversalpreserved--84538d0596b41716d3fbd29b.md) | 193 | `declaration-track:84538d0596b41716d3fbd29bf3c04f677ba529eb3925e6f72165afd852bf9ea9` |
| 15 | `theorem` | [admissibleEdge_of_positiveWeight](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Sieve/Variant8131f98138d0f4aa0bf259be3f14bce558851c77ff5399f55f53ed5daa1378c8.lean/declarations/admissibleedge-of-positiveweight--507857ae86bf1d56c7902142.md) | 206 | `result-track:507857ae86bf1d56c79021422d9085c153c5f4d3d4b188942d230ecfaba39107` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
