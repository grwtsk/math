# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Add.Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d0bd65260cc3abb4b3025bc20cbd3db80d61637",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d0bd65260cc3abb4b3025bc20cbd3db80d61637`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lean.Elab.DocString` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [validateDocComment](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/validatedoccomment--86573c2e4207d3b32fa21011.md) | 37 | `declaration-track:86573c2e4207d3b32fa210115a13ad1163bf71a6d45a74a3305d929f59c1d54e` |
| 2 | `def` | [parseVersoDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/parseversodocstring--6faca5a3e896d5f60e44ad6e.md) | 60 | `declaration-track:6faca5a3e896d5f60e44ad6e1af8c70a03fe1914d82ff955b8c6857d74e35d2d` |
| 3 | `def` | [reportVersoParseFailure](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/reportversoparsefailure--60232534d9d2ebe76e496c52.md) | 132 | `declaration-track:60232534d9d2ebe76e496c52cb30d332bc3b2cfd8cd3ade900e23d68f3c213a5` |
| 4 | `structure` | [VersoDocResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/versodocresult--a39a7f863854a3fb21d47d93.md) | 189 | `declaration-track:a39a7f863854a3fb21d47d932a724d9cb99e2649da86e5e22e02ca156055489e` |
| 5 | `def` | [execVersoBlocks](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/execversoblocks--76c1506918fe0125223c2fb7.md) | 203 | `declaration-track:76c1506918fe0125223c2fb718f69c89457e22040446a0d739d7d9b62b59ed1b` |
| 6 | `def` | [versoDocStringOfText](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/versodocstringoftext--51d665e66a6bf6d60494c41d.md) | 233 | `declaration-track:51d665e66a6bf6d60494c41d081a4eb0abff7daa6a7445478222bd0a15aac798` |
| 7 | `def` | [versoDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/versodocstring--5587c7f85caa9feffd9f4d4a.md) | 268 | `declaration-track:5587c7f85caa9feffd9f4d4a43649b32c82bc0276254a400ea4688b85b5bb4c5` |
| 8 | `def` | [versoModDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/versomoddocstring--3cd5827a3938b771e81bb710.md) | 296 | `declaration-track:3cd5827a3938b771e81bb71037e5781cb92d15745be7b1259eeec9dab0c9d8c9` |
| 9 | `def` | [versoDocStringFromString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/versodocstringfromstring--f5e3b649a49f18f453ed749e.md) | 309 | `declaration-track:f5e3b649a49f18f453ed749ef21c39379cf9d964b36d92186ce9e52cfa3e20e0` |
| 10 | `def` | [addMarkdownDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/addmarkdowndocstring--55e2f24aa7961c90252d5d21.md) | 317 | `declaration-track:55e2f24aa7961c90252d5d21ea3df333b53e11d963ce8a1682b54b7e50726429` |
| 11 | `def` | [addVersoDocStringCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/addversodocstringcore--8d167f046151ded5e441655e.md) | 335 | `declaration-track:8d167f046151ded5e441655edbf87e90fa7756d60ac7aea2458596c018184baa` |
| 12 | `def` | [addVersoModDocStringCore](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/addversomoddocstringcore--a5303a9184fbb42ff7b84b64.md) | 351 | `declaration-track:a5303a9184fbb42ff7b84b640c62293e6d98160c229a5c8248192c9bc1f7a213` |
| 13 | `def` | [addVersoDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/addversodocstring--7c965eab2fbc5642c8d74f7d.md) | 373 | `declaration-track:7c965eab2fbc5642c8d74f7d7e504b949028fe0289e1b02bc67b5410b6bb47c5` |
| 14 | `def` | [addVersoDocStringFromString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/addversodocstringfromstring--6c9764bae1a59e4222212971.md) | 385 | `declaration-track:6c9764bae1a59e42222129712cb0e1d9fa00192ee2aa200bcc7754b28d0ca0ae` |
| 15 | `def` | [addDocStringOf](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/adddocstringof--7f02e718ba52b6a69ff05a44.md) | 397 | `declaration-track:7f02e718ba52b6a69ff05a4410d0da1d27e13bc764574754badd1f90514867b9` |
| 16 | `def` | [makeDocStringVerso](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/makedocstringverso--b387a56a6136c9d2edd9bfa5.md) | 410 | `declaration-track:b387a56a6136c9d2edd9bfa55e19e6d4072de8387e2f803b39738a1f4d4b7f80` |
| 17 | `def` | [addDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/adddocstring--ade7d87908a1e29eda4342ab.md) | 433 | `declaration-track:ade7d87908a1e29eda4342ab32c6458351c05c4639713df5a2dcbe5b67fbeb93` |
| 18 | `def` | [addDocString'](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/adddocstring--bf8d9f463c44d33067dcc139.md) | 455 | `declaration-track:bf8d9f463c44d33067dcc139ac85608d8df019345cac39e67de88a5f4018a87e` |
| 19 | `def` | [addVersoModDocString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/declarations/addversomoddocstring--4d2932d41a4c1b3729614c62.md) | 473 | `declaration-track:4d2932d41a4c1b3729614c6208f8444858af58985850d9883bc2874d41292df3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
