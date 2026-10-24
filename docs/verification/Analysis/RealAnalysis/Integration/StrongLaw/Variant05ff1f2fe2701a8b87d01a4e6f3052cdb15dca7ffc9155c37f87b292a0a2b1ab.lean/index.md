# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.StrongLaw.Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "75edee7b051894fc44e7af8c065abb43350e2c2d",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `75edee7b051894fc44e7af8c065abb43350e2c2d`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.IdentDistrib` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Probability.Independence.Integrable` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.FloorPow` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.PSeries` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Asymptotics.SpecificAsymptotics` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/truncation--498366f2e8b49a79a73cc810.md) | 85 | `declaration-track:498366f2e8b49a79a73cc8104d59b6be397adc96397a84c6a9642976eaff8162` |
| 2 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.Truncation.Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.MeasureTheory.AEStronglyMeasurable.truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/root-grwtsk-analysis-realanalysis-integration-truncation-variantd81647ec--76f5c9d1840b0edcd84df29c.md) | 90 | `result-track:76f5c9d1840b0edcd84df29c6bafd323c4f90dfeedf01841db428fe8590d181d` |
| 3 | `theorem` | [abs_truncation_le_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/abs-truncation-le-bound--02f8b07dabfb30a1e374d0b6.md) | 95 | `result-track:02f8b07dabfb30a1e374d0b60009c0359c3df3520b472beb72a4c789b5d38cfb` |
| 4 | `theorem` | [truncation_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/truncation-zero--592dac8793d597c27f1fd102.md) | 102 | `result-track:592dac8793d597c27f1fd1020bc581c6a87cadb45c3708115db3b46483987f1f` |
| 5 | `theorem` | [abs_truncation_le_abs_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/abs-truncation-le-abs-self--39aa7eaacf75c9aede8c2eb6.md) | 104 | `result-track:39aa7eaacf75c9aede8c2eb6ba0c33b19c83653416a76b35b25f36d41ac26ccb` |
| 6 | `theorem` | [truncation_eq_self](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/truncation-eq-self--d06a6f62bd6d31cfdffa2354.md) | 110 | `result-track:d06a6f62bd6d31cfdffa235421621e9187f72d398acbfd43ea8f142ab78e0079` |
| 7 | `theorem` | [truncation_eq_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/truncation-eq-of-nonneg--7065c69fd45d5f0c8a683488.md) | 117 | `result-track:7065c69fd45d5f0c8a6834889f219cfd7964e0db6fb99b113df1c8e8ae7c1373` |
| 8 | `theorem` | [truncation_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/truncation-nonneg--fc8581eae1e5e55c628a5b6a.md) | 128 | `result-track:fc8581eae1e5e55c628a5b6a7ad9a517f25da7f23f5e6acf430bf9174107d6d1` |
| 9 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.Truncation.Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.MeasureTheory.AEStronglyMeasurable.memLp_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/root-grwtsk-analysis-realanalysis-integration-truncation-variantd81647ec--8b71f7016651f86a58a621b5.md) | 131 | `result-track:8b71f7016651f86a58a621b58f9171414245e17b6afc55893e0f6fecd3791f44` |
| 10 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.Truncation.Variantd81647ece94c332148e0354588899ae6a61eb38fab9fb5dc5e59c6ff3813af35.MeasureTheory.AEStronglyMeasurable.integrable_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/root-grwtsk-analysis-realanalysis-integration-truncation-variantd81647ec--ba9ff4160aeb1de626d4c91d.md) | 135 | `result-track:ba9ff4160aeb1de626d4c91dec253c2a83063f8b76347124373650c2ec0e80a4` |
| 11 | `theorem` | [moment_truncation_eq_intervalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/moment-truncation-eq-intervalintegral--87ac359e4d3eba4fa7360c1e.md) | 139 | `result-track:87ac359e4d3eba4fa7360c1e896a954fa40a5ad224389756608ab9a90f261664` |
| 12 | `theorem` | [moment_truncation_eq_intervalIntegral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/moment-truncation-eq-intervalintegral-of-nonneg--1d79e90eddb0f36c77b6a930.md) | 149 | `result-track:1d79e90eddb0f36c77b6a930d9abf6d2fb0e75715a935b64aa128349b856fb3e` |
| 13 | `theorem` | [integral_truncation_eq_intervalIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/integral-truncation-eq-intervalintegral--19e70f4a7796ad44bb63e044.md) | 175 | `result-track:19e70f4a7796ad44bb63e044048abe439340a03a172c21b2b0142b231df7da70` |
| 14 | `theorem` | [integral_truncation_eq_intervalIntegral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/integral-truncation-eq-intervalintegral-of-nonneg--de2882138a7d41a31fe60e63.md) | 179 | `result-track:de2882138a7d41a31fe60e639404a721e17360b483935a14fad8cfe3b67e997b` |
| 15 | `theorem` | [integral_truncation_le_integral_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/integral-truncation-le-integral-of-nonneg--c8d87780394fc37fe7043dff.md) | 183 | `result-track:c8d87780394fc37fe7043dffc5aada46075bf62569fb4a2d07ec7616ed28263e` |
| 16 | `theorem` | [tendsto_integral_truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/tendsto-integral-truncation--18f8534bf782d4a3e76a2cda.md) | 195 | `result-track:18f8534bf782d4a3e76a2cda724b58282d419d171df315371f39d4ea63e0b301` |
| 17 | `theorem` | [IdentDistrib.truncation](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/identdistrib-truncation--99fe13eba6b2c5dc1c20de8d.md) | 209 | `result-track:99fe13eba6b2c5dc1c20de8defa395347940b52c90024536909e1ffd9bf36e76` |
| 18 | `theorem` | [sum_prob_mem_Ioc_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/sum-prob-mem-ioc-le--3c8b322711fa8ee6f775df6c.md) | 222 | `result-track:3c8b322711fa8ee6f775df6ca2823a46a3ed5942ba52fe78c00d350e6f501930` |
| 19 | `theorem` | [tsum_prob_mem_Ioi_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/tsum-prob-mem-ioi-lt-top--1becbf147dd9dbc6dc738c2f.md) | 293 | `result-track:1becbf147dd9dbc6dc738c2f606ea1b485d669a41a13b1ffb3ddc7d592bfd094` |
| 20 | `theorem` | [sum_variance_truncation_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/sum-variance-truncation-le--c84d4d0505fc06f96bbebbb3.md) | 317 | `result-track:c84d4d0505fc06f96bbebbb36a748250e4d0b615e145a1ec4a575a45f891d7d5` |
| 21 | `theorem` | [strong_law_aux1](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-aux1--ce0f361264a47b07f906ce9f.md) | 384 | `result-track:ce0f361264a47b07f906ce9fb5328e982f1e1949d5a65bc50a62cab31c2e1bc2` |
| 22 | `theorem` | [strong_law_aux2](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-aux2--42de0251e54924e423971eef.md) | 488 | `result-track:42de0251e54924e423971eef88f6e94a5af60ab06ea624985490b11fc24cbc53` |
| 23 | `theorem` | [strong_law_aux3](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-aux3--1c235db92c31f060ec42937f.md) | 505 | `result-track:1c235db92c31f060ec42937f99e79059b1dde72f33a56dde8d2774280dae0dd6` |
| 24 | `theorem` | [strong_law_aux4](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-aux4--7d1b8899617431f7f25ff779.md) | 522 | `result-track:7d1b8899617431f7f25ff77901b29a2075d78d05180d633d5b3ad7bc2c43592e` |
| 25 | `theorem` | [strong_law_aux5](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-aux5--da981d0a260a7258ead189b1.md) | 536 | `result-track:da981d0a260a7258ead189b1156bcfafc004c76778d63d8f20c0647460e86726` |
| 26 | `theorem` | [strong_law_aux6](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-aux6--3b61dbd74ee04dc10ef2216b.md) | 564 | `result-track:3b61dbd74ee04dc10ef2216bc16c87844e90bff155383066b3c376e0e2d62323` |
| 27 | `theorem` | [strong_law_aux7](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-aux7--254e371969d2ef4a39c678aa.md) | 588 | `result-track:254e371969d2ef4a39c678aa0510dadbe80fca81ed81cd4cf5960a97acf16386` |
| 28 | `theorem` | [strong_law_ae_real](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-ae-real--22a742c3357830829c7ae15c.md) | 609 | `result-track:22a742c3357830829c7ae15c8db020cad06b777b7151d0ea937e1dc1d42257d4` |
| 29 | `lemma` | [strong_law_ae_simpleFunc_comp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-ae-simplefunc-comp--625e70c1905d23e92636b591.md) | 657 | `result-track:625e70c1905d23e92636b59119b400d3644512b266b3bfd7dba41907b6e5bc6b` |
| 30 | `lemma` | [strong_law_ae_of_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-ae-of-measurable--c6bf9fc2557be52fca80d37c.md) | 707 | `result-track:c6bf9fc2557be52fca80d37c2e4ecfd8b28c27bf45cf9a5a3d6d1e42c2b533fe` |
| 31 | `theorem` | [strong_law_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-ae--2fa15a72f6f7b944827491ad.md) | 799 | `result-track:2fa15a72f6f7b944827491ad77e41d98a1619a01120b55008b0d29d994996488` |
| 32 | `theorem` | [strong_law_Lp](../../../../../../mathematics/Analysis/RealAnalysis/Integration/StrongLaw/Variant05ff1f2fe2701a8b87d01a4e6f3052cdb15dca7ffc9155c37f87b292a0a2b1ab.lean/declarations/strong-law-lp--d9169b9a2a339b64ae09d47d.md) | 843 | `result-track:d9169b9a2a339b64ae09d47d0b155520fbb27bfa1d566785bdd179ff53f85cfd` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
