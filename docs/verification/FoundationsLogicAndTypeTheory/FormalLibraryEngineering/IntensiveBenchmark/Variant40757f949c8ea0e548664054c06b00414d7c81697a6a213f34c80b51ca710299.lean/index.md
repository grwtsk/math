# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntensiveBenchmark.Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "454dbeb1f0ca82065576fe357ed1d5ebb96dd4bc",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `454dbeb1f0ca82065576fe357ed1d5ebb96dd4bc`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LeanCert.Core.Expr` — import line 11; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalReal` — import line 12; external provider; requires a separately pinned dependency.
- `LeanCert.Core.IntervalDyadic` — import line 13; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEval` — import line 14; external provider; requires a separately pinned dependency.
- `LeanCert.Engine.IntervalEvalDyadic` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkPowerExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/mkpowerexpr--8a4e6512d6c39b8512e9b778.md) | 34 | `declaration-track:8a4e6512d6c39b8512e9b778d4a0b76af056378863642c2f430ba974f6d90a0f` |
| 2 | `def` | [mkPolynomialExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/mkpolynomialexpr--1f5c03d57d19abaec4be3256.md) | 39 | `declaration-track:1f5c03d57d19abaec4be3256bfeae53e22a86ba0394c93cb4b03497e87ccfeb5` |
| 3 | `def` | [mkNestedSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/mknestedsin--feacc2c6c8642c7dea46f7f1.md) | 44 | `declaration-track:feacc2c6c8642c7dea46f7f15981515637908e0be568d51988da19b6f33744c4` |
| 4 | `def` | [mkNestedExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/mknestedexp--f556dd852bc5e69307012ed4.md) | 49 | `declaration-track:f556dd852bc5e69307012ed448a81efa3a4ff7e7a4606d459979a2eb342994bc` |
| 5 | `def` | [mkExpandedBinomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/mkexpandedbinomial--6aa58bdd1682f3356095c934.md) | 54 | `declaration-track:6aa58bdd1682f3356095c93427bcde7d11f8a803086df8159200ba54c30c7a18` |
| 6 | `def` | [mkComplexMixed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/mkcomplexmixed--cc9216445c4f4e20bbf96034.md) | 62 | `declaration-track:cc9216445c4f4e20bbf960341dc8f5b81a537d78d3c73b9817ce1d073af3fe81` |
| 7 | `def` | [testIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/testintervalrat--000e05f9a5e10c699334e2d7.md) | 73 | `declaration-track:000e05f9a5e10c699334e2d7cbad9527f0e8821784f0cfbf0b4f4c204eca4d0f` |
| 8 | `def` | [smallIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/smallintervalrat--8114747667d1cfd0a21bd633.md) | 74 | `declaration-track:8114747667d1cfd0a21bd633458736c363f60206a08f22b41d69ebbb7c98fa72` |
| 9 | `def` | [testIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/testintervaldyadic--86f3bdfc3db30f4ab49a6ce4.md) | 75 | `declaration-track:86f3bdfc3db30f4ab49a6ce46c9b5105f5b565e5fda97b682359e98f557e60af` |
| 10 | `def` | [smallIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/smallintervaldyadic--ddd43e507da565c2c20b14f6.md) | 76 | `declaration-track:ddd43e507da565c2c20b14f68db568028774a25d795e50ebe8d55b7a52486d81` |
| 11 | `def` | [evalRational](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/evalrational--714feb37e40c994a9bfe4625.md) | 80 | `declaration-track:714feb37e40c994a9bfe4625f27ca345de67b4bbfdb24f6694c2e3ca11912d90` |
| 12 | `def` | [evalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/evaldyadic--d9152484c30de843da485814.md) | 83 | `declaration-track:d9152484c30de843da4858145c2b51e41bc02ba3989fb7ddd7140be73a1f81f7` |
| 13 | `def` | [timeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/timeaction--cf538c32dec452b714ef7995.md) | 88 | `declaration-track:cf538c32dec452b714ef7995f615e10ff2f9d208d1c00e78118849aa1377523a` |
| 14 | `def` | [formatTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/formattime--d1bc316db81d05e979487a2a.md) | 95 | `declaration-track:d1bc316db81d05e979487a2afe988b23e9c368143d845c0930f55d98f22cba98` |
| 15 | `def` | [benchmarkBoth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/benchmarkboth--942e0cb4dc66bd62784a041a.md) | 111 | `declaration-track:942e0cb4dc66bd62784a041a199047b57b0a03f76b7c45c41a34de25715479e5` |
| 16 | `def` | [benchmarkDyadicOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/benchmarkdyadiconly--22b2ae5056a0839e6e4ceb86.md) | 133 | `declaration-track:22b2ae5056a0839e6e4ceb86d666deed0c4fc43b723605058c84685d92d00f25` |
| 17 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/main--6c6f3b5aef5f1b33af9b6c0a.md) | 146 | `declaration-track:6c6f3b5aef5f1b33af9b6c0a031b3abb6be77149a2df6a019bc1946dad4f7672` |
| 18 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variant40757f949c8ea0e548664054c06b00414d7c81697a6a213f34c80b51ca710299.lean/declarations/main--20573c92bba663aaadbeb561.md) | 243 | `declaration-track:20573c92bba663aaadbeb561d5c33785bb8c3ed55c861f405899b36a9671d447` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
