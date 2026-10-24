# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilCoreControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "8eb9cfe936450fd4276dcd2ddc38d5d7b8357429",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/index.md) · [Full source](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `8eb9cfe936450fd4276dcd2ddc38d5d7b8357429`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.Checks.Positive.WeilCore`](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCore.lean/index.md) — import line 3; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [rejection_guard_is_live](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/rejection-guard-is-live--7d774f0d8eafa695780cd266.md) | 33 | `result-track:7d774f0d8eafa695780cd26637dbeeaa3ae843cf9ad3ec6c9221b0235b3e1ef1` |
| 2 | `theorem` | [endpoint_requires_criterion](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/endpoint-requires-criterion--2f41add0f2fca2a0fab2289a.md) | 40 | `result-track:2f41add0f2fca2a0fab2289abe689274f3b97d4c25b9bf0a808b9861795271bf` |
| 3 | `theorem` | [criterion_requires_positive_diagonal](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/criterion-requires-positive-diagonal--4206a7f02e404749d476c5ef.md) | 53 | `result-track:4206a7f02e404749d476c5ef0ed67f6b02c8998712b5069c14429eadf7faecc3` |
| 4 | `theorem` | [forward_requires_reverse_for_iff](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/forward-requires-reverse-for-iff--b142cbe93da1b85c6d3201e9.md) | 66 | `result-track:b142cbe93da1b85c6d3201e9c23dee0059a97b7d1d040ee8d5f47e1209075688` |
| 5 | `theorem` | [criterion_requires_exact_form](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/criterion-requires-exact-form--14742add146572662ccda120.md) | 82 | `result-track:14742add146572662ccda1204eaf1861f010a7813ae3e4184115c8fa4c305491` |
| 6 | `theorem` | [replacement_source_requires_binding](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/replacement-source-requires-binding--7c044873718463c3bcbe468c.md) | 98 | `result-track:7c044873718463c3bcbe468c91fd04fa0013a390cafe1b4034e6c8f1b9003156` |
| 7 | `theorem` | [sampled_convergence_requires_coverage](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/sampled-convergence-requires-coverage--ae223a63dd18fd960273170c.md) | 118 | `result-track:ae223a63dd18fd960273170c67b80aac5a5c544230be8caeaa2086a365ce0000` |
| 8 | `theorem` | [polarized_record_requires_explicit_bridge](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/polarized-record-requires-explicit-bridge--1bea0f26b08c8ac2c78ea5b3.md) | 146 | `result-track:1bea0f26b08c8ac2c78ea5b34506f1f43487c67ed66e59bdeaa516b83bad7dd4` |
| 9 | `theorem` | [error_record_requires_decay](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/error-record-requires-decay--dbb3235e4ee7c2c507567df7.md) | 158 | `result-track:dbb3235e4ee7c2c507567df711af379ad96c9aeded2e6e7c1ffd54764de595d3` |
| 10 | `theorem` | [negative_witness_requires_reverse](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/negative-witness-requires-reverse--2024f2001596a3a759f5a7ad.md) | 190 | `result-track:2024f2001596a3a759f5a7ad69cef758f00106ccca780640ddad4443a671917a` |
| 11 | `theorem` | [normalization_sign_is_not_erasable](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/normalization-sign-is-not-erasable--f9b130ee9a4eadf8f7c6fc9c.md) | 204 | `result-track:f9b130ee9a4eadf8f7c6fc9c4f4106dafb6a1d7be3bfa7a1f1e21b390fed5545` |
| 12 | `theorem` | [replay_label_is_not_a_criterion](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/replay-label-is-not-a-criterion--45d4096f0f905da4d8e4bf94.md) | 218 | `result-track:45d4096f0f905da4d8e4bf94d1bc12646187ff064d9cb0258f453a4d63a2f78e` |
| 13 | `theorem` | [limit_existence_requires_nonempty](../../../../../../../mathematics/NumberTheory/Zeta/Riemann/Checks/Positive/WeilCoreControls.lean/declarations/limit-existence-requires-nonempty--7364150215f7dd1989f5166c.md) | 233 | `result-track:7364150215f7dd1989f5166c724da9d83b3ac5fd7a2d55013cf69e77ba407a5f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
