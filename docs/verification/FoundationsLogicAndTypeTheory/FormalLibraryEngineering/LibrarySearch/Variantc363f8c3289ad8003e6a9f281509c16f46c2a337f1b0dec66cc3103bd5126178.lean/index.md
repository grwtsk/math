# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibrarySearch.Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2296198ad773bb12be7a314a97f67b1dff8e05c5",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2296198ad773bb12be7a314a97f67b1dff8e05c5`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Util` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Try` — import line 14; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Basic` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/builtin-initialize--493daa0764b32d861bedee21.md) | 39 | `declaration-track:493daa0764b32d861bedee2168510f58619c8aff23015203b0ecbe8780359f08` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/builtin-initialize--a9c58ef431b419956bff4418.md) | 40 | `declaration-track:a9c58ef431b419956bff4418c5fc016627d886f754b43011dbc696e0d5e339fc` |
| 3 | `def` | [grindDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/grinddischarger--2c188028b156371920ac6301.md) | 50 | `declaration-track:2c188028b156371920ac630198e2a8f9c18f6f09bf84251c295b1db159fc105b` |
| 4 | `def` | [tryDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/trydischarger--c78c16dbb81758a83314bef3.md) | 74 | `declaration-track:c78c16dbb81758a83314bef3a435f670704bc4e472276406eeea2ca2adc43797` |
| 5 | `def` | [solveByElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/solvebyelim--a4e81e0b93db02eb4d82decc.md) | 104 | `declaration-track:a4e81e0b93db02eb4d82decc7cae8eda49b8f0f02bf95e4d9d7e4192feb3e300` |
| 6 | `inductive` | [DeclMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/declmod--3d0a029619c97b1794b32bee.md) | 126 | `declaration-track:3d0a029619c97b1794b32bee31844824f8f540c2aebf20e7253cd726eef2a7ed` |
| 7 | `def` | [CandidateFinder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/candidatefinder--265fbf40dd48867a845da4ec.md) | 136 | `declaration-track:265fbf40dd48867a845da4ec39b43cbc0f35a5a239ad38c9110d7649b6f87da8` |
| 8 | `def` | [addImport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/addimport--3827391bf2d3715b7b710de4.md) | 140 | `declaration-track:3827391bf2d3715b7b710de4f5472ed78df89185860eb4cc1b192ce1c477412a` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/builtin-initialize--1b2280073869dd53e1bb1e1f.md) | 161 | `declaration-track:1b2280073869dd53e1bb1e1f2b564bc43b398c4026d06d8004f02cead10bd59b` |
| 10 | `def` | [droppedKeys](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/droppedkeys--dba5b79a2006a9e94325e3f3.md) | 168 | `declaration-track:dba5b79a2006a9e94325e3f36aa5c0db3a0a470d81279914894048224d64bea6` |
| 11 | `def` | [constantsPerImportTask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/constantsperimporttask--e91a6612c1094086d0a97033.md) | 178 | `declaration-track:e91a6612c1094086d0a97033f5484ffe3ed9e8919011ca33acba469cc812676c` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/builtin-initialize--637a3130e44ffab711aba900.md) | 182 | `declaration-track:637a3130e44ffab711aba900e1b55c26f508d5161a7c890133890382e883fca4` |
| 13 | `def` | [libSearchFindDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/libsearchfinddecls--ec989006a31427a0b056372a.md) | 187 | `declaration-track:ec989006a31427a0b056372ad2c355fb8ec2c72cab86f18a11ef17fe8b034396` |
| 14 | `def` | [getStarLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/getstarlemmas--8e16644ebd703fe52a672255.md) | 196 | `declaration-track:8e16644ebd703fe52a672255859d3c762745f02f5e33aec21bfcc8cd37fc4f74` |
| 15 | `def` | [mkHeartbeatCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/mkheartbeatcheck--f12e6425452e6eac45ff200e.md) | 210 | `declaration-track:f12e6425452e6eac45ff200eb1cdca4b39fa67e05d922cd876de0cc4b0f23a71` |
| 16 | `def` | [interleaveWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/interleavewith--471065b5239d261287fec7af.md) | 224 | `declaration-track:471065b5239d261287fec7af67fb636bb266d8ddb04201fb4068a4a50dfd2d6a` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/builtin-initialize--72b9bb4152c7e89c0c7bc516.md) | 243 | `declaration-track:72b9bb4152c7e89c0c7bc5163cfee496e3cfea986b83f3838e75ccfee7b64584` |
| 18 | `def` | [abortSpeculation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/abortspeculation--7edbc4fdd13b392563c061a2.md) | 249 | `declaration-track:7edbc4fdd13b392563c061a218c10cc25f94fba299d3004af4c838b60b8bc622` |
| 19 | `def` | [isAbortSpeculation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/isabortspeculation--eb03c0b4990f916ced1507dd.md) | 253 | `declaration-track:eb03c0b4990f916ced1507dd7101a84224b889df79c1923ad8d02a7bb2fdd942` |
| 20 | `def` | [Candidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/candidate--5b1224777e6148df2554cdd1.md) | 263 | `declaration-track:5b1224777e6148df2554cdd107dfba5f69709b61a703e25431dcc40b8407980e` |
| 21 | `def` | [librarySearchSymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/librarysearchsymm--7457147a0e44d3e0fd5d10f8.md) | 268 | `declaration-track:7457147a0e44d3e0fd5d10f80fdd85cc12f54491aa70743ad36c35ac06dcd57c` |
| 22 | `def` | [mkLibrarySearchLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/mklibrarysearchlemma--14d8db28ac577549473e889d.md) | 284 | `declaration-track:14d8db28ac577549473e889d4352ca7610d2ce9d07b4e68b6bc893d4be320f3e` |
| 23 | `def` | [isVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/isvar--ce62e0e02b6c8293ab0795cf.md) | 291 | `declaration-track:ce62e0e02b6c8293ab0795cfc7da2bc5014f097fa5c246f765ea1cfd620e083b` |
| 24 | `def` | [librarySearchLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/librarysearchlemma--c33bf1a2e5a76838825e0f35.md) | 304 | `declaration-track:c33bf1a2e5a76838825e0f351a2f1b3cd2be4b7a955fbda8a9aee0e950a11cd5` |
| 25 | `def` | [tryOnEach](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/tryoneach--7f789de181a410921f27c1f2.md) | 333 | `declaration-track:7f789de181a410921f27c1f25a2603c4884e4770dbf04890fa9bd935e21450ef` |
| 26 | `def` | [librarySearch'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/librarysearch--f4bba7531640f7eb3d3f7d8b.md) | 354 | `declaration-track:f4bba7531640f7eb3d3f7d8b576439e318c336480f83f692f94bf1a3a6e9e2be` |
| 27 | `def` | [librarySearch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variantc363f8c3289ad8003e6a9f281509c16f46c2a337f1b0dec66cc3103bd5126178.lean/declarations/librarysearch--f180781c8debe7b80c2d1452.md) | 411 | `declaration-track:f180781c8debe7b80c2d14524a3382dc9cc3ea364f4266d723a52d2d6077dfe1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
