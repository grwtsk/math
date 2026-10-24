# Verification target: GRWTSK.Analysis.FunctionalAnalysis.SemanticRealizationBoundary.Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "177341a7b78ecc986f9d34b617b48df9690f97e7",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `177341a7b78ecc986f9d34b617b48df9690f97e7`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Hilbert.SemanticRealization` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [singletonCoefficientSeminorm](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/declarations/singletoncoefficientseminorm--d0f79fade3547464bd564e96.md) | 21 | `declaration-track:d0f79fade3547464bd564e9680579210d17d1aa2cb4e5707f3b6a7c82391f6e0` |
| 2 | `theorem` | [singletonCoefficientSeminorm_eq_zero_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/declarations/singletoncoefficientseminorm-eq-zero-iff--cfc9845e4c22a6cc3a52c5a3.md) | 32 | `result-track:cfc9845e4c22a6cc3a52c5a3b18f09aa639032f8a16999c0d5c77f433cc3dbc1` |
| 3 | `def` | [singletonNormData](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/declarations/singletonnormdata--b68d7956da498a083a453ec5.md) | 48 | `declaration-track:b68d7956da498a083a453ec5e00eccdc7cbd8e3ad12711788fa198809f0894aa` |
| 4 | `def` | [zeroKernel](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/declarations/zerokernel--72dc20d4fa8aff9adba1bb62.md) | 62 | `declaration-track:72dc20d4fa8aff9adba1bb62cf84ecbb12d57c7d47f1a9c900aebfbebfbc1afc` |
| 5 | `theorem` | [mem_zeroKernelNull](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/declarations/mem-zerokernelnull--c22530fa26dd83625f6030c3.md) | 67 | `result-track:c22530fa26dd83625f6030c3c2eb0446184299a9cd5c4a725ba18858df8d0733` |
| 6 | `theorem` | [rawToZeroKernelSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/declarations/rawtozerokernelspace--2820067cb3a8807d223363ab.md) | 74 | `result-track:2820067cb3a8807d223363ab09712c1aa7e9ae14eb6c6913d873b8ccc6ae1418` |
| 7 | `def` | [zeroKernelCompatibility](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/declarations/zerokernelcompatibility--61a865b0865428c4d47cb17b.md) | 90 | `declaration-track:61a865b0865428c4d47cb17b8482fabb4131959dab6427df0a74a06504385d3a` |
| 8 | `theorem` | [atomState_ne_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/declarations/atomstate-ne-zero--853cc574041b0cc97cbb7558.md) | 103 | `result-track:853cc574041b0cc97cbb7558022b4d0e9dfad779651addd93f0c6f5fd3dcea10` |
| 9 | `theorem` | [atomState_realizes_as_zero](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/declarations/atomstate-realizes-as-zero--8b7815dca85ba1a523fc054a.md) | 129 | `result-track:8b7815dca85ba1a523fc054a93c898eb72486da80cda93ca65aa53e154b5c8c8` |
| 10 | `theorem` | [zeroKernel_realization_not_injective](../../../../../mathematics/Analysis/FunctionalAnalysis/SemanticRealizationBoundary/Variantdef1c3aa0415f901e46ccc31df774ab9fa7bf0f870946de43e5b436efdde4df9.lean/declarations/zerokernel-realization-not-injective--2a82266ae99931a8be7ecec6.md) | 142 | `result-track:2a82266ae99931a8be7ecec668060b0d987acd0d540e249473eb2925512ac81e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
