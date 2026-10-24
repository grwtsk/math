# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.ZeroSmoothingKernel.Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54e8034b1d8941e7fac9f468a8bd85722cbaa477",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54e8034b1d8941e7fac9f468a8bd85722cbaa477`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.ZeroSideTargets` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Calculus.BumpFunction.Convolution` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [smoothingBump](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/smoothingbump--5503e0ad12175ae2e0250415.md) | 23 | `declaration-track:5503e0ad12175ae2e0250415120388d897fb813664af7ebe8a90e93c5c56f260` |
| 2 | `def` | [mollifier](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/mollifier--560faeea711dde3ca5257003.md) | 30 | `declaration-track:560faeea711dde3ca52570039557aead1ad659dc6d1c74413bcd478d4074fde0` |
| 3 | `theorem` | [mollifier_nonneg](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/mollifier-nonneg--c9e3e0742554a425b7c600e9.md) | 34 | `result-track:c9e3e0742554a425b7c600e96d849fe5b4f2adb04274b42579edabbd17afe3ef` |
| 4 | `theorem` | [mollifier_even](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/mollifier-even--2f2763cd29fb5ee7d951aad0.md) | 39 | `result-track:2f2763cd29fb5ee7d951aad0732a7ac214209c39dba5e63ac225d7401d421b6f` |
| 5 | `theorem` | [mollifier_contDiff](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/mollifier-contdiff--c7be6000dd0b9b59c615b11a.md) | 43 | `result-track:c7be6000dd0b9b59c615b11ac3de1707b2aee9c118701625fb1a5b416a932648` |
| 6 | `theorem` | [mollifier_integrable](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/mollifier-integrable--58d619404c284b0cbac08162.md) | 48 | `result-track:58d619404c284b0cbac081621990c3811aba2e5cdcda065d38335687e32985bb` |
| 7 | `theorem` | [mollifier_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/mollifier-integral--3af6047d97cfc4c6db464950.md) | 53 | `result-track:3af6047d97cfc4c6db4649509ecbcac0e463e2f86fc58cc55ac833597c3b3ced` |
| 8 | `theorem` | [mollifier_support](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/mollifier-support--db0ba7ba34f48cde7c74221e.md) | 58 | `result-track:db0ba7ba34f48cde7c74221e846bc53a42afb0c10e9e90c7ccac5667fcf0182d` |
| 9 | `theorem` | [mollifier_tsupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/mollifier-tsupport--08e49f16236dcc475b95b30f.md) | 64 | `result-track:08e49f16236dcc475b95b30f22a7bac07284251e0f7ac026fcd7b9d756796087` |
| 10 | `theorem` | [mollifier_hasCompactSupport](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/mollifier-hascompactsupport--a72da855632c033de82210bb.md) | 70 | `result-track:a72da855632c033de82210bbf7e823506e29084109512f1cee3ebadc1da84711` |
| 11 | `def` | [smoothedTest](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/smoothedtest--e77239c01ff0e0275ba81cf8.md) | 75 | `declaration-track:e77239c01ff0e0275ba81cf87adce49aaa977b693a206aa34db388bfef396b22` |
| 12 | `theorem` | [smoothedTest_eq_integral](../../../../../../mathematics/Analysis/RealAnalysis/Integration/ZeroSmoothingKernel/Variantb397c3041d3a33260073e871f0c5d2e3bc80e7bb2d2e46838eaf2611f7a66e4a.lean/declarations/smoothedtest-eq-integral--e0c3a20ef48da47065917bd7.md) | 79 | `result-track:e0c3a20ef48da47065917bd7548f096e6bf28f21adc3e48ff8972c9759d17ffa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
