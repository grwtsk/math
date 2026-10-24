# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Deriv.Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4b9d1d853c50decf22a0c77c635e9c8352483f89",
  "lexical_observation_count": 33,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4b9d1d853c50decf22a0c77c635e9c8352483f89`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.Deriv.Pow` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ExpDeriv` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasStrictDerivAt_log_of_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hasstrictderivat-log-of-pos--795168fde5f9c935ed38234f.md) | 42 | `result-track:795168fde5f9c935ed38234ffa73f425b149ce763428113fd329d6dcef4a0126` |
| 2 | `theorem` | [hasStrictDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hasstrictderivat-log--bcc5162d95a6820f4a04ddca.md) | 50 | `result-track:bcc5162d95a6820f4a04ddcaf4de88dbadd3ad50e7f54efc80b2573672b4d110` |
| 3 | `theorem` | [hasDerivAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hasderivat-log--c16bef37f1c89dee70b8b1a0.md) | 58 | `result-track:c16bef37f1c89dee70b8b1a035236ff4de0c93b9e00f7893488afccdd9697960` |
| 4 | `theorem` | [differentiableAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/differentiableat-log--21990b4dadee0a52b68c0902.md) | 62 | `result-track:21990b4dadee0a52b68c0902a4b37ce45ed8570a8d83e1addb0efda4703af7fe` |
| 5 | `theorem` | [differentiableOn_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/differentiableon-log--619a8c9d74251157d4d51fe5.md) | 66 | `result-track:619a8c9d74251157d4d51fe5d8fbd2f609c599ef3b83df5155d08594dee32232` |
| 6 | `theorem` | [differentiableAt_log_iff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/differentiableat-log-iff--b6179a1de5ed9ac7d788f67d.md) | 71 | `result-track:b6179a1de5ed9ac7d788f67d00c7c168850d9a5bc8e9fddc63a0f5fa92cfa667` |
| 7 | `theorem` | [deriv_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/deriv-log--df26bf976fea12ed285dd54e.md) | 75 | `result-track:df26bf976fea12ed285dd54e1e5a76f7a4c8f41afffed1559d9e63a8e215a453` |
| 8 | `theorem` | [deriv_log'](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/deriv-log--2879dfba6889102c213ef0f0.md) | 82 | `result-track:2879dfba6889102c213ef0f0ede485601effc9a4a4a3fc582118d4fc8f4fe503` |
| 9 | `theorem` | [contDiffOn_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/contdiffon-log--512239eb23cd8fe0169dded8.md) | 86 | `result-track:512239eb23cd8fe0169dded8590ea28959086ef7a3a8e74d3f8f6095329f7341` |
| 10 | `theorem` | [contDiffAt_log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/contdiffat-log--1408fb2158de9c273851a1aa.md) | 92 | `result-track:1408fb2158de9c273851a1aade74b238db46cf049d4dde667cd7ac5bdec67ff7` |
| 11 | `theorem` | [HasDerivWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hasderivwithinat-log--ebfd60b93c12615f5cabe553.md) | 107 | `result-track:ebfd60b93c12615f5cabe553fddc50a4f1dfcc9ce0bf3fcaa88b514548418e4b` |
| 12 | `theorem` | [HasDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hasderivat-log--b9deac6ad27a44569533d08f.md) | 113 | `result-track:b9deac6ad27a44569533d08fabfa51a973b31e9dc43df63c13e3ed72f50ae2ed` |
| 13 | `theorem` | [HasStrictDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hasstrictderivat-log--dfd10b1bcce25f37adbd1a8d.md) | 119 | `result-track:dfd10b1bcce25f37adbd1a8d330d206c4aa8f387923a76c13110e4fb28a31fbf` |
| 14 | `theorem` | [derivWithin.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/derivwithin-log--fe8102624ae0ebcaaedb8eaa.md) | 125 | `result-track:fe8102624ae0ebcaaedb8eaa3c6c4504818681ad6cdcd77040bfbf4d580b42ae` |
| 15 | `theorem` | [deriv.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/deriv-log--68c184442d6627ea72a70f26.md) | 132 | `result-track:68c184442d6627ea72a70f26f5e29b0d22a9de613c0a71cfc12e3daa7a6b2e87` |
| 16 | `theorem` | [HasFDerivWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hasfderivwithinat-log--1fe2b403eac5b68a40006d5e.md) | 144 | `result-track:1fe2b403eac5b68a40006d5ec203b69e00b952f1c159b92a5dd4c113a79a07d1` |
| 17 | `theorem` | [HasFDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hasfderivat-log--11c2a3920651b77131fe2392.md) | 149 | `result-track:11c2a3920651b77131fe23927b8a0ed19247c411677ec88f0ed311ec97c8f78d` |
| 18 | `theorem` | [HasStrictFDerivAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hasstrictfderivat-log--d7e9ae48c841574056d36b8c.md) | 154 | `result-track:d7e9ae48c841574056d36b8cd66c6c67b9b0c257505196118c6f2694a83696d4` |
| 19 | `theorem` | [DifferentiableWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/differentiablewithinat-log--439ea8ff32fd1ac4a28789d2.md) | 159 | `result-track:439ea8ff32fd1ac4a28789d2c85eb395b41fe2ff07c61e980bd2ea4608c522e0` |
| 20 | `theorem` | [DifferentiableAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/differentiableat-log--a439e84028edaa74a627ae5f.md) | 165 | `result-track:a439e84028edaa74a627ae5f522f2f22acc2bf26b519f25990e56da6df6dd169` |
| 21 | `theorem` | [ContDiffAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/contdiffat-log--122530fe48adef29ab766532.md) | 170 | `result-track:122530fe48adef29ab766532d105f99c8bd8c3086e640ccb0c1d7cfc32a067f6` |
| 22 | `theorem` | [ContDiffWithinAt.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/contdiffwithinat-log--2dce7b61ec0c5bd59b90124a.md) | 175 | `result-track:2dce7b61ec0c5bd59b90124a71f792a4479b998f3ddf4923b0aa086d8316e9ab` |
| 23 | `theorem` | [ContDiffOn.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/contdiffon-log--14d5e5a0e51e308033ca7e72.md) | 180 | `result-track:14d5e5a0e51e308033ca7e72072f6f805ca4a3b51c08d788e02ba8d77ecc5542` |
| 24 | `theorem` | [ContDiff.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/contdiff-log--17d4d6c0a864692de10da183.md) | 184 | `result-track:17d4d6c0a864692de10da183575ec9e9fc60c1d3832312212b461b79b5fa8fd4` |
| 25 | `theorem` | [DifferentiableOn.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/differentiableon-log--24ca861e03eeb4b2b1b60096.md) | 189 | `result-track:24ca861e03eeb4b2b1b60096842c45316e6a54a5426614a17679a63cf751fede` |
| 26 | `theorem` | [Differentiable.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/differentiable-log--dedb592e727905ceba3c39d9.md) | 194 | `result-track:dedb592e727905ceba3c39d98b725d49b523b7279a68705119fa6bed12f36dfc` |
| 27 | `theorem` | [fderivWithin.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/fderivwithin-log--4f27ec7e93039f8b1a963b1c.md) | 198 | `result-track:4f27ec7e93039f8b1a963b1c2aa8d4646d5a7188bd68fdde17915402a2caea80` |
| 28 | `theorem` | [fderiv.log](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/fderiv-log--83c4dc4c8cd6d092b6eefb33.md) | 205 | `result-track:83c4dc4c8cd6d092b6eefb33b6ddb9931d282cab3fbc92c0a99469ba14d2b2f7` |
| 29 | `theorem` | [tendsto_mul_log_one_plus_div_atTop](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/tendsto-mul-log-one-plus-div-attop--aee0a2ef17a714afaeac56e8.md) | 217 | `result-track:aee0a2ef17a714afaeac56e8b209533a772d7f3ac51d0cb36702e3e2d52f7163` |
| 30 | `theorem` | [abs_log_sub_add_sum_range_le](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/abs-log-sub-add-sum-range-le--62b1c569a8e5d3c71e2159c3.md) | 235 | `result-track:62b1c569a8e5d3c71e2159c3d2f9281825c564c1be5dc285af1ed1c993ca247b` |
| 31 | `theorem` | [hasSum_pow_div_log_of_abs_lt_1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hassum-pow-div-log-of-abs-lt-1--8676368f30daf09c3018080a.md) | 277 | `result-track:8676368f30daf09c3018080afbf2495ed6be47c0ce9696fbb093a7cc0d4534f4` |
| 32 | `theorem` | [hasSum_log_sub_log_of_abs_lt_1](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hassum-log-sub-log-of-abs-lt-1--4a96c7e9c42e9f3047bc2ff6.md) | 303 | `result-track:4a96c7e9c42e9f3047bc2ff6a6d0977ca4de46ee9979928ea0f31c4b752b2faa` |
| 33 | `theorem` | [hasSum_log_one_add_inv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Deriv/Variant344b2f7df68ec68982fd0d21ee757f16cdd563693d568e75d41f0a40cefb3ad0.lean/declarations/hassum-log-one-add-inv--39e6da7dba01adde40e4e900.md) | 325 | `result-track:39e6da7dba01adde40e4e90022dc194306547e0cb2d80af24bf5cdd8ee6ecd06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
