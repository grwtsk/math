# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity.Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84c71d0145ce6fae71a9ba8bedb0e7b1220a81e1",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84c71d0145ce6fae71a9ba8bedb0e7b1220a81e1`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.ThetaPhiSourceDerivatives` — import line 1; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.ThetaPhiGaussianBound` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.MeanValue` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thetaModeWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodeweight--0c7b8d6578b39100187267cf.md) | 9 | `declaration-track:0c7b8d6578b39100187267cf9ab18f5f51e467f3e180ae1be3b0f3c0f230f322` |
| 2 | `lemma` | [thetaModeWeight_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodeweight-positive--8e133aaba842f99dd58fdf4d.md) | 11 | `result-track:8e133aaba842f99dd58fdf4dbc63d50024683d879cd2efb6422793ee4dbdb8bc` |
| 3 | `lemma` | [thetaModeWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodeweight-summable--106f2877a57361405174ea00.md) | 15 | `result-track:106f2877a57361405174ea0068723bb15349fa278b0bca9cc3a08c7ad0ab2d37` |
| 4 | `lemma` | [thetaModeWeight_sum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodeweight-sum-one--cd4c6ea8ca7145a361e21ff6.md) | 18 | `result-track:cd4c6ea8ca7145a361e21ff6b012c642add07ea2463083e1d853ab9b17bb29cc` |
| 5 | `lemma` | [thetaPhiTerm_zero_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetaphiterm-zero-le--c9fa7586207fa92f577f7618.md) | 24 | `result-track:c9fa7586207fa92f577f76188b9696d792cb2dee5d09351105964c80623118ae` |
| 6 | `lemma` | [thetaModeWeight_le_modeRatio](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodeweight-le-moderatio--374cd0b8908589746419d279.md) | 27 | `result-track:374cd0b8908589746419d2792a7ce478b1319544a45d4fe2b914507e4c6fbb5b` |
| 7 | `lemma` | [weighted_sub_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/weighted-sub-sq-summable--597a697f1386820181c2775a.md) | 33 | `result-track:597a697f1386820181c2775a061e66269fabfa104dea52b7eb57e383839b9208` |
| 8 | `lemma` | [tsum_weighted_sub_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/tsum-weighted-sub-sq--9739bd7d8248759ee7fd0515.md) | 41 | `result-track:9739bd7d8248759ee7fd05156dedc83c55301ad48a8617d842520a14e90d18bc` |
| 9 | `lemma` | [weighted_variance_le_center](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/weighted-variance-le-center--67d4864a7916605b2dd45932.md) | 55 | `result-track:67d4864a7916605b2dd45932d2e741974657e024b268b259a71d46fc29c9ede1` |
| 10 | `lemma` | [weighted_variance_le_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/weighted-variance-le-tail-bound--a082544e884263e573aaba39.md) | 63 | `result-track:a082544e884263e573aaba39601a67732ee5c32d5aa26e58b2fb65e1fb4ce7e5` |
| 11 | `lemma` | [weighted_curvature_variance_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/weighted-curvature-variance-identity--6b34d85d2fae51cfc5499033.md) | 80 | `result-track:6b34d85d2fae51cfc5499033b4a0bdc1a752349082d58d4a516af7cd2d0dc5c9` |
| 12 | `def` | [thetaModeMean](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodemean--5d88bd66fddddbc916a02f51.md) | 93 | `declaration-track:5d88bd66fddddbc916a02f511d205fa567bc9156e3a13f704d6b955770dee9f3` |
| 13 | `def` | [thetaModeVariance](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodevariance--e34f12afcadf88e19964661d.md) | 96 | `declaration-track:e34f12afcadf88e19964661d605df1717be46e3aaa4be49faf9e15f1627ade46` |
| 14 | `lemma` | [thetaModeVariance_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodevariance-nonnegative--08489ee6c2a4b6729db690e5.md) | 99 | `result-track:08489ee6c2a4b6729db690e5f6962218d7da1eee85cfd7edd7a4c26113803d4e` |
| 15 | `lemma` | [thetaModeWeight_center_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodeweight-center-sq-le--a6885e9a740f14c649bad9b7.md) | 103 | `result-track:a6885e9a740f14c649bad9b716d353d80c19181b0cf13f4e4c5932cd7391b0be` |
| 16 | `lemma` | [thetaPhi_mul_score_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetaphi-mul-score-sq-summable--538d2594bf1c30d304bb4e73.md) | 132 | `result-track:538d2594bf1c30d304bb4e73c4cc5cf3c12950c42b99ccb5156382bbe2aafe27` |
| 17 | `lemma` | [thetaPhi_mul_curvature_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetaphi-mul-curvature-summable--5ee668ca9315eb4ce0412645.md) | 145 | `result-track:5ee668ca9315eb4ce041264530b5a405f673cdfaf4a84bb7c2e3366ee3fb3aeb` |
| 18 | `lemma` | [thetaModeWeight_score_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodeweight-score-summable--9f07592deea90ac69d5f1421.md) | 152 | `result-track:9f07592deea90ac69d5f1421ebee26b06bc86e18a340feaabdc755a1f17f5cb5` |
| 19 | `lemma` | [thetaModeWeight_score_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodeweight-score-sq-summable--b8705857aef73700ff408619.md) | 159 | `result-track:b8705857aef73700ff408619f41cc97221d9d22d00d6d17f60e3b3004209dae6` |
| 20 | `lemma` | [thetaModeWeight_curvature_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodeweight-curvature-summable--1bf402dc8e666fe0f77c8c41.md) | 166 | `result-track:1bf402dc8e666fe0f77c8c41c561e3ee3ada19b8534f7ff8041e79249c3c2ba0` |
| 21 | `lemma` | [thetaModeMean_eq_div_D1](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodemean-eq-div-d1--2126fc32cd50d9a603b7961c.md) | 173 | `result-track:2126fc32cd50d9a603b7961c81e765873846a51f292ff7f30fc7fcafa3ccd174` |
| 22 | `lemma` | [thetaModeMean_eq_logSlope](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodemean-eq-logslope--93e4a4535a4ae974dcea95e2.md) | 182 | `result-track:93e4a4535a4ae974dcea95e2cef206cc2b0d9742fbdfcc51dc7fdb5297a4fcfc` |
| 23 | `lemma` | [thetaPhi_logCurvature_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetaphi-logcurvature-identity--865e77108fa7435e53bf19b8.md) | 187 | `result-track:865e77108fa7435e53bf19b8fc9d96dbe70cb933410f4c953d07dc8bca83c1c9` |
| 24 | `lemma` | [thetaModeCurvature_expectation_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodecurvature-expectation-le--f6011a02b3c30b99382197ad.md) | 209 | `result-track:f6011a02b3c30b99382197adba26b891b6813a81cd213dd020ad37c1cd36598e` |
| 25 | `lemma` | [thetaModeVariance_lt_ten_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetamodevariance-lt-ten-mul--401507252b9a16148bcc655b.md) | 218 | `result-track:401507252b9a16148bcc655b61eec47f79f5dfd160e49e52c4876b6bf20f711a` |
| 26 | `lemma` | [thetaPhi_strict_logConcavity_raw](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetaphi-strict-logconcavity-raw--a47608d3e4a3b1d240df2cd2.md) | 239 | `result-track:a47608d3e4a3b1d240df2cd2c6113ebe8ca6deb56f429857c75da3e558ad9085` |
| 27 | `lemma` | [thetaPhi_strict_logConcavity_curvature](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetaphi-strict-logconcavity-curvature--346473cc2c9498cb31becd4a.md) | 248 | `result-track:346473cc2c9498cb31becd4ab1567e67280db88f916f280d862d2e143e4039e0` |
| 28 | `lemma` | [hasDerivAt_thetaPhi_logSlope](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/hasderivat-thetaphi-logslope--937cc2cc846b3118aebf9d6e.md) | 253 | `result-track:937cc2cc846b3118aebf9d6e140c8840fb373779dd7efccc7dbda21afd12cb94` |
| 29 | `lemma` | [thetaPhi_logSlope_deriv_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetaphi-logslope-deriv-neg--9bf5335097231c871b8625b1.md) | 260 | `result-track:9bf5335097231c871b8625b1cd52bba5f850040c5d0429ca26732db6d53d29ef` |
| 30 | `lemma` | [thetaPhi_logSlope_antitone](../../../../../mathematics/Analysis/AsymptoticAnalysis/92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004LogConcavity/Variant92bf6ab9c8de330b35104b6a1273bf886286d10835b8bd2b28e9ea9477f31004.lean/declarations/thetaphi-logslope-antitone--c6e788d92f4c6b36a6c173dd.md) | 266 | `result-track:c6e788d92f4c6b36a6c173ddb3d5e405d4f9c79664a01f3e5f06f01aff1faf72` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
