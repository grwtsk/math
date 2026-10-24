# Verification target: GRWTSK.Analysis.ComplexAnalysis.SourceActualRieszAreaZeroExclusion.Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91f023e2152084cbd703c6ee1ae27e4533f17833",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91f023e2152084cbd703c6ee1ae27e4533f17833`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszQuadraticHolomorphy` — import line 1; external provider; requires a separately pinned dependency.
- `SourceActualRieszZeroPole` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extensionNumerator](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean/declarations/extensionnumerator--147cf6f3c8f3a10263cafec9.md) | 23 | `declaration-track:147cf6f3c8f3a10263cafec9569dd3891de88d629793a6113b487c93fef277a4` |
| 2 | `theorem` | [poleCleared_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean/declarations/polecleared-analyticat--8ddd8b8c7418493fa44efcc0.md) | 28 | `result-track:8ddd8b8c7418493fa44efcc0df290a41fe78caa31538f9bdf14be422fb8dc6a2` |
| 3 | `theorem` | [poleCleared_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean/declarations/polecleared-deriv--3eb380e233c4ec02d00f6f6a.md) | 37 | `result-track:3eb380e233c4ec02d00f6f6a2758571279d2e3bd3226ec9ad8a918dc2117c752` |
| 4 | `theorem` | [extension_initial](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean/declarations/extension-initial--2583a160b31c98e3d4ba1f9e.md) | 47 | `result-track:2583a160b31c98e3d4ba1f9e4c295c649edf166e48f08e1d30171430a09ad549` |
| 5 | `theorem` | [extension_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean/declarations/extension-analytic--5126a135e38a88ae75a2ccbd.md) | 74 | `result-track:5126a135e38a88ae75a2ccbd799624aa6fdcda9442ed119c00bdfa0a399e8f77` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_poleCleared_identity](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean/declarations/actualfixedcenteredrieszlaplace-polecleared-identity--a51843f7551a7cda158ca2ab.md) | 89 | `result-track:a51843f7551a7cda158ca2ab1ce857d31070bb51329004b05ac1c6b8b27a7fda` |
| 7 | `theorem` | [actualRiesz_quadratic_area_excludes_actual_right_zero](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantc257fe809ad96552f6d1c50cb5d22ec9695e36d6a588af5e7ce4c5ee90281f68.lean/declarations/actualriesz-quadratic-area-excludes-actual-right-zero--f70b0cbc255cda634b2a48b6.md) | 118 | `result-track:f70b0cbc255cda634b2a48b6477d3af94900bd15a9275c526f2788f2d164db47` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
