# Verification target: GRWTSK.Analysis.ComplexAnalysis.SourceActualRieszAreaZeroExclusion.Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0f3364243cc897b512746ec6ddfd00ec40c5314d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0f3364243cc897b512746ec6ddfd00ec40c5314d`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean.json)

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
| 1 | `def` | [extensionNumerator](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean/declarations/extensionnumerator--6e29bbf9c92aa44c0dd97b1b.md) | 23 | `declaration-track:6e29bbf9c92aa44c0dd97b1b855b1f68ac612bc2b5f7358a1f1bd6ef8b384920` |
| 2 | `theorem` | [poleCleared_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean/declarations/polecleared-analyticat--86e313def355dbc5ee6206a7.md) | 28 | `result-track:86e313def355dbc5ee6206a711cd345dde4a2fa5144797f573110a20c190f450` |
| 3 | `theorem` | [poleCleared_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean/declarations/polecleared-deriv--61c86b1a8322de1fca3fd76f.md) | 37 | `result-track:61c86b1a8322de1fca3fd76fd27672d6ed219276df0b98efbe8d85f09ad2a789` |
| 4 | `theorem` | [extension_initial](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean/declarations/extension-initial--37890f2a71a1a36bfe149662.md) | 47 | `result-track:37890f2a71a1a36bfe14966239ced65add54e41e1f48b9e8297267348e298a70` |
| 5 | `theorem` | [extension_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean/declarations/extension-analytic--e27a17c731b79b7144244500.md) | 74 | `result-track:e27a17c731b79b7144244500823482441ea9e6e606806029a24567ff23fb0cb1` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_poleCleared_identity](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean/declarations/actualfixedcenteredrieszlaplace-polecleared-identity--2f35cde735dedb65b9f751a5.md) | 89 | `result-track:2f35cde735dedb65b9f751a521817d49d2af5becf1bb56c2477bf24656e0c425` |
| 7 | `theorem` | [actualRiesz_quadratic_area_excludes_actual_right_zero](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variant2d50665b692f20ddd555cf3a242be0f8680454d44115f2bc388c523ff55e957f.lean/declarations/actualriesz-quadratic-area-excludes-actual-right-zero--21e7b64e1a789194d173a9fe.md) | 118 | `result-track:21e7b64e1a789194d173a9fe7d347ee05342745b1ad65428e9abb17c5c32cb10` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
