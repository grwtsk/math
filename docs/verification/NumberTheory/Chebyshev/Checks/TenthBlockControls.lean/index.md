# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.TenthBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6fcfc6b22253b8db5b30681132dca4059d02a98",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6fcfc6b22253b8db5b30681132dca4059d02a98`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonTenBlocksAndTerminal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonTenBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean/declarations/base-boundaries--c8853e8f704bdc020a7f9df5.md) | 13 | `result-track:c8853e8f704bdc020a7f9df54274c9b37605bb4bc9fb6aaedbb55adbd340ab1c` |
| 2 | `theorem` | [prefix_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean/declarations/prefix-boundaries--da9e928faff3eafe0c06adda.md) | 17 | `result-track:da9e928faff3eafe0c06addade9d9ab3fa982a20b8648f5634b3db011479b778` |
| 3 | `theorem` | [tenth_block_endpoints](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean/declarations/tenth-block-endpoints--00369dcee9e889aa0f035fab.md) | 21 | `result-track:00369dcee9e889aa0f035fab3c69fa46e683d5860e29a87b8352fe700f99fcf4` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean/declarations/adjacent-positions-excluded--6f7f9df1b66044cbb5d77a9f.md) | 26 | `result-track:6f7f9df1b66044cbb5d77a9f7c299a064b1e64a18422b07a95317f2466d11dcc` |
| 5 | `theorem` | [logarithm_reduction_uniform](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean/declarations/logarithm-reduction-uniform--ba2107adc827b749fc7670fd.md) | 31 | `result-track:ba2107adc827b749fc7670fd3b608c9500525cdec56273b35d9404bde947a5b5` |
| 6 | `theorem` | [terminal_not_tenth_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean/declarations/terminal-not-tenth-block--709e1f8d86ed50db4fec010d.md) | 35 | `result-track:709e1f8d86ed50db4fec010de34843adfcb345378d591317a0b97a1ca1b56e2e` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean/declarations/first-unfilled-preserved--4101bd3f8431a6f2e8c947da.md) | 40 | `result-track:4101bd3f8431a6f2e8c947daf8db4bfcd22d9c259b1677cbc34f71092411ba9c` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean/declarations/terminal-is-copied-exactly--2ccb22b748e5a1f4cb916e12.md) | 45 | `result-track:2ccb22b748e5a1f4cb916e12d622ce2660d27f8e5951a576026de635bc921e10` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/TenthBlockControls.lean/declarations/remaining-label-boundaries--27327d6225ebac40cc1ad193.md) | 49 | `result-track:27327d6225ebac40cc1ad1934addc3ca13a8a651344fc313eb0d4e9056f0842b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
