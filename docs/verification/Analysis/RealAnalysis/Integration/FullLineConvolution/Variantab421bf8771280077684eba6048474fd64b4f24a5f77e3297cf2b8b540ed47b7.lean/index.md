# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.FullLineConvolution.Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10392305186241a87513477bdb0b80c2fd81dc0e",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10392305186241a87513477bdb0b80c2fd81dc0e`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.SourceComparison.HalfLineExponential` — import line 6; external provider; requires a separately pinned dependency.
- `FormalResearch.RiemannHypothesis.SourceComparison.FixedKernelAdmission` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.LpSpace.ContinuousCompMeasurePreserving` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.ContinuousLinearMap` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FullH](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/fullh--e0e7f8f557f2083f5f694906.md) | 20 | `declaration-track:e0e7f8f557f2083f5f6949062654a33d6876c084358e9b94846f88340dd5b775` |
| 2 | `def` | [fullShift](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/fullshift--bb411e00525ccb925b48d62b.md) | 22 | `declaration-track:bb411e00525ccb925b48d62bf279e24e2f1a83d84d6a74f10a1934c4389df615` |
| 3 | `theorem` | [fullShift_ae](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/fullshift-ae--2aca74684ae8bab4e5a0dc81.md) | 25 | `result-track:2aca74684ae8bab4e5a0dc81b7c2788852e0ab64cae91709ba1be12524d8f837` |
| 4 | `theorem` | [fullShift_continuous](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/fullshift-continuous--f4ca4d1de0e01a9a5185b676.md) | 29 | `result-track:f4ca4d1de0e01a9a5185b6766d5085fa899effb7d5039121d859b3737e2a2b12` |
| 5 | `theorem` | [weighted_shift_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/weighted-shift-integrable--2b38e192841c0ae8244c1200.md) | 37 | `result-track:2b38e192841c0ae8244c12001827789a70207840284da235dfe3f88b5a790f1c` |
| 6 | `def` | [vector](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/vector--26fc7620eaf2058549c2270c.md) | 46 | `declaration-track:26fc7620eaf2058549c2270c4a713a390789d9be36e2d743144b78269d409b50` |
| 7 | `theorem` | [vector_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/vector-norm-le--5eb33f8caf2c636ae9243f81.md) | 48 | `result-track:5eb33f8caf2c636ae9243f81098f9be81fe16c75cde2d00f110900bd3ec9bd31` |
| 8 | `theorem` | [vector_add](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/vector-add--23a5b4456e9436e2e8c12c28.md) | 55 | `result-track:23a5b4456e9436e2e8c12c282b4062ba84e98191c3cdfb4e21838a7322c91d00` |
| 9 | `theorem` | [vector_smul](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/vector-smul--d9d57c053abb4ed9417c77fe.md) | 60 | `result-track:d9d57c053abb4ed9417c77fec9da266cd0c66cf3917572c62331f8ccd1db227d` |
| 10 | `def` | [linearMap](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/linearmap--32f7ca52199aaf38f0a046b6.md) | 64 | `declaration-track:32f7ca52199aaf38f0a046b6052d590a4cecfac069ee434d1750f250fc173baa` |
| 11 | `def` | [fullConvolution](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/fullconvolution--3392e05285ec3991159773aa.md) | 69 | `declaration-track:3392e05285ec3991159773aadb5a4cf2df5afc965d077dc031b69df844a37382` |
| 12 | `theorem` | [fullConvolution_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/fullconvolution-apply--54bcc6327ba4e6139dad143b.md) | 72 | `result-track:54bcc6327ba4e6139dad143b4106c1d60b0e4b07556f3dea7078da01eacd0229` |
| 13 | `theorem` | [fullConvolution_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/fullconvolution-norm-le--75a758f6a24646ab28b47baa.md) | 75 | `result-track:75a758f6a24646ab28b47baa4d6b218aad3403b6d2062b37a16909b2a8a6fe9a` |
| 14 | `theorem` | [fullConvolution_sub_kernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/fullconvolution-sub-kernel--f74c32fc1c28a3669d6a881d.md) | 79 | `result-track:f74c32fc1c28a3669d6a881df964579c6c3a10865776232db196ad80a0e575e8` |
| 15 | `theorem` | [fullConvolution_norm_sub_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/fullconvolution-norm-sub-le--1550d224f5ec1901edb36bca.md) | 87 | `result-track:1550d224f5ec1901edb36bcabd0751c7b77af49912a8e8044c635f86d886be61` |
| 16 | `def` | [actualFull](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/actualfull--eff729116214b7d87210090f.md) | 92 | `declaration-track:eff729116214b7d87210090fa0bb9aad2c3adfc24ea313cc4a35943970daff14` |
| 17 | `theorem` | [actualFull_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/actualfull-apply--9535d123d1368a83cbd4b2df.md) | 94 | `result-track:9535d123d1368a83cbd4b2df8129cb432c520473d9235b22aa56a08b161608cf` |
| 18 | `theorem` | [actualFull_norm_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/FullLineConvolution/Variantab421bf8771280077684eba6048474fd64b4f24a5f77e3297cf2b8b540ed47b7.lean/declarations/actualfull-norm-le--c2185d096c991a97acb613e2.md) | 97 | `result-track:c2185d096c991a97acb613e212542b3d650b83e74e2103fcf861edc5811b4701` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
