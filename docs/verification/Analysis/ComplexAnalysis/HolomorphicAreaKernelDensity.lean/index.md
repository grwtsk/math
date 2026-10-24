# Verification target: GRWTSK.Analysis.Complex.HolomorphicAreaKernelDensity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6b71b9ba01b8b76ef64ae1226e70a66233fc822a",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/HolomorphicAreaKernelDensity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6b71b9ba01b8b76ef64ae1226e70a66233fc822a`.

Source path: `GRWTSK/Analysis/Complex/HolomorphicAreaKernelDensity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/HolomorphicAreaKernelDensity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.HolomorphicAreaProjection`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaProjection.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.InnerProductSpace.Projection.Submodule` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [evaluation_ext_on_dense](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/evaluation-ext-on-dense--917366f6dce618c55380e9b8.md) | 41 | `result-track:917366f6dce618c55380e9b85baa279bf12ab1f3bf99ace50ef5d0e362c9009e` |
| 2 | `def` | [kernelSpan](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/kernelspan--dfe03e60cd0c7a639df8eefd.md) | 56 | `declaration-track:dfe03e60cd0c7a639df8eefde5ca5250c4b137178d6749f3b4f5cec694911019` |
| 3 | `theorem` | [kernelVector_mem_span](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/kernelvector-mem-span--6319221d3e29f9ecadd24d1c.md) | 60 | `result-track:6319221d3e29f9ecadd24d1c4595a02bc7f82dc03af6e03417a77e00d4789a5a` |
| 4 | `theorem` | [mem_kernelSpan_orthogonal](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/mem-kernelspan-orthogonal--426cc31ac3343e21174c96b9.md) | 65 | `result-track:426cc31ac3343e21174c96b92e5da2b1b9a62b3a5e8f4df7f316f645041c6c7b` |
| 5 | `theorem` | [kernelSpan_orthogonal_eq_bot](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/kernelspan-orthogonal-eq-bot--c5689f47af7aa0b033509324.md) | 83 | `result-track:c5689f47af7aa0b033509324aee6792ada4b0d76c88126f953cbe3f78481303c` |
| 6 | `theorem` | [kernelSpan_closure_top](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/kernelspan-closure-top--ec82ce548668a94c9daf08cd.md) | 93 | `result-track:ec82ce548668a94c9daf08cdb2f31340a9bad29bc5eb343adc18161f397620ed` |
| 7 | `theorem` | [kernelSpan_dense](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/kernelspan-dense--30daa6d1c832b78623ea6a85.md) | 97 | `result-track:30daa6d1c832b78623ea6a851b87c63d7f2c0531b6d477a2d164c28b9dec4c76` |
| 8 | `theorem` | [kernel_approximation](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/kernel-approximation--aade4eda837f618b35ad8d28.md) | 102 | `result-track:aade4eda837f618b35ad8d28a45b0a489526b66d3eba15e2e562c1ecb15de96c` |
| 9 | `theorem` | [all_kernels_dense](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/all-kernels-dense--9b7dd12d4116da952048a247.md) | 107 | `result-track:9b7dd12d4116da952048a247b52d5845b6695461568f5cb176b970a2fce55126` |
| 10 | `theorem` | [boundedMap_ext_on_kernels](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/boundedmap-ext-on-kernels--cafe9ffe66117b4dc6e14ffb.md) | 115 | `result-track:cafe9ffe66117b4dc6e14ffb0110729decff398ecf72483001fd2da0035b3368` |
| 11 | `theorem` | [multiplier_adjoint_unique](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/multiplier-adjoint-unique--da843a31fdd43314de69e26c.md) | 133 | `result-track:da843a31fdd43314de69e26ce16dfef7f05cc1ce1a5f2f7967b549d1235073e4` |
| 12 | `theorem` | [projection_unique_of_kernelMoments](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/projection-unique-of-kernelmoments--55bf32be9698047e4888d203.md) | 144 | `result-track:55bf32be9698047e4888d20355e8f49aae10955a3097adf95f35f012c3371369` |
| 13 | `theorem` | [projection_zero_iff_kernelMoments](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/projection-zero-iff-kernelmoments--70826432bcaef48f98ff1c77.md) | 162 | `result-track:70826432bcaef48f98ff1c77db1da6e4f39e6517b5619b344de6d403fc5bebdb` |
| 14 | `def` | [ambientKernelSpan](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/ambientkernelspan--5287f00fb827b630f1757353.md) | 176 | `declaration-track:5287f00fb827b630f17573536da521f88a643ae2ae71b3623cd7a59f6f71c224` |
| 15 | `theorem` | [mem_ambientKernelSpan_orthogonal](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/mem-ambientkernelspan-orthogonal--31976f7e65f0ff3a0fceb40e.md) | 180 | `result-track:31976f7e65f0ff3a0fceb40e00fef943543ccb91ce4a15e18169a5ed579d111c` |
| 16 | `theorem` | [ambientKernelSpan_orthogonal](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/ambientkernelspan-orthogonal--50de240201da9773a9b5a037.md) | 196 | `result-track:50de240201da9773a9b5a037caa733108d02b8743d93bc009dfcfa42a5548220` |
| 17 | `theorem` | [ambientKernelSpan_closure](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/ambientkernelspan-closure--7ce087dd9a416acda7a1301e.md) | 213 | `result-track:7ce087dd9a416acda7a1301e6175bbe3c53808301446e12fa29a39300c426c77` |
| 18 | `theorem` | [empty_kernelSpan](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/empty-kernelspan--1e0d632e52016be5c939ffa9.md) | 230 | `result-track:1e0d632e52016be5c939ffa9470f0f00453648b45b08cc3d37c5a0f9cd199bef` |
| 19 | `def` | [diskUnitVector](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/diskunitvector--492212f42d0d804be96eaab4.md) | 238 | `declaration-track:492212f42d0d804be96eaab4f429f979caf9fc12ca79c022d45c3d5ad9736bad` |
| 20 | `theorem` | [diskUnitVector_value](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/diskunitvector-value--375b0a21538d6baea914c52b.md) | 245 | `result-track:375b0a21538d6baea914c52bcdf69e74d407c237c91a31a94a6d89ad1469e0aa` |
| 21 | `def` | [diskCoordinateVector](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/diskcoordinatevector--8e1f369087208fee2aca9e71.md) | 251 | `declaration-track:8e1f369087208fee2aca9e7134e15e73d037904ac3d1a83116d4c7668d0a7082` |
| 22 | `theorem` | [diskCoordinateVector_value](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/diskcoordinatevector-value--e10cf69a3065a93a4af72f07.md) | 255 | `result-track:e10cf69a3065a93a4af72f07272074a27691f2fc6f86b18bdecd9e710c4b0edb` |
| 23 | `theorem` | [diskCoordinateVector_ne_zero](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/diskcoordinatevector-ne-zero--8392b0d259fecb202bff19c1.md) | 261 | `result-track:8392b0d259fecb202bff19c162fd958b7f24309e88c0982b136d2e7750c338a1` |
| 24 | `theorem` | [disk_center_not_total](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicAreaKernelDensity.lean/declarations/disk-center-not-total--5868881cf7e4c71e0b8fc837.md) | 269 | `result-track:5868881cf7e4c71e0b8fc8379139fc7058973aeda615609208ea007d40a91262` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
