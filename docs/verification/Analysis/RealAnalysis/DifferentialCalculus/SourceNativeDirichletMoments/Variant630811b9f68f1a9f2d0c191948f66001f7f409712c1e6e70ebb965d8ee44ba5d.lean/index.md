# Verification target: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.SourceNativeDirichletMoments.Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8ced074c9e88a3ef623f00fc149e66ad5ececb1b",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8ced074c9e88a3ef623f00fc149e66ad5ececb1b`.

Source path: `GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `SourceNativeDirichlet` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Deriv` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dirichletMoment](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/dirichletmoment--b4c7f960b0f02294653c0ec0.md) | 23 | `declaration-track:b4c7f960b0f02294653c0ec0f8714465ccd2eccb97164c664e72ce1ee543eb5a` |
| 2 | `theorem` | [dirichletMoment_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/dirichletmoment-nonneg--03ba73319811d87c75b7c623.md) | 27 | `result-track:03ba73319811d87c75b7c623aa163765e2810d2b50e85b5cf86cbec9d98af346` |
| 3 | `theorem` | [mangoldt_abscissa_le_one](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/mangoldt-abscissa-le-one--cf998f129038d1848aa5f6c3.md) | 34 | `result-track:cf998f129038d1848aa5f6c30ea8b4423d8e82f97b14a27cbcbef30e37fd50ef` |
| 4 | `theorem` | [iterate_logMul_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/iterate-logmul-eq--78397b6b5b420a07b5860648.md) | 40 | `result-track:78397b6b5b420a07b5860648018ec4f293b779f2a965a29ecda6f908fc4c4274` |
| 5 | `theorem` | [dirichletMoment_summable](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/dirichletmoment-summable--6106391e5ca15c9b18153898.md) | 49 | `result-track:6106391e5ca15c9b18153898160a4118a2c9abcaaa746345ee7d97fd291c096f` |
| 6 | `theorem` | [log_moment_series_eq](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/log-moment-series-eq--ab7426d9ca4c99d6c1afc76b.md) | 71 | `result-track:ab7426d9ca4c99d6c1afc76b657568644f2ed64d7797d3a6bad56eab5497ebeb` |
| 7 | `theorem` | [native_series_hasDerivAt_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/native-series-hasderivat-two--2ee075a739c369013fa006fc.md) | 99 | `result-track:2ee075a739c369013fa006fcb6b11368d65d0b4ff7fc29efe0c6619040637196` |
| 8 | `theorem` | [native_series_second_derivative_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/native-series-second-derivative-two--ab98270b714ac52bb05bea6f.md) | 110 | `result-track:ab98270b714ac52bb05bea6fde57e862fd9820e968a47b862c695aba05b8818c` |
| 9 | `theorem` | [combinedMultiplier_eventually_eq_series](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/combinedmultiplier-eventually-eq-series--68cf3e03881eaa65f2be39f4.md) | 119 | `result-track:68cf3e03881eaa65f2be39f4202f2f5cdeffb2103118735767ccee77c85dd3f7` |
| 10 | `theorem` | [combinedMultiplier_hasDerivAt_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/combinedmultiplier-hasderivat-two--04459d98479a6e26000062b2.md) | 128 | `result-track:04459d98479a6e26000062b2fe915d6ec05b7656dbdbf321d9f61b1a27393998` |
| 11 | `theorem` | [combinedMultiplier_second_derivative_two](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/combinedmultiplier-second-derivative-two--34f22ecb057025b977690c2a.md) | 133 | `result-track:34f22ecb057025b977690c2ab0b28efdddbd2a1a8a116d18a5ab82c241fedb97` |
| 12 | `theorem` | [dirichletMoment_zero_eq_majorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/dirichletmoment-zero-eq-majorant--8c9b41be6dbb73ca3535ed93.md) | 139 | `result-track:8c9b41be6dbb73ca3535ed93679f52689050a32e0785e336a44ea0d43f67a230` |
| 13 | `theorem` | [combinedMultiplier_two_eq_majorant](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/combinedmultiplier-two-eq-majorant--4ed41ac7442e79b286ca77bd.md) | 146 | `result-track:4ed41ac7442e79b286ca77bdd45c1104ca583897c04e17a4e836238cbb516e8f` |
| 14 | `theorem` | [dirichletMoment_one_pos](../../../../../../mathematics/Analysis/RealAnalysis/DifferentialCalculus/SourceNativeDirichletMoments/Variant630811b9f68f1a9f2d0c191948f66001f7f409712c1e6e70ebb965d8ee44ba5d.lean/declarations/dirichletmoment-one-pos--faca29def90a114ee7c594f5.md) | 155 | `result-track:faca29def90a114ee7c594f56f4f0c1303c543169289bd000e6c5ae9a1be241f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
