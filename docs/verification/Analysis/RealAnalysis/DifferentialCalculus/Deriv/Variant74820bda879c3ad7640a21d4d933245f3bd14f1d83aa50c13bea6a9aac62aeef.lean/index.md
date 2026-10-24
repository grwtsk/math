# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6ca16da0e0f29aac2589f91409ce7a7a7694a70",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6ca16da0e0f29aac2589f91409ce7a7a7694a70`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.LogDeriv` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.AdaptationNote` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_log_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hasstrictderivat-log-of-pos--19aad928cfd85f995906ee38.md) | 33 | `result-track:19aad928cfd85f995906ee385b3cca040868c81bf6f1cdc9f766ee896a410056` |
| 2 | `theorem` | [hasStrictDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hasstrictderivat-log--f90f789b7e2856313687d02c.md) | 40 | `result-track:f90f789b7e2856313687d02cb3b1ec03858e4e0e65d901f35688df3038a01c30` |
| 3 | `theorem` | [hasDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hasderivat-log--f7e9ba1303aaccc5aec5f2e4.md) | 47 | `result-track:f7e9ba1303aaccc5aec5f2e40a7a7851c61a5459ba49e36bc84a0f8e5379f031` |
| 4 | `theorem` | [differentiableAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/differentiableat-log--562a494c7c5cda0f8784d173.md) | 50 | `result-track:562a494c7c5cda0f8784d173d8c9edc32fa71a69bfdf4093b6996dfe39f1cf18` |
| 5 | `theorem` | [differentiableOn_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/differentiableon-log--79642f7b8901ccb8089d415d.md) | 53 | `result-track:79642f7b8901ccb8089d415ddeac2dc81ec12f6ce502e0f6539b89227a534de4` |
| 6 | `theorem` | [differentiableAt_log_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/differentiableat-log-iff--92bfc226d0bc73748bec6789.md) | 57 | `result-track:92bfc226d0bc73748bec6789db44d950da8d9b8a27e9b42a6960c7281092eca7` |
| 7 | `theorem` | [deriv_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/deriv-log--de1a682ea7f859dc1c257bb9.md) | 60 | `result-track:de1a682ea7f859dc1c257bb94aed0ca4c78f45acde5f1fb6f6153b9be46d3f47` |
| 8 | `theorem` | [deriv_log'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/deriv-log--1d036c26735347f8f855b014.md) | 66 | `result-track:1d036c26735347f8f855b014bf776026e9046a88d7bf30d957a34718cc4e0310` |
| 9 | `theorem` | [contDiffAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/contdiffat-log--3d1da7a020eaa19e04382243.md) | 69 | `result-track:3d1da7a020eaa19e04382243a7f51c7a5889cc8e98be0d02f623f89730d2f4db` |
| 10 | `theorem` | [contDiffOn_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/contdiffon-log--7d27f5d3bfb337d7c56a523a.md) | 87 | `result-track:7d27f5d3bfb337d7c56a523a473d91a370dd3d240e864858dd601325f1806f4d` |
| 11 | `theorem` | [HasDerivWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hasderivwithinat-log--e705bcb61c549299f5e01290.md) | 102 | `result-track:e705bcb61c549299f5e0129071d71fb832fec4e47d73769e7f912d84ba2bd7ee` |
| 12 | `theorem` | [HasDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hasderivat-log--dd5081db6f7b591bdf7e779c.md) | 107 | `result-track:dd5081db6f7b591bdf7e779c5da1405ba37d09b48520e5bfa76d854d2b2a50e0` |
| 13 | `theorem` | [HasStrictDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hasstrictderivat-log--f1aaf8d19da62b55e1ddf5da.md) | 112 | `result-track:f1aaf8d19da62b55e1ddf5da1c06fac278cd68ec28a24c157db0f323d972dcd8` |
| 14 | `theorem` | [derivWithin.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/derivwithin-log--c12a795989c7ec42a514278e.md) | 117 | `result-track:c12a795989c7ec42a514278effb375f64179ba68412814edf5972096827dc441` |
| 15 | `theorem` | [deriv.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/deriv-log--4a1d7fdfd32821fcc62bec54.md) | 123 | `result-track:4a1d7fdfd32821fcc62bec54f5d3c31145612a89665f4ddf364f9683125df03c` |
| 16 | `lemma` | [Real.deriv_log_comp_eq_logDeriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/real-deriv-log-comp-eq-logderiv--9b8e00aead886b803c23872a.md) | 129 | `result-track:9b8e00aead886b803c23872ae25775ce6a78b897fa4491100fd722964bcb52f2` |
| 17 | `theorem` | [HasFDerivWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hasfderivwithinat-log--99b5ceb7147ae072bfea1972.md) | 140 | `result-track:99b5ceb7147ae072bfea197217bbeb9f9e76fab4264757406217a0a31abbe4ee` |
| 18 | `theorem` | [HasFDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hasfderivat-log--70c0d226284c7ec35a454cde.md) | 144 | `result-track:70c0d226284c7ec35a454cde4f661431012ba35d3f2a5319172bd402de6807a9` |
| 19 | `theorem` | [HasStrictFDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hasstrictfderivat-log--6a88458e555ff02f979db458.md) | 148 | `result-track:6a88458e555ff02f979db45815a838fc42275601eddd26862c65088062bade26` |
| 20 | `theorem` | [DifferentiableWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/differentiablewithinat-log--99c8998c63c2b16a0e2be149.md) | 152 | `result-track:99c8998c63c2b16a0e2be149e98975619ddf876c287932dd2240b5a01b6f6970` |
| 21 | `theorem` | [DifferentiableAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/differentiableat-log--bec72285d979a94d8c8a7f66.md) | 157 | `result-track:bec72285d979a94d8c8a7f664cbc75808d03413538101e3b4ba39cd0c256618d` |
| 22 | `theorem` | [ContDiffAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/contdiffat-log--2d6a0b438b69784ac0205e06.md) | 162 | `result-track:2d6a0b438b69784ac0205e0696782c8c99b63f6498a6018b38040d3e8068bf08` |
| 23 | `theorem` | [ContDiffWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/contdiffwithinat-log--5b86ad04a7bd5ec6af8a5b0b.md) | 167 | `result-track:5b86ad04a7bd5ec6af8a5b0b1c2f916b8c41e3ff6d0b01bfb57e87edaab79bae` |
| 24 | `theorem` | [ContDiffOn.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/contdiffon-log--715e950a8aaf78a361783bd7.md) | 172 | `result-track:715e950a8aaf78a361783bd7aa3d52c6a35dcd499cdf8437072e5e40e46ba611` |
| 25 | `theorem` | [ContDiff.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/contdiff-log--2f4532cecbc216b52b6364fc.md) | 176 | `result-track:2f4532cecbc216b52b6364fc46fe58ed4858bbbecc7037cb141bed3f8d3766f3` |
| 26 | `theorem` | [DifferentiableOn.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/differentiableon-log--b1c341593781c851dcd09bd8.md) | 181 | `result-track:b1c341593781c851dcd09bd8a36aef222a2944f682ac73bcf8c81049ea26db58` |
| 27 | `theorem` | [Differentiable.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/differentiable-log--4cebe18dd12bbccc038c93cb.md) | 185 | `result-track:4cebe18dd12bbccc038c93cb1437ae3cc1b7974164a8fda7280a9d9ea1081d95` |
| 28 | `theorem` | [fderivWithin.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/fderivwithin-log--fd2c141d515d6993569e0763.md) | 188 | `result-track:fd2c141d515d6993569e07631297d59fc471e9b69370ea56a95902cb2982f276` |
| 29 | `theorem` | [fderiv.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/fderiv-log--e58798572c893773b953b6df.md) | 194 | `result-track:e58798572c893773b953b6df06e3158e2b766afb39f3e512217bd20b5983c875` |
| 30 | `theorem` | [abs_log_sub_add_sum_range_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/abs-log-sub-add-sum-range-le--83fef9962ca1435ee8a054e3.md) | 210 | `result-track:83fef9962ca1435ee8a054e385833bd8011fb7c4b79b9f606ec496d520ce11c8` |
| 31 | `theorem` | [hasSum_pow_div_log_of_abs_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hassum-pow-div-log-of-abs-lt-one--73049e9576bd257fac2873aa.md) | 251 | `result-track:73049e9576bd257fac2873aa3533ac118e2836019e1a034bf21419130593b8ea` |
| 32 | `theorem` | [hasSum_log_sub_log_of_abs_lt_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hassum-log-sub-log-of-abs-lt-one--c4b1d3ef1b262db723bbbf28.md) | 276 | `result-track:c4b1d3ef1b262db723bbbf28dd132a18a5b00cf0e4067b8b8a8edf41dec23e96` |
| 33 | `theorem` | [hasSum_log_one_add_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hassum-log-one-add-inv--1541d889591e073985a9c80f.md) | 297 | `result-track:1541d889591e073985a9c80f16fc973a7cd5bdc74eca89677bc8ce1e8529447a` |
| 34 | `theorem` | [hasSum_log_one_add](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/hassum-log-one-add--e3faf9985fd5d749ea9d63b3.md) | 317 | `result-track:e3faf9985fd5d749ea9d63b31b8ed29862764552cf8ecb849cdb27689ac47587` |
| 35 | `lemma` | [le_log_one_add_of_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/le-log-one-add-of-nonneg--8bfebb4300dca98e5d3a7557.md) | 325 | `result-track:8bfebb4300dca98e5d3a75574b63b549dd38e1ba42e413c92c18ee27e0579dd0` |
| 36 | `lemma` | [lt_log_one_add_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant74820bda879c3ad7640a21d4d933245f3bd14f1d83aa50c13bea6a9aac62aeef.lean/declarations/lt-log-one-add-of-pos--31a0da9cd60debd6fc352cb1.md) | 329 | `result-track:31a0da9cd60debd6fc352cb1332a638134334c2d9c982ea190a0b5e95850479b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
