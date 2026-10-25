# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.String.Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "982e69e4c69915ff2646aadfad147290ec68987c",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `982e69e4c69915ff2646aadfad147290ec68987c`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.UInt.Lemmas` — import line 10; external provider; requires a separately pinned dependency.
- `Init.Data.String.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Fold` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.Length` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [lpadAscii](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/declarations/lpadascii--beafccc18e0546debbd2a0e8.md) | 17 | `declaration-track:beafccc18e0546debbd2a0e838cdf8e80695560c2b85ec55d06735f37d9e6e87` |
| 2 | `def` | [rpadAscii](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/declarations/rpadascii--cde290c857e4f4000c1c44e2.md) | 20 | `declaration-track:cde290c857e4f4000c1c44e2e7e786dd5ee086d472bb873dfb5a266108232650` |
| 3 | `def` | [zpad](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/declarations/zpad--1e924e15a0dcccdd654df489.md) | 23 | `declaration-track:1e924e15a0dcccdd654df48961cbc50122a12fc4a5fe55f20c29c2ae7d441c53` |
| 4 | `def` | [isHex](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/declarations/ishex--536ddfcdeecaf4b222f10c23.md) | 27 | `declaration-track:536ddfcdeecaf4b222f10c23bc44585f036e46007630a836f131ffdd43c0e12c` |
| 5 | `def` | [lowerHexByte](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/declarations/lowerhexbyte--b9cae16515a1c41e46ffe083.md) | 39 | `declaration-track:b9cae16515a1c41e46ffe083c1d4986bf6d6b69daaa852f37049f893897de939` |
| 6 | `theorem` | [isValidChar_of_lt_256](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/declarations/isvalidchar-of-lt-256--f0c1d1fca05ef72fa8b01f7a.md) | 45 | `result-track:f0c1d1fca05ef72fa8b01f7a286dbcdcc1f0d0e16732d72f794a4882a0bd9723` |
| 7 | `def` | [lowerHexChar](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/declarations/lowerhexchar--29e25925c0cd808ffbe1f29e.md) | 48 | `declaration-track:29e25925c0cd808ffbe1f29eedf7bbbe913565463395bbefaf1c4c4def152087` |
| 8 | `def` | [lowerHexUInt64](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/declarations/lowerhexuint64--c68cc0090ad0425e9ac60f4d.md) | 52 | `declaration-track:c68cc0090ad0425e9ac60f4d63e3a65e136f82d6b5105f3b9750829ebd125841` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/String/Variantf4bcd0ae9cd46b2faa171f2025587196ad8726efefc079315eb81298db0a0da5.lean/declarations/example--80253ea342e1f41ed23cb77e.md) | 72 | `declaration-track:80253ea342e1f41ed23cb77eee5cc0fe82407f38df3f96704d4e4010b49786ba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
