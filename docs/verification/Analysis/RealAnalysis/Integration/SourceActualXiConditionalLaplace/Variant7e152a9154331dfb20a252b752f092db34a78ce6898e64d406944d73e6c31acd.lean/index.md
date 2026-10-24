# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceActualXiConditionalLaplace.Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "018b783375b2c7473c330ffd2cefda523a5412e2",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `018b783375b2c7473c330ffd2cefda523a5412e2`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `RootActualXiExponentialEnvelope` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actualXiAbsoluteCumulative](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxiabsolutecumulative--e910f6126fe7e952aa88a969.md) | 20 | `declaration-track:e910f6126fe7e952aa88a969e2fe98cd3aa3846e97c1bbd154e33e67a7596e40` |
| 2 | `def` | [actualXiConditionalLaplaceBudget](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxiconditionallaplacebudget--f6ef510239722dfb2dc3d5ab.md) | 24 | `declaration-track:f6ef510239722dfb2dc3d5ab795b97a3250c980fd3f0abd59f8ad700452e02c1` |
| 3 | `theorem` | [lower_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/lower-nonneg--5c89d3f0dba95a127f72d769.md) | 27 | `result-track:5c89d3f0dba95a127f72d7693a92cc442d1f3c25613c0deeb82143566bab4b27` |
| 4 | `theorem` | [actual_abs_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actual-abs-intervalintegrable--5275e36b65740cdc3567be40.md) | 29 | `result-track:5275e36b65740cdc3567be406b22ef1c8fb7b3bfddc0665b553d1950bf175775` |
| 5 | `theorem` | [actualXiAbsoluteCumulative_at_lower](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxiabsolutecumulative-at-lower--d2046901614ebd79e900fd71.md) | 34 | `result-track:d2046901614ebd79e900fd71d5920920cfbdea545bb05d29c7b5d4a55da207f7` |
| 6 | `theorem` | [actualXiAbsoluteCumulative_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxiabsolutecumulative-nonneg--d3e4826cc1e0884ff5f7dc07.md) | 39 | `result-track:d3e4826cc1e0884ff5f7dc076596a6f3b4c88f98f027022a1f0c4b5dfddddd57` |
| 7 | `theorem` | [actualXiAbsoluteCumulative_absolutelyContinuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxiabsolutecumulative-absolutelycontinuous--711dc0192e198bbf920cee70.md) | 44 | `result-track:711dc0192e198bbf920cee70b4179224d335c868e005926ab4563cea87d41359` |
| 8 | `theorem` | [actualXiAbsoluteCumulative_ae_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxiabsolutecumulative-ae-hasderivat--42f440686b38d7dd1e2c78ed.md) | 50 | `result-track:42f440686b38d7dd1e2c78edca72ccefc50660c6876a071e8cabd5026295b49c` |
| 9 | `theorem` | [cumulative_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/cumulative-weight-intervalintegrable--744ba7247fe07b5c19a3bd07.md) | 56 | `result-track:744ba7247fe07b5c19a3bd07178dfd60f49ab2dd6c2458712ffc5852eff50e94` |
| 10 | `theorem` | [absolute_weight_intervalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/absolute-weight-intervalintegrable--d546e26fe26dda3401619304.md) | 63 | `result-track:d546e26fe26dda340161930412d4c54b1a6c205fa3047c91dc3a529bc4f1b149` |
| 11 | `theorem` | [actualXiLaplace_finite_abel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxilaplace-finite-abel--af2ccce4f9603cf8ad0d4435.md) | 70 | `result-track:af2ccce4f9603cf8ad0d4435521c1fbd0c493ae7b2afd6eaae7fe49718603ae6` |
| 12 | `theorem` | [actualXiAbsoluteCumulative_le_future_envelope](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxiabsolutecumulative-le-future-envelope--9aef790dd779168ca71d0cf5.md) | 105 | `result-track:9aef790dd779168ca71d0cf50135cb94ba0f02cf16511ae96a730008b7e5d202` |
| 13 | `theorem` | [polynomial_exponential_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/polynomial-exponential-bound--eb90b87d205b7e4e5a970e98.md) | 118 | `result-track:eb90b87d205b7e4e5a970e989dc65e0657a7df161a762518db0ba1b5a7db58fd` |
| 14 | `theorem` | [cumulative_weight_norm_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/cumulative-weight-norm-bound--5ca95c409e9a7980d85cfcbf.md) | 144 | `result-track:5ca95c409e9a7980d85cfcbfad69e9581d8bc31c0a1d8979098c1904287502de` |
| 15 | `theorem` | [actualXiCumulativeLaplace_integrableOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxicumulativelaplace-integrableon--ca9c7fc23491b40b7384472c.md) | 164 | `result-track:ca9c7fc23491b40b7384472c96ae1c54046e0e445969abba7479af06d62ef10a` |
| 16 | `theorem` | [actualXiCumulativeLaplace_tendsto_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxicumulativelaplace-tendsto-zero--0231ec4f04e47b2aea13f12e.md) | 181 | `result-track:0231ec4f04e47b2aea13f12e1adcc01bdafd58229dad449a845b9e56882dde72` |
| 17 | `theorem` | [absolute_laplace_finite_tendsto](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/absolute-laplace-finite-tendsto--707b1c98b2fb0e7eb25cd786.md) | 195 | `result-track:707b1c98b2fb0e7eb25cd786de00b17b26bf09e544292739e5276eb9a157f92c` |
| 18 | `theorem` | [actualXiLaplace_integrableOn_of_future_average](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxilaplace-integrableon-of-future-average--b53877ebec120d884191e20c.md) | 212 | `result-track:b53877ebec120d884191e20cfbd4a34e0d9a952eb793f4a3e7f901040ba4f62d` |
| 19 | `theorem` | [actualXiLaplace_integral_norm_eq](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxilaplace-integral-norm-eq--0ed53381f8ba9a26f3b3b568.md) | 230 | `result-track:0ed53381f8ba9a26f3b3b568d23c7846e32789297390759eed89920de78ca85e` |
| 20 | `theorem` | [actualXiLaplace_integral_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxilaplace-integral-norm-le--362dd4c73c255ce2ed87aec1.md) | 241 | `result-track:362dd4c73c255ce2ed87aec1f3e4389b9fe500e2766af4bcba3d9dd197a06e1d` |
| 21 | `theorem` | [actualXiLaplace_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceActualXiConditionalLaplace/Variant7e152a9154331dfb20a252b752f092db34a78ce6898e64d406944d73e6c31acd.lean/declarations/actualxilaplace-norm-le--b0214f78ce00383f9703c0f3.md) | 271 | `result-track:b0214f78ce00383f9703c0f30f472514764bb0bcf583636931461c16e43b73ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
