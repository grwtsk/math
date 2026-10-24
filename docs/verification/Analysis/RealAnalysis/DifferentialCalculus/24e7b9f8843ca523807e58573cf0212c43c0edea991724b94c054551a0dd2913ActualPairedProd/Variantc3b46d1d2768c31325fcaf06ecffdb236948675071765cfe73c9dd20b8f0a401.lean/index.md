# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd.Variantc3b46d1d2768c31325fcaf06ecffdb236948675071765cfe73c9dd20b8f0a401

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9bf80150960de6976bf4620ee6ca4f01bce43f94",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variantc3b46d1d2768c31325fcaf06ecffdb236948675071765cfe73c9dd20b8f0a401.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variantc3b46d1d2768c31325fcaf06ecffdb236948675071765cfe73c9dd20b8f0a401.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variantc3b46d1d2768c31325fcaf06ecffdb236948675071765cfe73c9dd20b8f0a401.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9bf80150960de6976bf4620ee6ca4f01bce43f94`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variantc3b46d1d2768c31325fcaf06ecffdb236948675071765cfe73c9dd20b8f0a401.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variantc3b46d1d2768c31325fcaf06ecffdb236948675071765cfe73c9dd20b8f0a401.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Meromorphic.Order` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.LocallyUniformLimit` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.FDeriv.Analytic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.IteratedDeriv.Lemmas` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [deriv_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variantc3b46d1d2768c31325fcaf06ecffdb236948675071765cfe73c9dd20b8f0a401.lean/declarations/deriv-square--390b78665ff3d28472385ef2.md) | 35 | `result-track:390b78665ff3d28472385ef26e5dce98346a15028cdebf5c6900a02106b06d81` |
| 2 | `theorem` | [meromorphicOrderAt_comp_square](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variantc3b46d1d2768c31325fcaf06ecffdb236948675071765cfe73c9dd20b8f0a401.lean/declarations/meromorphicorderat-comp-square--1b90eb6029e880c828fa1b52.md) | 41 | `result-track:1b90eb6029e880c828fa1b524ab25b7b17915a697cb2d6e654215a8ea97ebfaa` |
| 3 | `theorem` | [tendstoLocallyUniformlyOn_iterate_deriv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variantc3b46d1d2768c31325fcaf06ecffdb236948675071765cfe73c9dd20b8f0a401.lean/declarations/tendstolocallyuniformlyon-iterate-deriv--a493b970d3e324a3da2940b8.md) | 51 | `result-track:a493b970d3e324a3da2940b82bbabee2a37d08896cf97ccb6ad7c432d372ec80` |
| 4 | `theorem` | [tendsto_iteratedDeriv_zero_of_locallyUniform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variantc3b46d1d2768c31325fcaf06ecffdb236948675071765cfe73c9dd20b8f0a401.lean/declarations/tendsto-iteratedderiv-zero-of-locallyuniform--a51ea0449f274c571a5faca5.md) | 67 | `result-track:a51ea0449f274c571a5faca549d377f9c2b445e41d1283f755236194676af6c6` |
| 5 | `theorem` | [tendsto_taylorCoefficient_zero_of_locallyUniform](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/24e7b9f8843ca523807e58573cf0212c43c0edea991724b94c054551a0dd2913ActualPairedProd/Variantc3b46d1d2768c31325fcaf06ecffdb236948675071765cfe73c9dd20b8f0a401.lean/declarations/tendsto-taylorcoefficient-zero-of-locallyuniform--43d3fdc3ecfb7b06ba6b3c70.md) | 80 | `result-track:43d3fdc3ecfb7b06ba6b3c70abd6d0feb783aff5e76dd86bf837be42de603d8b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
