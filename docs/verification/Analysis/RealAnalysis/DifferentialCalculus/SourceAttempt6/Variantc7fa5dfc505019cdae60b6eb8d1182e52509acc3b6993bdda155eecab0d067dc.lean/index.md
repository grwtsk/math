# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceAttempt6.Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4997e5db127a709ccf6c1de8e632e6d822559143",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4997e5db127a709ccf6c1de8e632e6d822559143`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `CompensatedGammaIntegral` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.SmoothSeries` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Gamma.Basic` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [P](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/p--2822f2e497ea4022a51736c4.md) | 15 | `declaration-track:2822f2e497ea4022a51736c4e1adf5c0737dc846e9c6bfcbb23e24790009b840` |
| 2 | `abbrev` | [a](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/a--6b547bd97b2060e04c51ee3a.md) | 16 | `declaration-track:6b547bd97b2060e04c51ee3affe9d677dfa1ed1ecf90f3789e02f67e9c9aefb8` |
| 3 | `def` | [firstTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/firstterm--dddc0834685964bcef753ecc.md) | 18 | `declaration-track:dddc0834685964bcef753eccf480880c7cdea6d14b469b1246f12a1406d520de` |
| 4 | `def` | [secondTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/secondterm--13b27bcacfcd6e2a47bd72fb.md) | 20 | `declaration-track:13b27bcacfcd6e2a47bd72fbc05b20c0260226e8812afd6e9abe81c7c078cd49` |
| 5 | `def` | [firstSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/firstseries--73d5d87b5b393ad88dc1ea41.md) | 22 | `declaration-track:73d5d87b5b393ad88dc1ea419a000b2824f2b86b1d347782f7ac093c9abdeb50` |
| 6 | `def` | [secondSeries](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/secondseries--899cd9e8cd20b19f59c6e930.md) | 24 | `declaration-track:899cd9e8cd20b19f59c6e93066769e2a8bf50f59a6b5ddfe34fa553805687640` |
| 7 | `def` | [weight](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/weight--a953009c850a517627071466.md) | 26 | `declaration-track:a953009c850a5176270714664983ba70a6c3ba4daa9a5caca2cd9e3c1019ac12` |
| 8 | `theorem` | [weight_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/weight-eq--7a215185878499ba4e386c84.md) | 28 | `result-track:7a215185878499ba4e386c843d5a45f018294b059cf83e39bd00102a28d76139` |
| 9 | `theorem` | [weight_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/weight-summable--ba3027c046feb3a501c1ab43.md) | 33 | `result-track:ba3027c046feb3a501c1ab43696b3ac82081d8534a5abea1ab19ac217c94245f` |
| 10 | `theorem` | [pairedTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/pairedterm-hasderivat--0a1453084fa5507094d7e2bd.md) | 38 | `result-track:0a1453084fa5507094d7e2bd82f3df4f24c0434dd0ca101fc34935e2f51c7dab` |
| 11 | `theorem` | [firstTerm_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/firstterm-hasderivat--211e3097ad858c640a369476.md) | 55 | `result-track:211e3097ad858c640a36947604dcf389dbb280584e81b11826771b77af0f95e6` |
| 12 | `def` | [lowerCoefficient](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/lowercoefficient--1fa3e38f7785e83f6b8b1082.md) | 73 | `declaration-track:1fa3e38f7785e83f6b8b1082079c1c00bd1fa08842f5f4963cd24c5eda0b192e` |
| 13 | `theorem` | [lowerCoefficient_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/lowercoefficient-pos--580d5696378ddc22734af62d.md) | 75 | `result-track:580d5696378ddc22734af62dc0a0df8369716ab7b2ca82a48b21d66cce42ee80` |
| 14 | `theorem` | [rate_lower](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/rate-lower--ee9ae327a5483853e91f21c9.md) | 78 | `result-track:ee9ae327a5483853e91f21c9e11e7ffef2d9e46b40d48bb591d4ee3c12c3ea82` |
| 15 | `theorem` | [firstTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/firstterm-bound--d61e1fa239ae47d8dcb51c78.md) | 87 | `result-track:d61e1fa239ae47d8dcb51c78248ae3553752dcd61bd4e737bb210409dc739416` |
| 16 | `theorem` | [secondTerm_bound](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/secondterm-bound--955775565f963b183fd5c8c3.md) | 116 | `result-track:955775565f963b183fd5c8c32c0d994147cda4815659cb160aeaa9a77a4cf193` |
| 17 | `theorem` | [firstTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/firstterm-summable--bb418df3c9c6eea801db7980.md) | 133 | `result-track:bb418df3c9c6eea801db7980498761461d1a74c21ddb99810ad79628ddfbf88b` |
| 18 | `theorem` | [secondTerm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/secondterm-summable--f1f62acf0039b9237c8beb40.md) | 140 | `result-track:f1f62acf0039b9237c8beb40c160737eb058a0d06ae02a6f09e912f0ade20aa7` |
| 19 | `theorem` | [actualProfile_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/actualprofile-hasderivat--0ddd263707642dbdf859954a.md) | 146 | `result-track:0ddd263707642dbdf859954a703efabfbddec5893797e5d6c6fce4077c067c0b` |
| 20 | `theorem` | [actualProfile_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/actualprofile-deriv--e22bb8111ea8bc1e212a96b3.md) | 161 | `result-track:e22bb8111ea8bc1e212a96b31b4f073318a0b79a77d3a29c5c324e30312dfadc` |
| 21 | `theorem` | [firstSeries_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/firstseries-hasderivat--343179ef191ab7ce6bbad581.md) | 164 | `result-track:343179ef191ab7ce6bbad5812d6a622356796f74b4400de1271d226f70ebc6e6` |
| 22 | `theorem` | [actualProfile_second_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/actualprofile-second-hasderivat--1b7cd4b393c83ed8a05a2f57.md) | 176 | `result-track:1b7cd4b393c83ed8a05a2f57aeb78bb897edd2fb16edb7afbf338058b348c2d8` |
| 23 | `theorem` | [actualProfile_second_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/actualprofile-second-deriv--f1bee73cb96a455f89542285.md) | 182 | `result-track:f1bee73cb96a455f895422858ed89a4410335c65e033f2ed0cd8c66f64bbb646` |
| 24 | `theorem` | [secondTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/secondterm-nonneg--dd4ef48c2e7e49526b17af46.md) | 186 | `result-track:dd4ef48c2e7e49526b17af460e55541d411bd3b0b5784e257a27d631caa5dd35` |
| 25 | `theorem` | [exponential_firstMoment_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/exponential-firstmoment-integrable--5da9ec181c0d7c0d0ba74cb3.md) | 190 | `result-track:5da9ec181c0d7c0d0ba74cb36d4a2244889e4e21f78b4f1ddf54ebd6dc261c50` |
| 26 | `theorem` | [exponential_firstMoment_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/exponential-firstmoment-integral--94e6f4f028562788a875a372.md) | 203 | `result-track:94e6f4f028562788a875a37220681900f79ae89fecebe7857faf77b7480a2f57` |
| 27 | `def` | [momentTerm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/momentterm--86182e5e417095e60c6e85fb.md) | 211 | `declaration-track:86182e5e417095e60c6e85fb21c85fa91f1b0d58cc9792104b3fe8628e6c2ca3` |
| 28 | `def` | [curvatureKernel](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/curvaturekernel--a0787207e4029996bf148787.md) | 213 | `declaration-track:a0787207e4029996bf148787e6b8e8534289780f290486d6f27e75d74af61042` |
| 29 | `theorem` | [momentTerm_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/momentterm-nonneg--700624acba789d89e9cb45db.md) | 215 | `result-track:700624acba789d89e9cb45db69da5c2d9eeeeca90b6d7c93309c0c555ed6e828` |
| 30 | `theorem` | [momentTerm_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/momentterm-integrable--6db48fd7abea8db7e5964ce2.md) | 220 | `result-track:6db48fd7abea8db7e5964ce2d4a2dea6a2d2a01187244a37b034646c6a745d80` |
| 31 | `theorem` | [momentTerm_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/momentterm-integral--8d33933c90d11c2ced0dae09.md) | 225 | `result-track:8d33933c90d11c2ced0dae097a8a5d1b31e1fbd7f39cb11a72cc8c59c59f441a` |
| 32 | `theorem` | [momentTerm_hasSum](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/momentterm-hassum--1e96898c5a60049937d1b247.md) | 230 | `result-track:1e96898c5a60049937d1b247ccae353c081ab3e2884a9c719b4e1a89bb6d54cc` |
| 33 | `theorem` | [curvatureKernel_continuousOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/curvaturekernel-continuouson--6278a61f29c94de66bd76a7b.md) | 246 | `result-track:6278a61f29c94de66bd76a7b00a6794d85e809546ace2e64c1a4a80a7b8f7f81` |
| 34 | `theorem` | [momentTerm_integral_norm](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/momentterm-integral-norm--d1021b84040de1952cd48e66.md) | 253 | `result-track:d1021b84040de1952cd48e66aaccdeecddcae5fa2172f39422ace36c0b638b7f` |
| 35 | `theorem` | [momentTerm_integral_norm_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/momentterm-integral-norm-summable--c6a633d3ac523e048a75593d.md) | 261 | `result-track:c6a633d3ac523e048a75593d67255a9b41da1b414f59b67e713fc0bc6d4c3ce4` |
| 36 | `theorem` | [momentTerm_lintegral_enorm_tsum_lt_top](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/momentterm-lintegral-enorm-tsum-lt-top--771b446f23d6f572c4b6fb24.md) | 269 | `result-track:771b446f23d6f572c4b6fb240dc6e51d0a1bca93d4c04a955685befa68c3c84a` |
| 37 | `theorem` | [curvatureKernel_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/curvaturekernel-integrable--6884fadef6c3217550cf40e9.md) | 281 | `result-track:6884fadef6c3217550cf40e9a60bc6fd31ed384cdfd44627f050b70d66e60d23` |
| 38 | `theorem` | [secondSeries_eq_curvatureIntegral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/secondseries-eq-curvatureintegral--5ec205ce023ebc0546b3b8cb.md) | 295 | `result-track:5ec205ce023ebc0546b3b8cb761b6f08cb3f4bc89cce81be9b35bc216033032c` |
| 39 | `theorem` | [actualProfile_second_integral](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceAttempt6/Variantc7fa5dfc505019cdae60b6eb8d1182e52509acc3b6993bdda155eecab0d067dc.lean/declarations/actualprofile-second-integral--e154c52f737d465d0e6b85f4.md) | 306 | `result-track:e154c52f737d465d0e6b85f41bce5b661dd3ed53f5f52eea1723f229c950b418` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
