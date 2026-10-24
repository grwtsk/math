# Verification target: GRWTSK.NumberTheory.Primes.Checks.GoldbachFrequencyEnvelopeControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9452a1961c8e0a552f3bee3d16675b4d73d47443",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9452a1961c8e0a552f3bee3d16675b4d73d47443`.

Source path: `GRWTSK/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Primes.GoldbachFrequencyArcBudget`](../../../../../mathematics/NumberTheory/Primes/GoldbachFrequencyArcBudget.lean/index.md) — import line 3; pinned internal source present.
- [`GRWTSK.NumberTheory.Primes.Checks.GoldbachPrefixControls`](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachPrefixControls.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [chord_loss_at_zero](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean/declarations/chord-loss-at-zero--312c28d0cfc24ec0dc8f0b1b.md) | 21 | `result-track:312c28d0cfc24ec0dc8f0b1bd132a3e24d280dc36794b4189040a5a536d4ef57` |
| 2 | `theorem` | [zero_model_requires_quadratic_error](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean/declarations/zero-model-requires-quadratic-error--1db1486ba2d578e30d136de4.md) | 26 | `result-track:1db1486ba2d578e30d136de4edbee47f637e4682dc814a31e1b224702210bec6` |
| 3 | `theorem` | [zero_model_quadratic_budget](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean/declarations/zero-model-quadratic-budget--5db2ca0958c215f68e5c8c3d.md) | 32 | `result-track:5db2ca0958c215f68e5c8c3d3b78589149b015553e54db3c2f308ace15ba706d` |
| 4 | `theorem` | [envelope_cap_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean/declarations/envelope-cap-control--c27d5bc33340004257faedbb.md) | 38 | `result-track:c27d5bc33340004257faedbbb0f7d4ae273fc9a9d174a0ef4b4533f49476a68f` |
| 5 | `theorem` | [wrapped_envelope_control](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean/declarations/wrapped-envelope-control--caaf0fe37dfc21a4c6c444eb.md) | 41 | `result-track:caaf0fe37dfc21a4c6c444eba88cee69cb08a253a8d5935ffc2da2dcdb98a03d` |
| 6 | `theorem` | [nonreduced_frequency_budget_at_two](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean/declarations/nonreduced-frequency-budget-at-two--f1280b59129a6106d479fffd.md) | 48 | `result-track:f1280b59129a6106d479fffdae514060abda822daa5f3ab9cc153f95afa9cc93` |
| 7 | `theorem` | [major_only_margin_does_not_pay_minor](../../../../../mathematics/NumberTheory/Primes/Checks/GoldbachFrequencyEnvelopeControls.lean/declarations/major-only-margin-does-not-pay-minor--fd9f05e0a5ce94a66fd2d6ff.md) | 56 | `result-track:fd9f05e0a5ce94a66fd2d6ff341442dc2bc5e7cced16b2486910eb70eca3215e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
