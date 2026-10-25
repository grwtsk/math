# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TimingBenchmark.Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5584caf4b78c80e432f3c3b8fa789df0cc8219fb",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5584caf4b78c80e432f3c3b8fa789df0cc8219fb`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean.json)

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
| 1 | `def` | [mkPowerExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/mkpowerexpr--eecea535b2792f4ead1830b8.md) | 40 | `declaration-track:eecea535b2792f4ead1830b818314698d34e43f20bd584cfbaeadffce366d353` |
| 2 | `def` | [mkPolynomialExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/mkpolynomialexpr--6f2bd03b10a2fbc40f4bf34a.md) | 45 | `declaration-track:6f2bd03b10a2fbc40f4bf34a84bc2bff92de643f34c3f55dd29035f2608c68b4` |
| 3 | `def` | [mkDeepMulExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/mkdeepmulexpr--04a0d5eb69e8abde98c9d889.md) | 50 | `declaration-track:04a0d5eb69e8abde98c9d889633ecbfda7b4ebfb26a9028541377fffa199d61e` |
| 4 | `def` | [mkNestedSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/mknestedsin--8c42ec9cb5a36e6196ad47ca.md) | 55 | `declaration-track:8c42ec9cb5a36e6196ad47ca6a014e65f2737ac50281de83f8141fb1afffd1a9` |
| 5 | `def` | [mkExpandedBinomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/mkexpandedbinomial--cae5ad806848f5b2fbe8403f.md) | 60 | `declaration-track:cae5ad806848f5b2fbe8403f6ac86fb5dbb10048946c847205a1c38e50eda3a0` |
| 6 | `def` | [mkHornerPoly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/mkhornerpoly--92352fe4e2cd1889a7914d9d.md) | 67 | `declaration-track:92352fe4e2cd1889a7914d9d39fb6af253b5948ac1ac4d603fc90f8dfa0db5f6` |
| 7 | `def` | [testIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/testintervalrat--b837aee75888e4c91fa6de9b.md) | 75 | `declaration-track:b837aee75888e4c91fa6de9b093d24b689451e8cbe787440f62eef99f690802e` |
| 8 | `def` | [smallIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/smallintervalrat--eff9dc22b219a6aaba15ca41.md) | 76 | `declaration-track:eff9dc22b219a6aaba15ca41d03f9b20eadc6cbe4ca0a25d1ee4f6a29d1b5942` |
| 9 | `def` | [testIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/testintervaldyadic--6e54f0a1540c68a1e0e19878.md) | 77 | `declaration-track:6e54f0a1540c68a1e0e198781db51caa27a2f3bb649460c012c73aa947343377` |
| 10 | `def` | [smallIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/smallintervaldyadic--41319d0db7995c21145cd054.md) | 78 | `declaration-track:41319d0db7995c21145cd054cf0f3d8d0625f266324e4f9bce3d37c4ffcd04a3` |
| 11 | `def` | [evalRational](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/evalrational--a181f3feea5aa042213c8276.md) | 82 | `declaration-track:a181f3feea5aa042213c8276f7b4ec066ebcbd3797edf4e30425ecb5ac64877f` |
| 12 | `def` | [evalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/evaldyadic--3453b79579423969f78f1e91.md) | 85 | `declaration-track:3453b79579423969f78f1e917d835c9f17fc8f36281dd0c7bddd6e566c1ebd45` |
| 13 | `def` | [timeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/timeaction--2e18d914d9580cdc0ca4d276.md) | 91 | `declaration-track:2e18d914d9580cdc0ca4d27636beb59c38aeedac4d8296a13837173174ae24ca` |
| 14 | `def` | [formatNanos](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/formatnanos--a59056436141f690d5ea1798.md) | 99 | `declaration-track:a59056436141f690d5ea179802a19089d663f10aa71e15f9dfd214e6ab4984b9` |
| 15 | `def` | [benchmarkExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/benchmarkexpr--114dd132b914d86b773a30ae.md) | 105 | `declaration-track:114dd132b914d86b773a30aeb15404ea49a43402ad22f0116505d8ba332c6409` |
| 16 | `def` | [benchmarkDyadicOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/benchmarkdyadiconly--e48716d2b693cd510a623166.md) | 124 | `declaration-track:e48716d2b693cd510a623166edc24eebaffadbf7116b08d1923fb1eb5cc947eb` |
| 17 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/main--2b03a12c279fc63deb80a366.md) | 135 | `declaration-track:2b03a12c279fc63deb80a366c89905fdd5f84874673290b60d8672cc9705cedb` |
| 18 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TimingBenchmark/Variant67385bc292028a62d23de78fffe53547289f3998806ae054ead9bb8d99615e4d.lean/declarations/main--de4d9d3a41f3524151c86ee7.md) | 219 | `declaration-track:de4d9d3a41f3524151c86ee767653923405a2d28212eab1e73782f411543dff7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
