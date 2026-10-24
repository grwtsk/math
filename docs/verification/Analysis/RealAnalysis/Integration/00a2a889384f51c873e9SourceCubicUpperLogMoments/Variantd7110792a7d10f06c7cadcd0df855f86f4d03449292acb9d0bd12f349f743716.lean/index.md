# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.00a2a889384f51c873e9SourceCubicUpperLogMoments.Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c4736f096fe9abfdcb2f68e22782fe4932304ed1",
  "lexical_observation_count": 17,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c4736f096fe9abfdcb2f68e22782fe4932304ed1`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceSamplingCoefficients` — import line 6; external provider; requires a separately pinned dependency.
- `SourceSignedSamplingExplicitBudget` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntegralEqImproper` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [upperLogWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/upperlogweight--73c2b892fc99b381b8d3f591.md) | 36 | `declaration-track:73c2b892fc99b381b8d3f59130d8fdf387dc87b6a2a1d6947b94dee3f27fce95` |
| 2 | `theorem` | [exp_mul_upperLogWeight](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/exp-mul-upperlogweight--e9751e586ed4c30975b6ece9.md) | 39 | `result-track:e9751e586ed4c30975b6ece90a20f9d875a08ce0593d89c81506265bca7ee04c` |
| 3 | `theorem` | [upperLogWeight_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/upperlogweight-integral--9417b86055ab57067e84437c.md) | 48 | `result-track:9417b86055ab57067e84437c1f16b9bb738967a174b3e408d6510caef844de8b` |
| 4 | `theorem` | [upperLogWeight_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/upperlogweight-integrable--691e636553f595c6ed005a95.md) | 58 | `result-track:691e636553f595c6ed005a957d8ab398b0085b36e378a25d6d990720377e4869` |
| 5 | `theorem` | [upperLogWeight_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/upperlogweight-nonneg--e3bbc6582e9fa402e45d0d4e.md) | 62 | `result-track:e3bbc6582e9fa402e45d0d4eb05d55434f481f6478026e1d041ee76b90ecbd56` |
| 6 | `theorem` | [upper_fourth_log_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/upper-fourth-log-moment--87fef66ed8f656c2c0f6a241.md) | 68 | `result-track:87fef66ed8f656c2c0f6a241531c58f0a8830c381e5341a32e14d56721e92193` |
| 7 | `theorem` | [upper_fifth_log_moment](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/upper-fifth-log-moment--bc258ae7e29381ed70de144f.md) | 74 | `result-track:bc258ae7e29381ed70de144fcfeb78343c5f38ad59608f962ddb6257b8d58f96` |
| 8 | `def` | [cubicUpperMajorant](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/cubicuppermajorant--d7abbf4297a63bf953956b45.md) | 81 | `declaration-track:d7abbf4297a63bf953956b45cf259010b1d94ac2b2501fb5b11db3f3f22f4052` |
| 9 | `theorem` | [cubicUpperMajorant_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/cubicuppermajorant-integrable--8d1384f9c508ccbde10894a5.md) | 85 | `result-track:8d1384f9c508ccbde10894a57269b15c6fa12de1b8430aed8b1724e4f0adc929` |
| 10 | `theorem` | [cubicUpperMajorant_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/cubicuppermajorant-nonneg--7f5af9c793df79884b8108f1.md) | 90 | `result-track:7f5af9c793df79884b8108f1f7df9e94d4c2161b2c4e6d77be7e733c3da8e526` |
| 11 | `theorem` | [cubicUpperMajorant_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/cubicuppermajorant-integral--de796d62d3b814fbbf6df3b3.md) | 98 | `result-track:de796d62d3b814fbbf6df3b369eb27bfd97a91b261b8cca5a6d45e550d91cc24` |
| 12 | `def` | [centeredSawtooth](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/centeredsawtooth--da8dfc768646af5b2917f595.md) | 110 | `declaration-track:da8dfc768646af5b2917f595e33037e5a33999d06ca4ff53ad9a41e6aa06466a` |
| 13 | `theorem` | [centeredSawtooth_abs_le_half](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/centeredsawtooth-abs-le-half--379886417c7b63af87a542ab.md) | 112 | `result-track:379886417c7b63af87a542ab40dbb3781d09c2f3d6310a4c1487e057ae38390d` |
| 14 | `theorem` | [centeredSawtooth_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/centeredsawtooth-measurable--93a645113c79cc502dd75768.md) | 119 | `result-track:93a645113c79cc502dd75768086ad91e928101d63e4d3eaa310654accb3e56fe` |
| 15 | `theorem` | [centered_cubic_row_integrable_of_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/centered-cubic-row-integrable-of-bound--6f11e091f945b64181519093.md) | 123 | `result-track:6f11e091f945b641815190938e36fc80d26b9bca60925fb1a37271dbd43e9ece` |
| 16 | `theorem` | [centered_cubic_row_abs_le_of_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/centered-cubic-row-abs-le-of-bound--5160c966ac6286fab64dc224.md) | 138 | `result-track:5160c966ac6286fab64dc224ba2932811fc83c2852127b4de936cf51d832568c` |
| 17 | `theorem` | [full_short_divisor_row_sum_abs_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/00a2a889384f51c873e9SourceCubicUpperLogMoments/Variantd7110792a7d10f06c7cadcd0df855f86f4d03449292acb9d0bd12f349f743716.lean/declarations/full-short-divisor-row-sum-abs-le--cda648a7267f0d83d9269a5d.md) | 157 | `result-track:cda648a7267f0d83d9269a5df8d41f1f9dd0e786a2256a5848265e81d67d3200` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
