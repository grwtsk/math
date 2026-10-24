# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt7.Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08631576591096b67a93508df3b9edbab7d776aa",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08631576591096b67a93508df3b9edbab7d776aa`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaProfile` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.FrullaniIntegral` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dividedDifference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/divideddifference--c0b32db1e6495248f11c1f43.md) | 29 | `declaration-track:c0b32db1e6495248f11c1f438b3c6eb4ef38afc6dbe116d024d85be563ce55e6` |
| 2 | `theorem` | [dividedDifference_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/divideddifference-bound--4898fbfe8652940eb815ba1d.md) | 32 | `result-track:4898fbfe8652940eb815ba1dac77b56b9f6a552273f2262ac27711a3eb306e88` |
| 3 | `theorem` | [dividedDifference_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/divideddifference-integrable--cd55cc15e4f908ff3f9bb42c.md) | 52 | `result-track:cd55cc15e4f908ff3f9bb42ce07568974f8cbbb5324a1c5096f521f92c9db53f` |
| 4 | `theorem` | [dividedDifference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/divideddifference-integral--7df9e34102a86696c691ad78.md) | 63 | `result-track:7df9e34102a86696c691ad78bcb0bbf66ee47f642c0298460cd1bb8d510d0d77` |
| 5 | `def` | [physicalRate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/physicalrate--7cc279fd010c8de8d66dab83.md) | 75 | `declaration-track:7cc279fd010c8de8d66dab838648dd179db18ce732e0ea32befff3fb1b2af8a3` |
| 6 | `def` | [compensatedTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedterm--ae3659907184ff6069397088.md) | 77 | `declaration-track:ae3659907184ff606939708810b8261ddb7c9e66980f16a33e7a60656a08cf94` |
| 7 | `theorem` | [physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/physicalrate-pos--801fdc143832c764c08a8cba.md) | 80 | `result-track:801fdc143832c764c08a8cbaf8e9475811a219bd26859ffcca559fcde0e79663` |
| 8 | `theorem` | [shifted_physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/shifted-physicalrate-pos--271ddf8c886f8d33cd8506c1.md) | 82 | `result-track:271ddf8c886f8d33cd8506c1855304fc521a76d9bbf7be20a00bd8e7ab9700bf` |
| 9 | `theorem` | [compensatedTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedterm-nonneg--98ad5730c113ce655f86dcdd.md) | 87 | `result-track:98ad5730c113ce655f86dcdda3093cca2d6c57600693e1c67fc81b426ea83fd0` |
| 10 | `theorem` | [compensatedTerm_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedterm-split--6fd0995699428d0d659ea096.md) | 93 | `result-track:6fd0995699428d0d659ea096a4059310a9b73a576c0e1a92a51eb716bc6e3bee` |
| 11 | `theorem` | [compensatedTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedterm-integrable--a5629367b26fb3a4e11f89d1.md) | 105 | `result-track:a5629367b26fb3a4e11f89d1cf4655ee5bfc2701824070f96ca2c1fa6d7561c1` |
| 12 | `theorem` | [compensatedTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedterm-integral--1b9c588da2d4e5f27abd8f89.md) | 114 | `result-track:1b9c588da2d4e5f27abd8f89fc0a1e9a279e8878565f6687f2530d4b30f70f36` |
| 13 | `def` | [compensatedIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedintegrand--c247889483ac4dbd78d334de.md) | 141 | `declaration-track:c247889483ac4dbd78d334deaa41b4d755daa2bd836a9c0a2bf9b860681f9226` |
| 14 | `theorem` | [exponential_kernel_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/exponential-kernel-hassum--6a294ff9921d1c29a7cffc3d.md) | 144 | `result-track:6a294ff9921d1c29a7cffc3dba960cbfa11ed540aa4c47173a18942ef77dbeb4` |
| 15 | `theorem` | [compensatedTerm_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedterm-hassum--b5d53e4fd432763d691552b8.md) | 163 | `result-track:b5d53e4fd432763d691552b86993ddf088e5bd5d1d94339c1d53bf7d9ac01a0e` |
| 16 | `theorem` | [compensatedIntegrand_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedintegrand-nonneg--415fd39c3815152b95f51cb7.md) | 173 | `result-track:415fd39c3815152b95f51cb7b0384307558ff2a8c3d06725f655ccd6e9b04a41` |
| 17 | `theorem` | [compensatedIntegrand_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedintegrand-continuouson--be5c145c119a32dcf9562e6f.md) | 178 | `result-track:be5c145c119a32dcf9562e6f706c04c9d8fa4e5f5605c5c9bda5b308c646a4ba` |
| 18 | `theorem` | [compensatedTerm_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedterm-integral-norm--4d54380ca9e2087969ed34ac.md) | 186 | `result-track:4d54380ca9e2087969ed34ac0f70b74de8e2027f7cac54affd8c38d263fa16e2` |
| 19 | `theorem` | [compensatedTerm_integral_norm_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedterm-integral-norm-summable--26508111cfe9a800a3a642ac.md) | 195 | `result-track:26508111cfe9a800a3a642acb8d36b594b348f0301ee1e0a4ed405a5d0a234b5` |
| 20 | `theorem` | [compensatedTerm_lintegral_enorm_tsum_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedterm-lintegral-enorm-tsum-lt-top--7b6d449505c223eb8c32ae49.md) | 204 | `result-track:7b6d449505c223eb8c32ae49f310b4b7b8e415b2fe28f50ea44c789543aa0039` |
| 21 | `theorem` | [compensatedIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedintegrand-integrable--655ca8eb2ec7c7e893288421.md) | 218 | `result-track:655ca8eb2ec7c7e8932884216f522298b0bcb68ed5cd15a5d5760be8e5b64308` |
| 22 | `theorem` | [actualGamma_eq_compensatedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/actualgamma-eq-compensatedintegral--49ea4f6473d0e6044f04c10e.md) | 232 | `result-track:49ea4f6473d0e6044f04c10e44237a37cf580445209a99b8a767fb3061b1d572` |
| 23 | `theorem` | [compensatedIntegrand_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt7/Variant4415692479d00cdc8dee2ca24150c4e5036f7858daa40bb39defade9b63ea365.lean/declarations/compensatedintegrand-zero--e2ab8f35466509ad2770328c.md) | 246 | `result-track:e2ab8f35466509ad2770328c1e324a3a13acdb3a6c0ef2b33d65481ad08b6fd5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
