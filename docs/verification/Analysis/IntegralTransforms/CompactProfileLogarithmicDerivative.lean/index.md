# Verification target: GRWTSK.Analysis.IntegralTransforms.CompactProfileLogarithmicDerivative

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0dc35fe0e238bb13f07d96b51b810f3ff4eebfc2",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/IntegralTransforms/CompactProfileLogarithmicDerivative.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicDerivative.lean/index.md) · [Full source](../../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicDerivative.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0dc35fe0e238bb13f07d96b51b810f3ff4eebfc2`.

Source path: `GRWTSK/Analysis/IntegralTransforms/CompactProfileLogarithmicDerivative.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/IntegralTransforms/CompactProfileLogarithmicDerivative.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Inequalities.CompactProfileDifferentialBounds`](../../../../mathematics/Analysis/Inequalities/CompactProfileDifferentialBounds.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.IntegralTransforms.LogarithmicProfileDerivative`](../../../../mathematics/Analysis/IntegralTransforms/LogarithmicProfileDerivative.lean/index.md) — import line 5; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [actual_logarithmic_profile_hasDerivAt](../../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicDerivative.lean/declarations/actual-logarithmic-profile-hasderivat--009201a68ffbcb714b75b4e3.md) | 28 | `result-track:009201a68ffbcb714b75b4e3b96e82aaa68615b9dbe48e936e43f49a47b4b4ae` |
| 2 | `theorem` | [actual_logarithmic_profile_derivative_abs_le](../../../../mathematics/Analysis/IntegralTransforms/CompactProfileLogarithmicDerivative.lean/declarations/actual-logarithmic-profile-derivative-abs-le--3920af326637bc5476ef97f9.md) | 41 | `result-track:3920af326637bc5476ef97f99c20a9d75b831dfb95a444d8964c503513d1a992` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
