# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceMainTermScaleDerivative.Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6323ee09ef8d6a42f28f796f5bad39b9b7e3689b",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6323ee09ef8d6a42f28f796f5bad39b9b7e3689b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceRegularScaleProfiles` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.Deriv.Inv` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [correlationScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/correlationscalederivative--57d26c493df0c5e169d80a87.md) | 31 | `declaration-track:57d26c493df0c5e169d80a87aed743a0f2e31cfb5ef0ff80cb32db770e4af9fa` |
| 2 | `theorem` | [sourceCorrelation_hasDerivAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/sourcecorrelation-hasderivat-scale--74b9c18e828e51097d67c78a.md) | 35 | `result-track:74b9c18e828e51097d67c78a4ac1284932be6a4e048af80ce5bd3e7da40f2485` |
| 3 | `theorem` | [sourceCorrelation_contDiffAt_scale](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/sourcecorrelation-contdiffat-scale--56bc272a0a3540acd822f3a9.md) | 47 | `result-track:56bc272a0a3540acd822f3a9392eccfd0a502d2a642bc96bb659ac76783eba39` |
| 4 | `def` | [diagonalCoefficientDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/diagonalcoefficientderivative--29f61f0eb8bdbe27dcd01492.md) | 58 | `declaration-track:29f61f0eb8bdbe27dcd01492f44e21c54fadb63daef3e0307547aacf7c064b14` |
| 5 | `theorem` | [diagonalMainCoefficient_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/diagonalmaincoefficient-hasderivat--f4a34b9aa521782ba9cdca9d.md) | 62 | `result-track:f4a34b9aa521782ba9cdca9d126f626ff6c666840a6158b42d0b241d86052817` |
| 6 | `theorem` | [diagonalMainCoefficient_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/diagonalmaincoefficient-contdiffat--9c386c40c0460d902de9c8bb.md) | 72 | `result-track:9c386c40c0460d902de9c8bbd3051d0e2f6754417c8f766c40d828a6df61c754` |
| 7 | `def` | [normalizationMainDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/normalizationmainderivative--e89a20900dd1e5c3384534be.md) | 79 | `declaration-track:e89a20900dd1e5c3384534be0e6f716f11dfb89a5cf3d79c82de2ed3b1e0aead` |
| 8 | `theorem` | [normalizedMain_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/normalizedmain-hasderivat--b569044e9b9d4ac10db937b4.md) | 84 | `result-track:b569044e9b9d4ac10db937b4cb267d8f8ad611be5f39934b2edf46c7ccbfdb68` |
| 9 | `theorem` | [normalizedMain_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/normalizedmain-contdiffat--39ba92e76e11005dc62eb75e.md) | 93 | `result-track:39ba92e76e11005dc62eb75e8801ee69999b81e43b1bb01119c484df25c4c81f` |
| 10 | `def` | [plainWeightScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/plainweightscalederivative--1275fc61b76cf5e2278a3e40.md) | 98 | `declaration-track:1275fc61b76cf5e2278a3e403a470cab3fab16eeda99031a47d016707186d548` |
| 11 | `theorem` | [sourcePlainWeight_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/sourceplainweight-hasderivat--439397a775f88405a940425c.md) | 102 | `result-track:439397a775f88405a940425c622c3ef19623aa9be6ddd5015dd9ca70259a366e` |
| 12 | `theorem` | [sourcePlainWeight_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/sourceplainweight-contdiffat--7abdd5c169714dea0f465439.md) | 107 | `result-track:7abdd5c169714dea0f4654394509ba0c10ecbd85a04ba3a345d67df19e154510` |
| 13 | `def` | [sourceKernelScaleDerivative](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/sourcekernelscalederivative--b768388d217e2e683a887e1c.md) | 112 | `declaration-track:b768388d217e2e683a887e1cb456000dc03105d9c90a029acda763e97feb8614` |
| 14 | `theorem` | [sourceKernel_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/sourcekernel-hasderivat--e906dbede67f7df4f099a007.md) | 116 | `result-track:e906dbede67f7df4f099a0078292e630725645e8a852e2f975921a6f90a0c12a` |
| 15 | `theorem` | [sourceKernel_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/sourcekernel-contdiffat--1d8b5060b43f6fb4f9040ba9.md) | 121 | `result-track:1d8b5060b43f6fb4f9040ba97e54b3656edfa0cc6539ba5da0df4fce3ffd8588` |
| 16 | `def` | [plainOffDerivativeAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/plainoffderivativeat--7bf2819e8a785ae3c138cefb.md) | 126 | `declaration-track:7bf2819e8a785ae3c138cefb2a88a93be33e7e85a7f70547943ffe656c4a9f54` |
| 17 | `theorem` | [plainOffAt_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/plainoffat-hasderivat--76570d1790ac84e100335090.md) | 130 | `result-track:76570d1790ac84e10033509035489d61bb5d49f2e518cfd34b5272fe2558c49f` |
| 18 | `theorem` | [plainOffAt_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/plainoffat-contdiffat--c769a7aea38d3de9bb2e906d.md) | 147 | `result-track:c769a7aea38d3de9bb2e906d42c47e47ae8ddae685527deb909bb187fe1311f4` |
| 19 | `def` | [shortMangoldtDerivativeAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/shortmangoldtderivativeat--b73690a6f43e44d9463a2f9b.md) | 160 | `declaration-track:b73690a6f43e44d9463a2f9b55b8febc3a27492937b2ac98909eff6245bd0f42` |
| 20 | `theorem` | [shortMangoldtAt_hasDerivAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/shortmangoldtat-hasderivat--036a7ca91f381e7b4d67ae91.md) | 164 | `result-track:036a7ca91f381e7b4d67ae91a843c671f9c4ccd45516f395e8cf21794c797b14` |
| 21 | `theorem` | [shortMangoldtAt_contDiffAt](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceMainTermScaleDerivative/Variantaf2680a690f683831cdfb21d76e1131e974c5568e8bd96cd6ea1b6056cfb4cd0.lean/declarations/shortmangoldtat-contdiffat--328c39ff74c41a5ad7276b84.md) | 171 | `result-track:328c39ff74c41a5ad7276b84c0cdb9c0495a4e547ffd524b59565b64364e7af4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
