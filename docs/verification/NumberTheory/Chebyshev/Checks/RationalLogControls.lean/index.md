# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.RationalLogControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "423192f44d69211177182eba82ff4586421b79ea",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/RationalLogControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `423192f44d69211177182eba82ff4586421b79ea`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/RationalLogControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/RationalLogControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CanonicalTentLogEvaluation`](../../../../../mathematics/NumberTheory/Chebyshev/CanonicalTentLogEvaluation.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ratio_two](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/ratio-two--8f582e23a6cad8cc32382e4d.md) | 15 | `result-track:8f582e23a6cad8cc32382e4dd98bd88e722156a1ca46f3ba520ec6a85287ce69` |
| 2 | `theorem` | [one_has_zero_width](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/one-has-zero-width--f37ebfe5b70d2d0bd6508eee.md) | 17 | `result-track:f37ebfe5b70d2d0bd6508eeec68ac8ca281f465e4f3256e5e3cbc7ea806325c1` |
| 3 | `theorem` | [empty_prefix_has_remainder](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/empty-prefix-has-remainder--2558ed21f3f4d5a00201bb23.md) | 20 | `result-track:2558ed21f3f4d5a00201bb23e57914cd145229898ed11dbbfeffe6715efc05fd` |
| 4 | `theorem` | [first_term_and_full_width](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/first-term-and-full-width--da98d25e4e49f605849aebb6.md) | 23 | `result-track:da98d25e4e49f605849aebb6b82b20a4745a3aef9d8d0d024081a292c8998f81` |
| 5 | `theorem` | [midpoint_not_lower_endpoint](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/midpoint-not-lower-endpoint--45102427efd60ccdcdfe96fe.md) | 27 | `result-track:45102427efd60ccdcdfe96fe83ccf9474c7a5e000415341bbb6054d4a1be9769` |
| 6 | `theorem` | [half_width_at_lower_is_unsound](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/half-width-at-lower-is-unsound--81d2369587ba46e882bd57b1.md) | 34 | `result-track:81d2369587ba46e882bd57b1bfdd75255a7c137e6573c20c8c0edb130e162010` |
| 7 | `theorem` | [exponent_scales_log_two_error](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/exponent-scales-log-two-error--4554717219707657c5d8d787.md) | 40 | `result-track:4554717219707657c5d8d7875e16db5aba9b52a6066708499b7e45970895979c` |
| 8 | `theorem` | [wrong_dyadic_source_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/wrong-dyadic-source-rejected--eb60d25b64b76897bba3b6fe.md) | 44 | `result-track:eb60d25b64b76897bba3b6fe87a3e63704e2014d4a7f407760e0fb5ae89c8999` |
| 9 | `theorem` | [invalid_mantissa_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/invalid-mantissa-rejected--d762150bc17af0faa3151c7e.md) | 46 | `result-track:d762150bc17af0faa3151c7e0a4c43bf7c7e343491812289e5211494347dab5c` |
| 10 | `theorem` | [unreduced_ratio_can_exceed_third](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/unreduced-ratio-can-exceed-third--dd8516aeae1d0c2523c00c0f.md) | 48 | `result-track:dd8516aeae1d0c2523c00c0f1aae38b030fb1b2a3fecf73596767d908d4d6572` |
| 11 | `theorem` | [log_accuracy_does_not_discharge_exp_degree](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/log-accuracy-does-not-discharge-exp-degree--0c476156b773aea0b46d5310.md) | 51 | `result-track:0c476156b773aea0b46d5310c23aba7dadc6a8f6569b42fa9883f0341bb1a46a` |
| 12 | `theorem` | [coarse_log_displacement_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/RationalLogControls.lean/declarations/coarse-log-displacement-rejected--46624ea105a43dd5ddff2561.md) | 54 | `result-track:46624ea105a43dd5ddff25617420002332c390b79d33b13c81e72cc0f2c71886` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
