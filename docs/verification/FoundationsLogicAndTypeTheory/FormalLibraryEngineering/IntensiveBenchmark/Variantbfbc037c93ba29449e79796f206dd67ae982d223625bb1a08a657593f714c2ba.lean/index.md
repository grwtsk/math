# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IntensiveBenchmark.Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ca14cb7db7a127bdb658f72f221803fbe759a1d",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ca14cb7db7a127bdb658f72f221803fbe759a1d`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean.json)

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
| 1 | `def` | [mkPowerExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/mkpowerexpr--947a04569a2e19d3ce33d170.md) | 26 | `declaration-track:947a04569a2e19d3ce33d17058e450b1a1a09734c2b9b4146462cebed792234c` |
| 2 | `def` | [mkPolynomialExpr](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/mkpolynomialexpr--2bb323680da9ca12c04b5dac.md) | 31 | `declaration-track:2bb323680da9ca12c04b5dac8e049bd07b3cbe961fac09bfcac59ce2c9319349` |
| 3 | `def` | [mkNestedSin](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/mknestedsin--6ef7ba534f3c75459fe53fb7.md) | 36 | `declaration-track:6ef7ba534f3c75459fe53fb78cf961d08e069acf2c4258825ed4cf2e4983d64d` |
| 4 | `def` | [mkNestedExp](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/mknestedexp--c106f3a3d343235fc2784108.md) | 41 | `declaration-track:c106f3a3d343235fc278410848296d550d4cf3e9061664437152c0eeaed66984` |
| 5 | `def` | [mkExpandedBinomial](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/mkexpandedbinomial--31d2e786f391da1640294008.md) | 46 | `declaration-track:31d2e786f391da164029400815a4773f021cb3008427b4709ed2813eff684d65` |
| 6 | `def` | [mkComplexMixed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/mkcomplexmixed--661190cbd084a7647f85f174.md) | 54 | `declaration-track:661190cbd084a7647f85f174ffc0a7271c8044930ed8ee1988134e06ea22b781` |
| 7 | `def` | [testIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/testintervalrat--b8cf026f89fb2cc8f7b9f060.md) | 65 | `declaration-track:b8cf026f89fb2cc8f7b9f0603f63658088c809a280aa9b0324000f17f30df3d7` |
| 8 | `def` | [smallIntervalRat](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/smallintervalrat--58acab71e2b39a3c2bf97b95.md) | 66 | `declaration-track:58acab71e2b39a3c2bf97b95835f9ba917ba345288ab3db45ea89720b5133eda` |
| 9 | `def` | [testIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/testintervaldyadic--3d8b3f452e47286b4a03bd81.md) | 67 | `declaration-track:3d8b3f452e47286b4a03bd8160b8c9510cd9b74bed1c0ea88eefe05b4940995e` |
| 10 | `def` | [smallIntervalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/smallintervaldyadic--b8215ee92b9301a4b3517524.md) | 68 | `declaration-track:b8215ee92b9301a4b3517524819de19676990b17b7f58c2917305b7d5a132160` |
| 11 | `def` | [evalRational](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/evalrational--3a631584dbade44fe3e8599e.md) | 72 | `declaration-track:3a631584dbade44fe3e8599e101344711a4ef680a6938e5903b828f5dd05d959` |
| 12 | `def` | [evalDyadic](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/evaldyadic--46ac6ce2081cfcade598bee5.md) | 75 | `declaration-track:46ac6ce2081cfcade598bee5ca637e57bb28140f3ba3b61a76a1b7ca18aa1c22` |
| 13 | `def` | [timeAction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/timeaction--29f2e6ab837fadfb103c80b3.md) | 80 | `declaration-track:29f2e6ab837fadfb103c80b37b553dd13c3dd80f0c3f9d324b7b830e05d40ac9` |
| 14 | `def` | [formatTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/formattime--60121f673efb39761a4bd1e9.md) | 87 | `declaration-track:60121f673efb39761a4bd1e9089dbb7c2afc960693e1c1a4291a7920eec7f33b` |
| 15 | `def` | [benchmarkBoth](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/benchmarkboth--da8c97f86892de382d45121d.md) | 103 | `declaration-track:da8c97f86892de382d45121d355d28f583347d4a894729de81073608819b93a4` |
| 16 | `def` | [benchmarkDyadicOnly](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/benchmarkdyadiconly--6725ab608a7573e6905164ad.md) | 125 | `declaration-track:6725ab608a7573e6905164adf29a47eca4c81d83353be5f77ceaff593d28451d` |
| 17 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/main--8a036c04d74e9de6bcd1382c.md) | 138 | `declaration-track:8a036c04d74e9de6bcd1382c575a007dcd315c5acc6e7f41e66730f4e00b514a` |
| 18 | `def` | [main](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IntensiveBenchmark/Variantbfbc037c93ba29449e79796f206dd67ae982d223625bb1a08a657593f714c2ba.lean/declarations/main--7831776f8bdd85bf645ce593.md) | 235 | `declaration-track:7831776f8bdd85bf645ce5930cf7aeb9df2ea71aa0dfeddc3e1c1260bca73c29` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
