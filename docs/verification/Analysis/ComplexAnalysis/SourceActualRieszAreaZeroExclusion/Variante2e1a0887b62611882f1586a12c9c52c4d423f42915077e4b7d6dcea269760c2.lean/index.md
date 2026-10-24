# Verification target: GRWTSK.Analysis.ComplexAnalysis.SourceActualRieszAreaZeroExclusion.Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "326904f32e8daccc8a5425f9e0f8c01e01ce7b14",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `326904f32e8daccc8a5425f9e0f8c01e01ce7b14`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean.json)

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
| 1 | `def` | [extensionNumerator](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean/declarations/extensionnumerator--4c052897b745178c5a8ebf08.md) | 23 | `declaration-track:4c052897b745178c5a8ebf08e12fbfe3618c10eb4e0d0da3d780c11e0ad8bddd` |
| 2 | `theorem` | [poleCleared_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean/declarations/polecleared-analyticat--65390cf622053580c74975c8.md) | 28 | `result-track:65390cf622053580c74975c8f341bc1b560e0215e5a08551dafe9e2d3f1947ec` |
| 3 | `theorem` | [poleCleared_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean/declarations/polecleared-deriv--f84c344f1587bb1629300909.md) | 37 | `result-track:f84c344f1587bb1629300909755b2cb9d0b1e4d7ff027b72adf87d08f386ec95` |
| 4 | `theorem` | [extension_initial](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean/declarations/extension-initial--c8b88b8dd8fe87f534519275.md) | 47 | `result-track:c8b88b8dd8fe87f5345192753ef6ab66533f463017638782ba974d319f0b381b` |
| 5 | `theorem` | [extension_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean/declarations/extension-analytic--c21663b0746d831a17f95c4e.md) | 66 | `result-track:c21663b0746d831a17f95c4e0d08193c9b639aca85b0049717fd36170f1ae69a` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_poleCleared_identity](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean/declarations/actualfixedcenteredrieszlaplace-polecleared-identity--8769f6e23f8b7e7a02b92493.md) | 78 | `result-track:8769f6e23f8b7e7a02b92493fdeffbf26cd1e56546f647f9f11bc2290db094e0` |
| 7 | `theorem` | [actualRiesz_quadratic_area_excludes_actual_right_zero](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variante2e1a0887b62611882f1586a12c9c52c4d423f42915077e4b7d6dcea269760c2.lean/declarations/actualriesz-quadratic-area-excludes-actual-right-zero--a16715d076ee120b305e019d.md) | 107 | `result-track:a16715d076ee120b305e019d98afdee482f21da19a0c32209948867c8fc73b0a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
