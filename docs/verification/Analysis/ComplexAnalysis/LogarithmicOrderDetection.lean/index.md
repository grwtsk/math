# Verification target: GRWTSK.Analysis.Complex.LogarithmicOrderDetection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2a3d63d126b4c121db5dcf86485f9105674b0203",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2a3d63d126b4c121db5dcf86485f9105674b0203`.

Source path: `GRWTSK/Analysis/Complex/LogarithmicOrderDetection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/LogarithmicOrderDetection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.LogarithmicPrincipalPart`](../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicPrincipalPart.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Tactic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [scaled_coefficient_unique](../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/declarations/scaled-coefficient-unique--847b6a53242e226d3d20236b.md) | 12 | `result-track:847b6a53242e226d3d20236bbdb17596476164cf913ad7662691a327a3489c47` |
| 2 | `theorem` | [order_eq_zero_of_continuous_extension](../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/declarations/order-eq-zero-of-continuous-extension--b6c87d25ae1a0d27a64b374b.md) | 22 | `result-track:b6c87d25ae1a0d27a64b374be8529073c6b3fd1230fc3575772e93cf8f4f19a6` |
| 3 | `theorem` | [no_continuous_extension_of_nonzero_order](../../../../mathematics/Analysis/ComplexAnalysis/LogarithmicOrderDetection.lean/declarations/no-continuous-extension-of-nonzero-order--dff4d88ad8784424844f1202.md) | 40 | `result-track:dff4d88ad8784424844f1202867032a8f729a289acbe4fbe171dd3da69bf3cf3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
