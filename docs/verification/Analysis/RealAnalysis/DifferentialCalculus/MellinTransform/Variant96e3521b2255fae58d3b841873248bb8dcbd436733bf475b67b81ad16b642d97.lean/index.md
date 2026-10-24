# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.MellinTransform.Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4f54a3dee698116b1e4af5ac4489448dfe0bcfa3",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4f54a3dee698116b1e4af5ac4489448dfe0bcfa3`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.ParametricIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Haar.NormedSpace` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MellinConvergent](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellinconvergent--b3277f6ec960c3ff6423b47f.md) | 41 | `declaration-track:b3277f6ec960c3ff6423b47f13cfbde720f21e1859762a48206aad414aa815f7` |
| 2 | `theorem` | [MellinConvergent.const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellinconvergent-const-smul--c4248361b42e3345c5af8bd5.md) | 44 | `result-track:c4248361b42e3345c5af8bd5faf4c3bdbd90bca7925aebb69a550223876e76a1` |
| 3 | `theorem` | [MellinConvergent.cpow_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellinconvergent-cpow-smul--5f4054a9d91ff69d0e7ea9a6.md) | 49 | `result-track:5f4054a9d91ff69d0e7ea9a66901d87a8f2d2b85357e79009a90898d65fcd407` |
| 4 | `theorem` | [MellinConvergent.div_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellinconvergent-div-const--52d7865d1e531a623ab1e325.md) | 54 | `result-track:52d7865d1e531a623ab1e325e4534989276596c160467dd6a45fd74204741bd3` |
| 5 | `theorem` | [MellinConvergent.comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellinconvergent-comp-mul-left--42db12a782dda8be48430876.md) | 58 | `result-track:42db12a782dda8be48430876af528bb20b9aff90e557451b5c298585d7ae14d7` |
| 6 | `theorem` | [MellinConvergent.comp_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellinconvergent-comp-rpow--aba712bf0947a71f2c46852d.md) | 71 | `result-track:aba712bf0947a71f2c46852d03bcee96c316d982dda9f7e35252e3d334886f3a` |
| 7 | `def` | [Complex.VerticalIntegrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/complex-verticalintegrable--58d9ca641587f0bc201e1e51.md) | 83 | `declaration-track:58d9ca641587f0bc201e1e5174321feb737bcb6dd491320c0aa60cb5019ea19e` |
| 8 | `def` | [mellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin--d97759ea3c33cd7d7c2bf701.md) | 88 | `declaration-track:d97759ea3c33cd7d7c2bf701cfef894c66a157ca7e06378ab0cfbcebfb5e65e0` |
| 9 | `def` | [mellinInv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellininv--94ffd4fa08428c5f33b1d10a.md) | 93 | `declaration-track:94ffd4fa08428c5f33b1d10ab7237baa50b376176dfff51b0aa1596e48081810` |
| 10 | `theorem` | [mellin_cpow_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-cpow-smul--70f2737ed8c45f9f79c711e8.md) | 97 | `result-track:70f2737ed8c45f9f79c711e823dc8a29e80af5849211162ca01d27aa4ca73e27` |
| 11 | `theorem` | [mellin_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-const-smul--30f822928c3fad90bbc93af6.md) | 105 | `result-track:30f822928c3fad90bbc93af654a9b35d7d095df17e46fa645db0ce4235670ac5` |
| 12 | `theorem` | [mellin_div_const](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-div-const--bf567dd8528d19a277094846.md) | 110 | `result-track:bf567dd8528d19a277094846ca3b694fbc9139ee1d8492c9994a4d7315db7ae5` |
| 13 | `theorem` | [mellin_comp_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-comp-rpow--9b0499b7a3adeb8a29abd57d.md) | 113 | `result-track:9b0499b7a3adeb8a29abd57d0b016b0fbb564ae5d4f90939dc4327a6df09cea3` |
| 14 | `theorem` | [mellin_comp_mul_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-comp-mul-left--c16310584e4a8c4d6db15319.md) | 131 | `result-track:c16310584e4a8c4d6db1531954c01a4ebe87091610b0ec4cd551aa93993fea11` |
| 15 | `theorem` | [mellin_comp_mul_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-comp-mul-right--5a8716cbab03e88c0f48189b.md) | 148 | `result-track:5a8716cbab03e88c0f48189b143ebb92c67073037cf36c47d8e3cd5efa90febf` |
| 16 | `theorem` | [mellin_comp_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-comp-inv--3348c867741d622716bfd7d3.md) | 152 | `result-track:3348c867741d622716bfd7d3bc6d2a2a9620e341ccf320115bd5cedabd060811` |
| 17 | `def` | [HasMellin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/hasmellin--20d81e6b5497ab4dcafaaf02.md) | 158 | `declaration-track:20d81e6b5497ab4dcafaaf02a883e1fbe165135f2fe9194d01b88bcef18277a2` |
| 18 | `theorem` | [hasMellin_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/hasmellin-add--ea708a4d4c81f532db95a7b9.md) | 161 | `result-track:ea708a4d4c81f532db95a7b951e3bfb7ce9e1177911935d278fbf03f88ff0ef2` |
| 19 | `theorem` | [hasMellin_sub](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/hasmellin-sub--f2447e0b29f1e6ff2a1c190f.md) | 166 | `result-track:f2447e0b29f1e6ff2a1c190fb27ee9c6fad3d4892ecb1de9d8857520a64acaf1` |
| 20 | `theorem` | [hasMellin_const_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/hasmellin-const-smul--5aa3a8a624ab67a39ef3069d.md) | 171 | `result-track:5aa3a8a624ab67a39ef3069d19004bb357ae0d516db06f09e341cf16b0200eec` |
| 21 | `theorem` | [mellin_convergent_iff_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-convergent-iff-norm--ce64553fffeeb2f09dcf0e16.md) | 186 | `result-track:ce64553fffeeb2f09dcf0e16f3cd26634fc800a64529d45a956e795ca83225aa` |
| 22 | `theorem` | [mellin_convergent_top_of_isBigO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-convergent-top-of-isbigo--b23cc502c181158775702868.md) | 200 | `result-track:b23cc502c181158775702868ae5ead572eb99b3f1bd60ebc6e5fd70c5abcb4ad` |
| 23 | `theorem` | [mellin_convergent_zero_of_isBigO](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-convergent-zero-of-isbigo--dff5f244925c5ab13b44fadb.md) | 226 | `result-track:dff5f244925c5ab13b44fadb82db1e3bdd7e0103f0fb38a438ae48ba4c4233e5` |
| 24 | `theorem` | [mellin_convergent_of_isBigO_scalar](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-convergent-of-isbigo-scalar--7d9ec2f62ceaa7c7ce4871b8.md) | 258 | `result-track:7d9ec2f62ceaa7c7ce4871b85d611559ccfae2473a937cf207337c39bfe1adfa` |
| 25 | `theorem` | [mellinConvergent_of_isBigO_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellinconvergent-of-isbigo-rpow--f962eb6bd7ce8a3501430340.md) | 276 | `result-track:f962eb6bd7ce8a350143034053c494eb80687641789b13e3fc0fd4da24b0455a` |
| 26 | `theorem` | [isBigO_rpow_top_log_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/isbigo-rpow-top-log-smul--d8fb5f24d232d6b3c5c530e4.md) | 289 | `result-track:d8fb5f24d232d6b3c5c530e4fde1eaf25d08dfdc4f617bc1804daaf4f73be549` |
| 27 | `theorem` | [isBigO_rpow_zero_log_smul](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/isbigo-rpow-zero-log-smul--8344e919f9669d95a4b10049.md) | 300 | `result-track:8344e919f9669d95a4b1004939377e93d60d28baa2158a3dc91c716e823857aa` |
| 28 | `theorem` | [mellin_hasDerivAt_of_isBigO_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-hasderivat-of-isbigo-rpow--067a6e9f044ac931d444bcad.md) | 319 | `result-track:067a6e9f044ac931d444bcada9441f9ba9a349ceadbb3355d543e5ae0aae4327` |
| 29 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-differentiableat-of-isbigo-rpow--c354d0a70fedcc34f43d6b77.md) | 399 | `result-track:c354d0a70fedcc34f43d6b77a07f3d5657573976e48465a5fca1113e3217a7bd` |
| 30 | `theorem` | [mellinConvergent_of_isBigO_rpow_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellinconvergent-of-isbigo-rpow-exp--5c7926c9cfe735f2ba76cd70.md) | 412 | `result-track:5c7926c9cfe735f2ba76cd70ed24c81361e34a3a05e84349c5b93eae76f79d79` |
| 31 | `theorem` | [mellin_differentiableAt_of_isBigO_rpow_exp](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/mellin-differentiableat-of-isbigo-rpow-exp--5d83bde76a2afa6909552ea1.md) | 420 | `result-track:5d83bde76a2afa6909552ea1f5dcbf49785eab7d4951f969a35063755e2b1622` |
| 32 | `theorem` | [hasMellin_one_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/hasmellin-one-ioc--73b0dd8a10f05f4fa6c78e1b.md) | 436 | `result-track:73b0dd8a10f05f4fa6c78e1b2939285bad9512b801de4845636fcec939325c9c` |
| 33 | `theorem` | [hasMellin_cpow_Ioc](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/MellinTransform/Variant96e3521b2255fae58d3b841873248bb8dcbd436733bf475b67b81ad16b642d97.lean/declarations/hasmellin-cpow-ioc--78b071e81f32ba4c9792261d.md) | 451 | `result-track:78b071e81f32ba4c9792261d6fffcb153f167789b43f5a9cb920d489a6551d50` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
