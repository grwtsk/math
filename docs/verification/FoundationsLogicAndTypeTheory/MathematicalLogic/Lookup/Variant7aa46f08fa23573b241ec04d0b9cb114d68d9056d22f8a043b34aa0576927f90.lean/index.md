# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Lookup.Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99a4f743874de572c925f121ed858c9a66650fb9",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99a4f743874de572c925f121ed858c9a66650fb9`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.SourceTree.Legacy.Compression.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Think.SourceTree.Legacy.Compression.NormalForm` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LookupPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppath--d639ba21eeec37c7d8a02fbf.md) | 16 | `declaration-track:d639ba21eeec37c7d8a02fbf34a873adf6277e7c29a93ffa184c096454332484` |
| 2 | `def` | [listGet?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/listget--6eb33b0beb51b90527d65078.md) | 20 | `declaration-track:6eb33b0beb51b90527d650786011f8e1a5954ee72798a4d71e7afdfa1fd60e27` |
| 3 | `def` | [pathIndex](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/pathindex--501bf7f618832b8f04d7bdad.md) | 25 | `declaration-track:501bf7f618832b8f04d7bdada0a240cac8b15351d457a005edcb0452821b2465` |
| 4 | `inductive` | [LookupPathAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppathat--d95da641e8f41bd3d305fb75.md) | 29 | `declaration-track:d95da641e8f41bd3d305fb7580fa5bde2a95345befd13e9091aed96906870d3a` |
| 5 | `def` | [canonicalLookupPathAt](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/canonicallookuppathat--4ec51b9b6a3dfaa7ee3e8923.md) | 33 | `declaration-track:4ec51b9b6a3dfaa7ee3e8923b3240878475d224fd8209faca6a42c78c781761c` |
| 6 | `def` | [lookupPathAtToPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppathattopath--4074b0484feb3ade760886e1.md) | 38 | `declaration-track:4074b0484feb3ade760886e173189a4eed6d619597ebc7f52d7edfb6b87c9474` |
| 7 | `theorem` | [lookup_fiber_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookup-fiber-subsingleton--34f65ed76316cd08dcbf8710.md) | 44 | `result-track:34f65ed76316cd08dcbf871038244e24b202806ee967cdb5e98a366f9cb807b0` |
| 8 | `instance` | [lookupPathAtSubsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppathatsubsingleton--9da5bbb1e43d44af2ce95be7.md) | 53 | `declaration-track:9da5bbb1e43d44af2ce95be7d5d7d630b027302291c3fe8ff421333a33f443c3` |
| 9 | `theorem` | [lookup_fiber_inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookup-fiber-inhabited--9999ab137775cc74a09328b8.md) | 58 | `result-track:9999ab137775cc74a09328b8d041500514e601e2b49656b1f3a92167fd83c150` |
| 10 | `theorem` | [lookup_fiber_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookup-fiber-unique--dbed95b09dddc22fd7b20d54.md) | 63 | `result-track:dbed95b09dddc22fd7b20d54fc9ef5bf9c25ac5068bf5b4fd3e6b0d70995efa8` |
| 11 | `def` | [lookupPathsByValueFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppathsbyvaluefrom--65655d224f648c7102890725.md) | 70 | `declaration-track:65655d224f648c71028907250c5eacbb4972427dc00316be80ff87ab99c7856c` |
| 12 | `def` | [lookupPathsByValue](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppathsbyvalue--97861bc094680865139b204d.md) | 89 | `declaration-track:97861bc094680865139b204dc57d6f1007c8cd0bb06c09aef06d8f840c295142` |
| 13 | `theorem` | [lookupPathsByValue_empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppathsbyvalue-empty--d4b16c4fee15d86b2df43281.md) | 94 | `result-track:d4b16c4fee15d86b2df43281f488ff45c93573b6af9cb6549898547d343344c1` |
| 14 | `theorem` | [lookup_fiber_unique_by_value_requires_no_dup_surface](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookup-fiber-unique-by-value-requires-no-dup-surface--df77b666af06a8ee756a74ff.md) | 98 | `result-track:df77b666af06a8ee756a74ff16599519c3befab2c62165191db3a5b363e72f26` |
| 15 | `theorem` | [lookupPathAt_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppathat-complete--1452ff8e2c6410e77c8c18db.md) | 103 | `result-track:1452ff8e2c6410e77c8c18db61bf8339ba45f0ac902cb37de246869681146ed9` |
| 16 | `def` | [LookupSection](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookupsection--67b576d70e1f19cd87a6c881.md) | 108 | `declaration-track:67b576d70e1f19cd87a6c8819f0fe5da697636f112004cb5a34a77b2c6ee1293` |
| 17 | `def` | [canonicalLookupSection](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/canonicallookupsection--197710a487efcd7a02bbe4b4.md) | 113 | `declaration-track:197710a487efcd7a02bbe4b4872251c2611d61ad70a234cfd5c79bcc4a1609ef` |
| 18 | `theorem` | [lookupSection_subsingleton](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookupsection-subsingleton--d243769e105fa96e72f8c680.md) | 118 | `result-track:d243769e105fa96e72f8c680a21a886bd29d9521deb606ef708c2a8af4fbc2f6` |
| 19 | `theorem` | [lookupSection_inhabited](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookupsection-inhabited--76da2b9a1fa6dd9ebfd2926f.md) | 126 | `result-track:76da2b9a1fa6dd9ebfd2926f9366fc93a5efb2df573b275d8870269bb1b9219a` |
| 20 | `structure` | [Cover](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/cover--ed60c8df5f75f65971738a54.md) | 131 | `declaration-track:ed60c8df5f75f65971738a54c2f70c5d8e0867e281effd7b0b784451c0e6e933` |
| 21 | `structure` | [CompatibleFamily](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/compatiblefamily--dd37b2b8f379f0101599d066.md) | 135 | `declaration-track:dd37b2b8f379f0101599d0665c3ec8ba06b48c19d6bfcc101473d0fc003b7f21` |
| 22 | `def` | [RestrictsTo](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/restrictsto--3da485f392e8237c278a76d7.md) | 150 | `declaration-track:3da485f392e8237c278a76d72a8668f9d357ceaa5389baee0990fab268bf01da` |
| 23 | `theorem` | [lookup_sections_glue_unique](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookup-sections-glue-unique--5a1ac4ad7ca0226e8f0181a9.md) | 162 | `result-track:5a1ac4ad7ca0226e8f0181a9c1b98fe0df6c2fbe898703bfc6656f626504e3d3` |
| 24 | `def` | [LookupPathFor](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppathfor--2a7eb66f89cb96fa6e587206.md) | 179 | `declaration-track:2a7eb66f89cb96fa6e587206be1a25706852a9d5aea19030af500b13987af225` |
| 25 | `def` | [lookupPath?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppath--4ae5cec3f205152aadb86dbe.md) | 183 | `declaration-track:4ae5cec3f205152aadb86dbe5c73e9c9b6b445a94775eecebb310e662e19e5e7` |
| 26 | `def` | [followPath?](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/followpath--f9ebc2420cd350d595f3ca83.md) | 190 | `declaration-track:f9ebc2420cd350d595f3ca83caa7e72d677464cc6c3cc0c55840b507e941d675` |
| 27 | `theorem` | [lookupPath?_sound](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppath-sound--b24b3a326c244817780757c1.md) | 194 | `result-track:b24b3a326c244817780757c17c85b07223ecd128757423b457ce86d2fcada7c7` |
| 28 | `theorem` | [lookupPath_complete](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppath-complete--f5134a979105db13394125f9.md) | 206 | `result-track:f5134a979105db13394125f9f6ad8b9d99bf4001a31ed61690d890c948ffc853` |
| 29 | `theorem` | [lookupPath_unique_by_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppath-unique-by-index--083854c1b3e8b27d729cd59c.md) | 211 | `result-track:083854c1b3e8b27d729cd59cb33704146ffb1601c710f20ee725171a68e9c36b` |
| 30 | `theorem` | [lookupPath?_complete_some](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Lookup/Variant7aa46f08fa23573b241ec04d0b9cb114d68d9056d22f8a043b34aa0576927f90.lean/declarations/lookuppath-complete-some--7715a9b4c37bc5a9f7aec493.md) | 227 | `result-track:7715a9b4c37bc5a9f7aec4933ed803ea5185b962ce780206b932dba5c4bfd512` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
