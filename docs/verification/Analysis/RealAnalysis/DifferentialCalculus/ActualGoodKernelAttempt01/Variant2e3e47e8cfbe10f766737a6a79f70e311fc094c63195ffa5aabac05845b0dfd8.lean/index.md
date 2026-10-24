# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.ActualGoodKernelAttempt01.Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5612d234201372714c02e1bd5acd5fb7113e0e6c",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5612d234201372714c02e1bd5acd5fb7113e0e6c`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `LogarithmicSource` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Support` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Log.Deriv` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actualLogSource_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8.lean/declarations/actuallogsource-contdiff--0ebb9c6e78acbf6792d88b6a.md) | 18 | `result-track:0ebb9c6e78acbf6792d88b6a7b8f309ca4a85e43f20c7766d64f407bfb84f672` |
| 2 | `theorem` | [actualLogSource_deriv_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8.lean/declarations/actuallogsource-deriv-hascompactsupport--1d5b42b3d1ed131bd24396f7.md) | 35 | `result-track:1d5b42b3d1ed131bd24396f767fa0fc0a104dc2af8d2f25f21c197e067fde520` |
| 3 | `theorem` | [actualLogSource_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8.lean/declarations/actuallogsource-integrable-global--7efedf3f13bd5aa853794b66.md) | 39 | `result-track:7efedf3f13bd5aa853794b661c0ade40dba83471cad9570fd7313b676b7a1f65` |
| 4 | `theorem` | [actualLogSource_weighted_derivative_integrable_global](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8.lean/declarations/actuallogsource-weighted-derivative-integrable-global--feddc546c4346a3331663dfc.md) | 44 | `result-track:feddc546c4346a3331663dfc62dee25c7ac9bf222b05fe2272a6887d88c19879` |
| 5 | `theorem` | [actualLogSource_weighted_derivative_integrable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8.lean/declarations/actuallogsource-weighted-derivative-integrable--97658280791d5cceca5e660a.md) | 51 | `result-track:97658280791d5cceca5e660a4dcfd141cf1f8aed76c5cd1d487ec77814a2c409` |
| 6 | `theorem` | [actual_good_kernel_hypotheses](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/ActualGoodKernelAttempt01/Variant2e3e47e8cfbe10f766737a6a79f70e311fc094c63195ffa5aabac05845b0dfd8.lean/declarations/actual-good-kernel-hypotheses--cbb8e9c5b5ad77a33370dee0.md) | 55 | `result-track:cbb8e9c5b5ad77a33370dee0b2262da94d5f76fec01bfd2fbe125d386c6b65ea` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
