# Verification target: GRWTSK.Topology.DirectedHilbertCarrier.Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a2073029b1d140af12f534ae90a2ae01c919a43e",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean/index.md) · [Full source](../../../../mathematics/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a2073029b1d140af12f534ae90a2ae01c919a43e`.

Source path: `GRWTSK/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `FormalResearch.RiemannHypothesis.Conversation.CountableDetails` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.Basic` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [FrameIndex](../../../../mathematics/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean/declarations/frameindex--7e37de58b5ffbe0a9a2b2e24.md) | 29 | `declaration-track:7e37de58b5ffbe0a9a2b2e241462bf7883b155b0a06db9322ef65ce772b7b5d1` |
| 2 | `def` | [carrier](../../../../mathematics/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean/declarations/carrier--56bfa84824bbf9d3096890d8.md) | 37 | `declaration-track:56bfa84824bbf9d3096890d8ea2b9044d5bfd37707ea6d177696c8bba93a89cd` |
| 3 | `theorem` | [every_frame_vector_belongs](../../../../mathematics/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean/declarations/every-frame-vector-belongs--de0efd6965697eb4e71edad1.md) | 40 | `result-track:de0efd6965697eb4e71edad1592d7fee995722b60dc40d73c3a0289cc2bc1ae0` |
| 4 | `theorem` | [completed_carrier_is_closed](../../../../mathematics/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean/declarations/completed-carrier-is-closed--e2209e4bdb8a20cbe98105a3.md) | 44 | `result-track:e2209e4bdb8a20cbe98105a385f9d1f0225a26f4a45ea30d08deff136c4ed37a` |
| 5 | `theorem` | [completed_carrier_is_separable](../../../../mathematics/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean/declarations/completed-carrier-is-separable--970fb2d62e846e92beca1591.md) | 48 | `result-track:970fb2d62e846e92beca15914a937bc000fec842461d3ffdab8dd3a92dc2bd49` |
| 6 | `theorem` | [completed_carrier_is_complete](../../../../mathematics/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean/declarations/completed-carrier-is-complete--52b4de8109b3bcda5aad6567.md) | 54 | `result-track:52b4de8109b3bcda5aad65676fe292ebc5deab4a1ee5cde433f548fda1ac8372` |
| 7 | `theorem` | [continuous_readout_of_strong_approximants](../../../../mathematics/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean/declarations/continuous-readout-of-strong-approximants--8027e10c6d7b364b2f70adda.md) | 58 | `result-track:8027e10c6d7b364b2f70adda81c3ccdbccb75f7ba4165ea517828d4c9dd00b90` |
| 8 | `theorem` | [common_finite_readout_bound_survives_completion](../../../../mathematics/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean/declarations/common-finite-readout-bound-survives-completion--c8d7cc7709fbfaeca7c8d8d0.md) | 64 | `result-track:c8d7cc7709fbfaeca7c8d8d054e9a1d4666c4d4e139247d16b59bcb59bb04c75` |
| 9 | `theorem` | [completed_carrier_does_not_bound_a_readout](../../../../mathematics/Topology/DirectedHilbertCarrier/Variant3efa4574a88d9a17167fdb04921c4479b53035ca8919fc60d3e0bf7211c2e86b.lean/declarations/completed-carrier-does-not-bound-a-readout--f5bd710e4786768742355b9e.md) | 70 | `result-track:f5bd710e4786768742355b9efa35cfd600e0354d5582155acac57d1e1adf03d9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
