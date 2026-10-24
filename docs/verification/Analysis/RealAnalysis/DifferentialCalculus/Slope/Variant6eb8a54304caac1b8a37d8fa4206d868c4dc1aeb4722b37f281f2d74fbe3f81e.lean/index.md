# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Slope.Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6a258b1131e8405d3180328b403e87085cf811db",
  "lexical_observation_count": 28,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6a258b1131e8405d3180328b403e87085cf811db`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean.json)

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
| 1 | `theorem` | [hasDerivAtFilter_iff_tendsto_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivatfilter-iff-tendsto-slope--0f9d2940b06328a910741543.md) | 50 | `result-track:0f9d2940b06328a910741543dc90d1efbd1ea079a89ce187314809966007375e` |
| 2 | `theorem` | [hasDerivWithinAt_iff_tendsto_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivwithinat-iff-tendsto-slope--11f0b436eb1ca704020199d2.md) | 64 | `result-track:11f0b436eb1ca704020199d2040f1561486850b13808fafc48f2345db45e63e4` |
| 3 | `theorem` | [hasDerivWithinAt_iff_tendsto_slope'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivwithinat-iff-tendsto-slope--be88595275239351fad085b0.md) | 69 | `result-track:be88595275239351fad085b0a2c564fa7dbdc6b6ccb07e31ca0dd4bffc91cccc` |
| 4 | `theorem` | [hasDerivAt_iff_tendsto_slope](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivat-iff-tendsto-slope--1f83ab1b819a831eaaf56b59.md) | 73 | `result-track:1f83ab1b819a831eaaf56b59f8f83c6ca63bfae49b656f2cf2879b2ec79d79b2` |
| 5 | `theorem` | [hasDerivAt_iff_tendsto_slope_left_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivat-iff-tendsto-slope-left-right--ac3e15a2142334cf0d147606.md) | 78 | `result-track:ac3e15a2142334cf0d1476064b4ba566153af6f6e30d6c1e7f8eaf1d4f84f22e` |
| 6 | `theorem` | [hasDerivAt_iff_tendsto_slope_zero](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivat-iff-tendsto-slope-zero--831f9fe1413dac1c02649cc1.md) | 82 | `result-track:831f9fe1413dac1c02649cc11a172a873326173e286ca41e235f7682f51854ee` |
| 7 | `theorem` | [HasDerivAt.tendsto_slope_zero_right](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivat-tendsto-slope-zero-right--f745f6f94a6ec3f6a8b51633.md) | 89 | `result-track:f745f6f94a6ec3f6a8b516338e79ec7f9959e106a9955346c9df7574e678780e` |
| 8 | `theorem` | [HasDerivAt.tendsto_slope_zero_left](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivat-tendsto-slope-zero-left--d8b77be66dc70dea9bfe38d5.md) | 93 | `result-track:d8b77be66dc70dea9bfe38d5c2c373d796db6474cce4b8286e472913cd9a1803` |
| 9 | `theorem` | [range_derivWithin_subset_closure_span_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/range-derivwithin-subset-closure-span-image--e1f47ad9b9e9d3bed100c15a.md) | 99 | `result-track:e1f47ad9b9e9d3bed100c15aad63c1057253b29823baead89aa17435929ebfd5` |
| 10 | `theorem` | [range_deriv_subset_closure_span_image](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/range-deriv-subset-closure-span-image--b6d71a0b25a2e43616395783.md) | 133 | `result-track:b6d71a0b25a2e43616395783fc14259dffacd0990abefa51f18e8d730b164afb` |
| 11 | `theorem` | [isSeparable_range_derivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/isseparable-range-derivwithin--4b486bef58be9d89d864ea2d.md) | 140 | `result-track:4b486bef58be9d89d864ea2dc4fdf5e2cbc8d05e31db9b7910baef10870aa3c8` |
| 12 | `theorem` | [isSeparable_range_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/isseparable-range-deriv--f365d756076d891603244605.md) | 148 | `result-track:f365d756076d8916032446052b9f9c22ba5d6ab83a2029ee3ec9303b4d63b8a9` |
| 13 | `lemma` | [HasDerivAt.continuousAt_div](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivat-continuousat-div--96adb176bfb27dd348cd5f88.md) | 153 | `result-track:96adb176bfb27dd348cd5f8862ca6db69bc1d8cddd024170f8c1c180e66ed460` |
| 14 | `lemma` | [HasDerivWithinAt.nonneg_of_monotoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivwithinat-nonneg-of-monotoneon--f9e4b019158f2d6eb7766d55.md) | 164 | `result-track:f9e4b019158f2d6eb7766d55ae46c2c663099fc7cd88b8e77bcfab6ab244fad2` |
| 15 | `lemma` | [MonotoneOn.derivWithin_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/monotoneon-derivwithin-nonneg--e7d42437fea07500d5aed006.md) | 176 | `result-track:e7d42437fea07500d5aed006de8f99b6fcb0d3255eb3cf87c7101b9347e10752` |
| 16 | `lemma` | [HasDerivAt.nonneg_of_monotone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivat-nonneg-of-monotone--05fadbe63e5aa65bd220acb4.md) | 185 | `result-track:05fadbe63e5aa65bd220acb4183c3121bb8478b9537dfa1aff6d24317e12a30f` |
| 17 | `lemma` | [Monotone.deriv_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/monotone-deriv-nonneg--85d592b6a07c3f17302c4885.md) | 191 | `result-track:85d592b6a07c3f17302c488503ca0274de3094096131a225371b8f3644e574a5` |
| 18 | `lemma` | [HasDerivWithinAt.nonpos_of_antitoneOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivwithinat-nonpos-of-antitoneon--7f577c943bbaab2ec78c6ae5.md) | 197 | `result-track:7f577c943bbaab2ec78c6ae5d38613cf336c0963def57bfb875bce3419f0e724` |
| 19 | `lemma` | [AntitoneOn.derivWithin_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/antitoneon-derivwithin-nonpos--010a09b34f1b1867014cf4bd.md) | 203 | `result-track:010a09b34f1b1867014cf4bd33a34fc42dda7fb8b4f8f66400a2e56241b75cea` |
| 20 | `lemma` | [HasDerivAt.nonpos_of_antitone](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivat-nonpos-of-antitone--df90329613f3418cc2eaa6f2.md) | 208 | `result-track:df90329613f3418cc2eaa6f2c88fb962529e286757dad4bfb3c4f6f3728ff686` |
| 21 | `lemma` | [Antitone.deriv_nonpos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/antitone-deriv-nonpos--c33b20d8a38e817a323e44ba.md) | 214 | `result-track:c33b20d8a38e817a323e44ba8a2831a662ce5427a5bfdca52f3c3f2b3d68f9bd` |
| 22 | `theorem` | [HasDerivWithinAt.limsup_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivwithinat-limsup-slope-le--ede55b0402e1424f605d5cb4.md) | 228 | `result-track:ede55b0402e1424f605d5cb4e44bf92dffab4bcf61144835775bfa6045f29d0f` |
| 23 | `theorem` | [HasDerivWithinAt.limsup_slope_le'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivwithinat-limsup-slope-le--991619e07e1ac531948dd218.md) | 232 | `result-track:991619e07e1ac531948dd218a0275a61105bd549a387c2e7f669a30c3dd250d9` |
| 24 | `theorem` | [HasDerivWithinAt.liminf_right_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivwithinat-liminf-right-slope-le--e7436ed78766e541f9d7f8d1.md) | 236 | `result-track:e7436ed78766e541f9d7f8d1b369f3c23f862338a897b6108179be984dec65d9` |
| 25 | `theorem` | [HasDerivWithinAt.limsup_norm_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivwithinat-limsup-norm-slope-le--67109a4fb0b52f43fe0417c8.md) | 251 | `result-track:67109a4fb0b52f43fe0417c859cdf754a1362c341459cf9466f5168de1b2d38c` |
| 26 | `theorem` | [HasDerivWithinAt.limsup_slope_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivwithinat-limsup-slope-norm-le--75881f2708f7770590b51c2a.md) | 271 | `result-track:75881f2708f7770590b51c2a0e9e76dbffbfd00d7917005986f345bb8334641c` |
| 27 | `theorem` | [HasDerivWithinAt.liminf_right_norm_slope_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivwithinat-liminf-right-norm-slope-le--f30fa0c43baaa980657380ad.md) | 282 | `result-track:f30fa0c43baaa980657380adee5d822b882ca620461553a8cd134f6eb2c8ee88` |
| 28 | `theorem` | [HasDerivWithinAt.liminf_right_slope_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Slope/Variant6eb8a54304caac1b8a37d8fa4206d868c4dc1aeb4722b37f281f2d74fbe3f81e.lean/declarations/hasderivwithinat-liminf-right-slope-norm-le--5704f2fabdd113802cf0d5ac.md) | 297 | `result-track:5704f2fabdd113802cf0d5ac237b18d418c06428c20fee9774546fc38ef1e313` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
