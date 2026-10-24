# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirteenthBlock

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0617981ef0974a825ae32ee796fb491bb6b1c34f",
  "lexical_observation_count": 15,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0617981ef0974a825ae32ee796fb491bb6b1c34f`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.ConcreteNewtonThirteenthBlockSeeds`](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlockSeeds.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [output](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/output--2f2303f25dcd26c199572ee5.md) | 24 | `declaration-track:2f2303f25dcd26c199572ee531c9a35be51bf60ede7ccdd14bf975bb75866434` |
| 2 | `theorem` | [endpoint_compute](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/endpoint-compute--8f0f04ba294132876be49a9d.md) | 26 | `result-track:8f0f04ba294132876be49a9d36d16da5e70e3b887cd972a02b745131f1b66abd` |
| 3 | `theorem` | [endpoint_enclosure](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/endpoint-enclosure--d0db7ba4d8392d3b784822fd.md) | 31 | `result-track:d0db7ba4d8392d3b784822fdaab98844ebed0dc158455ddafdf67c69f67b3fb5` |
| 4 | `def` | [prefixIndex](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/prefixindex--e064d1286814e36b525954fb.md) | 38 | `declaration-track:e064d1286814e36b525954fba3e29ca3400c9202c2a71472332dc5a21f0329e5` |
| 5 | `theorem` | [base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/base-at-index--ee283676acaa6eea0d8dc9f2.md) | 41 | `result-track:ee283676acaa6eea0d8dc9f28cad15a0a0833ce04e37cd7ead62a45159002531` |
| 6 | `theorem` | [rational_base_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/rational-base-at-index--181ea17cb79e6e458959eeb2.md) | 43 | `result-track:181ea17cb79e6e458959eeb26051854fba0b8938411c4f9a7993491f7a143bb8` |
| 7 | `theorem` | [schedule_at_index](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/schedule-at-index--b726d834ef3dfe6f6e6617f2.md) | 47 | `result-track:b726d834ef3dfe6f6e6617f2d915b09a60015bbe493ce52160baa4f61a976942` |
| 8 | `theorem` | [mem_thirteenth_block](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/mem-thirteenth-block--93cdd340c7be8f4b0037723d.md) | 49 | `result-track:93cdd340c7be8f4b0037723d50f51216f4f1236456e6e13980e674de21377490` |
| 9 | `theorem` | [index_mem](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/index-mem--8e9d5d6360933364e5f42256.md) | 54 | `result-track:8e9d5d6360933364e5f4225631e38e9f7687d7faef52914a92be7716d8187f4b` |
| 10 | `theorem` | [index_cover](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/index-cover--c84fb0a274de5df2b5ea4784.md) | 60 | `result-track:c84fb0a274de5df2b5ea4784e67867a7491996a03b554094fb116bcb54c58613` |
| 11 | `theorem` | [thirteenth_block_of_records](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/thirteenth-block-of-records--7ec336dedef1df3451ffb69f.md) | 69 | `result-track:7ec336dedef1df3451ffb69f738754ad71405ef9eeeacdb88218f16261f7061d` |
| 12 | `def` | [fill](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/fill--bc53efadd4eeae7546139c91.md) | 78 | `declaration-track:bc53efadd4eeae7546139c91b1cb1056b78770f534f29ab1fe5a6671a8a07e06` |
| 13 | `theorem` | [fill_record](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/fill-record--7d6ea87ffb6ce7f8c5392615.md) | 83 | `result-track:7d6ea87ffb6ce7f8c5392615e38d5266cd3a7d083f184574a37364c4fcdcf87f` |
| 14 | `theorem` | [thirteenth_block_check](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/thirteenth-block-check--f734b751513061166aec4bf4.md) | 91 | `result-track:f734b751513061166aec4bf4d641f5dcfb4c115ff9849ad8e75ab4d7ec1fcf1f` |
| 15 | `theorem` | [fill_preserves_outside](../../../../../mathematics/NumberTheory/Zeta/Riemann/ConcreteNewtonThirteenthBlock.lean/declarations/fill-preserves-outside--48961c00d992930979902e44.md) | 96 | `result-track:48961c00d992930979902e440844eb2c908c2f26a96362ab566be71ebfadfbd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
