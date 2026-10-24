# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.CountingTailControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "da31871acbe30ff22643ab3f33975f988dcf602e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/CountingTailControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CountingTailControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CountingTailControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `da31871acbe30ff22643ab3f33975f988dcf602e`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/CountingTailControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/CountingTailControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Chebyshev.CountedTentTail`](../../../../../mathematics/NumberTheory/Chebyshev/CountedTentTail.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [empty_observation_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CountingTailControls.lean/declarations/empty-observation-control--b008e3505c6403c31244717a.md) | 18 | `result-track:b008e3505c6403c31244717a36d31add6c0588b75bb9453e0a0b7689b60a85d3` |
| 2 | `theorem` | [closed_counting_endpoint_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CountingTailControls.lean/declarations/closed-counting-endpoint-control--5e6ad711cb9077cd05a3d4c8.md) | 24 | `result-track:5e6ad711cb9077cd05a3d4c88bcb0d41c1376633b2ce3d65ecd68f29d70afd73` |
| 3 | `theorem` | [equal_absolute_heights_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CountingTailControls.lean/declarations/equal-absolute-heights-control--654f5a71248c5fed8adf8cf2.md) | 29 | `result-track:654f5a71248c5fed8adf8cf2ad9ecd4a12fb0816a1c15df82ea0c8e64cce2433` |
| 4 | `theorem` | [multiplicity_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CountingTailControls.lean/declarations/multiplicity-control--a5cd4db2aa57bfb9ce89fea1.md) | 34 | `result-track:a5cd4db2aa57bfb9ce89fea1877ece18f95122aecc55980a354a70d4b152e186` |
| 5 | `theorem` | [terminal_boundary_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CountingTailControls.lean/declarations/terminal-boundary-control--d5f5328848ec80b77bd704a9.md) | 40 | `result-track:d5f5328848ec80b77bd704a91c518ff2dbfd4e4dd700821b629930672926a784` |
| 6 | `theorem` | [missing_low_record_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CountingTailControls.lean/declarations/missing-low-record-control--317b335f9b1c085824af4da7.md) | 51 | `result-track:317b335f9b1c085824af4da7ec7a6e39fdd6637c54ffbc003a8c155b431a9056` |
| 7 | `theorem` | [omitted_horizontal_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CountingTailControls.lean/declarations/omitted-horizontal-control--327d76d57ea42dd03fedb6f0.md) | 55 | `result-track:327d76d57ea42dd03fedb6f041530faca0332875bd1c8d0cb50dd448e18f99a6` |
| 8 | `theorem` | [zero_height_control](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CountingTailControls.lean/declarations/zero-height-control--328452a8af24de656e186bff.md) | 59 | `result-track:328452a8af24de656e186bffe16be0981aacf53f1a4611e4aed748c3058480b0` |
| 9 | `theorem` | [observed_prefix_is_not_global_count](../../../../../mathematics/NumberTheory/Chebyshev/Checks/CountingTailControls.lean/declarations/observed-prefix-is-not-global-count--ef83e8782c947db3e092a016.md) | 62 | `result-track:ef83e8782c947db3e092a016c949d77cae59d1d7208c900409dfb1f34164edbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
