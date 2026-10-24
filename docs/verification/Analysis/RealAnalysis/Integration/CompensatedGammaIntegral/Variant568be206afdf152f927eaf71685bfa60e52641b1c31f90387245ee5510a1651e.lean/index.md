# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.CompensatedGammaIntegral.Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c70e08db4799cc29734ccf60b10bdf6bd0704ff7",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c70e08db4799cc29734ccf60b10bdf6bd0704ff7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaProfile` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.FrullaniIntegral` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.ImproperIntegrals` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.MeanValue` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecificLimits.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dividedDifference](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/divideddifference--0b1646760a78eca971b8c355.md) | 21 | `declaration-track:0b1646760a78eca971b8c355388252c16eaed3800a012561314324deaa1939f0` |
| 2 | `theorem` | [dividedDifference_bound](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/divideddifference-bound--44babd0dfe9a412dba1240cc.md) | 24 | `result-track:44babd0dfe9a412dba1240cc55eeb878f29c2ddc78435df47078e96afa80a521` |
| 3 | `theorem` | [dividedDifference_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/divideddifference-integrable--03d9ac8697a0cff15f5533c0.md) | 44 | `result-track:03d9ac8697a0cff15f5533c08f90b4ccf4f6809ec8162fc9f537793d435ee7c6` |
| 4 | `theorem` | [dividedDifference_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/divideddifference-integral--ff6842862e72ad662a6a392b.md) | 55 | `result-track:ff6842862e72ad662a6a392b377f92137edad7315261b07b346b4f57c4c9b1a2` |
| 5 | `def` | [physicalRate](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/physicalrate--4155f3c44c1317cfd14b4d8b.md) | 67 | `declaration-track:4155f3c44c1317cfd14b4d8b527597f5703ff5754ffb6088bd9af3021cec9683` |
| 6 | `def` | [compensatedTerm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedterm--01601f327b05456dd2d5639d.md) | 69 | `declaration-track:01601f327b05456dd2d5639d5bd199b8be613419bbbe268ffe45d3d754fe108c` |
| 7 | `theorem` | [physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/physicalrate-pos--b87186a75ed490b73b5bf2d7.md) | 72 | `result-track:b87186a75ed490b73b5bf2d7208c58e714d6dc1d9d37786d10d96a33f8125804` |
| 8 | `theorem` | [shifted_physicalRate_pos](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/shifted-physicalrate-pos--a85db7511f51e6905b071a99.md) | 74 | `result-track:a85db7511f51e6905b071a99a45536640aa497c962304cc989754adeea0fe891` |
| 9 | `theorem` | [compensatedTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedterm-nonneg--1a439cc521de4e2687dca9db.md) | 79 | `result-track:1a439cc521de4e2687dca9db9243bf6595f5b8b58b18513925c2a7c22cd919cd` |
| 10 | `theorem` | [compensatedTerm_split](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedterm-split--a1d97afa51c0db84baf64589.md) | 85 | `result-track:a1d97afa51c0db84baf64589d2353080d3a095e92629a3cec055491e698e8e59` |
| 11 | `theorem` | [compensatedTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedterm-integrable--9e6bb11aeb40be178de54d2e.md) | 97 | `result-track:9e6bb11aeb40be178de54d2e5f806029d9229f4ba7e06218237dbeb97ce81e2b` |
| 12 | `theorem` | [compensatedTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedterm-integral--1aeaf27038d707f865ba515f.md) | 106 | `result-track:1aeaf27038d707f865ba515f297cbbd69c36f5e0b91ef6148d5f6bf3493b9b95` |
| 13 | `def` | [compensatedIntegrand](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedintegrand--94909cdd77274d0a0eed0868.md) | 133 | `declaration-track:94909cdd77274d0a0eed08681d19abf6fe485862295f9e7f594ca796ecf91842` |
| 14 | `theorem` | [exponential_kernel_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/exponential-kernel-hassum--b4fc4819c1f403632cd69783.md) | 136 | `result-track:b4fc4819c1f403632cd69783c47a2b5d1280a2671d53757915c971b2485157de` |
| 15 | `theorem` | [compensatedTerm_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedterm-hassum--379cc98292fbd5b5d5487e50.md) | 159 | `result-track:379cc98292fbd5b5d5487e505b23b3fc6509d236fc7e4d9df69896c79c4d7159` |
| 16 | `theorem` | [compensatedIntegrand_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedintegrand-nonneg--d9be64744aa1a1dc93affe1b.md) | 169 | `result-track:d9be64744aa1a1dc93affe1b2c6e71ddc48b49114b7ba56fa5d8d47843e74171` |
| 17 | `theorem` | [compensatedIntegrand_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedintegrand-continuouson--1e5c1cc592c34ab27356be64.md) | 174 | `result-track:1e5c1cc592c34ab27356be64f0db3b8efb9ac9d7b6ad916b78fb84f1868b7e12` |
| 18 | `theorem` | [compensatedTerm_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedterm-integral-norm--82e3496cb7b12cd55238bda9.md) | 183 | `result-track:82e3496cb7b12cd55238bda9800f983b210c614ac12e846614cca5e6527773cb` |
| 19 | `theorem` | [compensatedTerm_integral_norm_summable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedterm-integral-norm-summable--57a4828d6079067dc0a8d5c4.md) | 192 | `result-track:57a4828d6079067dc0a8d5c4a5ef7eda054b187a7d86de722d40b63c721c832e` |
| 20 | `theorem` | [compensatedTerm_lintegral_enorm_tsum_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedterm-lintegral-enorm-tsum-lt-top--d2120cac359990da48f92dd2.md) | 201 | `result-track:d2120cac359990da48f92dd205d1c778167210fb076aa9566f1ed00012993729` |
| 21 | `theorem` | [compensatedIntegrand_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedintegrand-integrable--1f4f15b5cdf80194db4e32b9.md) | 215 | `result-track:1f4f15b5cdf80194db4e32b9af304155875eeba23fd0bc48cd69ea83ebc05326` |
| 22 | `theorem` | [actualGamma_eq_compensatedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/actualgamma-eq-compensatedintegral--bddadd3ae51fc3c169e6b6a0.md) | 229 | `result-track:bddadd3ae51fc3c169e6b6a01a656140fc7a1b34c98eda840bcb087793127477` |
| 23 | `theorem` | [compensatedIntegrand_zero](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/compensatedintegrand-zero--2cf5ea47d61f614575df96dc.md) | 243 | `result-track:2cf5ea47d61f614575df96dcc9b739324e54bdb32dd71f7f52b26862844d2d7b` |
| 24 | `theorem` | [actualGamma_compensatedIntegral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/CompensatedGammaIntegral/Variant568be206afdf152f927eaf71685bfa60e52641b1c31f90387245ee5510a1651e.lean/declarations/actualgamma-compensatedintegral--10f9873652a202a01981f0bf.md) | 248 | `result-track:10f9873652a202a01981f0bf880a1b390d5bb09a5fed21af8626416d9e075a18` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
