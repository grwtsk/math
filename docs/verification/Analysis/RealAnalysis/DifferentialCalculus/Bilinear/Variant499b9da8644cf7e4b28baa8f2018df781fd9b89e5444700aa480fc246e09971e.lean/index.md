# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.Bilinear.Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9e69126263313868d8b592c8fee8e6f495e38a38",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9e69126263313868d8b592c8fee8e6f495e38a38`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean.json)

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
| 1 | `theorem` | [IsBoundedBilinearMap.hasStrictFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/isboundedbilinearmap-hasstrictfderivat--78ef30881af7c6e9a3fd0c2c.md) | 41 | `result-track:78ef30881af7c6e9a3fd0c2cf753767277f5c4ee939e31bac97a83c0a77a87aa` |
| 2 | `theorem` | [IsBoundedBilinearMap.hasFDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/isboundedbilinearmap-hasfderivat--c5ec129cbabcb107026027ab.md) | 67 | `result-track:c5ec129cbabcb107026027abcb99e217939924467e1109cf20bddb972fdf7173` |
| 3 | `theorem` | [IsBoundedBilinearMap.hasFDerivWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/isboundedbilinearmap-hasfderivwithinat--81d87502fc6ebdf48648be74.md) | 72 | `result-track:81d87502fc6ebdf48648be7422a473cdb19eb79911109759a9972069ed9f821a` |
| 4 | `theorem` | [IsBoundedBilinearMap.differentiableAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/isboundedbilinearmap-differentiableat--e7ff5a98b544f2af5c6953b8.md) | 77 | `result-track:e7ff5a98b544f2af5c6953b80a3aae4d3508b775a7759163ef845ca2632cad1f` |
| 5 | `theorem` | [IsBoundedBilinearMap.differentiableWithinAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/isboundedbilinearmap-differentiablewithinat--6946667bebe60cab8ad9ae71.md) | 82 | `result-track:6946667bebe60cab8ad9ae7186464ce75ed3d3f898fc4a9bce1dc7da62c25b62` |
| 6 | `theorem` | [IsBoundedBilinearMap.fderiv](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/isboundedbilinearmap-fderiv--1a4ac8f92f7c7c0b27a5cb19.md) | 86 | `result-track:1a4ac8f92f7c7c0b27a5cb19cfc213e7bd2628b735d9a141ccf16f880d8e01a6` |
| 7 | `theorem` | [IsBoundedBilinearMap.fderivWithin](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/isboundedbilinearmap-fderivwithin--89f8fe1e09c52361fcbde687.md) | 90 | `result-track:89f8fe1e09c52361fcbde6877c5ea91382943abeccb37f96943afe89a0e8f698` |
| 8 | `theorem` | [IsBoundedBilinearMap.differentiable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/isboundedbilinearmap-differentiable--5cc51f396da13d509b79e99f.md) | 96 | `result-track:5cc51f396da13d509b79e99f7c01f3d7c3772e7a7668bbf615b9fefafea7c766` |
| 9 | `theorem` | [IsBoundedBilinearMap.differentiableOn](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/isboundedbilinearmap-differentiableon--f00354e915b1a3745bb23f70.md) | 100 | `result-track:f00354e915b1a3745bb23f702392f8b7d09b264dc560e6bac5b1570e8b5cbef4` |
| 10 | `theorem` | [ContinuousLinearMap.hasFDerivWithinAt_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/continuouslinearmap-hasfderivwithinat-of-bilinear--e50a2c21053355f799d093ee.md) | 109 | `result-track:e50a2c21053355f799d093ee323842e01e811965a0600988671122acddad7bdc` |
| 11 | `theorem` | [ContinuousLinearMap.hasFDerivAt_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/continuouslinearmap-hasfderivat-of-bilinear--107f4beb46bec774521a0eeb.md) | 119 | `result-track:107f4beb46bec774521a0eeb3adc087d63b5784bbaba42e65cf7900d29d83a90` |
| 12 | `theorem` | [ContinuousLinearMap.hasStrictFDerivAt_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/continuouslinearmap-hasstrictfderivat-of-bilinear--64edca1d8406f7bc5c571dd8.md) | 125 | `result-track:64edca1d8406f7bc5c571dd8635985f6493bb65d6011382fab685276464e2f02` |
| 13 | `theorem` | [ContinuousLinearMap.fderivWithin_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/continuouslinearmap-fderivwithin-of-bilinear--55a6822050f8523540e121eb.md) | 132 | `result-track:55a6822050f8523540e121eb061227e51aa4cb5ea4fe3bd6a08007d99626e579` |
| 14 | `theorem` | [ContinuousLinearMap.fderiv_of_bilinear](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/Bilinear/Variant499b9da8644cf7e4b28baa8f2018df781fd9b89e5444700aa480fc246e09971e.lean/declarations/continuouslinearmap-fderiv-of-bilinear--5b387b9dee08ea59caa28b71.md) | 139 | `result-track:5b387b9dee08ea59caa28b715a5e8ad086ee012a2b48487711ea844d0b18f046` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
