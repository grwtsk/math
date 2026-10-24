# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.ThirdEndpointControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b1aed92dd3e976c58d3f85ffe25f96a084f5b6da",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b1aed92dd3e976c58d3f85ffe25f96a084f5b6da`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirdEndpoint`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirdEndpoint.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [nonunit_mantissa](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/declarations/nonunit-mantissa--59ffac6601a5b72c7db6f2cf.md) | 19 | `result-track:59ffac6601a5b72c7db6f2cf1861224bd4b50db3541f25bbf4f7ee2a19b158a7` |
| 2 | `theorem` | [positive_mantissa_width](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/declarations/positive-mantissa-width--4fc9e915af4f7f230857cc82.md) | 23 | `result-track:4fc9e915af4f7f230857cc825531677f23e304e7ba8978b76718abce303a7421` |
| 3 | `theorem` | [mantissa_uncertainty_not_discarded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/declarations/mantissa-uncertainty-not-discarded--7115d7d6e40a7add62ccd651.md) | 29 | `result-track:7115d7d6e40a7add62ccd651a98aa3129b2b79d8bed28ffdd6cbd959a02cec57` |
| 4 | `theorem` | [argument_keeps_both_negative_components](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/declarations/argument-keeps-both-negative-components--88c30c3cab4518bce254664d.md) | 34 | `result-track:88c30c3cab4518bce254664d5ad56f09c41fc456221a13cbad0cbdee5ea94a93` |
| 5 | `theorem` | [wrong_initial_imaginary_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/declarations/wrong-initial-imaginary-rejected--74daa40619e6ee95afff4cd8.md) | 38 | `result-track:74daa40619e6ee95afff4cd800b069d6d9bee3c29c5c7e26a252493a402c6bc7` |
| 6 | `theorem` | [intermediate_error_mutation_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/declarations/intermediate-error-mutation-rejected--50ae2613d820b1c06f7345db.md) | 43 | `result-track:50ae2613d820b1c06f7345dbd018c4a23e00ed3bff712dc2726b926262720b51` |
| 7 | `theorem` | [third_error_retained](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/declarations/third-error-retained--8f4d20a34653abbb3db5a1c1.md) | 48 | `result-track:8f4d20a34653abbb3db5a1c1be2229f141295fea0b6f2116eda89126cabc7f72` |
| 8 | `theorem` | [base_two_cannot_replace_base_three](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/declarations/base-two-cannot-replace-base-three--58dd055b94b2ebc4ca51d42a.md) | 52 | `result-track:58dd055b94b2ebc4ca51d42ad130aca388bb2b77559bc60ce4e9a88e6d0662b9` |
| 9 | `theorem` | [zero_output_error_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/declarations/zero-output-error-rejected--11bca9b42361b9faeb56ba54.md) | 58 | `result-track:11bca9b42361b9faeb56ba54e930af30ee95855962cf39ee2228f5b60e2fd04e` |
| 10 | `theorem` | [exactly_three_prefix_positions](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/declarations/exactly-three-prefix-positions--955130492d5196b89f97c8b6.md) | 72 | `result-track:955130492d5196b89f97c8b661ba981ca7cf16b01850eb9372e01268f6b58014` |
| 11 | `theorem` | [fourth_endpoint_remains](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdEndpointControls.lean/declarations/fourth-endpoint-remains--389b4a112db3c925330860a0.md) | 76 | `result-track:389b4a112db3c925330860a04c68d6f890ac629a764978c7873e7edd30aeaf32` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
