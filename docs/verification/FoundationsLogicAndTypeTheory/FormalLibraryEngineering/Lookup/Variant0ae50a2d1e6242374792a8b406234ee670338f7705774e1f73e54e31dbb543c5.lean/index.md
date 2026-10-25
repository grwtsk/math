# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lookup.Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f70e61579572899e433ea009064c28e4e58187f4",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f70e61579572899e433ea009064c28e4e58187f4`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Lean.Meta.RefinedDiscrTree.Encode` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [findKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/findkey--7692d475a4542221d26572f1.md) | 23 | `declaration-track:7692d475a4542221d26572f18758ef867f55da25b1d954497eef159e25e6e674` |
| 2 | `structure` | [Context](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/context--41a58f83c6492b9a3f5b9f91.md) | 26 | `declaration-track:41a58f83c6492b9a3f5b9f91ccc8d8f78dd101a3bda7d38b139ce92cfce7c043` |
| 3 | `structure` | [State](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/state--9dc132b7130025948903384c.md) | 29 | `declaration-track:9dc132b7130025948903384cadd491215c06a46370d1c5227d27d101909ee520` |
| 4 | `abbrev` | [M](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/m--2788e61ed714adf581283b91.md) | 38 | `declaration-track:2788e61ed714adf581283b91be4c3a11fcc3fc765b8e56b0b83ba7aca5d5df7f` |
| 5 | `def` | [M.run](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/m-run--1829e3690ac794d86f650865.md) | 41 | `declaration-track:1829e3690ac794d86f650865c14c6bbf6df92614413594859be4c2eadd0d9368` |
| 6 | `def` | [incrementScore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/incrementscore--e8590e748f787bd802251ea8.md) | 46 | `declaration-track:e8590e748f787bd802251ea894bc7012e7dbad9deed96fbbcf6c1a1b319d4c84` |
| 7 | `def` | [insertStarAssignment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/insertstarassignment--e81b30debdc1ffc7dcab3d16.md) | 50 | `declaration-track:e81b30debdc1ffc7dcab3d16c19b4c9a7e6d12a432567de02545279f29146306` |
| 8 | `def` | [assignMVar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/assignmvar--611c1ab4810abaf144a4df1f.md) | 54 | `declaration-track:611c1ab4810abaf144a4df1f754cd048590a5f0eacbd32d9231a04ed5711ba3c` |
| 9 | `def` | [skipEntries](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/skipentries--5e08284555f489a39262321c.md) | 62 | `declaration-track:5e08284555f489a39262321c3a0ee21a07cd698add6a515062d0ef67ded721e2` |
| 10 | `def` | [matchTargetStar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/matchtargetstar--d1aa410a98b93a21fe2590e4.md) | 70 | `declaration-track:d1aa410a98b93a21fe2590e4b7de873df5ebf8f0b5b58323704139b16dfd197a` |
| 11 | `def` | [matchTreeStars](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/matchtreestars--492075158f1b6c234f1e6466.md) | 82 | `declaration-track:492075158f1b6c234f1e646692c9f70422f9494572f01995fe93da7bead86832` |
| 12 | `def` | [matchExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/matchexpr--2f089cc220cfce85ddc60e27.md) | 98 | `declaration-track:2f089cc220cfce85ddc60e27e5d310ba364919003336e753bb864bdc28b53e73` |
| 13 | `def` | [exactMatch](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/exactmatch--0827db07b22a9263480f0660.md) | 109 | `declaration-track:0827db07b22a9263480f0660dcd8280ff75de1924b77318b28df958b68aca429` |
| 14 | `def` | [getMatchWithScoreAux](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/getmatchwithscoreaux--97b6cb7a42e46629984904c6.md) | 135 | `declaration-track:97b6cb7a42e46629984904c667607783f15e4a12b250e4bd9a050120e9af961a` |
| 15 | `def` | [getMatchWithScore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/getmatchwithscore--fa3a2b63d277228e70e562a7.md) | 165 | `declaration-track:fa3a2b63d277228e70e562a7daa4d5c92c392d27476af9ac35d33faa984fc705` |
| 16 | `def` | [getMatchWithScoreWithExtra](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lookup/Variant0ae50a2d1e6242374792a8b406234ee670338f7705774e1f73e54e31dbb543c5.lean/declarations/getmatchwithscorewithextra--4e23a1c99366b8bb8e842bf9.md) | 173 | `declaration-track:4e23a1c99366b8bb8e842bf90e4c137a3bf67f50ee323790e826b8b6c9661a81` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
