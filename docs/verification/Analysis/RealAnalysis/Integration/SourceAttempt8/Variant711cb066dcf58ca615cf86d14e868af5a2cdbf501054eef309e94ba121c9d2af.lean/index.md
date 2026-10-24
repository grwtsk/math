# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.SourceAttempt8.Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0811e35b4194e501ea920b1a8a257adbe7b7df36",
  "lexical_observation_count": 23,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0811e35b4194e501ea920b1a8a257adbe7b7df36`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean.json)

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
| 1 | `def` | [dividedDifference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/divideddifference--197fdc62aa2d2ddad8b9432a.md) | 29 | `declaration-track:197fdc62aa2d2ddad8b9432a2c4836fabc21ae15e168d08f6ebac4496ad68d26` |
| 2 | `theorem` | [dividedDifference_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/divideddifference-bound--ea14a30cd8e1b6f98eabae11.md) | 32 | `result-track:ea14a30cd8e1b6f98eabae1151bfcc4d92e1cdd2d6be452b029517868703836f` |
| 3 | `theorem` | [dividedDifference_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/divideddifference-integrable--bb4c7df345d01b40f2fa6c7f.md) | 52 | `result-track:bb4c7df345d01b40f2fa6c7fb7d4bd564c3cf51fdb2f17f9a84184b2956f746f` |
| 4 | `theorem` | [dividedDifference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/divideddifference-integral--f741ea6177dba7b372303a1a.md) | 63 | `result-track:f741ea6177dba7b372303a1a15a01c7b376d89cc1d15cd3819fdebbc2dbc614a` |
| 5 | `def` | [physicalRate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/physicalrate--d8317e5392f9a9f11387f4ad.md) | 75 | `declaration-track:d8317e5392f9a9f11387f4ad970fa4171cdd757ef98a8387d225b26cdd05cca0` |
| 6 | `def` | [compensatedTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedterm--e0588ae05b8c0ae2de33e123.md) | 77 | `declaration-track:e0588ae05b8c0ae2de33e123a855cb8354fda6e859330b7e3c0d1e2923477778` |
| 7 | `theorem` | [physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/physicalrate-pos--cdeb82ae8f7425b40c5736f4.md) | 80 | `result-track:cdeb82ae8f7425b40c5736f44a8dd3579fcd0c7f8d8d6428f998821971837a3b` |
| 8 | `theorem` | [shifted_physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/shifted-physicalrate-pos--d52aa5bb67f8adb138642a55.md) | 82 | `result-track:d52aa5bb67f8adb138642a55076025915364388faf1f2d5f739e84197911e667` |
| 9 | `theorem` | [compensatedTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedterm-nonneg--4ddaf3d298c271f7284eb36a.md) | 87 | `result-track:4ddaf3d298c271f7284eb36aaba37162fbc5987a6b7a3a27e134b886685aedf5` |
| 10 | `theorem` | [compensatedTerm_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedterm-split--4ddc059da4ee65dfc95db86d.md) | 93 | `result-track:4ddc059da4ee65dfc95db86dbc2c825f4207c77358e8988a09f941622f4f5b40` |
| 11 | `theorem` | [compensatedTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedterm-integrable--4796c4dd79d862558a7be280.md) | 105 | `result-track:4796c4dd79d862558a7be280e85b8e72e6d1f09b2edde0fb500cf9e8e955ac5c` |
| 12 | `theorem` | [compensatedTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedterm-integral--fac6543b5b0819b590636135.md) | 114 | `result-track:fac6543b5b0819b590636135301f8be5a8ac24ce8273a1c2a021b7c4291705b2` |
| 13 | `def` | [compensatedIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedintegrand--0342b29b7da915dbdef422a0.md) | 141 | `declaration-track:0342b29b7da915dbdef422a04f6bc6b669258fa50b02746ffb80518bb39e2655` |
| 14 | `theorem` | [exponential_kernel_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/exponential-kernel-hassum--60c9dc1f22ffc6b735a356c3.md) | 144 | `result-track:60c9dc1f22ffc6b735a356c3e265ed0d4f21c65e045dcb65da5b6c399dc0f327` |
| 15 | `theorem` | [compensatedTerm_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedterm-hassum--ef07520eeb98bee0a2b2d34c.md) | 167 | `result-track:ef07520eeb98bee0a2b2d34ce5283988f8575f5fff813727214c42e249fb6f00` |
| 16 | `theorem` | [compensatedIntegrand_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedintegrand-nonneg--1a2ff89886329645c49df0d6.md) | 177 | `result-track:1a2ff89886329645c49df0d6973dd3535d9bf2b1f9bd1e5ba2973050bfa8d669` |
| 17 | `theorem` | [compensatedIntegrand_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedintegrand-continuouson--22e8ab48d8a90cf5fa0cc15e.md) | 182 | `result-track:22e8ab48d8a90cf5fa0cc15edbc5b9fa3c9c5f4a5ac9bea7feb36fbeb5b4eead` |
| 18 | `theorem` | [compensatedTerm_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedterm-integral-norm--3e7c4c792b6273f22f978216.md) | 191 | `result-track:3e7c4c792b6273f22f9782167851dc128d0cf3c0ed23f43995653a4920c98d12` |
| 19 | `theorem` | [compensatedTerm_integral_norm_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedterm-integral-norm-summable--ed13c70361ecf8b07da0d64b.md) | 200 | `result-track:ed13c70361ecf8b07da0d64b7add1e1bc97b9fdd8fccb0a103b60290012c7859` |
| 20 | `theorem` | [compensatedTerm_lintegral_enorm_tsum_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedterm-lintegral-enorm-tsum-lt-top--b8a2ad24d2dcc5c4a189e6e7.md) | 209 | `result-track:b8a2ad24d2dcc5c4a189e6e72543898bb211d9d9b22a52102d8e5379fc3d834a` |
| 21 | `theorem` | [compensatedIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedintegrand-integrable--702cb78e5c710ae934dd0f9b.md) | 223 | `result-track:702cb78e5c710ae934dd0f9b66cb53bd186fefa187fec1d72eb825a2a5e0a6cf` |
| 22 | `theorem` | [actualGamma_eq_compensatedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/actualgamma-eq-compensatedintegral--8457aa03d4a81054030bfb22.md) | 237 | `result-track:8457aa03d4a81054030bfb228f3e1b02909d820ae9260a667f1c41d94d493e8b` |
| 23 | `theorem` | [compensatedIntegrand_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/declarations/compensatedintegrand-zero--353186c19250ecaab9af13ae.md) | 251 | `result-track:353186c19250ecaab9af13ae8db8c3535d3c8d3ba901c79c1dd70fbfe89cb62a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
