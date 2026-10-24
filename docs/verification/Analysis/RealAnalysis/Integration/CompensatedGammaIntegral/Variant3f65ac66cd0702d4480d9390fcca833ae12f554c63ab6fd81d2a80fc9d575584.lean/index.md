# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CompensatedGammaIntegral.Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "051dfe75ed412f9b5bed44c11686a5ce7cd58bfa",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `051dfe75ed412f9b5bed44c11686a5ce7cd58bfa`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean.json)

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
| 1 | `def` | [dividedDifference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/divideddifference--2a762f465f459d55c35bb2d5.md) | 29 | `declaration-track:2a762f465f459d55c35bb2d52c7648f59623d2eac55ba0e24a9cd4386a7a4771` |
| 2 | `theorem` | [dividedDifference_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/divideddifference-bound--e8d6b709185e8efa97bfd0ea.md) | 32 | `result-track:e8d6b709185e8efa97bfd0ea5547de2df230a01f82b0eba276a127539c2b1572` |
| 3 | `theorem` | [dividedDifference_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/divideddifference-integrable--e4a3753e68f2ac8168f4bc6b.md) | 52 | `result-track:e4a3753e68f2ac8168f4bc6b8acb11971a2e4bebd4d927c1863afcdc0958f987` |
| 4 | `theorem` | [dividedDifference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/divideddifference-integral--3eb9a29c89f2a64bc5acf7a1.md) | 63 | `result-track:3eb9a29c89f2a64bc5acf7a18e1d044f4a4a38bde31d3cc5a683e8425cd0b80c` |
| 5 | `def` | [physicalRate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/physicalrate--64a79476504c5cf2e7f1fb86.md) | 75 | `declaration-track:64a79476504c5cf2e7f1fb86d7888ec54ab8214fb606054780cea9f63ee74566` |
| 6 | `def` | [compensatedTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedterm--29a6e88c682c761607fadeb4.md) | 77 | `declaration-track:29a6e88c682c761607fadeb44562ff6fb1f79b8fcbd4e3463ffec38ec5ed1a9a` |
| 7 | `theorem` | [physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/physicalrate-pos--983ae6614977ea40e8732632.md) | 80 | `result-track:983ae6614977ea40e8732632eb1d1da909eeb7058fc32eac78a10cec19a9ae29` |
| 8 | `theorem` | [shifted_physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/shifted-physicalrate-pos--a8695623759d86dc17f6229e.md) | 82 | `result-track:a8695623759d86dc17f6229e18dafd623edeb2365210b623db65cbd9ec5a31a5` |
| 9 | `theorem` | [compensatedTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedterm-nonneg--371253e152c28a85811619f0.md) | 87 | `result-track:371253e152c28a85811619f00c6bcf67576870b0777faee5010b34c7fa616ae5` |
| 10 | `theorem` | [compensatedTerm_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedterm-split--92013b56b36ca3b532fba011.md) | 93 | `result-track:92013b56b36ca3b532fba011fdfb59606cb59141fda470c5644f662e18794efa` |
| 11 | `theorem` | [compensatedTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedterm-integrable--a898664a4907940abc4cf6bc.md) | 105 | `result-track:a898664a4907940abc4cf6bc1be638c834724074e6a3ec1100513132f5377dc0` |
| 12 | `theorem` | [compensatedTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedterm-integral--1ed92a231912f9ca4a57a3db.md) | 114 | `result-track:1ed92a231912f9ca4a57a3db17bcb3b84498cdf1db1b330bd5f01f27130f370c` |
| 13 | `def` | [compensatedIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedintegrand--b7da794c6590f8fdaf203005.md) | 141 | `declaration-track:b7da794c6590f8fdaf2030050ef2ecfbf070d6f18a4d945e9175f0cbb5d9c121` |
| 14 | `theorem` | [exponential_kernel_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/exponential-kernel-hassum--19eb62a203f44344e1f7cc2f.md) | 144 | `result-track:19eb62a203f44344e1f7cc2fe538cf4d3ec3d91bbac9e1bf7a055c3acf078f29` |
| 15 | `theorem` | [compensatedTerm_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedterm-hassum--e4dcb2b77498bd8f9c5e4737.md) | 167 | `result-track:e4dcb2b77498bd8f9c5e47374431f8c2eb73173c778ccc98d1d5e1e52e6699de` |
| 16 | `theorem` | [compensatedIntegrand_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedintegrand-nonneg--2f1b42523478b5625f70ca65.md) | 177 | `result-track:2f1b42523478b5625f70ca65c7e23824977b7eac9d5597790afe3fb1846eb1c1` |
| 17 | `theorem` | [compensatedIntegrand_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedintegrand-continuouson--30d105709b81ab834e4bccc8.md) | 182 | `result-track:30d105709b81ab834e4bccc89fb7391df48549eacb25098f88bf6ec06166e005` |
| 18 | `theorem` | [compensatedTerm_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedterm-integral-norm--f6137b6e40213a650bd0f3ed.md) | 191 | `result-track:f6137b6e40213a650bd0f3ede9c26d78838f5d42bd7d8138dcb4693389a7b51a` |
| 19 | `theorem` | [compensatedTerm_integral_norm_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedterm-integral-norm-summable--ea9a3e50665544eba6454bb3.md) | 200 | `result-track:ea9a3e50665544eba6454bb3de513ba6dd7229190d5e01da787884d20680db89` |
| 20 | `theorem` | [compensatedTerm_lintegral_enorm_tsum_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedterm-lintegral-enorm-tsum-lt-top--9f6754fd746782fb06d4c6ce.md) | 209 | `result-track:9f6754fd746782fb06d4c6cebfacf908c99fbe6a164d3a641355d519c9413202` |
| 21 | `theorem` | [compensatedIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedintegrand-integrable--eb486e3b1a8465290a9697e4.md) | 223 | `result-track:eb486e3b1a8465290a9697e43731fcfd20b3c2b40438f734917b7166d5f05ce6` |
| 22 | `theorem` | [actualGamma_eq_compensatedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/actualgamma-eq-compensatedintegral--d38f95d95107ba446d4ca5f3.md) | 237 | `result-track:d38f95d95107ba446d4ca5f358975f88e6cab5c70d1d3a9616f42ffacc6190a5` |
| 23 | `theorem` | [compensatedIntegrand_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/compensatedintegrand-zero--fcd5c0c1fc923a3e164b76ec.md) | 251 | `result-track:fcd5c0c1fc923a3e164b76ec546cf320bccaeb6199b6866097c7d8d0206082f5` |
| 24 | `theorem` | [actualGamma_compensatedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant3f65ac66cd0702d4480d9390fcca833ae12f554c63ab6fd81d2a80fc9d575584.lean/declarations/actualgamma-compensatedintegral--c674e20a7119fe24dc94e7cd.md) | 256 | `result-track:c674e20a7119fe24dc94e7cd1f4883852e7ea956b6bdf20c269e50502bbed869` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
