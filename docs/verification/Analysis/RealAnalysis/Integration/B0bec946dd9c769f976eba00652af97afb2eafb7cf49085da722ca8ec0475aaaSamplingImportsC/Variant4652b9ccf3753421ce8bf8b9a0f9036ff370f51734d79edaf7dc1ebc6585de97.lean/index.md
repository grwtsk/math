# Verification target: GRWTSK.Analysis.RealAnalysis.Integration.B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC.Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "027f55f8a4b77c95b5f7c920905a68866bf8c82a",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean/index.md) · [Full source](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `027f55f8a4b77c95b5f7c920905a68866bf8c82a`.

Source path: `GRWTSK/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Calculus.ContDiff.Deriv` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.IntegrationByParts` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.IntervalIntegral.DistLEIntegral` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [leftSampleSum](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean/declarations/leftsamplesum--a91759e7b8bf4ef7a9194091.md) | 38 | `declaration-track:a91759e7b8bf4ef7a919409158d8cabe06e40e7d5d215fa33b5a2c233f23be1d` |
| 2 | `theorem` | [unit_sampling_error_identity](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean/declarations/unit-sampling-error-identity--4e122967cb73899234346b9f.md) | 42 | `result-track:4e122967cb73899234346b9fc48031a2df9ecd1a39579400e8241799e31cee7d` |
| 3 | `theorem` | [abs_unit_sampling_error_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean/declarations/abs-unit-sampling-error-le--385726e9fb7feaa403b733b8.md) | 81 | `result-track:385726e9fb7feaa403b733b88e5797cee8aafd583c6d9a6cbb3c428d89f00183` |
| 4 | `theorem` | [integral_eq_sum_unit_intervals](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean/declarations/integral-eq-sum-unit-intervals--d7cde54de386b5d2f271d7ff.md) | 110 | `result-track:d7cde54de386b5d2f271d7ff558573342a3b746fc1ef39265ee48f012e8d5213` |
| 5 | `theorem` | [abs_leftSampleSum_sub_integral_le](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean/declarations/abs-leftsamplesum-sub-integral-le--bf5601bca0bc28c4bec2733a.md) | 140 | `result-track:bf5601bca0bc28c4bec2733a068fface118bb89b0d79dd479a29cbfa82e8e006` |
| 6 | `def` | [FiniteSamplingCheckpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean/declarations/finitesamplingcheckpoint--bcdd2dd03bd4f8c2d3687733.md) | 175 | `declaration-track:bcdd2dd03bd4f8c2d368773392a42d44b99fa028c4c5f07a5ed09b546e10712f` |
| 7 | `theorem` | [finite_sampling_checkpoint](../../../../../../mathematics/Analysis/RealAnalysis/Integration/B0bec946dd9c769f976eba00652af97afb2eafb7cf49085da722ca8ec0475aaaSamplingImportsC/Variant4652b9ccf3753421ce8bf8b9a0f9036ff370f51734d79edaf7dc1ebc6585de97.lean/declarations/finite-sampling-checkpoint--6ea0aa52a5d89313bd43b092.md) | 183 | `result-track:6ea0aa52a5d89313bd43b092239ffd604d839be857fe17e3493f49c3b3f0ede5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
