# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Runtests.Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d0d1366895d58988430dccb8f09c5861bea51c39",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d0d1366895d58988430dccb8f09c5861bea51c39`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TestConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/testconfig--489362c2264273a38ff5843b.md) | 34 | `declaration-track:489362c2264273a38ff5843ba91cbeb1a28464b33dae32e2835072e8d253cf77` |
| 2 | `inductive` | [TestResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/testresult--22694c84a0f23c85cd2ac2d7.md) | 38 | `declaration-track:22694c84a0f23c85cd2ac2d7d4fe3e36badc2b883a7742f58b753df5ef03a752` |
| 3 | `def` | [copyFile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/copyfile--a861e876650bc14b884a998c.md) | 43 | `declaration-track:a861e876650bc14b884a998cdb84d07e9650c5b3b21a61cce6c2f08b5f12dc74` |
| 4 | `def` | [copyDirContents](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/copydircontents--013af3ecd214e20e72dfc6d6.md) | 47 | `declaration-track:013af3ecd214e20e72dfc6d639a9b6dcf01e4d150c12c70c44db1a9402497fc4` |
| 5 | `def` | [createAdditionalFiles](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/createadditionalfiles--9aa1f768274adadfe57bc2c8.md) | 60 | `declaration-track:9aa1f768274adadfe57bc2c8d5b85698d3ed789c8c93fb72bf867637a2541644` |
| 6 | `def` | [runCommandInDir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/runcommandindir--71e58a832cf292cd3a06e78d.md) | 76 | `declaration-track:71e58a832cf292cd3a06e78d991e358736516c453acd23f9cdbf719adbd1e549` |
| 7 | `def` | [readTestConfig](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/readtestconfig--900d3717d9a820d6c6a75ee9.md) | 85 | `declaration-track:900d3717d9a820d6c6a75ee9f1d2e6b21c617b024a086e71fd37c470cac6403e` |
| 8 | `def` | [getTempDir](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/gettempdir--349d08876bbe28580ec16eee.md) | 94 | `declaration-track:349d08876bbe28580ec16eee89ff56322157d50ea384b126e6d586f002b956b9` |
| 9 | `def` | [runTestProject](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/runtestproject--c6e6d18fe7d1b341b5535c8a.md) | 97 | `declaration-track:c6e6d18fe7d1b341b5535c8acff8dae51631d5e040d01873b41ba40682defc8c` |
| 10 | `def` | [findProjects](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/findprojects--9c32df80c8015741fe555313.md) | 130 | `declaration-track:9c32df80c8015741fe555313514de99d2187245fbee35092154f9c792de44046` |
| 11 | `def` | [printTestResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/printtestresult--3b926d9c4fe7fd0a00a9d49e.md) | 142 | `declaration-track:3b926d9c4fe7fd0a00a9d49eb8507e7e7b8cf8971db9fc85eb79eb919785758e` |
| 12 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Runtests/Variante661033e2f6de61a6885861d8bc5151b1f364ece56968d96488dbdf1544bedf7.lean/declarations/main--3ce48f86a6d6ecd69ad02533.md) | 153 | `declaration-track:3ce48f86a6d6ecd69ad0253352ce5cf1926e01d00695fb348a967825f64023a2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
