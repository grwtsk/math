# Verification target: GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteSignIndependence

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eb75ea9b5f7c985cebb5a213de0d591db0437dd4",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/index.md) · [Full source](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eb75ea9b5f7c985cebb5a213de0d591db0437dd4`.

Source path: `GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.ProbabilityAndMathematicalStatistics.ProbabilityFoundations.FiniteWalshPatterns`](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteWalshPatterns.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mixedMoment](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/mixedmoment--20ca42719abd7de23b6c037e.md) | 27 | `declaration-track:20ca42719abd7de23b6c037e7b4b2adb277595f5b0e99a7dc6663e460227733b` |
| 2 | `def` | [FairIndependentWindows](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/fairindependentwindows--49ea436501d306cda7af4ccf.md) | 33 | `declaration-track:49ea436501d306cda7af4ccf07f1cc36a735f1de6429348d448c49fae36c9904` |
| 3 | `theorem` | [empiricalMoment_factor](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/empiricalmoment-factor--2ad4ed392cb842e42f7c30df.md) | 37 | `result-track:2ad4ed392cb842e42f7c30dfa1c0f9371a175214cb60f6e09a77d878250b2330` |
| 4 | `theorem` | [mixedMoment_empty](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/mixedmoment-empty--f82972864810466d770769ae.md) | 46 | `result-track:f82972864810466d770769ae6f7cbcf13576aab44e91d90ab68cf74036bd54fb` |
| 5 | `theorem` | [empiricalMoment_allTrue](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/empiricalmoment-alltrue--db270b7fc81db1c214a10413.md) | 51 | `result-track:db270b7fc81db1c214a104130f2fa3d5108dbff24e1dfbc7d39a0920528fad4d` |
| 6 | `theorem` | [uniform_window_of_zero_moments](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/uniform-window-of-zero-moments--37feeaef79d2c64574d51679.md) | 58 | `result-track:37feeaef79d2c64574d516797b05720d7056642dbd63e9b20ed50170bb16a17d` |
| 7 | `theorem` | [fairWindows_of_zero_moments](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/fairwindows-of-zero-moments--89451c24d7a4a4584f150aee.md) | 76 | `result-track:89451c24d7a4a4584f150aee7e7c96afede1d4ec0f02e9aec068fd7dffe45b60` |
| 8 | `theorem` | [zero_moments_of_fairWindows](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/zero-moments-of-fairwindows--73a9d0a56966e3c7960ac092.md) | 85 | `result-track:73a9d0a56966e3c7960ac092b05c2d5f8cba8fa1399553efab96f2f33e907a9a` |
| 9 | `theorem` | [zero_moments_iff_fairWindows](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/zero-moments-iff-fairwindows--a5a6856d592a88f5b1489546.md) | 112 | `result-track:a5a6856d592a88f5b14895462a8bbe8ce1acbda531a61427ae5a094886dd209e` |
| 10 | `theorem` | [empiricalPattern_reindex](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/empiricalpattern-reindex--04a818202a2575b5fa96debc.md) | 120 | `result-track:04a818202a2575b5fa96debccb1e71292dae37cdfdbd1df10e363ffee78fcc73` |
| 11 | `theorem` | [fairWindows_reindex](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/fairwindows-reindex--6f083f36ae8b4f1ee6fce74b.md) | 127 | `result-track:6f083f36ae8b4f1ee6fce74b9c212face8fba6772d532282f4f3c6491d43dd49` |
| 12 | `theorem` | [singleton_root_not_fair](../../../../mathematics/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/FiniteSignIndependence.lean/declarations/singleton-root-not-fair--05b4c82fd10a1ce39dfea2b5.md) | 136 | `result-track:05b4c82fd10a1ce39dfea2b5b202697112f402d66b3a28998baf514e124e5b83` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
