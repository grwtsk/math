# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.IntegerTraceControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "60191ff081d0b0b4a453111504889f419ad30003",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `60191ff081d0b0b4a453111504889f419ad30003`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonFirstEndpoint`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonFirstEndpoint.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [negative_floor](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean/declarations/negative-floor--b37d41e8c01b2aa4716006d8.md) | 15 | `result-track:b37d41e8c01b2aa4716006d8245dce2c84e48f1099d2048d2c35bb94044e4bfd` |
| 2 | `theorem` | [exact_ceiling](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean/declarations/exact-ceiling--c01aa2d4ddb9cfd342c08e36.md) | 18 | `result-track:c01aa2d4ddb9cfd342c08e3683d44cdbbfc342545ce29bc17af75a27e7977ace` |
| 3 | `theorem` | [floor_upper_is_strict](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean/declarations/floor-upper-is-strict--e42aad3eb6174a5de0bd1742.md) | 21 | `result-track:e42aad3eb6174a5de0bd1742a2d57e8b40e6ac63da0be1bce6870891e9ac27f9` |
| 4 | `theorem` | [ceiling_lower_is_strict](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean/declarations/ceiling-lower-is-strict--a111fb34f1345a84d693493b.md) | 23 | `result-track:a111fb34f1345a84d693493bb26b267775eabc20f5df94b325b47462bc541bae` |
| 5 | `theorem` | [first_error_not_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean/declarations/first-error-not-zero--04e1f26fb14f8348c5dd9334.md) | 26 | `result-track:04e1f26fb14f8348c5dd9334f55d09a96e3a635803e7bbf215aca9ec02fa3da2` |
| 6 | `theorem` | [nine_error_numerators](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean/declarations/nine-error-numerators--34f0ff226d46c78834adbc9c.md) | 28 | `result-track:34f0ff226d46c78834adbc9c5547483c42af3564f2c92355627ce87833eced02` |
| 7 | `theorem` | [understated_first_step_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean/declarations/understated-first-step-rejected--7a9f8a936fcade4053f248e8.md) | 36 | `result-track:7a9f8a936fcade4053f248e82668981e4fc134e9732c62cf058df11f53d6dfb7` |
| 8 | `theorem` | [changed_value_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/IntegerTraceControls.lean/declarations/changed-value-rejected--a41ce6f93e528ae63843967b.md) | 41 | `result-track:a41ce6f93e528ae63843967b18b926bcd6bbdc2f44362130c11910c8f872cf1b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
