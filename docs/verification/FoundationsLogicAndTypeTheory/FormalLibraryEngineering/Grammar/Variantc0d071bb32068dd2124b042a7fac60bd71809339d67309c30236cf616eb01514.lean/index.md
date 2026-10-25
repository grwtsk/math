# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Grammar.Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "90e9dec52d67ecc5a3f8b8768d6f8ee0b4926348",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `90e9dec52d67ecc5a3f8b8768d6f8ee0b4926348`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.NumberTheory.PrimePower` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [ArithmeticFactorTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean/declarations/arithmeticfactorterm--797b7c17c7cd3e7eb5b5bcc1.md) | 18 | `declaration-track:797b7c17c7cd3e7eb5b5bcc18a53c85befa8f3bf9a7c4d93064d8ba82b4996dd` |
| 2 | `inductive` | [CellularFactorTerm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean/declarations/cellularfactorterm--81ad4b0b514536b61268673f.md) | 25 | `declaration-track:81ad4b0b514536b61268673f2a88cc16d37aaf84c20746e13ced327f947152ca` |
| 3 | `def` | [arithmeticToCellular](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean/declarations/arithmetictocellular--8c2bd9fe938495a63fc68a0a.md) | 32 | `declaration-track:8c2bd9fe938495a63fc68a0a1f6a031c4a11f723d4cdd5def6894f71527b2c19` |
| 4 | `def` | [cellularToArithmetic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean/declarations/cellulartoarithmetic--2db9da254ab07991ea272550.md) | 37 | `declaration-track:2db9da254ab07991ea2725505232cb0407fd618458ad2b76bb2571d216bbaace` |
| 5 | `theorem` | [cellularToArithmetic_arithmeticToCellular](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean/declarations/cellulartoarithmetic-arithmetictocellular--3a1549db2c8aae58328fb9a3.md) | 42 | `result-track:3a1549db2c8aae58328fb9a336e14cb424075dc27a1ece74295e00107e77d49b` |
| 6 | `theorem` | [arithmeticToCellular_cellularToArithmetic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean/declarations/arithmetictocellular-cellulartoarithmetic--c8d74a60307086fd6d5fda25.md) | 50 | `result-track:c8d74a60307086fd6d5fda25f7663b4192c6de436fb3a7d7781ae91d967763e8` |
| 7 | `def` | [eval](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean/declarations/eval--d759429ace20d5fb2d899af7.md) | 60 | `declaration-track:d759429ace20d5fb2d899af7f81885e79f8346eb5c9932e11b0e353b042d7d83` |
| 8 | `def` | [decode](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean/declarations/decode--573ebc9773aac92aab6c5900.md) | 68 | `declaration-track:573ebc9773aac92aab6c590033c635e64af29b959bc7e7b05ee258a7c52055ee` |
| 9 | `theorem` | [decode_arithmeticToCellular](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Grammar/Variantc0d071bb32068dd2124b042a7fac60bd71809339d67309c30236cf616eb01514.lean/declarations/decode-arithmetictocellular--6ea4010a140db145ef3855fb.md) | 74 | `result-track:6ea4010a140db145ef3855fb3e7e71712ebdf8cf4cacd2159328b857326b846f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
