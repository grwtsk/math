# Verification target: GRWTSK.Analysis.Inequalities.FiniteShiftedDerivativeBounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "74d88a9d9b6872734b6d02b89253de0d8fdf8caa",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/index.md) · [Full source](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `74d88a9d9b6872734b6d02b89253de0d8fdf8caa`.

Source path: `GRWTSK/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives`](../../../../mathematics/Analysis/Convolution/CompactProfileHigherDerivatives.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.BigOperators.Group.Finset` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [weightMass](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/weightmass--0796416e214788db53b7f38e.md) | 24 | `declaration-track:0796416e214788db53b7f38e55dbcc899d4afbb11d06d0889eeb53ad5855635e` |
| 2 | `theorem` | [literal_weight_nonneg](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/literal-weight-nonneg--21397e55550147ec9dd61805.md) | 27 | `result-track:21397e55550147ec9dd618055be971b65adb3ef4be69ca7e940e1d0af22cd365` |
| 3 | `theorem` | [weighted_difference_abs_le](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/weighted-difference-abs-le--1cefc91b650d67fc9b9f48f2.md) | 32 | `result-track:1cefc91b650d67fc9b9f48f213f2d6a16a4ebacbc4c19a715ba10e0d522059c0` |
| 4 | `theorem` | [finite_shifted_price](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/finite-shifted-price--c316ee30ea4fe785baf3871b.md) | 42 | `result-track:c316ee30ea4fe785baf3871be4106eeb4e0aa47e596ced79c1b518c012812578` |
| 5 | `theorem` | [correlation_first_abs_le](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/correlation-first-abs-le--5abdb891d180c7ea58694a78.md) | 60 | `result-track:5abdb891d180c7ea58694a7843d43410d6ccee689c2a24da060bdebaef5407c7` |
| 6 | `theorem` | [correlation_second_abs_le](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/correlation-second-abs-le--180abc10b5ca31f433db584a.md) | 65 | `result-track:180abc10b5ca31f433db584a161a06924edf433953c4ca83601c2a3081195628` |
| 7 | `theorem` | [polarity_kernel_hasDerivAt](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/polarity-kernel-hasderivat--827f9177919dfa9beac3f8ce.md) | 70 | `result-track:827f9177919dfa9beac3f8ce27d6a742b17d7f3bb1fbd270d2c0f5ff46512ae9` |
| 8 | `theorem` | [polarity_kernel_deriv_eq](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/polarity-kernel-deriv-eq--578f6893b053727a8143bfd3.md) | 88 | `result-track:578f6893b053727a8143bfd3b2f09629736d58eabe0ac6ad9962ee7b589efe1e` |
| 9 | `theorem` | [polarity_kernel_first_hasDerivAt](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/polarity-kernel-first-hasderivat--b5d6c8df140cec7ee57f8dc4.md) | 95 | `result-track:b5d6c8df140cec7ee57f8dc47b9e2e2ccd1cc4c749f9d02caa9d31dca0437b3d` |
| 10 | `theorem` | [polarity_kernel_second_deriv_eq](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/polarity-kernel-second-deriv-eq--04178b33926128e260168927.md) | 113 | `result-track:04178b33926128e260168927f560be1d3d69aa954b654f240f07586771212f32` |
| 11 | `theorem` | [polarity_kernel_abs_price](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/polarity-kernel-abs-price--e7e6e85cb5b2e1068a9ee57b.md) | 120 | `result-track:e7e6e85cb5b2e1068a9ee57b65b0bcb89a66d626f377be1331ebdc1e25359c60` |
| 12 | `theorem` | [polarity_kernel_first_abs_price](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/polarity-kernel-first-abs-price--33e48cec308b4ec2b0b391cf.md) | 126 | `result-track:33e48cec308b4ec2b0b391cf2131b2c6a8fed080e6de83a60ca2bc8588db2297` |
| 13 | `theorem` | [polarity_kernel_second_abs_price](../../../../mathematics/Analysis/Inequalities/FiniteShiftedDerivativeBounds.lean/declarations/polarity-kernel-second-abs-price--5ff21d9115faf0391f898eb7.md) | 133 | `result-track:5ff21d9115faf0391f898eb7b9daab0c635a0afcd1a314d195c69d7a02cf5069` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
