# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.TerminalEndpointControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "38e85ee10e3d0c25cab6ef69a17c21152d3b8007",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `38e85ee10e3d0c25cab6ef69a17c21152d3b8007`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTerminalEndpoint`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTerminalEndpoint.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Tactic.Omega` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [terminal_base](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/terminal-base--6b8e528ecbe79e38ff6809e4.md) | 19 | `result-track:6b8e528ecbe79e38ff6809e4bffe37c55107a82456cc6e3be3d9af240677039f` |
| 2 | `theorem` | [terminal_not_a_prefix_base](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/terminal-not-a-prefix-base--6de4cd325841533ca77f080b.md) | 21 | `result-track:6de4cd325841533ca77f080b3ce36038a978774f1ad63578556d6f14306a1196` |
| 3 | `theorem` | [reduction_not_mantissa_one](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/reduction-not-mantissa-one--8ae06f7bc5d25e986a591370.md) | 25 | `result-track:8ae06f7bc5d25e986a5913700b593702f0c87c3026c7b5ca3bec6df7a7473571` |
| 4 | `theorem` | [log_exponent_is_twelve](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/log-exponent-is-twelve--6ece182d029bd04792609b20.md) | 30 | `result-track:6ece182d029bd04792609b20c991b2fd5626b9abb9e5ab4994210f91f7ef4431` |
| 5 | `theorem` | [wrong_term_count_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/wrong-term-count-rejected--9e47d34c0119b95eb67f11ee.md) | 33 | `result-track:9e47d34c0119b95eb67f11ee56bad6642cf1730e504ad9f46dd17ec9741ea5da` |
| 6 | `theorem` | [zero_denominator_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/zero-denominator-rejected--54f5d8ac1bcc63c184495edd.md) | 40 | `result-track:54f5d8ac1bcc63c184495edd14b39daecdb9ea45149f37fab05e30240539ca37` |
| 7 | `theorem` | [negative_displacement_rejected](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/negative-displacement-rejected--55b0b9eb686b900afda3c377.md) | 45 | `result-track:55b0b9eb686b900afda3c37769dc041e5b32340304f1a7d0e692565c4661e393` |
| 8 | `theorem` | [initialization_error_retained](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/initialization-error-retained--576083602ac09832e3909b43.md) | 50 | `result-track:576083602ac09832e3909b43da9eea5ecd5910da836d9daf055bab61463fc3a6` |
| 9 | `theorem` | [full_error_not_zero](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/full-error-not-zero--5efd6faf844dbbba050ce62f.md) | 52 | `result-track:5efd6faf844dbbba050ce62fbe96717fa6410840b30db6b53ddd7ab6757b5be7` |
| 10 | `theorem` | [error_can_decrease](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/error-can-decrease--bb4dcabd45c91f328b5287f5.md) | 55 | `result-track:bb4dcabd45c91f328b5287f52a74d1d6f623a8dcaf5e380ca68325ccda0fd1c5` |
| 11 | `theorem` | [terminal_attachment_preserves_prefix](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/terminal-attachment-preserves-prefix--720ebf44bc53e7c9f4825c4f.md) | 59 | `result-track:720ebf44bc53e7c9f4825c4f31e2552057113950a3e2a1b4888b07e6fb04ecb0` |
| 12 | `theorem` | [terminal_check_independent_of_prefix](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TerminalEndpointControls.lean/declarations/terminal-check-independent-of-prefix--8a607ceb0db6093c768030d4.md) | 63 | `result-track:8a607ceb0db6093c768030d4d6ce840ddc75266bb6833e6642ed9c6a6f402229` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
