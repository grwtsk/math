# Verification target: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Defs.Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c0b1618c07ce3c8f273fe34e844528db2dd5b27f",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/index.md) · [Full source](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c0b1618c07ce3c8f273fe34e844528db2dd5b27f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.CStarAlgebra.ContinuousFunctionalCalculus.Order` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [CStarModule](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/cstarmodule--f9bf6d2349447e881508e1ee.md) | 71 | `declaration-track:f9bf6d2349447e881508e1ee1658425ae036f4005a3d742c85dc3dfae6c62069` |
| 2 | `lemma` | [inner_add_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-add-left--048105d70e6098a3b9a42847.md) | 95 | `result-track:048105d70e6098a3b9a42847eacba29a4cff401d5070033842af331fdeebbd4f` |
| 3 | `lemma` | [inner_op_smul_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-op-smul-left--1359c0515a93fed7adb8020a.md) | 100 | `result-track:1359c0515a93fed7adb8020a7690cc72f46de8c3d50f346d80ee2ec563cc189d` |
| 4 | `lemma` | [inner_smul_left_complex](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-smul-left-complex--38f3e5d979b050e16e48d1de.md) | 108 | `result-track:38f3e5d979b050e16e48d1de5a61340e2c5db51cd2c7155270d7866fa6a7a6a9` |
| 5 | `lemma` | [inner_smul_left_real](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-smul-left-real--05459630fcd96abd0ad1e220.md) | 113 | `result-track:05459630fcd96abd0ad1e220645e3f5d66010479829caad0ff181f60d6edc882` |
| 6 | `lemma` | [inner_smul_right_real](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-smul-right-real--2d919d43a9679e8030832ad8.md) | 119 | `result-track:2d919d43a9679e8030832ad840f8ea7ae5cb382c391b1173c12b27615662a1b8` |
| 7 | `def` | [innerₛₗ](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner--3652b9cb2ea7a6575c7e06de.md) | 125 | `declaration-track:3652b9cb2ea7a6575c7e06de229b58b3b0ca9004aa17edf058ae4da7ff33bbfa` |
| 8 | `lemma` | [innerₛₗ_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-apply--29ca76d541b5c993abe2978e.md) | 132 | `result-track:29ca76d541b5c993abe2978e52e1ce93896329908fe9eb3bdcaac90f2b770509` |
| 9 | `lemma` | [inner_zero_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-zero-right--2ea6401f67e1f013e026e6ac.md) | 134 | `result-track:2ea6401f67e1f013e026e6acd4ae71fdcbbc2e0ff9f194ba08de37fee562e1eb` |
| 10 | `lemma` | [inner_zero_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-zero-left--a013fae3311dafb2a467cc52.md) | 135 | `result-track:a013fae3311dafb2a467cc5282409ba770f7fcfcf9f6384d178cb76da86389e5` |
| 11 | `lemma` | [inner_neg_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-neg-right--faf8fca81f274c503d63f0dc.md) | 136 | `result-track:faf8fca81f274c503d63f0dc8120cd643ff9ae302b41ef0791c8754aaaa7cdaf` |
| 12 | `lemma` | [inner_neg_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-neg-left--f0fbe0692e763ef2a77a7baa.md) | 137 | `result-track:f0fbe0692e763ef2a77a7baa900ada674163bed6c297f53a1f8a772d531ca6b8` |
| 13 | `lemma` | [inner_sub_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-sub-right--c16d75a84d7142c272c324e7.md) | 138 | `result-track:c16d75a84d7142c272c324e76780f5d3504552a455c9319155f62be4ce2de3f1` |
| 14 | `lemma` | [inner_sub_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-sub-left--998c0d1ada31a2a1680c0ae9.md) | 140 | `result-track:998c0d1ada31a2a1680c0ae9d3c5c5212d9b8768f0ec6dd6954cbdfa8b726381` |
| 15 | `lemma` | [inner_sum_right](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-sum-right--1ced093ad71dc91e6e9c237b.md) | 144 | `result-track:1ced093ad71dc91e6e9c237b3e6cd12ae88656b19b8c609207cb4d0155589b8f` |
| 16 | `lemma` | [inner_sum_left](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-sum-left--278f1d04bda642d77f2eebd3.md) | 149 | `result-track:278f1d04bda642d77f2eebd3081370e552c6ce7807b22f6ebf4f3c6e580b3ee3` |
| 17 | `lemma` | [isSelfAdjoint_inner_self](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/isselfadjoint-inner-self--0dfc7001e2419827095ab4d2.md) | 156 | `result-track:0dfc7001e2419827095ab4d26de26fe8c280fbe8773212af772b4460708954e2` |
| 18 | `def` | [norm](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/norm--62b945b10b0aad7ca64ec9bb.md) | 170 | `declaration-track:62b945b10b0aad7ca64ec9bbf7587c69ea7cb915815cc05358904f5fd209581f` |
| 19 | `lemma` | [norm_sq_eq](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/norm-sq-eq--ecd0c1b65fac4097643204f5.md) | 178 | `result-track:ecd0c1b65fac4097643204f53c641aefd0dfc332d7549698670ef97bf94edd81` |
| 20 | `lemma` | [norm_nonneg](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/norm-nonneg--bb2fe0afb4d20c81f90b4d1b.md) | 180 | `result-track:bb2fe0afb4d20c81f90b4d1bd5712e4e287af91c847f80ef68eaa525e84084dd` |
| 21 | `lemma` | [norm_pos](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/norm-pos--953a813592ae46a2281976c8.md) | 182 | `result-track:953a813592ae46a2281976c8ef059c3e39d57a46df64208838f90f1505f2c0d1` |
| 22 | `lemma` | [norm_zero](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/norm-zero--3f76d205483ffa3247445277.md) | 188 | `result-track:3f76d205483ffa3247445277aaa7e19619e949cd26de09bb658033578bd6eacd` |
| 23 | `lemma` | [norm_zero_iff](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/norm-zero-iff--0052cb7f458216a7a164ec62.md) | 190 | `result-track:0052cb7f458216a7a164ec6261ab09385431e4abe3f0e9248b4448c41d154364` |
| 24 | `lemma` | [inner_mul_inner_swap_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/inner-mul-inner-swap-le--d60057dcdcff5264debcd346.md) | 200 | `result-track:d60057dcdcff5264debcd346b41ba27e43cedf9bc4c5ecb80a5d13590f129237` |
| 25 | `lemma` | [norm_inner_le](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/norm-inner-le--ab87412e07a2f8fc60d17a6c.md) | 229 | `result-track:ab87412e07a2f8fc60d17a6cdee7eebe17f5bafd9d38e418218c22fb940515cf` |
| 26 | `lemma` | [norm_triangle](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/norm-triangle--99ae914d7b35cda4928cc638.md) | 245 | `result-track:99ae914d7b35cda4928cc638289188b55285d4b80d11648b2cc48d92979c3af8` |
| 27 | `lemma` | [normedSpaceCore](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/normedspacecore--d869a33c581122f14a0045a1.md) | 263 | `result-track:d869a33c581122f14a0045a1bcadf93b5ebd37328189813809ceedd07ff9576f` |
| 28 | `abbrev` | [normedAddCommGroup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/normedaddcommgroup--0508842641ce703cc405850c.md) | 272 | `declaration-track:0508842641ce703cc405850c78f10a048419510b606b1984f8a802569023a7d9` |
| 29 | `lemma` | [norm_eq_csSup](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/norm-eq-cssup--464b2d830ae4d732ff387464.md) | 276 | `result-track:464b2d830ae4d732ff38746461baada089e0a7d5929c62dcc1f51330e46ac918` |
| 30 | `def` | [innerSL](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/innersl--8437f3b9f4b2cf6ac4ab3ec3.md) | 302 | `declaration-track:8437f3b9f4b2cf6ac4ab3ec3b9218828598901e869b95e0f685036fffffcf723` |
| 31 | `lemma` | [innerSL_apply](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/innersl-apply--efd6689a0fb18378177c5867.md) | 306 | `result-track:efd6689a0fb18378177c58679f08624dc9e3f6a89598a2c115c17c3f6fb34bd4` |
| 32 | `lemma` | [continuous_inner](../../../../../../../mathematics/Analysis/FunctionalAnalysis/BanachSpaces/NormedSpaces/Defs/Variant04e8d7fb11f85f7abcafb32bd094cc7c8ca2608633310bfa1ee706e706182b0b.lean/declarations/continuous-inner--d487714c01fa2d37e585a1e9.md) | 309 | `result-track:d487714c01fa2d37e585a1e96cda9ccc9e4551216ebc577a7f6b8c320fd0422c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
