# Verification target: GRWTSK.NumberTheory.Chebyshev.Checks.ThirdBlockControls

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "07cfc6ac6ab6098dc55cd22c3a64af30acf7ea98",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `07cfc6ac6ab6098dc55cd22c3a64af30acf7ea98`.

Source path: `GRWTSK/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThreeBlocksAndTerminal`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThreeBlocksAndTerminal.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [base_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean/declarations/base-boundaries--055c20825c65322cedd2bc55.md) | 14 | `result-track:055c20825c65322cedd2bc5528865621ea14157ffaee6d3f5dc0d42fc3a64053` |
| 2 | `theorem` | [prefix_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean/declarations/prefix-boundaries--c9588aaf0d9d05dd139df460.md) | 18 | `result-track:c9588aaf0d9d05dd139df460f4df859e6d0a4789b400a5b5f994ab6eae590595` |
| 3 | `theorem` | [third_block_endpoints](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean/declarations/third-block-endpoints--8d13b181fb31a76ddc15a5a9.md) | 22 | `result-track:8d13b181fb31a76ddc15a5a928cb1c195c42f34c949e56d3b9209865ebf029f5` |
| 4 | `theorem` | [adjacent_positions_excluded](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean/declarations/adjacent-positions-excluded--61f9a99857e3f35e51fdae8b.md) | 27 | `result-track:61f9a99857e3f35e51fdae8b8d94d06c3c8e749d708bfb24f9030de1f6f4f23f` |
| 5 | `theorem` | [logarithm_reduction_uniform](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean/declarations/logarithm-reduction-uniform--c1676fa2396a503bf83b2379.md) | 32 | `result-track:c1676fa2396a503bf83b237990b02c95af324fb0d62fa5b7163f15c3967cf2f7` |
| 6 | `theorem` | [terminal_not_third_block](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean/declarations/terminal-not-third-block--d6006602caf2d050e9c32738.md) | 36 | `result-track:d6006602caf2d050e9c32738f28509669a95d6e75a22018272cf47427dd1740f` |
| 7 | `theorem` | [first_unfilled_preserved](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean/declarations/first-unfilled-preserved--84b7e0168d42667b0417ae46.md) | 41 | `result-track:84b7e0168d42667b0417ae4691412545a4b83ae79415bb708b121729b2084fdb` |
| 8 | `theorem` | [terminal_is_copied_exactly](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean/declarations/terminal-is-copied-exactly--de6e94f45bfdc6f4bec5f369.md) | 46 | `result-track:de6e94f45bfdc6f4bec5f369b2337b8abccf7d51380808a9a03084ec980cf6c0` |
| 9 | `theorem` | [remaining_label_boundaries](../../../../../mathematics/NumberTheory/Chebyshev/Checks/ThirdBlockControls.lean/declarations/remaining-label-boundaries--f41fb6001cd3fbcf34a1a6c3.md) | 50 | `result-track:f41fb6001cd3fbcf34a1a6c3c9a4f0064f5d812dc8ebfa3f1c9d5645f63e0410` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
