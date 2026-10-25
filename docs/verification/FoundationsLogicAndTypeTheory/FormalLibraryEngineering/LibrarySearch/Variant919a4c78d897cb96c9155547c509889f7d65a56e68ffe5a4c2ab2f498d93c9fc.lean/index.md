# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LibrarySearch.Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b3d84ef9726b00b6f49899af6fc8be93b1623e6b",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b3d84ef9726b00b6f49899af6fc8be93b1623e6b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Grind.Util` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Try` — import line 19; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Basic` — import line 20; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/builtin-initialize--d2761658eae1da635430a4a7.md) | 47 | `declaration-track:d2761658eae1da635430a4a7ac963040c1e15451ed0c368927e3b264b9c79a06` |
| 2 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/builtin-initialize--649c07ca8d06576d1d4c37f6.md) | 48 | `declaration-track:649c07ca8d06576d1d4c37f6d4763f2dc18f2edd6e0d510e91cc06b751255acd` |
| 3 | `def` | [grindDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/grinddischarger--d3400b92bd2ac1f539048be4.md) | 58 | `declaration-track:d3400b92bd2ac1f539048be4e4db4bf74a3b4478857eca93cb09f5a1e7aed30c` |
| 4 | `def` | [tryDischarger](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/trydischarger--9fa0def41106c95788477e3a.md) | 82 | `declaration-track:9fa0def41106c95788477e3ac9f4379dc4baab6c53eb041d4d3509c87ca8b63b` |
| 5 | `def` | [solveByElim](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/solvebyelim--36ed1371223009bc41e44871.md) | 112 | `declaration-track:36ed1371223009bc41e44871e3aa80ee1f940e3f3e8f49c0d6c9e3de19feaa9b` |
| 6 | `inductive` | [DeclMod](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/declmod--2eb82f4ecc2c00813abc0ba8.md) | 134 | `declaration-track:2eb82f4ecc2c00813abc0ba8f59a6a484b9f34ea85a3d71cc5f98d72681e20b1` |
| 7 | `def` | [CandidateFinder](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/candidatefinder--90c1716e31c48b94cc6ab671.md) | 144 | `declaration-track:90c1716e31c48b94cc6ab671bc0f53f2b2ba9f9098faf464dcae91c11b1bb669` |
| 8 | `def` | [addImport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/addimport--78e0c121f8428468899ff1b3.md) | 148 | `declaration-track:78e0c121f8428468899ff1b3060babab3f68cbc695a68d380582e1ea8bdd95e2` |
| 9 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/builtin-initialize--bf70dfe875de208c2be0b1fd.md) | 169 | `declaration-track:bf70dfe875de208c2be0b1fd3ad0faeb281725178bbb8fb3dda24f1aae28e135` |
| 10 | `def` | [droppedKeys](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/droppedkeys--c7d45cbe0617aabda460df65.md) | 176 | `declaration-track:c7d45cbe0617aabda460df65c2c21bef27b86f76294dc2c7c471af1f83e57602` |
| 11 | `def` | [constantsPerImportTask](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/constantsperimporttask--b889354de91b2352e1a3b750.md) | 186 | `declaration-track:b889354de91b2352e1a3b7509a42a60872e2e01e2d0640d69efa175ee798c4e7` |
| 12 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/builtin-initialize--5e303851122c8c313f1e6b21.md) | 190 | `declaration-track:5e303851122c8c313f1e6b2152eddbce1d05c26fec58c94fa819b8833312f25a` |
| 13 | `def` | [libSearchFindDecls](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/libsearchfinddecls--e18c7a8e9f0ada6488b6c056.md) | 195 | `declaration-track:e18c7a8e9f0ada6488b6c056ca6d7fa190fe783eafe6083f1cd347bed6d00d44` |
| 14 | `def` | [getStarLemmas](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/getstarlemmas--97575be5c28c5133f952b192.md) | 204 | `declaration-track:97575be5c28c5133f952b192260cbb41a8ef7e181c04980e721c8fec67c1bf17` |
| 15 | `def` | [mkHeartbeatCheck](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/mkheartbeatcheck--cfb5a7c66ae327873f9679e3.md) | 218 | `declaration-track:cfb5a7c66ae327873f9679e3b321c52b805a982cfa4694ac1f1337b0c0db68b6` |
| 16 | `def` | [interleaveWith](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/interleavewith--10bddea50c086da634f42b0b.md) | 232 | `declaration-track:10bddea50c086da634f42b0b3e1e1e9d75296bcb80ee2ea5290ed91e1bf0ebef` |
| 17 | `builtin_initialize` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/builtin-initialize--a55b53fd36cb5c133d21703e.md) | 251 | `declaration-track:a55b53fd36cb5c133d21703ea8fb244326e109442ad52c602bb12e6bab70f95b` |
| 18 | `def` | [abortSpeculation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/abortspeculation--da72fb90e0f1fa7311e5e4be.md) | 257 | `declaration-track:da72fb90e0f1fa7311e5e4bee9aacf2c0a8de16555cd9b3de5221804dcafb110` |
| 19 | `def` | [isAbortSpeculation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/isabortspeculation--97665d5a3fba26175a450cc3.md) | 261 | `declaration-track:97665d5a3fba26175a450cc3ac665616fa7e878d06cda61f399fb19e3def646c` |
| 20 | `def` | [Candidate](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/candidate--765fef02979f44bccdee4928.md) | 271 | `declaration-track:765fef02979f44bccdee49287e808d18b23001e93ed76a1f44b63d962ec5e768` |
| 21 | `def` | [librarySearchSymm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/librarysearchsymm--f241ba9dc0219b3d85c01652.md) | 276 | `declaration-track:f241ba9dc0219b3d85c0165239833477ad7df83d889a5d8b71a4e61409b098fb` |
| 22 | `def` | [mkLibrarySearchLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/mklibrarysearchlemma--bd1c7617e9ee28d96cbab41d.md) | 292 | `declaration-track:bd1c7617e9ee28d96cbab41d340d08a72d6008369bbee6c1d3601b5647daeded` |
| 23 | `def` | [isVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/isvar--0382b5876fe760a2623faabe.md) | 299 | `declaration-track:0382b5876fe760a2623faabe73661d4940de2fcadcf89e16b5df6fcc9158716c` |
| 24 | `def` | [librarySearchLemma](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/librarysearchlemma--759a429d8cd76797a158fa9a.md) | 312 | `declaration-track:759a429d8cd76797a158fa9a5e044773068e51a38e9d61c8973e191753528b2f` |
| 25 | `def` | [tryOnEach](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/tryoneach--58849f1a7a786423593a7dd5.md) | 341 | `declaration-track:58849f1a7a786423593a7dd5c31b5e5d58d1813c7510703740e47306852b6a75` |
| 26 | `def` | [librarySearch'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/librarysearch--941ae5aff36c64605c9c06c0.md) | 362 | `declaration-track:941ae5aff36c64605c9c06c05deb68e5784a163f17469fcae178b8057d947d31` |
| 27 | `def` | [librarySearch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/LibrarySearch/Variant919a4c78d897cb96c9155547c509889f7d65a56e68ffe5a4c2ab2f498d93c9fc.lean/declarations/librarysearch--8b1d570cc503079278310797.md) | 419 | `declaration-track:8b1d570cc503079278310797d7a131089ed0ea43b4ae578159df3b17032aec76` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
