# Verification target: GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicRegularity

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3df198a1cf7b07f0df23f89fd32ebf643f8bea3",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean/index.md) · [Full source](../../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3df198a1cf7b07f0df23f89fd32ebf643f8bea3`.

Source path: `GRWTSK/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Convolution.CompactProfileHigherDerivatives`](../../../../mathematics/Analysis/Convolution/CompactProfileHigherDerivatives.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileRegularity`](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileRegularity.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [correlation_derivatives_zero_left](../../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean/declarations/correlation-derivatives-zero-left--eb5e1105a6bd8f9da470f586.md) | 28 | `result-track:eb5e1105a6bd8f9da470f586b26d0c0947e0fcdbf17c092e563b8322ccf105c4` |
| 2 | `theorem` | [actual_logarithmic_profile_zero_left](../../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean/declarations/actual-logarithmic-profile-zero-left--d15575bb6da607d49787b220.md) | 43 | `result-track:d15575bb6da607d49787b2208be4fbbfc596ad3349e47bf684eb14225566a64c` |
| 3 | `theorem` | [actual_logarithmic_profile_contDiff_two](../../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicRegularity.lean/declarations/actual-logarithmic-profile-contdiff-two--fb545036478a0dd592f057e3.md) | 56 | `result-track:fb545036478a0dd592f057e3bf45b7cee08a354445609a49656a782c43d1e7c8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
