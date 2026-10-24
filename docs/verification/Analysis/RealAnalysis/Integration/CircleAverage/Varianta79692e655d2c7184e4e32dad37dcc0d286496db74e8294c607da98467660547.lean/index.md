# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CircleAverage.Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fee8d1ab6e50edfc1b3355aa70f6d2515b934d48",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fee8d1ab6e50edfc1b3355aa70f6d2515b934d48`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [circleAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage--186c1167fdc54b6ff7cce454.md) | 63 | `declaration-track:186c1167fdc54b6ff7cce4540ee7f233c1ccc4e97684aaa6780f483ae36988b0` |
| 2 | `lemma` | [circleAverage_def](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-def--c6f68456117bdafdb5092041.md) | 66 | `result-track:c6f68456117bdafdb5092041ac92b994896e9ed953bb2fc9f95ae7e1f7a03ee0` |
| 3 | `theorem` | [circleAverage.integral_undef](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-integral-undef--020e52b5bb960a1d54a7ede3.md) | 72 | `result-track:020e52b5bb960a1d54a7ede31d453fcb1b045a5ef421d8a1b9cd898df20f9220` |
| 4 | `lemma` | [circleAverage_eq_intervalAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-eq-intervalaverage--ed13682e9c380969045fdfd3.md) | 77 | `result-track:ed13682e9c380969045fdfd3a618ac0328debcc85149ef214c0551c9ca4a658a` |
| 5 | `lemma` | [circleAverage_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-zero--10293fc548ceef295962dfba.md) | 82 | `result-track:10293fc548ceef295962dfbaaba30100a770688982ff69dace921a0a2d793d39` |
| 6 | `lemma` | [circleAverage_map_add_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-map-add-const--e1471ad47228b05819a8ddd6.md) | 93 | `result-track:e1471ad47228b05819a8ddd67ec9c8dc19a0eecd5d2a3d58a7f7e6585ecab674` |
| 7 | `theorem` | [circleAverage_eq_circleIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-eq-circleintegral--07cec220600723c06cedc9f0.md) | 105 | `result-track:07cec220600723c06cedc9f0311c1cee6b7084557ef0a76cc63146cab870338a` |
| 8 | `lemma` | [circleAverage_eq_integral_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-eq-integral-add--ae2b33228f8fb66029221204.md) | 126 | `result-track:ae2b33228f8fb66029221204d6460a75ee2d9a8fb968de21c217283fca656829` |
| 9 | `theorem` | [circleAverage_neg_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-neg-radius--5822e50380be409e3159657d.md) | 138 | `result-track:5822e50380be409e3159657d4eded4799fffb5cf968f9b27faba16e8c9a97b21` |
| 10 | `theorem` | [circleAverage_abs_radius](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-abs-radius--a4ed0c54ec989207b558cf40.md) | 144 | `result-track:a4ed0c54ec989207b558cf408ed8b77764db75f2c2fb258060c62627e5c6c224` |
| 11 | `theorem` | [circleAverage_congr_codiscreteWithin](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-congr-codiscretewithin--d2bced2d9062e6ddfb6a6f97.md) | 151 | `result-track:d2bced2d9062e6ddfb6a6f97adfb6bf9c286b3447c9d86f3c825de28bb95b0be` |
| 12 | `theorem` | [circleAverage_congr_sphere](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-congr-sphere--b926b677ff0b1a43d972489b.md) | 161 | `result-track:b926b677ff0b1a43d972489b8eabdff5e8b7deede17dab399daaedc013583907` |
| 13 | `theorem` | [circleAverage_eq_circleAverage_zero_one](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-eq-circleaverage-zero-one--cc3a5c9287f02f59efab6044.md) | 170 | `result-track:cc3a5c9287f02f59efab6044bad4918cd1edc489373d1f02b42b4e871316f20b` |
| 14 | `theorem` | [circleAverage_zero_one_congr_inv](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-zero-one-congr-inv--f4495bc3ff0cf72a2b5af255.md) | 182 | `result-track:f4495bc3ff0cf72a2b5af25586395b0903baa8aa76619cf9e5397efbe0688006` |
| 15 | `lemma` | [circleMap.continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circlemap-continuous--c6dd96a9a75ca3ded9e4f20d.md) | 202 | `result-track:c6dd96a9a75ca3ded9e4f20d03f598fe2b2bd5fdc09319586cf151ff88a57e82` |
| 16 | `theorem` | [ContinuousOn.circleAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/continuouson-circleaverage--9a0905cfd70e2fc9689492f7.md) | 210 | `result-track:9a0905cfd70e2fc9689492f7b9d6536df7e5a970b355f0a494f735a95b5ecf84` |
| 17 | `theorem` | [Continuous.circleAverage](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/continuous-circleaverage--8b8e6b66d50d6298d006b54f.md) | 225 | `result-track:8b8e6b66d50d6298d006b54f6e9b904be9b24b31698fdba4f8f80fc05222cae9` |
| 18 | `lemma` | [ContinuousOn.eq_of_eqOn_Ioo](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/continuouson-eq-of-eqon-ioo--84e642a91c3f55d93f45d9c0.md) | 234 | `result-track:84e642a91c3f55d93f45d9c073b88ae2893600f8f8c93b98bd00f537408a856a` |
| 19 | `theorem` | [circleAverage_const](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-const--0f530a926e415d5c5e2decdd.md) | 253 | `result-track:0f530a926e415d5c5e2decdd82beb2bb3b31b4ebfce7e71290502f96582b109d` |
| 20 | `theorem` | [circleAverage_const_on_circle](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-const-on-circle--a847af381a7580fed67c08f8.md) | 262 | `result-track:a847af381a7580fed67c08f834c385cbfe80300db1669abcfd512330d40a47f4` |
| 21 | `theorem` | [circleAverage_mono](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-mono--5ed5a4681f99c3378b912afa.md) | 280 | `result-track:5ed5a4681f99c3378b912afa208ba7e44b1760de762b3bc4b2008ca45589366a` |
| 22 | `theorem` | [circleAverage_mono_on_of_le_circle](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-mono-on-of-le-circle--47c9c3329bb7a8c1510aa6c4.md) | 291 | `result-track:47c9c3329bb7a8c1510aa6c4783ef91e2a5bbf83e243cc00401f16cc5ff4fb7a` |
| 23 | `theorem` | [abs_circleAverage_le_circleAverage_abs](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/abs-circleaverage-le-circleaverage-abs--f2a0656a4b62a5740b8437a5.md) | 303 | `result-track:f2a0656a4b62a5740b8437a5284bc15c60e63df937fa21c48c68d025a4d94e9e` |
| 24 | `theorem` | [circleAverage_nonneg_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-nonneg-of-nonneg--4e012e468d4fabf19bd8d83f.md) | 312 | `result-track:4e012e468d4fabf19bd8d83f44810d2a0f7bec46fdcc10f2262370ee6c63eef1` |
| 25 | `theorem` | [_root_.GRWTSK.Analysis.RealAnalysis.Integration.CircleAverage.Variantba1b32a953688a1d699dd219a7fa9f2d8e31510a5dffe90e9e414a0d3fdb8b82.ContinuousLinearMap.circleAverage_comp_comm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/root-grwtsk-analysis-realanalysis-integration-circleaverage-variantba1b3--8a9733dc2664dde3730a8043.md) | 327 | `result-track:8a9733dc2664dde3730a8043d0d467750daa1c14e22eefb1c2c43c3545e498f1` |
| 26 | `theorem` | [circleAverage_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-smul--8922b0d84861c76b0933af62.md) | 340 | `result-track:8922b0d84861c76b0933af6287623e5e194ff9b3ac3752d1af2233b093d8ad56` |
| 27 | `theorem` | [circleAverage_fun_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-fun-smul--65512a2ff962f9e1f5790140.md) | 348 | `result-track:65512a2ff962f9e1f579014038fff229b20d6ea28e5ef8fd998bbd90eae68153` |
| 28 | `theorem` | [circleAverage_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-add--2ff0ce8e0d0788976286dc6a.md) | 353 | `result-track:2ff0ce8e0d0788976286dc6a5399936c64d3c3454cb16ba7a9075c757d73d1ea` |
| 29 | `theorem` | [circleAverage_fun_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-fun-add--85f11dc59138c31df5905241.md) | 360 | `result-track:85f11dc59138c31df5905241cff43849bb71b42afdfcd7e5929d6447a7bb5567` |
| 30 | `theorem` | [circleAverage_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-sum--1c3e6258bcbd9213a17b7f97.md) | 366 | `result-track:1c3e6258bcbd9213a17b7f973ef32e8a6e1d1207f1f43fe11a575210345951fb` |
| 31 | `theorem` | [circleAverage_fun_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-fun-sum--367c168754a6dccd5decc339.md) | 373 | `result-track:367c168754a6dccd5decc33981aeb60758c6ce114715077344f0acb0d7ee930b` |
| 32 | `theorem` | [circleAverage_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-sub--dd75342ecd113fcdc78c0e69.md) | 380 | `result-track:dd75342ecd113fcdc78c0e69e94aa04d590a9ef0a84d6eb20bdcfa63bdf0f1a9` |
| 33 | `theorem` | [circleAverage_fun_sub](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CircleAverage/Varianta79692e655d2c7184e4e32dad37dcc0d286496db74e8294c607da98467660547.lean/declarations/circleaverage-fun-sub--9fe59d5a66531e0c58977b66.md) | 387 | `result-track:9fe59d5a66531e0c58977b6633d8558c219796aba727a9ae8ec1ad5fc6209d44` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
