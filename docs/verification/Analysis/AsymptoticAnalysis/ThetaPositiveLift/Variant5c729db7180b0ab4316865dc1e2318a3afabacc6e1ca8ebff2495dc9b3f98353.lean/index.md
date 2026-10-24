# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.ThetaPositiveLift.Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2a3c1fa67376b101a905fe96c2751f30db99ed7",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2a3c1fa67376b101a905fe96c2751f30db99ed7`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean.json)

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
| 1 | `def` | [thetaModeWeight](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodeweight--6274d41b9a7f50c701e13e7d.md) | 21 | `declaration-track:6274d41b9a7f50c701e13e7df7adcbd5b8250b0349f133efad2db6e68b1feb25` |
| 2 | `theorem` | [thetaModeWeight_positive](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodeweight-positive--a8643c3bf996da987b77dab8.md) | 24 | `result-track:a8643c3bf996da987b77dab8f931f463a9277e24ee1763be888e1ba8d4a82ae6` |
| 3 | `theorem` | [thetaModeWeight_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodeweight-summable--552d29fd4bb509ece897064f.md) | 29 | `result-track:552d29fd4bb509ece897064fc78ebb5062bcb52b5880f6a153ea4f6bd94fc10a` |
| 4 | `theorem` | [thetaModeWeight_sum_one](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodeweight-sum-one--685eb04d3f479304d4b9b7a9.md) | 33 | `result-track:685eb04d3f479304d4b9b7a9aaa1414af58a359e61e3aef3f28fcb27ad580df1` |
| 5 | `theorem` | [thetaPhiTerm_zero_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetaphiterm-zero-le--c1597e2a3bdc1978a1d5a3c9.md) | 40 | `result-track:c1597e2a3bdc1978a1d5a3c9b446588f85fb8ad5f5b587b0f85a7b92547b1087` |
| 6 | `theorem` | [thetaModeWeight_le_modeRatio](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodeweight-le-moderatio--87b8a4c2cd16ab65b160f1e8.md) | 44 | `result-track:87b8a4c2cd16ab65b160f1e8b527729cdda2cfec7c125b03765957dc7538c257` |
| 7 | `lemma` | [weighted_sub_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/weighted-sub-sq-summable--f28be281345215fcc019971a.md) | 50 | `result-track:f28be281345215fcc019971a2bcca6cc233fe313da8c15cbbaa30af278644273` |
| 8 | `lemma` | [tsum_weighted_sub_sq](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/tsum-weighted-sub-sq--64f1936f6e11c52db7be1053.md) | 58 | `result-track:64f1936f6e11c52db7be1053c3958d5013ae530e4f555842888e78268a58fda0` |
| 9 | `lemma` | [weighted_variance_le_center](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/weighted-variance-le-center--56cdeb04891af7f137d13d25.md) | 72 | `result-track:56cdeb04891af7f137d13d255661a4bbd5e92c03eeb9d32322ec34a546e73983` |
| 10 | `lemma` | [weighted_variance_le_tail_bound](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/weighted-variance-le-tail-bound--ed673804ef71606d296e8420.md) | 80 | `result-track:ed673804ef71606d296e8420fa7b4b8955ce976e9afbb846cb7aff35617ea247` |
| 11 | `lemma` | [weighted_curvature_variance_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/weighted-curvature-variance-identity--1779900984081b6e75871684.md) | 97 | `result-track:1779900984081b6e75871684b13a7c7ba43da2a5ac6e117b310b0cb8293d9f6d` |
| 12 | `def` | [thetaModeMean](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodemean--5a030018037af1e67800ef2a.md) | 111 | `declaration-track:5a030018037af1e67800ef2acc06c18be52a1a3c93fb3c2c027048b219fca8f3` |
| 13 | `def` | [thetaModeVariance](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodevariance--62ce452b5163d9cb4a2010ed.md) | 115 | `declaration-track:62ce452b5163d9cb4a2010ed1dab61b4c33d550d359a29eda16aef5d06b1c94c` |
| 14 | `theorem` | [thetaModeVariance_nonnegative](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodevariance-nonnegative--b06037fb52ab97ebbda17b8a.md) | 119 | `result-track:b06037fb52ab97ebbda17b8a6a27eb27a15ec574e362b62d8bc3cba52205414b` |
| 15 | `theorem` | [thetaModeWeight_center_sq_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodeweight-center-sq-le--179ea9c9433790c2a26f5225.md) | 124 | `result-track:179ea9c9433790c2a26f52254499b647a792208e73326a218125aab0dc31f14a` |
| 16 | `theorem` | [thetaPhi_mul_score_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetaphi-mul-score-sq-summable--9a0b2ee53f4d03ec3f9533dc.md) | 154 | `result-track:9a0b2ee53f4d03ec3f9533dca42d3791d10ad30fa338fc76760d52f57d5c1681` |
| 17 | `theorem` | [thetaPhi_mul_curvature_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetaphi-mul-curvature-summable--b861abed7aac0c91b5c7634c.md) | 168 | `result-track:b861abed7aac0c91b5c7634c9ad7adec02a0a28b8017cd794646e295e4c305a2` |
| 18 | `theorem` | [thetaModeWeight_score_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodeweight-score-summable--c1e06d4e5ce79e00a785b604.md) | 176 | `result-track:c1e06d4e5ce79e00a785b604ffe4f65b623e1126f9f72e6e764683e014fe4147` |
| 19 | `theorem` | [thetaModeWeight_score_sq_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodeweight-score-sq-summable--e441fe508344aa2f90444497.md) | 184 | `result-track:e441fe508344aa2f90444497e6e8344dd3dc79f937b491b45e12b9d49e89c64c` |
| 20 | `theorem` | [thetaModeWeight_curvature_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodeweight-curvature-summable--f0ae4c1ae79f12517d6d581b.md) | 192 | `result-track:f0ae4c1ae79f12517d6d581b943a2b6250f784165f117503b8552cd63b5db0cd` |
| 21 | `theorem` | [thetaModeMean_eq_div_D1](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodemean-eq-div-d1--5f1e679bebad5fc65ffa46bc.md) | 200 | `result-track:5f1e679bebad5fc65ffa46bcf5cfd8de2a8aeb6ae089feae7789fe4ab131236f` |
| 22 | `theorem` | [thetaModeMean_eq_logSlope](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodemean-eq-logslope--a4bf36212ead48a5e911c69f.md) | 210 | `result-track:a4bf36212ead48a5e911c69fe8e16e57fea422c7ece1b308a9bce9efb32399e1` |
| 23 | `theorem` | [thetaPhi_logCurvature_identity](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetaphi-logcurvature-identity--9b805ff534aa434f3768963b.md) | 216 | `result-track:9b805ff534aa434f3768963b3bd13aaf83abb01f88337479f5bd6e06bbf32024` |
| 24 | `theorem` | [thetaModeCurvature_expectation_le](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodecurvature-expectation-le--527c1b75c305bdfd26780390.md) | 239 | `result-track:527c1b75c305bdfd267803900179956a1918b8984232794b2746993756b26957` |
| 25 | `theorem` | [thetaModeVariance_lt_ten_mul](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetamodevariance-lt-ten-mul--d4fc41ab79034147a5a1ec65.md) | 249 | `result-track:d4fc41ab79034147a5a1ec65dac8e58c6905719d321d4fcd0c60b64c4e1946ce` |
| 26 | `theorem` | [thetaPhi_strict_logConcavity_raw](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetaphi-strict-logconcavity-raw--3efbf7d94f8447f5648d3c77.md) | 271 | `result-track:3efbf7d94f8447f5648d3c775ef8b5b7faf8b5aa9aa1e7f84d7d28851187eb7a` |
| 27 | `theorem` | [thetaPhi_strict_logConcavity_curvature](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetaphi-strict-logconcavity-curvature--9882aca56e0c9ffd271bdebc.md) | 281 | `result-track:9882aca56e0c9ffd271bdebc7cecfcd54baba8b67bf5b7f9cf33f80565a300f0` |
| 28 | `theorem` | [hasDerivAt_thetaPhi_logSlope](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/hasderivat-thetaphi-logslope--da66cc870688e20c827f4abe.md) | 287 | `result-track:da66cc870688e20c827f4abeec1971a5d35cb6e4fc0c2b3b0f38c43c0d15c95e` |
| 29 | `theorem` | [thetaPhi_logSlope_deriv_neg](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetaphi-logslope-deriv-neg--0a9b8b702be05a8af1afd03e.md) | 295 | `result-track:0a9b8b702be05a8af1afd03e82293c77163b3a1db2d4f55ca76655db2f2af8eb` |
| 30 | `theorem` | [thetaPhi_logSlope_antitone](../../../../../mathematics/Analysis/AsymptoticAnalysis/ThetaPositiveLift/Variant5c729db7180b0ab4316865dc1e2318a3afabacc6e1ca8ebff2495dc9b3f98353.lean/declarations/thetaphi-logslope-antitone--4abb8ac48b3dee04a234d64a.md) | 302 | `result-track:4abb8ac48b3dee04a234d64a4eb1c120887fef585f2b1d8e8f692823b9d4f2c5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
