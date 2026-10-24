# Verification target: GRWTSK.Analysis.ComplexAnalysis.SourceActualRieszAreaZeroExclusion.Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a959b9e5450cbae96864d759e0e62c2f30fa900b",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/index.md) · [Full source](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a959b9e5450cbae96864d759e0e62c2f30fa900b`.

Source path: `GRWTSK/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceActualRieszQuadraticHolomorphy` — import line 6; external provider; requires a separately pinned dependency.
- `SourceActualRieszZeroPole` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Analytic.Uniqueness` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Complex.Convex` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [extensionNumerator](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/declarations/extensionnumerator--bdfdf72d836ec90d5418b2a1.md) | 31 | `declaration-track:bdfdf72d836ec90d5418b2a19b5f879a95521bb3e467d305f79bb22e0ab67f77` |
| 2 | `theorem` | [poleCleared_analyticAt](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/declarations/polecleared-analyticat--b08369b179281579f7b720a9.md) | 36 | `result-track:b08369b179281579f7b720a99ad04ca7710f7c980100d9d65a66583501a751dd` |
| 3 | `theorem` | [poleCleared_deriv](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/declarations/polecleared-deriv--b427a43d7a480be2f5d3d6d8.md) | 45 | `result-track:b427a43d7a480be2f5d3d6d8c500c040fab7c072e62bbae66b94ea7c1305b5c0` |
| 4 | `theorem` | [extension_initial](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/declarations/extension-initial--7fda4f558f7a631bd28da154.md) | 55 | `result-track:7fda4f558f7a631bd28da154ae0945b4e1c6dcaf124df3b10a822714f3c49537` |
| 5 | `theorem` | [extension_analytic](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/declarations/extension-analytic--490afa02f0dbad215567061c.md) | 82 | `result-track:490afa02f0dbad215567061c464ba876753f951fa6ee7fb5f091091c710e5d18` |
| 6 | `theorem` | [actualFixedCenteredRieszLaplace_poleCleared_identity](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/declarations/actualfixedcenteredrieszlaplace-polecleared-identity--f49543b20b055893873cf06d.md) | 97 | `result-track:f49543b20b055893873cf06da230433735dbbd593433d9d8accba234c928c47c` |
| 7 | `theorem` | [actualRiesz_quadratic_area_excludes_actual_right_zero](../../../../../mathematics/Analysis/ComplexAnalysis/SourceActualRieszAreaZeroExclusion/Variantf2bc163242f882e7ad4427b74b42f85be816f0e5a197cc4475c37732cc16002a.lean/declarations/actualriesz-quadratic-area-excludes-actual-right-zero--89282e6ab4f6c42437d10b27.md) | 126 | `result-track:89282e6ab4f6c42437d10b2765ceb769aa09a0f82ca047a91fbd6ba0a527c64d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
