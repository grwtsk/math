# Verification target: GRWTSK.Analysis.ComplexAnalysis.SourceActualRieszAreaZeroExclusion.Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "605c9df22a1e31ff005ddb5483efe12c2ddf16c5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `605c9df22a1e31ff005ddb5483efe12c2ddf16c5`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean.json)

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
| 1 | `def` | [extensionNumerator](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean/declarations/extensionnumerator--b9dff1b8f8c4284f280fafc0.md) | 23 | `declaration-track:b9dff1b8f8c4284f280fafc05162d6111f8ab1bb912713dfb7a0793d9032691b` |
| 2 | `theorem` | [poleCleared_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean/declarations/polecleared-analyticat--11eedeb1a2f73cc35eeba400.md) | 28 | `result-track:11eedeb1a2f73cc35eeba400a813cc598d6b41247782adbf9c9155e4966469f7` |
| 3 | `theorem` | [poleCleared_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean/declarations/polecleared-deriv--4dde35de7afd7cf38ab45ccc.md) | 37 | `result-track:4dde35de7afd7cf38ab45cccdb84133b6877c4cd3db7f657e742cbb7b13eb42f` |
| 4 | `theorem` | [extension_initial](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean/declarations/extension-initial--80e8828bc3a920b6fdf464e7.md) | 47 | `result-track:80e8828bc3a920b6fdf464e71cadc36d296afb1c0197e9b97fe0b83957fa9711` |
| 5 | `theorem` | [extension_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean/declarations/extension-analytic--96e2124a69d73fc12196afe9.md) | 74 | `result-track:96e2124a69d73fc12196afe92d9f859681cb9c237477a091d125b76f5173afdf` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_poleCleared_identity](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean/declarations/actualfixedcenteredrieszlaplace-polecleared-identity--57bc941283f04cfe97bb4a03.md) | 89 | `result-track:57bc941283f04cfe97bb4a03339aec4a325edb40a4ee7020000c58d154674e59` |
| 7 | `theorem` | [actualRiesz_quadratic_area_excludes_actual_right_zero](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantbb4b387b1c14eb3d612ee1f594183dc73b5a673c5a62358f33853680e7f8108e.lean/declarations/actualriesz-quadratic-area-excludes-actual-right-zero--d9d5bbf2247b2123eda16bbf.md) | 118 | `result-track:d9d5bbf2247b2123eda16bbfad58598eed1bb748489d7a391fb44b2e33074d30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
