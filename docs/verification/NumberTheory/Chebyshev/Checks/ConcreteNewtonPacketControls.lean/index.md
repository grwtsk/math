# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.ConcreteNewtonPacketControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "dfc07a7a2b1d3563d9ee7c527c86132af2668216",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `dfc07a7a2b1d3563d9ee7c527c86132af2668216`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonPacket`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonPacket.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prefix_and_terminal](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean/declarations/prefix-and-terminal--49d3f9df3defc0421a0c2656.md) | 14 | `result-track:49d3f9df3defc0421a0c26568c515ad82e105ca38e001aeaf8a33b6049515ab8` |
| 2 | `theorem` | [endpoint_reduction_examples](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean/declarations/endpoint-reduction-examples--6dd74463ad603a8ab394330a.md) | 17 | `result-track:6dd74463ad603a8ab394330a2625aab25dade2bd336b06e76aa57a5b1ea558cd` |
| 3 | `theorem` | [cauchy_radius_is_not_newton_radius](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean/declarations/cauchy-radius-is-not-newton-radius--a2b3ffd8507ad61fb7e9daee.md) | 21 | `result-track:a2b3ffd8507ad61fb7e9daee6d6a1ea9b333216ac726974249f87fec49061fc4` |
| 4 | `theorem` | [claimed_value_is_not_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean/declarations/claimed-value-is-not-zero--60ed1e0c542895f7ac02e2c0.md) | 24 | `result-track:60ed1e0c542895f7ac02e2c0e11ed5abdbf899c511ec1c4bee0c3711faefd2bb` |
| 5 | `theorem` | [verified_errors_are_copied](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean/declarations/verified-errors-are-copied--7296bd2c2f2ed5e8fd14e88b.md) | 27 | `result-track:7296bd2c2f2ed5e8fd14e88b49129148c94c4f3cb76414d909b77f1f3e9fad78` |
| 6 | `theorem` | [accepted_output_unique](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean/declarations/accepted-output-unique--906b8da65c1fcd14718cee86.md) | 31 | `result-track:906b8da65c1fcd14718cee86e4d89a62845a2769a34a3752e1cc83417c102523` |
| 7 | `theorem` | [zero_inverse_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ConcreteNewtonPacketControls.lean/declarations/zero-inverse-rejected--49393d0e1e4fb4073a7c7c81.md) | 42 | `result-track:49393d0e1e4fb4073a7c7c816ff37fc8c5040054e0c897a80e2cab20c618d68b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
