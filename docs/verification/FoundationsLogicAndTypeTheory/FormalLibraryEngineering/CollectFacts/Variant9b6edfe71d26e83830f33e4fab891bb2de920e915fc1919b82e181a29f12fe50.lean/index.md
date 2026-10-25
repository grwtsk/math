# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CollectFacts.Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "65d43f730c39982962b0c61018d412b1ba90d4ba",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `65d43f730c39982962b0c61018d412b1ba90d4ba`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean.json)

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
| 1 | `inductive` | [AtomicFact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/declarations/atomicfact--8b27fb6a52c5a8d41aed4896.md) | 26 | `declaration-track:8b27fb6a52c5a8d41aed4896342e02746e69bffc68665e9dac2e5847d2f5f8f8` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/declarations/instance--733a860f012e76aa9bed67f2.md) | 40 | `declaration-track:733a860f012e76aa9bed67f20db33ae82ea5eaa5e2a71877b0f53987d40d3acf` |
| 3 | `abbrev` | [CollectFactsState](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/declarations/collectfactsstate--3faaab77b62d0cdd16d5a116.md) | 55 | `declaration-track:3faaab77b62d0cdd16d5a116acb06d1fdecfeb5ed4ef23c25a6a978c6a4634a4` |
| 4 | `abbrev` | [CollectFactsM](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/declarations/collectfactsm--286339e9b9d5d163236abfec.md) | 58 | `declaration-track:286339e9b9d5d163236abfec7eb9d91e80d39ea343078a032a5ff94b6d0bdd42` |
| 5 | `def` | [addType](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/declarations/addtype--1d034c81a17f276ad4b03d4a.md) | 63 | `declaration-track:1d034c81a17f276ad4b03d4a88ec6cf4325802d4bc7c40b47594a8d8bf741937` |
| 6 | `def` | [addFact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/declarations/addfact--361050793bc21d52317429cd.md) | 71 | `declaration-track:361050793bc21d52317429cd54ffa2365e003601b7af53402111e0fa521ffb71` |
| 7 | `def` | [addAtom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/declarations/addatom--8dba6c7672aa6c92c87b06dd.md) | 77 | `declaration-track:8dba6c7672aa6c92c87b06dd121042839775320e238291764ef085d020771a62` |
| 8 | `def` | [collectFactsImp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/declarations/collectfactsimp--24025a3c9dacc12d3a73cd59.md) | 100 | `declaration-track:24025a3c9dacc12d3a73cd599d66398017c8325aa496023dfc12ed884646d386` |
| 9 | `def` | [collectFacts](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/CollectFacts/Variant9b6edfe71d26e83830f33e4fab891bb2de920e915fc1919b82e181a29f12fe50.lean/declarations/collectfacts--ded8ec70eedf17f17f9deb7c.md) | 171 | `declaration-track:ded8ec70eedf17f17f9deb7c299bd81637f70a47ef06bd6112e8b8fe8a48bf18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
