# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BethCatalogue.Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "34236f82d953112c477c6249d29ca31e073ede92",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `34236f82d953112c477c6249d29ca31e073ede92`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.MathematicalTooling.Coverage.CardinalCounterexamples` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Coverage.Cardinal` — import line 7; external provider; requires a separately pinned dependency.
- `FormalResearch.MathematicalTooling.Coverage.UniverseBounds` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [BethAmbient](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/declarations/bethambient--0629e000e711460dc3600375.md) | 28 | `declaration-track:0629e000e711460dc360037544c3384ca8bd922b4793e560df4a336e81ef714a` |
| 2 | `def` | [bethPrefix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/declarations/bethprefix--a713a64c111d621fb42e5328.md) | 31 | `declaration-track:a713a64c111d621fb42e53286f9262fe0b42a39bbb6f55515ac94b50da7cc0bf` |
| 3 | `def` | [bethPrefixEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/declarations/bethprefixequiv--277caa694008735204e6e4ad.md) | 34 | `declaration-track:277caa694008735204e6e4ada3cde4614369f466f48ae3d859a713cb3397e521` |
| 4 | `theorem` | [bethPrefix_monotone](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/declarations/bethprefix-monotone--9ee1574488f76d0179a04f12.md) | 40 | `result-track:9ee1574488f76d0179a04f12afe8297d4af8ed54cce4bd2dcd7ae869446ecc74` |
| 5 | `theorem` | [bethPrefix_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/declarations/bethprefix-card--dd0e9365a6fe61818b0b6120.md) | 42 | `result-track:dd0e9365a6fe61818b0b61201d5c939cc40f7289f90fd9b4ef901e818e210bf9` |
| 6 | `theorem` | [bethPrefix_reconstruct](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/declarations/bethprefix-reconstruct--6252016bc4a08d44db835465.md) | 60 | `result-track:6252016bc4a08d44db8354650eae6284c95fc7ecda817f3bb26175abc9dc18c5` |
| 7 | `def` | [bethNestedCatalogue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/declarations/bethnestedcatalogue--3fd48d01a6259cbcd849d688.md) | 66 | `declaration-track:3fd48d01a6259cbcd849d68831e24ebe4cb9ff48884e7dfc06a09d591a26eef8` |
| 8 | `theorem` | [bethNestedCatalogue_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/declarations/bethnestedcatalogue-eq--69e33b9c180c5d3ce942abe4.md) | 68 | `result-track:69e33b9c180c5d3ce942abe41015a52b917978e66549201603448bde0de569f2` |
| 9 | `theorem` | [bethPrefix_restriction_mem](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/declarations/bethprefix-restriction-mem--c0a940711544b5ef0fbfb00f.md) | 78 | `result-track:c0a940711544b5ef0fbfb00fcdfe57d56d30faa1cdc4d81ed6d2f4423bef89cd` |
| 10 | `theorem` | [bethNestedCatalogue_card](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/declarations/bethnestedcatalogue-card--a8d67b6ce70291c5bf1ab5c7.md) | 83 | `result-track:a8d67b6ce70291c5bf1ab5c782e6cae71b6b693f34de5f99a49538b2cfa797fd` |
| 11 | `theorem` | [bethNested_subsets_exceed_catalogue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BethCatalogue/Variant8d7357fa7bfd515a8884cc478aa24a2da307ca6295ffc7b87ce5c955cd94a9ea.lean/declarations/bethnested-subsets-exceed-catalogue--bc43cbaa6b867a6ffce7d9d7.md) | 107 | `result-track:bc43cbaa6b867a6ffce7d9d73b4b24cfec129d0afd5e4f43006c5be951180e71` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
