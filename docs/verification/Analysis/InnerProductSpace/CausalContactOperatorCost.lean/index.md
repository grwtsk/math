# Verification target: GRWTSK.Analysis.InnerProductSpace.CausalContactOperatorCost

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "970397fd684e83af649d2e2dd3efe6a2fcbf9d5c",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/InnerProductSpace/CausalContactOperatorCost.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/index.md) · [Full source](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `970397fd684e83af649d2e2dd3efe6a2fcbf9d5c`.

Source path: `GRWTSK/Analysis/InnerProductSpace/CausalContactOperatorCost.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/InnerProductSpace/CausalContactOperatorCost.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.InnerProductSpace.CausalFiniteOperatorSeparation`](../../../../mathematics/Analysis/InnerProductSpace/CausalFiniteOperatorSeparation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Normed.Operator.Basic` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Bochner.Set` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Lebesgue.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [inverse_half_square](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/declarations/inverse-half-square--2e1db6738597f5f7ccd29427.md) | 44 | `result-track:2e1db6738597f5f7ccd2942771e527c6662c826382269b967c2ca21fedb18be6` |
| 2 | `theorem` | [response_after_contact_bounds](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/declarations/response-after-contact-bounds--1ea10eee6eed3c82c6dcce9f.md) | 53 | `result-track:1ea10eee6eed3c82c6dcce9f38560d3a71231fd485fcb4df574f7a2daa197700` |
| 3 | `theorem` | [gram_diagonal_eq_post_contact](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/declarations/gram-diagonal-eq-post-contact--1168a80e060e05fbbd80f258.md) | 77 | `result-track:1168a80e060e05fbbd80f258b0208f885ce3ef5abbc98c16cf5a7e8ddb2fe60d` |
| 4 | `theorem` | [gram_diagonal_cubic_upper](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/declarations/gram-diagonal-cubic-upper--e1303433e388dbd6f1c84405.md) | 98 | `result-track:e1303433e388dbd6f1c8440547e507c52141cceec52e1c1aa8a062f4a8e2b992` |
| 5 | `theorem` | [original_window_L2_norm_square](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/declarations/original-window-l2-norm-square--2ab1ca8010246908c0608276.md) | 130 | `result-track:2ab1ca8010246908c0608276e7cb7dde741ce70641d1d98e6c14b07e4d863bcb` |
| 6 | `theorem` | [prescribed_source_L2_norm_square](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/declarations/prescribed-source-l2-norm-square--a9c521c598fcc84b4d56d0a6.md) | 148 | `result-track:a9c521c598fcc84b4d56d0a604067db66b2e905bd3c386921eed438a1865e2d7` |
| 7 | `theorem` | [continuous_linear_realization_cubic_cost](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/declarations/continuous-linear-realization-cubic-cost--35bdbf1002aeb129a4d1c692.md) | 165 | `result-track:35bdbf1002aeb129a4d1c6920bd0744043b523e30183c88d1b8871f107f6c039` |
| 8 | `theorem` | [no_uniform_bounded_realization_for_scale_family](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/declarations/no-uniform-bounded-realization-for-scale-family--23e8ce9e2a65cda187b8b8b9.md) | 179 | `result-track:23e8ce9e2a65cda187b8b8b9a927f810ec8addc7bb97a3f62e3d32e1c964a240` |
| 9 | `theorem` | [log_eight_near_contact_scale_bounds](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/declarations/log-eight-near-contact-scale-bounds--ad185d841842216080ff6945.md) | 225 | `result-track:ad185d841842216080ff6945816cf33782f69d8d90be3d268335f96a1365d7de` |
| 10 | `theorem` | [prescribed_horizon_no_uniform_bounded_realization](../../../../mathematics/Analysis/InnerProductSpace/CausalContactOperatorCost.lean/declarations/prescribed-horizon-no-uniform-bounded-realization--0919a36c6be053eac1c87dd1.md) | 234 | `result-track:0919a36c6be053eac1c87dd1d9fa60a589757555bb4a486b31a19d271961c398` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
