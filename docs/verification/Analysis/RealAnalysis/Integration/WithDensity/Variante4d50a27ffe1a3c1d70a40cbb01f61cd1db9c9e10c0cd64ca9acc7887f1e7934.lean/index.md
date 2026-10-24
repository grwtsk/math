# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.WithDensity.Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9dcc1ebc4bb291faa18110c44a97b0eaefdb8726",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9dcc1ebc4bb291faa18110c44a97b0eaefdb8726`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Probability.Kernel.MeasurableIntegral` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.SetIntegral` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/withdensity--9219bd3392ef531ad27a7cb6.md) | 47 | `declaration-track:9219bd3392ef531ad27a7cb690b2dd5b4473a6937eb8635a880912412e6d2467` |
| 2 | `theorem` | [withDensity_of_not_measurable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/withdensity-of-not-measurable--3bf75f07e1f76e23e389cc3b.md) | 57 | `result-track:3bf75f07e1f76e23e389cc3b2b48a8f6602ebccf3c568d931c4dff0a1dfaffd0` |
| 3 | `theorem` | [withDensity_apply](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/withdensity-apply--5985e19fff531d7ec354d220.md) | 61 | `result-track:5985e19fff531d7ec354d220e2c66816d1bb8faf3c69aeec5e7acc42f46ccf79` |
| 4 | `theorem` | [withDensity_apply'](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/withdensity-apply--c0407461d20e61abfdff6dcd.md) | 69 | `result-track:c0407461d20e61abfdff6dcdd496884d6c6f32a4ed21a70ad39517cf36cef262` |
| 5 | `theorem` | [lintegral_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/lintegral-withdensity--61b59002b7578e57fe672710.md) | 75 | `result-track:61b59002b7578e57fe672710602ad22ec487209671a389a4bcee87db478ce276` |
| 6 | `theorem` | [integral_withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/integral-withdensity--64a24419994a9e49210e7fe6.md) | 83 | `result-track:64a24419994a9e49210e7fe61f1bf836fb00b88c6b6b2f47271aafd79501a91b` |
| 7 | `theorem` | [withDensity_add_left](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/withdensity-add-left--559c7631af7b2ed8dbcdcc37.md) | 92 | `result-track:559c7631af7b2ed8dbcdcc37b03400608474ae29b037c7c26a703ebdd7988d99` |
| 8 | `theorem` | [withDensity_kernel_sum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/withdensity-kernel-sum--c1f03a6ff4ce8ce7e633e2e4.md) | 102 | `result-track:c1f03a6ff4ce8ce7e633e2e4fedff6ff45646201c4c3b6f1fcc97ab51e9b09d7` |
| 9 | `theorem` | [withDensity_tsum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/withdensity-tsum--085a46ce6077d082e460d391.md) | 114 | `result-track:085a46ce6077d082e460d391197c10d0fa70ab4d2e768ff01b21de066a033230` |
| 10 | `theorem` | [isFiniteKernel_withDensity_of_bounded](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/isfinitekernel-withdensity-of-bounded--3de461b7672ee9a867a1ded6.md) | 139 | `result-track:3de461b7672ee9a867a1ded6985e098c633894149d2f82987e4381f03f7c6f9f` |
| 11 | `theorem` | [isSFiniteKernel_withDensity_of_isFiniteKernel](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/issfinitekernel-withdensity-of-isfinitekernel--977c6929d3fa6cc4ce87d23d.md) | 156 | `result-track:977c6929d3fa6cc4ce87d23d78186113107b62809389f40d4be75f6629e34114` |
| 12 | `theorem` | [IsSFiniteKernel.withDensity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/issfinitekernel-withdensity--61c4be8a87df58ada72607cc.md) | 215 | `result-track:61c4be8a87df58ada72607cc27db6a51efa26df35985670023824017bf114cae` |
| 13 | `instance` | [(anonymous)](../../../../../../mathematics/Analysis/RealAnalysis/Integration/WithDensity/Variante4d50a27ffe1a3c1d70a40cbb01f61cd1db9c9e10c0cd64ca9acc7887f1e7934.lean/declarations/instance--216253c23d1ccdde9146b72b.md) | 227 | `declaration-track:216253c23d1ccdde9146b72b313b81751127e1c208a278b4ed77fafc0e2908b5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
