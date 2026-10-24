# Verification target: GRWTSK.Analysis.ComplexAnalysis.CountingFunction.Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1af803bba8d6e5db4ac81fc3c77f34a8af3b8931",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1af803bba8d6e5db4ac81fc3c77f34a8af3b8931`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Divisor` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [toClosedBall](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/toclosedball--626c24517b4d461f6821086e.md) | 52 | `declaration-track:626c24517b4d461f6821086e1c862bef981cb57c3ffa452dd93bd93d199c2842` |
| 2 | `def` | [logCounting](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting--2a3f3540ce33665123484192.md) | 72 | `declaration-track:2a3f3540ce336651234841925db4d7e8d6fccc19a69cf25ba29057be3a8d2f09` |
| 3 | `lemma` | [logCounting_eval_zero](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting-eval-zero--f284d7b991e67b9bf7711d6c.md) | 98 | `result-track:f284d7b991e67b9bf7711d6cd267a6a83ec630617f08281f074c97b0998e2282` |
| 4 | `def` | [logCounting](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting--de5bd658f262f3aad6f51b36.md) | 124 | `declaration-track:de5bd658f262f3aad6f51b367c23c47fba33778b2157cf2460239a53ee1be9db` |
| 5 | `lemma` | [logCounting_coe](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting-coe--7b087eb6977ef0300c197540.md) | 133 | `result-track:7b087eb6977ef0300c197540f771ae56047d56c56818d4e7eaf3b9eb633a5bca` |
| 6 | `lemma` | [logCounting_coe_eq_logCounting_sub_const_zero](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting-coe-eq-logcounting-sub-const-zero--faa6b89e84bb453a0ba9e597.md) | 141 | `result-track:faa6b89e84bb453a0ba9e597c771fcc37c517796e43d8d7c02cc4b73a76fa518` |
| 7 | `lemma` | [logCounting_zero](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting-zero--a2dfae6bff11ca39f14923e7.md) | 149 | `result-track:a2dfae6bff11ca39f14923e74300bee6af7b62ffc9b364f0dd9537391cd98583` |
| 8 | `lemma` | [logCounting_top](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting-top--2c15e26a2868becc3d31be92.md) | 157 | `result-track:2c15e26a2868becc3d31be92c4a4d19a02c54225c727ed5d6d3ef54445795c01` |
| 9 | `lemma` | [logCounting_eval_zero](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting-eval-zero--77429a9a4a210528761eb90b.md) | 164 | `result-track:77429a9a4a210528761eb90b16983e2dfa2f4314ee17098450e8af2772e14627` |
| 10 | `theorem` | [log_counting_zero_sub_logCounting_top](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/log-counting-zero-sub-logcounting-top--cc482bd1e0914a3e8a1168cc.md) | 172 | `result-track:cc482bd1e0914a3e8a1168cc4d09a661bfc9beb4e343e63ed6e269364f0b622d` |
| 11 | `theorem` | [logCounting_inv](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting-inv--dcb3cabbda35ce2206e03964.md) | 183 | `result-track:dcb3cabbda35ce2206e039649420541fd88a24f633ed6bdd05d6c8f75a001947` |
| 12 | `theorem` | [logCounting_add_analyticOn](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting-add-analyticon--a4ed60da26372d4ff903f1b2.md) | 190 | `result-track:a4ed60da26372d4ff903f1b21304222b2c35f83d6c5c31aade2504b63340fb6a` |
| 13 | `theorem` | [logCounting_add_const](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting-add-const--1a1b0d29d3638ac6473871e5.md) | 199 | `result-track:1a1b0d29d3638ac6473871e5b38fba67d90ceaa3289d04551079848e5089b0a6` |
| 14 | `theorem` | [logCounting_sub_const](../../../../../mathematics/Analysis/ComplexAnalysis/CountingFunction/Variant39b038390685f099d6d688a72abe6c5476decef4a7cea139449658da9b48c16a.lean/declarations/logcounting-sub-const--faaa315928bfadb050eb63ee.md) | 207 | `result-track:faaa315928bfadb050eb63eef845310486b4e6d5fb925b8e22f518ea22e86513` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
