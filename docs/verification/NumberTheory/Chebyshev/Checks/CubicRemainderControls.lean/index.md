# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.CubicRemainderControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "66338ce4012097de214ab6a18473e05be7a8a0b9",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `66338ce4012097de214ab6a18473e05be7a8a0b9`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CubicRemainderHolomorphic`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CubicRemainderHolomorphic.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [empty_prefix_retains_budget](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean/declarations/empty-prefix-retains-budget--1853e1784aa7d6b3833ef2fe.md) | 19 | `result-track:1853e1784aa7d6b3833ef2feed3ada555364d2506446996808e2c675a51bf133` |
| 2 | `theorem` | [one_cell_tail_bound](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean/declarations/one-cell-tail-bound--905d5d7b92accc74622b2ac0.md) | 24 | `result-track:905d5d7b92accc74622b2ac0cb55f77ae7b1228363d384b9dc5517e563fbc2ff` |
| 3 | `theorem` | [remainder_analytic_at_one](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean/declarations/remainder-analytic-at-one--decbf4574354c920aa5f7674.md) | 29 | `result-track:decbf4574354c920aa5f7674c93e0c9a15804fc6a46d33afb165736578f64c38` |
| 4 | `theorem` | [remainder_bound_at_one](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean/declarations/remainder-bound-at-one--b4ef0df6e2be4c1786d2b7bb.md) | 32 | `result-track:b4ef0df6e2be4c1786d2b7bbedc4f7f53d1ebb1d087ac9d90df1a8dfff86e42f` |
| 5 | `theorem` | [zero_margin_totalizes](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean/declarations/zero-margin-totalizes--02df9e78c4e2b331a387dc6c.md) | 36 | `result-track:02df9e78c4e2b331a387dc6c0bd073c1fa0bd51d8e81a63dab22e33c87a65843` |
| 6 | `theorem` | [below_one_reverses_exponent_bound](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean/declarations/below-one-reverses-exponent-bound--64addcf81b3bcb772913e89f.md) | 39 | `result-track:64addcf81b3bcb772913e89f38895aa938addada2647ae6a43ae9ce0243c0fa9` |
| 7 | `theorem` | [zero_prefactor_does_not_identify_remainder](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean/declarations/zero-prefactor-does-not-identify-remainder--d0cecf4d8a213360371eafb3.md) | 43 | `result-track:d0cecf4d8a213360371eafb3e992e7c67c5cfbec5b2f6cb13f7d1a5ceebb74e2` |
| 8 | `theorem` | [same_bound_distinct_constants](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CubicRemainderControls.lean/declarations/same-bound-distinct-constants--b1b2b91f91277b8e2061bc4c.md) | 48 | `result-track:b1b2b91f91277b8e2061bc4c91fc4f241228dad5ccb522898aab52998dd45f61` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
