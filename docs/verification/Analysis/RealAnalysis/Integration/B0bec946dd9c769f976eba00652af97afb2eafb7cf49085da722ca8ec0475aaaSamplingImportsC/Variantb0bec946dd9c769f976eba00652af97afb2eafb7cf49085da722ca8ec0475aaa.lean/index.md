# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC.Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ea181222fdebf4e820f1ab95225a07f330c095e7",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ea181222fdebf4e820f1ab95225a07f330c095e7`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean/declarations/leftsamplesum--be9e8c6d392041230e6bb9b4.md) | 30 | `declaration-track:be9e8c6d392041230e6bb9b4dcae8b7b2647537874959dc1e6648dbc4a192a0b` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean/declarations/unit-sampling-error-identity--07911b7fb66da34506a9ab4f.md) | 34 | `result-track:07911b7fb66da34506a9ab4f01e89f844b196b3aceaba84bc383415ae9798d1f` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean/declarations/abs-unit-sampling-error-le--adf219bf6b98866f36a39771.md) | 73 | `result-track:adf219bf6b98866f36a39771352bd8ec42eec6aa9e1893b64d421d2923d7372e` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean/declarations/integral-eq-sum-unit-intervals--8ea3b7d8f40c229b293742d3.md) | 102 | `result-track:8ea3b7d8f40c229b293742d33f9de3d856ff44c66670a3b6a503d2a4231b894c` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean/declarations/abs-leftsamplesum-sub-integral-le--1cf91ddd156b1bed3261e8fd.md) | 132 | `result-track:1cf91ddd156b1bed3261e8fd682433e70b43908901a98b1a20f9580f599060fa` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean/declarations/finitesamplingcheckpoint--8859b5fe53165f09316892fa.md) | 167 | `declaration-track:8859b5fe53165f09316892fa2f3922cfa9ab7720b42533c064b241acc55f9999` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variantb0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaa.lean/declarations/finite-sampling-checkpoint--313177257875038cae7bf4e5.md) | 175 | `result-track:313177257875038cae7bf4e5bc9d7ce6bd32a00f31c7cbab29e8ccc9319a8a09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
