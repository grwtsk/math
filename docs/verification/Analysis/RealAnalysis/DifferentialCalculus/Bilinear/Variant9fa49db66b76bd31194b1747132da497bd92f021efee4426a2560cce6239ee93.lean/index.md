# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Bilinear.Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0d9285f6c1dd5688c7813c81af9ddc6f118f9e98",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0d9285f6c1dd5688c7813c81af9ddc6f118f9e98`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsBoundedBilinearMap.hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/isboundedbilinearmap-hasstrictfderivat--caadc54e68ff839c00d9a1b2.md) | 59 | `result-track:caadc54e68ff839c00d9a1b278dda8df313a304032b82a36a591bec343d46bd9` |
| 2 | `theorem` | [IsBoundedBilinearMap.hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/isboundedbilinearmap-hasfderivat--f1c8913578a41f1bf505b9fc.md) | 84 | `result-track:f1c8913578a41f1bf505b9fc1a488dfd299720d470b2289d648b41b6644703d0` |
| 3 | `theorem` | [IsBoundedBilinearMap.hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/isboundedbilinearmap-hasfderivwithinat--e63969f50800bd544fbf3c49.md) | 89 | `result-track:e63969f50800bd544fbf3c498196432f475cb1f3e518ac66481aa6a1c43cb091` |
| 4 | `theorem` | [IsBoundedBilinearMap.differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/isboundedbilinearmap-differentiableat--83675da954b51893fca3d12a.md) | 94 | `result-track:83675da954b51893fca3d12ac629c3e4c30f815ea0af0d4ff7a13783504f729f` |
| 5 | `theorem` | [IsBoundedBilinearMap.differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/isboundedbilinearmap-differentiablewithinat--bf42ab2d371d4280821453b5.md) | 99 | `result-track:bf42ab2d371d4280821453b5b5552e84810653aaa3440acb27077de50459f85e` |
| 6 | `theorem` | [IsBoundedBilinearMap.fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/isboundedbilinearmap-fderiv--e5af5612be23c6cd2109ebde.md) | 104 | `result-track:e5af5612be23c6cd2109ebdebc957631a5e070dbafd399ffef265e4d73c3615d` |
| 7 | `theorem` | [IsBoundedBilinearMap.fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/isboundedbilinearmap-fderivwithin--451f1b9dc42ac80fc4141b7f.md) | 109 | `result-track:451f1b9dc42ac80fc4141b7f29fe62c503d65c9bbc31f0db23de827a65fa49d0` |
| 8 | `theorem` | [IsBoundedBilinearMap.differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/isboundedbilinearmap-differentiable--d9297d77854e03877e8f36a9.md) | 115 | `result-track:d9297d77854e03877e8f36a974eb535b4f1b14c856c0ec96fe88426ccf8554aa` |
| 9 | `theorem` | [IsBoundedBilinearMap.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/isboundedbilinearmap-differentiableon--514863ae167e48905dcd052b.md) | 119 | `result-track:514863ae167e48905dcd052b9019634565a263b550cfc6f32a54478b28fc150d` |
| 10 | `theorem` | [ContinuousLinearMap.hasFDerivWithinAt_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/continuouslinearmap-hasfderivwithinat-of-bilinear--0c53f6839af7a20433df29de.md) | 126 | `result-track:0c53f6839af7a20433df29de0472312a2afa9be24c840349baa1f8d2250a8824` |
| 11 | `theorem` | [ContinuousLinearMap.hasFDerivAt_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/continuouslinearmap-hasfderivat-of-bilinear--8455aa158dd16691a65daaa1.md) | 134 | `result-track:8455aa158dd16691a65daaa1e71acd8f9c73c44d62a3034eacd1fad18ae7b93d` |
| 12 | `theorem` | [ContinuousLinearMap.fderivWithin_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/continuouslinearmap-fderivwithin-of-bilinear--16ec0e12663bdfb1577d0df8.md) | 140 | `result-track:16ec0e12663bdfb1577d0df8754383e6368abd8531a15010445d199c5bb1f028` |
| 13 | `theorem` | [ContinuousLinearMap.fderiv_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant9fa49db66b76bd31194b1747132da497bd92f021efee4426a2560cce6239ee93.lean/declarations/continuouslinearmap-fderiv-of-bilinear--88f5f041176ca563f81a674c.md) | 148 | `result-track:88f5f041176ca563f81a674ceae71581c792521646ae38291ff108fb435c6339` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
