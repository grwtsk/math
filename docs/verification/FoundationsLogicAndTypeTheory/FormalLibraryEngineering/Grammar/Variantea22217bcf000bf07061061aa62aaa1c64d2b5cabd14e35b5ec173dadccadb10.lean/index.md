# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grammar.Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "99390552334c6bb5fbab173f425f262aaa1bb27d",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `99390552334c6bb5fbab173f425f262aaa1bb27d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.PrimePower` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticFactorTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean/declarations/arithmeticfactorterm--c900cd34f25853b112bfedbc.md) | 26 | `declaration-track:c900cd34f25853b112bfedbc406a62ddc25705cb214c8509aa5c7fcd7aa3eefa` |
| 2 | `inductive` | [CellularFactorTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean/declarations/cellularfactorterm--8804860c228d5aa203fc07ad.md) | 33 | `declaration-track:8804860c228d5aa203fc07ad89dcebec5f3cb5b4541a3b78decec39bee1ebc08` |
| 3 | `def` | [arithmeticToCellular](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean/declarations/arithmetictocellular--8dd7b01e4ba5156f8e09519f.md) | 40 | `declaration-track:8dd7b01e4ba5156f8e09519fb8e04ef772d966c60231c8868a52e951690b0e9f` |
| 4 | `def` | [cellularToArithmetic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean/declarations/cellulartoarithmetic--198f0241acbd81ce61b8e9c5.md) | 45 | `declaration-track:198f0241acbd81ce61b8e9c5f9a6efd032d5954656a528c5b0b2fcd3efdd8e0f` |
| 5 | `theorem` | [cellularToArithmetic_arithmeticToCellular](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean/declarations/cellulartoarithmetic-arithmetictocellular--0dfaa76dcd04561409621814.md) | 50 | `result-track:0dfaa76dcd04561409621814b02ae40cc2ace561b6d7c3f63df73b50170e08a3` |
| 6 | `theorem` | [arithmeticToCellular_cellularToArithmetic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean/declarations/arithmetictocellular-cellulartoarithmetic--500a08ffa84aa58a43930aa4.md) | 58 | `result-track:500a08ffa84aa58a43930aa483d83ab26f4e857239d2a322890c4397db57ec57` |
| 7 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean/declarations/eval--fb465a1b6533b898fc15b26a.md) | 68 | `declaration-track:fb465a1b6533b898fc15b26ae09c7a5229824e4c1b2ede0256dba89632dcd1dd` |
| 8 | `def` | [decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean/declarations/decode--8e55d8ca4fdc75e43b994333.md) | 76 | `declaration-track:8e55d8ca4fdc75e43b99433310ed0f5c0a0f82e323d274b4bb38228fe433da2f` |
| 9 | `theorem` | [decode_arithmeticToCellular](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantea22217bcf000bf07061061aa62aaa1c64d2b5cabd14e35b5ec173dadccadb10.lean/declarations/decode-arithmetictocellular--a3791e5ddade58cb37b3462a.md) | 82 | `result-track:a3791e5ddade58cb37b3462aaa6272d896cb8eff6cc8e93bd0b1c1ac3a8307dd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
