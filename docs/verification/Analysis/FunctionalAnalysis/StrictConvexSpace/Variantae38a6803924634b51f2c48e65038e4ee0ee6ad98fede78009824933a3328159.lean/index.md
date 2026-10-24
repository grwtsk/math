# Verification target: GRWTSK.Analysis.FunctionalAnalysis.StrictConvexSpace.Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "167083bd1e0e237a6d5bdb7e439e2448ae531a5e",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `167083bd1e0e237a6d5bdb7e439e2448ae531a5e`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean.json)

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
| 1 | `class` | [StrictConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/strictconvexspace--ede9e5d29c432ba0ea0bc003.md) | 67 | `declaration-track:ede9e5d29c432ba0ea0bc00353471ece10d8641bd39611ede72c58b6d54bb2e8` |
| 2 | `theorem` | [strictConvex_closedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/strictconvex-closedball--528e29bac1270441422bdb91.md) | 75 | `result-track:528e29bac1270441422bdb91ce26b576b841288479de0a09b32cae398ae7ab42` |
| 3 | `theorem` | [StrictConvexSpace.of_strictConvex_unitClosedBall](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/strictconvexspace-of-strictconvex-unitclosedball--ecdf203a21f6968424d2f191.md) | 85 | `result-track:ecdf203a21f6968424d2f191750cf6d657f56cbe779926e7e730e19147987f5f` |
| 4 | `theorem` | [StrictConvexSpace.of_norm_combo_lt_one](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/strictconvexspace-of-norm-combo-lt-one--e397bb3b651ddd67a94d012d.md) | 92 | `result-track:e397bb3b651ddd67a94d012d9f7ec62aee27a3f2195974b5c98679f20a20e735` |
| 5 | `theorem` | [StrictConvexSpace.of_norm_combo_ne_one](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/strictconvexspace-of-norm-combo-ne-one--8f063280d7832711d8d54ac5.md) | 105 | `result-track:8f063280d7832711d8d54ac511e23c6d20f80ea34f6335d2ef42852071a57bbc` |
| 6 | `theorem` | [StrictConvexSpace.of_norm_add_ne_two](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/strictconvexspace-of-norm-add-ne-two--278b6f2a2b11ebd123e425ce.md) | 118 | `result-track:278b6f2a2b11ebd123e425ce1b98e9afd0e1a7a1300faea38c12789ed3614afe` |
| 7 | `theorem` | [StrictConvexSpace.of_pairwise_sphere_norm_ne_two](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/strictconvexspace-of-pairwise-sphere-norm-ne-two--c3d33879047761337f3450e0.md) | 127 | `result-track:c3d33879047761337f3450e0c509d90940ff98e40aa198c2c14884fd676ca355` |
| 8 | `theorem` | [StrictConvexSpace.of_norm_add](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/strictconvexspace-of-norm-add--2b61a54a3060a3b9301d1aba.md) | 134 | `result-track:2b61a54a3060a3b9301d1aba10fc2bbf956e8c1d629b56f1943cc862238f783e` |
| 9 | `theorem` | [combo_mem_ball_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/combo-mem-ball-of-ne--fbf97b198f583186ef0d111f.md) | 144 | `result-track:fbf97b198f583186ef0d111fc4058154dbd6df69d69509f847c8390de4b0239d` |
| 10 | `theorem` | [openSegment_subset_ball_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/opensegment-subset-ball-of-ne--c64006b4978f0d4fbcd18d1b.md) | 154 | `result-track:c64006b4978f0d4fbcd18d1b6da56e73045d313572adc91a306e3fccfb97bb59` |
| 11 | `theorem` | [norm_combo_lt_of_ne](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/norm-combo-lt-of-ne--2a631dca024df2d5b7345a5a.md) | 160 | `result-track:2a631dca024df2d5b7345a5a37a14d099e8d7b55d27827f6a83354c343e32f8a` |
| 12 | `theorem` | [norm_add_lt_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/norm-add-lt-of-not-sameray--a5f18482225dfcaf93fc0baa.md) | 167 | `result-track:a5f18482225dfcaf93fc0baaca68a2eba0ff1056e8fe62e5e9973ebf6c4abaa0` |
| 13 | `theorem` | [lt_norm_sub_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/lt-norm-sub-of-not-sameray--8870789f17dcad88fa1d132e.md) | 180 | `result-track:8870789f17dcad88fa1d132ee47ca5be52b655bdfad4134a713b495ebef0732e` |
| 14 | `theorem` | [abs_lt_norm_sub_of_not_sameRay](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/abs-lt-norm-sub-of-not-sameray--99da4bd6b48dad8db6feeec2.md) | 184 | `result-track:99da4bd6b48dad8db6feeec25d52d99c298ebb7608636cf450580fa20bb6c8d8` |
| 15 | `theorem` | [sameRay_iff_norm_add](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/sameray-iff-norm-add--7f2b4bf2a555b5c0f0858dc5.md) | 191 | `result-track:7f2b4bf2a555b5c0f0858dc5c800f79dc1dba10429337b3c53910b5484d3a59e` |
| 16 | `theorem` | [eq_of_norm_eq_of_norm_add_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/eq-of-norm-eq-of-norm-add-eq--086a9ba28ddf2f773ca97d4f.md) | 196 | `result-track:086a9ba28ddf2f773ca97d4f7c6a1de6d7559a5d6d34af3aa2ea56a68f6568a3` |
| 17 | `theorem` | [not_sameRay_iff_norm_add_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/not-sameray-iff-norm-add-lt--a09bcdb15ca4cbfa2202a3e5.md) | 201 | `result-track:a09bcdb15ca4cbfa2202a3e5aa7fdc8e65262c755dd951cdfd41c0c8d955cd16` |
| 18 | `theorem` | [sameRay_iff_norm_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/sameray-iff-norm-sub--2d5ab227f4230197b2a0dff5.md) | 204 | `result-track:2d5ab227f4230197b2a0dff513570b070800486a60b82df5a14b5e19c11f2d6a` |
| 19 | `theorem` | [not_sameRay_iff_abs_lt_norm_sub](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/not-sameray-iff-abs-lt-norm-sub--e20202bb2aff9f5aa39d49c5.md) | 208 | `result-track:e20202bb2aff9f5aa39d49c53ebfc8509469e3d52392adab96470bc78f74eec0` |
| 20 | `theorem` | [norm_midpoint_lt_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/norm-midpoint-lt-iff--2ddc32a9b4f1003c3168c883.md) | 211 | `result-track:2ddc32a9b4f1003c3168c8838543afeccfb085db99fd6f9001a39e51ccb706aa` |
| 21 | `instance` | [Real.instStrictConvexSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/StrictConvexSpace/Variantae38a6803924634b51f2c48e65038e4ee0ee6ad98fede78009824933a3328159.lean/declarations/real-inststrictconvexspace--265cf75a6912266ce3018560.md) | 216 | `declaration-track:265cf75a6912266ce3018560f35e62f09ebda956a9850738ac00b778b769c1a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
