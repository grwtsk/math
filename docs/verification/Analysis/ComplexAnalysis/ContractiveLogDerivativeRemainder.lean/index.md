# Verification target: GRWTSK.Analysis.Complex.ContractiveLogDerivativeRemainder

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1024e8b04c7aacb4838ba7cbb5cd9e63c14c484d",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/Complex/ContractiveLogDerivativeRemainder.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveLogDerivativeRemainder.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveLogDerivativeRemainder.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1024e8b04c7aacb4838ba7cbb5cd9e63c14c484d`.

Source path: `GRWTSK/Analysis/Complex/ContractiveLogDerivativeRemainder.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/Complex/ContractiveLogDerivativeRemainder.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.Complex.ContractiveZeroSeparation`](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveZeroSeparation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [first_order_remainder_le](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveLogDerivativeRemainder.lean/declarations/first-order-remainder-le--c276db9c535079374616a314.md) | 36 | `result-track:c276db9c535079374616a314ae122e15c606cbd584bb786c7f90cbce5b101ed8` |
| 2 | `theorem` | [pole_subtracted_bound](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveLogDerivativeRemainder.lean/declarations/pole-subtracted-bound--f1a0333ac2c934a5bc88fe24.md) | 73 | `result-track:f1a0333ac2c934a5bc88fe24ef21cc217446b925138dfd198ec3e33c3763db72` |
| 3 | `theorem` | [pole_location_difference](../../../../mathematics/Analysis/ComplexAnalysis/ContractiveLogDerivativeRemainder.lean/declarations/pole-location-difference--c1eb8f3b4ff6043feef88e93.md) | 119 | `result-track:c1eb8f3b4ff6043feef88e93cb9e88b26cf68eb98df7375e09a5db99b932d68d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
