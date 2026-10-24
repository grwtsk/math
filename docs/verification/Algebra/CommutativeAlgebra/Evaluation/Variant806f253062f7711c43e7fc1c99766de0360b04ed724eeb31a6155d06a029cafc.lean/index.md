# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Evaluation.Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "592dfde852f57989d1be0eb108ea0cbaa9abaa95",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `592dfde852f57989d1be0eb108ea0cbaa9abaa95`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.MvPowerSeries.Evaluation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.PowerSeries.PiTopology` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.MvPolynomial.Equiv` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [HasEval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/haseval--c2e422305389c322b80670ef.md) | 58 | `declaration-track:c2e422305389c322b80670ef3bbf55c573be2f5570f91874f08b8c2a351f5f9a` |
| 2 | `theorem` | [hasEval_def](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/haseval-def--80e948cec24dca0619d303c0.md) | 60 | `result-track:80e948cec24dca0619d303c0ef2007cb44f3e51d861b29298dcdfe2c114ff5f9` |
| 3 | `theorem` | [hasEval_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/haseval-iff--d7cda978c6ff52d91ac027ac.md) | 62 | `result-track:d7cda978c6ff52d91ac027ac07459866767bbebd6bb8aae268337658c0839e7d` |
| 4 | `theorem` | [hasEval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/haseval--4fdfa6899f62c2f1683b1ae9.md) | 66 | `result-track:4fdfa6899f62c2f1683b1ae9f5920b4264a0d5782a44fbace5d879a0e0ad45bf` |
| 5 | `theorem` | [HasEval.mono](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/haseval-mono--136dcf81ff1551f0bf289b1f.md) | 69 | `result-track:136dcf81ff1551f0bf289b1f2d309121deb3cd64b843928243c48688b7aea0eb` |
| 6 | `theorem` | [HasEval.zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/haseval-zero--a6da9a4bceb560bfe85be7e9.md) | 75 | `result-track:a6da9a4bceb560bfe85be7e9813e057b379df81e821973cb20fe1c5a8ecf84f9` |
| 7 | `theorem` | [HasEval.add](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/haseval-add--604034ba8b35d209cbb46b02.md) | 78 | `result-track:604034ba8b35d209cbb46b022af223f2a22cda8aaf54a85b4dc331af3bae536b` |
| 8 | `theorem` | [HasEval.mul_left](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/haseval-mul-left--9fb44ea5012d5f8f6f17ca63.md) | 83 | `result-track:9fb44ea5012d5f8f6f17ca63564d866503bc723c41c634ccbad5adc9e017b863` |
| 9 | `theorem` | [HasEval.mul_right](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/haseval-mul-right--050a3c0513406ceea022c067.md) | 88 | `result-track:050a3c0513406ceea022c067843eb7d836b6e990e669fa0174e85ef8d49e8fad` |
| 10 | `theorem` | [HasEval.map](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/haseval-map--cee57fbfe1d7fb0323771250.md) | 94 | `result-track:cee57fbfe1d7fb03237712501aade2744363176e25c0f9df96d85dfc0e34478e` |
| 11 | `theorem` | [HasEval.X](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/haseval-x--1ebf929cf363de241ae3710b.md) | 99 | `result-track:1ebf929cf363de241ae3710b001b424ce219ddf8e3ba27fa1ef6edb567e46979` |
| 12 | `def` | [hasEvalIdeal](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/hasevalideal--5c8a4a184fde3d6b3bb0a663.md) | 109 | `declaration-track:5c8a4a184fde3d6b3bb0a663862d19322a8f9f46c90ffd3038e8d6bb8384bc22` |
| 13 | `theorem` | [mem_hasEvalIdeal_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/mem-hasevalideal-iff--0a43a5eaeb4fb10ea762e586.md) | 115 | `result-track:0a43a5eaeb4fb10ea762e58657fad60f56dfbaecc05e73ed7b40137767b80f3b` |
| 14 | `def` | [eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/eval--a094a8f88d5698e67ea15c8b.md) | 129 | `declaration-track:a094a8f88d5698e67ea15c8b129c2f566880baf5856df1736f263b7c74b67b5a` |
| 15 | `theorem` | [eval₂_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/eval-coe--c488a9481df2a64ca381129c.md) | 133 | `result-track:c488a9481df2a64ca381129cee497eb2b8b36dc6b68e6b88d09fa5c10ae6800d` |
| 16 | `theorem` | [eval₂_C](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/eval-c--3897943030317c2dbccf0f91.md) | 141 | `result-track:3897943030317c2dbccf0f9192765029a50cd7effe46067fa1d0d327efd53958` |
| 17 | `theorem` | [eval₂_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/eval-x--a802c58a2e06537da07eb16c.md) | 146 | `result-track:a802c58a2e06537da07eb16ce7470243afb4f81f2100fdbd44860ec4446967fb` |
| 18 | `def` | [eval₂Hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/eval-hom--aa6ae217ca0c33506c2c1693.md) | 157 | `declaration-track:aa6ae217ca0c33506c2c169375a366369869ebaccc78d0e9e60eb0a462e0445c` |
| 19 | `theorem` | [coe_eval₂Hom](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/coe-eval-hom--e824bbd7b8e027c0cb5ffb75.md) | 161 | `result-track:e824bbd7b8e027c0cb5ffb757352d46f935da6176eb5794eefa14bb208674ea5` |
| 20 | `theorem` | [uniformContinuous_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/uniformcontinuous-eval--451fe55ab610cadbc20ef184.md) | 168 | `result-track:451fe55ab610cadbc20ef184cb32f0c0de46d6cf69e60bc3c40834a499d2960a` |
| 21 | `theorem` | [continuous_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/continuous-eval--3137ae6df228f853d411ebd8.md) | 172 | `result-track:3137ae6df228f853d411ebd840689e4a5c11b00035bc2d0a6017b7abebac1a83` |
| 22 | `theorem` | [hasSum_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/hassum-eval--60be4b06a1e93d58b1f2505e.md) | 176 | `result-track:60be4b06a1e93d58b1f2505e3fc704f0fca92d775b1adb7a58e279560457e413` |
| 23 | `theorem` | [eval₂_eq_tsum](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/eval-eq-tsum--402369eae58a9a8970410e7c.md) | 185 | `result-track:402369eae58a9a8970410e7cb80998f9426337d27bf0fc506c3cb363f2ecc66e` |
| 24 | `theorem` | [eval₂_unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/eval-unique--ec4a90d698fa90dfe9b77e5c.md) | 190 | `result-track:ec4a90d698fa90dfe9b77e5c38757bd1a7e9ddbd5ac756e5e6b7f9e57cfe856c` |
| 25 | `theorem` | [comp_eval₂](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/comp-eval--c59894481cb6d81233b24170.md) | 198 | `result-track:c59894481cb6d81233b241704e9dc73deefa4b58a76619f487da963fce74177b` |
| 26 | `def` | [aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/aeval--9a80215a71be6372dd3b783d.md) | 214 | `declaration-track:9a80215a71be6372dd3b783d151b504395a00f1fb1f931839d5ebbb166374d14` |
| 27 | `theorem` | [coe_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/coe-aeval--be54a348bdc872966e534b41.md) | 218 | `result-track:be54a348bdc872966e534b41f96c455a2f4d3455e3bbeae2a6817af91b314d31` |
| 28 | `theorem` | [continuous_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/continuous-aeval--b940e9d994c8216631857ac4.md) | 222 | `result-track:b940e9d994c8216631857ac4b9c703e777fd5d729cfeb6074c4750288f5189e5` |
| 29 | `theorem` | [aeval_coe](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/aeval-coe--f474b1ad204a08aff2e5ac2a.md) | 227 | `result-track:f474b1ad204a08aff2e5ac2a1f07fd727b8fec410dee2a88a6104bcafe5a3042` |
| 30 | `theorem` | [aeval_unique](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/aeval-unique--88027ee440a7892cdb3efa73.md) | 231 | `result-track:88027ee440a7892cdb3efa73b0a07eda8c4ac1bf20421b6173e2d3191ccdecc9` |
| 31 | `theorem` | [hasSum_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/hassum-aeval--34bd79b567eec90293c39c21.md) | 235 | `result-track:34bd79b567eec90293c39c21212f62832a670a99ce80f4a6afacbf63fda7dfe1` |
| 32 | `theorem` | [aeval_eq_sum](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/aeval-eq-sum--1e3d22af795ee6bfe264b090.md) | 240 | `result-track:1e3d22af795ee6bfe264b090c463b75f2338e56ef1a17f1f6505e0e8b9b7f5d4` |
| 33 | `theorem` | [comp_aeval](../../../../../mathematics/Algebra/CommutativeAlgebra/Evaluation/Variant806f253062f7711c43e7fc1c99766de0360b04ed724eeb31a6155d06a029cafc.lean/declarations/comp-aeval--5af020aaad8915106246e37f.md) | 244 | `result-track:5af020aaad8915106246e37fc1f06d925ce6b3aad13e21f6e0cf5cb2add63eda` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
