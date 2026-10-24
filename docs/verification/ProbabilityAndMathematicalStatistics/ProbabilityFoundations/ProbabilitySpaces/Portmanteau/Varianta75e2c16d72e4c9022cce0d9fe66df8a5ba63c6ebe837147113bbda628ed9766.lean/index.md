# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.ProbabilitySpaces.Portmanteau.Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "14bfefe7634f73bf560897022dc579d3b9efc875",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/index.md) · [Full source](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `14bfefe7634f73bf560897022dc579d3b9efc875`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.ProbabilityMeasure` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Layercake` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.BoundedContinuousFunction` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [le_measure_compl_liminf_of_limsup_measure_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/le-measure-compl-liminf-of-limsup-measure-le--02519aa598d61df823e5043a.md) | 109 | `result-track:02519aa598d61df823e5043a807785ccc7a9d260d008d34245793f6e658c778c` |
| 2 | `theorem` | [le_measure_liminf_of_limsup_measure_compl_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/le-measure-liminf-of-limsup-measure-compl-le--a379ce725a5e6cd11cff66ca.md) | 127 | `result-track:a379ce725a5e6cd11cff66ca684a1d9f6d133a5041ff80b0eb37e1d8022c513e` |
| 3 | `theorem` | [limsup_measure_compl_le_of_le_liminf_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/limsup-measure-compl-le-of-le-liminf-measure--5a757181216c33f2a67f1da8.md) | 133 | `result-track:5a757181216c33f2a67f1da8fdb10b3f85be4476dc9848e5eb16c67a9568272c` |
| 4 | `theorem` | [limsup_measure_le_of_le_liminf_measure_compl](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/limsup-measure-le-of-le-liminf-measure-compl--974139fadb9e9135cfa05459.md) | 151 | `result-track:974139fadb9e9135cfa0545976876d832ba55a065a6123a0421da69711c743cc` |
| 5 | `theorem` | [limsup_measure_closed_le_iff_liminf_measure_open_ge](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/limsup-measure-closed-le-iff-liminf-measure-open-ge--a843146d850f62a2f8811e7f.md) | 168 | `result-track:a843146d850f62a2f8811e7f5fbc9f0c30da125ed828915d800758f4feff2266` |
| 6 | `theorem` | [tendsto_measure_of_le_liminf_measure_of_limsup_measure_le](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/tendsto-measure-of-le-liminf-measure-of-limsup-measure-le--6a07e5a5eeee607dac54f9ae.md) | 204 | `result-track:6a07e5a5eeee607dac54f9aea7b1ca4a2ee90c0affdc9fee5cce2b58f8517e56` |
| 7 | `theorem` | [tendsto_measure_of_null_frontier](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/tendsto-measure-of-null-frontier--e9a73648317a9a19ee980d0d.md) | 236 | `result-track:e9a73648317a9a19ee980d0dc2885e52fc070e99c692fc8f766ab181f1527e07` |
| 8 | `theorem` | [FiniteMeasure.limsup_measure_closed_le_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/finitemeasure-limsup-measure-closed-le-of-tendsto--ce5e27a6a08f58e849bcbb62.md) | 274 | `result-track:ce5e27a6a08f58e849bcbb62f6d40f39e514f367408e4d1e78c537c3216db2bc` |
| 9 | `theorem` | [ProbabilityMeasure.limsup_measure_closed_le_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/probabilitymeasure-limsup-measure-closed-le-of-tendsto--959a3091d5d899156c6768b1.md) | 307 | `result-track:959a3091d5d899156c6768b138301cdd177f0c8665420a321554a76a0a696f96` |
| 10 | `theorem` | [ProbabilityMeasure.le_liminf_measure_open_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/probabilitymeasure-le-liminf-measure-open-of-tendsto--90de0d3c2dee433005d8e9f3.md) | 319 | `result-track:90de0d3c2dee433005d8e9f374cea394e2049a38725070adcb21cc2c03306d03` |
| 11 | `theorem` | [ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto'](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/probabilitymeasure-tendsto-measure-of-null-frontier-of-tendsto--5d583452ca31791d07617dc4.md) | 329 | `result-track:5d583452ca31791d07617dc463b83358daadd63964dd76ed4b4b872e54421668` |
| 12 | `theorem` | [ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/probabilitymeasure-tendsto-measure-of-null-frontier-of-tendsto--8098383f5b9ee3a050db8a7d.md) | 346 | `result-track:8098383f5b9ee3a050db8a7dbe21b12a43569c370f29b890545df9723cb02caf` |
| 13 | `theorem` | [exists_null_frontier_thickening](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/exists-null-frontier-thickening--acacea845e231f53b33dde6d.md) | 382 | `result-track:acacea845e231f53b33dde6d6e085a0137f9160f661262fc709fe73c35a9c41e` |
| 14 | `theorem` | [exists_null_frontiers_thickening](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/exists-null-frontiers-thickening--97a590debe0b8f323a9d0837.md) | 395 | `result-track:97a590debe0b8f323a9d08378b227b0eefa14de01edb4bde5cb6155956d3a4b0` |
| 15 | `lemma` | [limsup_measure_closed_le_of_forall_tendsto_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/limsup-measure-closed-le-of-forall-tendsto-measure--84657975fd4083f19981dc07.md) | 409 | `result-track:84657975fd4083f19981dc07518228a0185da270de35e6f30f6cf055fdc2e3e1` |
| 16 | `lemma` | [le_liminf_measure_open_of_forall_tendsto_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/le-liminf-measure-open-of-forall-tendsto-measure--e48c549ee41234568351ea8d.md) | 446 | `result-track:e48c549ee41234568351ea8d77442274ac0202423b04b32e3ca22cee00803631` |
| 17 | `lemma` | [lintegral_le_liminf_lintegral_of_forall_isOpen_measure_le_liminf_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/lintegral-le-liminf-lintegral-of-forall-isopen-measure-le-liminf-measure--964f9c1800f02c80fc3a6ade.md) | 476 | `result-track:964f9c1800f02c80fc3a6adee768ba267812878a00bb0b9eea8223a63cb0aab6` |
| 18 | `lemma` | [integral_le_liminf_integral_of_forall_isOpen_measure_le_liminf_measure](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/integral-le-liminf-integral-of-forall-isopen-measure-le-liminf-measure--b64f4a5c5e51dee9e75c06a5.md) | 491 | `result-track:b64f4a5c5e51dee9e75c06a5798afddb0138bb647064c811b592652553355e67` |
| 19 | `theorem` | [tendsto_of_forall_isOpen_le_liminf](../../../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/ProbabilitySpaces/Portmanteau/Varianta75e2c16d72e4c9022cce0d9fe66df8a5ba63c6ebe837147113bbda628ed9766.lean/declarations/tendsto-of-forall-isopen-le-liminf--dd51e6d94c195cfc1a879f9f.md) | 527 | `result-track:dd51e6d94c195cfc1a879f9fd6ad13c3ac2725eaf547ce55569402ea4c43c52c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
