# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Bilinear.Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b21b4332880bb1d9593df3daa8c1805056e1a9e4",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b21b4332880bb1d9593df3daa8c1805056e1a9e4`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.FDeriv.Prod` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsBoundedBilinearMap.hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/isboundedbilinearmap-hasstrictfderivat--f4a8e2512388742d202f270f.md) | 67 | `result-track:f4a8e2512388742d202f270fe9efd1b005f34d0b5f826cd6a78443b724060aed` |
| 2 | `theorem` | [IsBoundedBilinearMap.hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/isboundedbilinearmap-hasfderivat--735f78446b8d8a0f48265d63.md) | 92 | `result-track:735f78446b8d8a0f48265d63b921cf3fec2538dc2c653bbd875f9b6f9645ae96` |
| 3 | `theorem` | [IsBoundedBilinearMap.hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/isboundedbilinearmap-hasfderivwithinat--ab2f8b52b90366d3e428d1d5.md) | 97 | `result-track:ab2f8b52b90366d3e428d1d5b019e3bcddbff798a5d2fc936f3e1028dbb8bce9` |
| 4 | `theorem` | [IsBoundedBilinearMap.differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/isboundedbilinearmap-differentiableat--1ed57a2097a1a3b33cf3cd21.md) | 102 | `result-track:1ed57a2097a1a3b33cf3cd2146ad3ce18ba728f33c7de8ee990977ad00a33e4e` |
| 5 | `theorem` | [IsBoundedBilinearMap.differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/isboundedbilinearmap-differentiablewithinat--5d0b282a84476107fcc957ea.md) | 107 | `result-track:5d0b282a84476107fcc957ea3dc61db95eb59dbf6ab37615ae77371a073b2b50` |
| 6 | `theorem` | [IsBoundedBilinearMap.fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/isboundedbilinearmap-fderiv--77d5789915ee3f6c3b6b79f2.md) | 112 | `result-track:77d5789915ee3f6c3b6b79f214c9a85b70e8a77c1067f549fb2c2fc146b03ecc` |
| 7 | `theorem` | [IsBoundedBilinearMap.fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/isboundedbilinearmap-fderivwithin--ab7c822b17bb3a2c60cb7a8a.md) | 117 | `result-track:ab7c822b17bb3a2c60cb7a8a18da9493ff2f57a1045eb329636ca4852ba8dec1` |
| 8 | `theorem` | [IsBoundedBilinearMap.differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/isboundedbilinearmap-differentiable--a2a7b3d35f9263a4d9d11776.md) | 123 | `result-track:a2a7b3d35f9263a4d9d11776e3f2203373857871bb1e6f8c67ce0b9cd46b2ab8` |
| 9 | `theorem` | [IsBoundedBilinearMap.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/isboundedbilinearmap-differentiableon--1fd21001806591949c4dd123.md) | 127 | `result-track:1fd21001806591949c4dd12362c7cbdbea989d6f8f32bd09dcb89ab6c4fdc7b7` |
| 10 | `theorem` | [ContinuousLinearMap.hasFDerivWithinAt_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/continuouslinearmap-hasfderivwithinat-of-bilinear--66d7a7e27b1593514fca0eb9.md) | 134 | `result-track:66d7a7e27b1593514fca0eb93e074803fb8109415f1e496983965b9bf5b49ee6` |
| 11 | `theorem` | [ContinuousLinearMap.hasFDerivAt_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/continuouslinearmap-hasfderivat-of-bilinear--08201093baa9835f4e017cc1.md) | 142 | `result-track:08201093baa9835f4e017cc15ea174c15ac938d29416adc86a8870dddf10aa74` |
| 12 | `theorem` | [ContinuousLinearMap.fderivWithin_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/continuouslinearmap-fderivwithin-of-bilinear--050632b68261a6814b4394b3.md) | 148 | `result-track:050632b68261a6814b4394b3bc36843d5cd15ce7071d44ac35bf469655b97f3b` |
| 13 | `theorem` | [ContinuousLinearMap.fderiv_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variante711cf5df72760a68eb982b474f861b88ccd7330eb223af996b7e2d9ffe2f902.lean/declarations/continuouslinearmap-fderiv-of-bilinear--874c642dbfb8c1116b91076c.md) | 156 | `result-track:874c642dbfb8c1116b91076c1c0b84b574ad6d0c4a964ba34883a61adc56757e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
