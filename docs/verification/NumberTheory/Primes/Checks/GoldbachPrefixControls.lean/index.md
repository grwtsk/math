# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachPrefixControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1ea31fbdddda3128c2a0c88c8a0878a2941309f1",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1ea31fbdddda3128c2a0c88c8a0878a2941309f1`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachPrefixArcTransfer`](../../../../../mathematics/NumberTheory/Primes/GoldbachPrefixArcTransfer.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.Checks.GoldbachProgressionModelControls`](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachProgressionModelControls.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [denominator_one_initial_prefix](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean/declarations/denominator-one-initial-prefix--66965a9ea2e1d83fe5e6faee.md) | 24 | `result-track:66965a9ea2e1d83fe5e6faeea1ebd7fe4afc66996107e455659d0407b27bfa4c` |
| 2 | `theorem` | [denominator_one_prefix_budget_at_least_one](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean/declarations/denominator-one-prefix-budget-at-least-one--f4f3619e545bc54774796b88.md) | 30 | `result-track:f4f3619e545bc54774796b8801f8cb3e6b159b9e81c379460ffdc81d7e3f7791` |
| 3 | `theorem` | [terminal_prefix_only_counterexample](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean/declarations/terminal-prefix-only-counterexample--3edd4f115d862ae886f12908.md) | 38 | `result-track:3edd4f115d862ae886f12908bd28e8b42d4f14a2d72514194c246bb01343c419` |
| 4 | `theorem` | [abel_zero_endpoint](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean/declarations/abel-zero-endpoint--40feef78f186cb8fb29ebae1.md) | 45 | `result-track:40feef78f186cb8fb29ebae13a9bf2532e10891e36169a9519912ef731330eed` |
| 5 | `theorem` | [nonreduced_budget_at_two](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean/declarations/nonreduced-budget-at-two--e98ab07284877721ce769899.md) | 50 | `result-track:e98ab07284877721ce769899c593fb886d8f1d885c23a0086c06c1afea75a089` |
| 6 | `theorem` | [nonreduced_zero_budget_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean/declarations/nonreduced-zero-budget-rejected--ee2f870f0fbb249467007b32.md) | 56 | `result-track:ee2f870f0fbb249467007b3281dc21c283696f8113a9d10d9fe24311b037c115` |
| 7 | `theorem` | [wrapped_discrepancy_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean/declarations/wrapped-discrepancy-control--70f33f416ad700ce742e51a0.md) | 61 | `result-track:70f33f416ad700ce742e51a02fbd4893ac24da50e416ee1bde063b248064854c` |
| 8 | `theorem` | [strict_margin_equality_rejected](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean/declarations/strict-margin-equality-rejected--15dc085f6266bd3d6fdac3bf.md) | 67 | `result-track:15dc085f6266bd3d6fdac3bfae5532f79817e88135c542aae0b423ecc35a8eb5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
