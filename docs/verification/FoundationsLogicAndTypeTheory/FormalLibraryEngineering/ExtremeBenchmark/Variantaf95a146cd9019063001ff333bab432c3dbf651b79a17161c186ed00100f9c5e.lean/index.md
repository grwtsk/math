# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExtremeBenchmark.Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "728d32d18c6c6a5a7c2b6679f40f3850a68eddb7",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `728d32d18c6c6a5a7c2b6679f40f3850a68eddb7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 6; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 7; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 8; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 9; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkNestedExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean/declarations/mknestedexp--e6c471a0824e19f8f7b730ac.md) | 30 | `declaration-track:e6c471a0824e19f8f7b730acd9290930ef6b2a06a7bb388744a39bd2e7f94b44` |
| 2 | `def` | [mkDeepPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean/declarations/mkdeeppoly--50c8bb8e905e9b7a8e279433.md) | 36 | `declaration-track:50c8bb8e905e9b7a8e2794330396f60173c63d713d87336cc244e74d52ad4ae2` |
| 3 | `def` | [mkDeepNested](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean/declarations/mkdeepnested--5b737f67d67aac4975bca142.md) | 46 | `declaration-track:5b737f67d67aac4975bca1429a795f0d44d0fade032719a62b81c0c1c3167272` |
| 4 | `def` | [smallIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean/declarations/smallintervalrat--1de25c0016811d6161844024.md) | 58 | `declaration-track:1de25c0016811d6161844024c79ad5adf542a50bee1e60a6853724c2988d1762` |
| 5 | `def` | [smallIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean/declarations/smallintervaldyadic--64863b664753e7416aac8b2e.md) | 59 | `declaration-track:64863b664753e7416aac8b2edfc30ea4026d7864e6af24d2e63259887f6afd2f` |
| 6 | `def` | [evalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean/declarations/evaldyadic--3d8203acc7ddfef1bb0092ea.md) | 63 | `declaration-track:3d8203acc7ddfef1bb0092ea38a87fcc6a7774293320c79037e73b68aec4a8cd` |
| 7 | `def` | [countDigits](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean/declarations/countdigits--3733988aade727ac337110a4.md) | 66 | `declaration-track:3733988aade727ac337110a43d1c37f87d45e6fa2bd0d4b4e4c5c41de372b018` |
| 8 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean/declarations/main--2c7fc68dea28721598f946f6.md) | 71 | `declaration-track:2c7fc68dea28721598f946f6be03d27eb9bb4b47399fc9beecaaf8c994fcef40` |
| 9 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ExtremeBenchmark/Variantaf95a146cd9019063001ff333bab432c3dbf651b79a17161c186ed00100f9c5e.lean/declarations/main--51f95519b773e4aab2f85c7d.md) | 168 | `declaration-track:51f95519b773e4aab2f85c7d1faf5ed27520595b2551dde74cbd0ea31501e983` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
