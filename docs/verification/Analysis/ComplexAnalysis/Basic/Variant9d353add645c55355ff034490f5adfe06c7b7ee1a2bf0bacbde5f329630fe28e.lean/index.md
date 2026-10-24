# Verification target: GRWTSK.Analysis.ComplexAnalysis.Basic.Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8e72d74008844a6a344e67c6f83a260d8362a838",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8e72d74008844a6a344e67c6f83a260d8362a838`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toClosedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/toclosedball--11b689121b199c32ec02c26a.md) | 65 | `declaration-track:11b689121b199c32ec02c26a04d58a74a209625802f07725dc54751257cd0356` |
| 2 | `lemma` | [toClosedBall_apply](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/toclosedball-apply--3d811bc13b1c1cdf9ab29095.md) | 69 | `result-track:3d811bc13b1c1cdf9ab29095b74bb7a3e49b834018eeae8944f681ca737661ae` |
| 3 | `lemma` | [toClosedBall_eval_within](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/toclosedball-eval-within--1a81c614f16ab93fffff8a3e.md) | 73 | `result-track:1a81c614f16ab93fffff8a3ec18b6ced0be7bee86fa04002db78738ee9a5ab7c` |
| 4 | `lemma` | [toClosedBall_divisor](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/toclosedball-divisor--41a7228b2fde2eaede1466b0.md) | 79 | `result-track:41a7228b2fde2eaede1466b07a3d8e2c4b03a94fe3495c179259d9bdf64361c0` |
| 5 | `lemma` | [toClosedBall_support_subset_closedBall](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/toclosedball-support-subset-closedball--db7a87b73e2cc46710a56a77.md) | 83 | `result-track:db7a87b73e2cc46710a56a7774ef093461ee3db59e3a8fa70ac6641bca2501f2` |
| 6 | `def` | [logCounting](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting--385d6d8fcd9d5bddd467fd35.md) | 105 | `declaration-track:385d6d8fcd9d5bddd467fd351f714898eb668b40dcf9729b0657c31e06e9480d` |
| 7 | `lemma` | [logCounting_eval_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-eval-zero--e23ffeb3e01b5fb1748a43f2.md) | 131 | `result-track:e23ffeb3e01b5fb1748a43f2d70492d33b8098f4cc08cbff15517b75c71ca804` |
| 8 | `lemma` | [logCounting_single_eq_log_sub_const](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-single-eq-log-sub-const--cfa0a3cd336fd683e46def00.md) | 140 | `result-track:cfa0a3cd336fd683e46def00a77b4b2a2bd64fd4ecabe60b72a3237b921c3ec3` |
| 9 | `lemma` | [logCounting_even](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-even--f1bb05f1ebae15fbbf6f5c59.md) | 162 | `result-track:f1bb05f1ebae15fbbf6f5c5934c29d63630ff15199ab0692136895ee2a00f947` |
| 10 | `lemma` | [logCounting_mono](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-mono--1576b16e1a3364d4782c2915.md) | 168 | `result-track:1576b16e1a3364d4782c291542e481f710d419d5961eb78d8e4595c6a535342f` |
| 11 | `lemma` | [logCounting_strictMono](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-strictmono--005107ef853a59bad5a5fd56.md) | 207 | `result-track:005107ef853a59bad5a5fd565fcdd2e232306f6df9df7a8558a84ba880d21755` |
| 12 | `theorem` | [logCounting_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-nonneg--ddb05cb2bc8b620863bef9f5.md) | 225 | `result-track:ddb05cb2bc8b620863bef9f5a80a52bcc0847f8e1e849c45b541d5e7538f61c5` |
| 13 | `theorem` | [logCounting_le](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-le--8d4eba5e9940065e1148ee25.md) | 243 | `result-track:8d4eba5e9940065e1148ee256ad35f21e61c30868e67492bf9dba46907582493` |
| 14 | `theorem` | [logCounting_eventuallyLE](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-eventuallyle--a260feae8526bfb356094c6e.md) | 252 | `result-track:a260feae8526bfb356094c6ecfbc35ce8a73eff10539d1fb3e36d23869e336fe` |
| 15 | `theorem` | [sum_toClosedBall_le_logCounting](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/sum-toclosedball-le-logcounting--1fa4d16f4728e75d0cdc2ae6.md) | 262 | `result-track:1fa4d16f4728e75d0cdc2ae63998e96879742777937e006a3c2fcc9dc39bccb5` |
| 16 | `def` | [logCounting](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting--fec5f55b430d73a170170754.md) | 362 | `declaration-track:fec5f55b430d73a170170754b139f356d2e2761e711bb3402a05ff8356705f0f` |
| 17 | `lemma` | [_root_.GRWTSK.Analysis.ComplexAnalysis.ToClosedBall.Variantc04f0162f99b14b0335ef51559ebbe762cc21503ce974f5f36289f6b25ca28f5.locallyFinsuppWithin.logCounting_divisor](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/root-grwtsk-analysis-complexanalysis-toclosedball-variantc04f0162f99b14b--23349c98ab5452d4ef445eae.md) | 370 | `result-track:23349c98ab5452d4ef445eaeaa8b36cb999814655b898dc51c45bdca41f395ab` |
| 18 | `lemma` | [logCounting_coe](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-coe--4273470524253783d48273d9.md) | 378 | `result-track:4273470524253783d48273d91dc122704305516ad37a4eced6c6942b2225b728` |
| 19 | `lemma` | [logCounting_coe_eq_logCounting_sub_const_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-coe-eq-logcounting-sub-const-zero--b4c90606cf2e0ab59fb21346.md) | 386 | `result-track:b4c90606cf2e0ab59fb21346eb6905e52728d5684ba6e9b3c8426577dcad381c` |
| 20 | `lemma` | [logCounting_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-zero--177104e23ffca391bc80692c.md) | 394 | `result-track:177104e23ffca391bc80692cceed31e56ed4042ba5eb25613624d04a0f69c210` |
| 21 | `lemma` | [logCounting_top](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-top--db51b6f6a8f708bfe246c933.md) | 402 | `result-track:db51b6f6a8f708bfe246c9332d2e8d65ba9adcc24b46e8f820ed5b6b87334e03` |
| 22 | `lemma` | [logCounting_eval_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-eval-zero--6d51f3924385d3a0772fd557.md) | 409 | `result-track:6d51f3924385d3a0772fd557f0d02f6f64b52bb4dbf81a8886e9dc0655aa0aeb` |
| 23 | `theorem` | [log_counting_zero_sub_logCounting_top](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/log-counting-zero-sub-logcounting-top--55314b6f1f24169acdc6482a.md) | 417 | `result-track:55314b6f1f24169acdc6482a08ce23b01057e1929f3e537850bf7dbbbd593e8f` |
| 24 | `theorem` | [logCounting_const](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-const--fc6f36eab6a6a6dfb097d443.md) | 424 | `result-track:fc6f36eab6a6a6dfb097d4438bcce01f733140a5536866955bc93c8bf41f69f4` |
| 25 | `theorem` | [logCounting_const_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-const-zero--f598fdbc1dff0b7113800fae.md) | 431 | `result-track:f598fdbc1dff0b7113800fae8775fed791b4605611ef4e9015749a0f3f66d674` |
| 26 | `theorem` | [logCounting_even](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-even--0b4647644a8966ed5ba2176a.md) | 437 | `result-track:0b4647644a8966ed5ba2176a00019188126a2fb6b35ec425d5a157929edd3050` |
| 27 | `theorem` | [logCounting_monotoneOn](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-monotoneon--df43aa21dc976cd799a4c446.md) | 445 | `result-track:df43aa21dc976cd799a4c446c9b2da0a706e81d272e76fe0d22a948555638164` |
| 28 | `theorem` | [logCounting_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-nonneg--26615c9432fbbb790713d92d.md) | 453 | `result-track:26615c9432fbbb790713d92dd5c118defe31c1f50d7a619cec409da4c4a2e0ac` |
| 29 | `theorem` | [logCounting_eventually_nonneg](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-eventually-nonneg--77be60e7ffda53a84b7f75d7.md) | 464 | `result-track:77be60e7ffda53a84b7f75d7efa48c98988e07dc7dbbe2b6c1adc54bee52755c` |
| 30 | `theorem` | [logCounting_congr_codiscrete](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-congr-codiscrete--76612f3034cf9417ae3ffa8c.md) | 476 | `result-track:76612f3034cf9417ae3ffa8c871ce679569f0415b9c328b2bbb8cfd0f0f95b62` |
| 31 | `theorem` | [logCounting_inv](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-inv--9fdb8e85cd6db29b6eae9294.md) | 491 | `result-track:9fdb8e85cd6db29b6eae9294255c39cdf75d4bcccd85a8ec0c626a9eba0d7e70` |
| 32 | `theorem` | [logCounting_add_analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-add-analyticon--0b33d9b2f6f9779ebd010a49.md) | 498 | `result-track:0b33d9b2f6f9779ebd010a495d711ac7150b5c08228bdbc5924e0e44537e2f1a` |
| 33 | `theorem` | [logCounting_add_const](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-add-const--b65f5649d207195561f905d8.md) | 508 | `result-track:b65f5649d207195561f905d839dc433ca0b7b7a2241e3c43a3faa9f1abea10a0` |
| 34 | `theorem` | [logCounting_sub_const](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-sub-const--9238c51933702f14df52db4e.md) | 516 | `result-track:9238c51933702f14df52db4e3e033f52606d29b7fac391c34ce758dd2d758770` |
| 35 | `theorem` | [logCounting_add_top_le](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-add-top-le--e0400a3dcd2cc5a1236e0182.md) | 528 | `result-track:e0400a3dcd2cc5a1236e0182ca2701e2c7fda686cc4fa36ef49216d4c9de5eae` |
| 36 | `theorem` | [logCounting_add_top_eventuallyLE](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-add-top-eventuallyle--c82adb31588b5729403f627f.md) | 540 | `result-track:c82adb31588b5729403f627f157986f9847a0ad2547c2cefd42710e1f97c8f3f` |
| 37 | `theorem` | [logCounting_sum_top_le](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-sum-top-le--fa07578cc0d6655409b47bda.md) | 549 | `result-track:fa07578cc0d6655409b47bda5a7e89133cb2764eda76475f885456e6398f6de9` |
| 38 | `theorem` | [logCounting_sum_top_eventuallyLE](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-sum-top-eventuallyle--0cd99eb68ff387e82e7fc45d.md) | 569 | `result-track:0cd99eb68ff387e82e7fc45d1fca7194ad525be5b7dfc9bc42c72d5cc0bec120` |
| 39 | `theorem` | [logCounting_mul_zero_le](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-mul-zero-le--70e0cfc82b481e875d989eaf.md) | 590 | `result-track:70e0cfc82b481e875d989eafb8c1d9934f09c0182d8ad054ce1ad9101491ddb7` |
| 40 | `theorem` | [logCounting_mul_zero_eventuallyLE](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-mul-zero-eventuallyle--160fa3cdc624e7db56aaa34b.md) | 604 | `result-track:160fa3cdc624e7db56aaa34b5e3067d57e68a457364cf3285e6c219ca3248219` |
| 41 | `theorem` | [logCounting_mul_top_le](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-mul-top-le--74c517835ed000932470d554.md) | 615 | `result-track:74c517835ed000932470d55447806bea253311621b29891a5fda2d9aaf82b520` |
| 42 | `theorem` | [logCounting_mul_top_eventuallyLE](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-mul-top-eventuallyle--4896dedcd79abf8812de4c93.md) | 629 | `result-track:4896dedcd79abf8812de4c93b04d3913482e7d172a41c82bea10b7fffcfdcec3` |
| 43 | `theorem` | [logCounting_pow_zero](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-pow-zero--da03f7f9b0f83ce941dd059a.md) | 640 | `result-track:da03f7f9b0f83ce941dd059aa13ba3987e3852828179b5ef1eb378f9a04b8da3` |
| 44 | `theorem` | [logCounting_pow_top](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/logcounting-pow-top--5d7dc1637af15e31376d5ab4.md) | 648 | `result-track:5d7dc1637af15e31376d5ab4b9ae5f65e2925e770648f34346b2dbd80f2f0436` |
| 45 | `theorem` | [Function.locallyFinsuppWithin.logCounting_divisor_eq_circleAverage_sub_const](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/function-locallyfinsuppwithin-logcounting-divisor-eq-circleaverage-sub-c--b8920d383bb8bd3ab799dc85.md) | 668 | `result-track:b8920d383bb8bd3ab799dc85948a5a32e39d6a8dade4c37c300a4936aad4eb0a` |
| 46 | `theorem` | [ValueDistribution.logCounting_zero_sub_logCounting_top_eq_circleAverage_sub_const](../../../../../mathematics/Analysis/ComplexAnalysis/Basic/Variant9d353add645c55355ff034490f5adfe06c7b7ee1a2bf0bacbde5f329630fe28e.lean/declarations/valuedistribution-logcounting-zero-sub-logcounting-top-eq-circleaverage--d2bbc2078adc10a7b20493ba.md) | 684 | `result-track:d2bbc2078adc10a7b20493ba61c1b8a9470a4bf7229ccb1c98ba16b15b5aefc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
