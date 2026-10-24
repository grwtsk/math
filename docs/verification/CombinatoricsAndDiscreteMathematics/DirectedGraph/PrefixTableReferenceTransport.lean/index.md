# Verification target: GRWTSK.Combinatorics.DirectedGraph.PrefixTableReferenceTransport

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37cef67b45c5fc6646c266983a853dc7fbe409ba",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Combinatorics/DirectedGraph/PrefixTableReferenceTransport.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37cef67b45c5fc6646c266983a853dc7fbe409ba`.

Source path: `GRWTSK/Combinatorics/DirectedGraph/PrefixTableReferenceTransport.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Combinatorics/DirectedGraph/PrefixTableReferenceTransport.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Combinatorics.DirectedGraph.PrefixTableSchedule`](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableSchedule.lean/index.md) — import line 6; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [actionSlot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/actionslot--20a7abd23f09eff7de04c77b.md) | 29 | `declaration-track:20a7abd23f09eff7de04c77bc21b9a81a72b014b683e4b8852df8fd7eb015338` |
| 2 | `def` | [trackedStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/trackedstep--d661bdc93812a2e4cdf2ea24.md) | 36 | `declaration-track:d661bdc93812a2e4cdf2ea241d63a5265374e1ddf4ea83423cf3a161b70f9e73` |
| 3 | `def` | [transportSlotAt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/transportslotat--f3c3ed3eb2c846b5ac631292.md) | 41 | `declaration-track:f3c3ed3eb2c846b5ac631292ef33fcc1c87bdd02f19498091621d9880c5a4ef7` |
| 4 | `theorem` | [tracked_state](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/tracked-state--de71de11656301813c2cd9f8.md) | 46 | `result-track:de71de11656301813c2cd9f8e7a030d3c480385e3f7eef2a24261986f17725d3` |
| 5 | `theorem` | [tracked_none](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/tracked-none--873a57361391f0b7ddff7a45.md) | 54 | `result-track:873a57361391f0b7ddff7a453e632343133e68536c134c5125201de2d86ad56a` |
| 6 | `theorem` | [transportSlotAt_nil](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/transportslotat-nil--145feb8c6de75e190e990ce0.md) | 61 | `result-track:145feb8c6de75e190e990ce0969705d052f8830711dafde0c12f466c31f4e56f` |
| 7 | `theorem` | [transportSlotAt_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/transportslotat-cons--f9b8f00ce37e5b74a8235de2.md) | 65 | `result-track:f9b8f00ce37e5b74a8235de2c5f79dc39199bee774c972d980e0f315b3ad20fd` |
| 8 | `theorem` | [compact_reference](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/compact-reference--964d5eb04f363a399ea36951.md) | 83 | `result-track:964d5eb04f363a399ea369510ba447eb81af1abb5e7250a53f5844aaa471474a` |
| 9 | `theorem` | [action_reference](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/action-reference--b0f0461f1b37e521a6b3cdca.md) | 116 | `result-track:b0f0461f1b37e521a6b3cdca0a8c03b151b386446b49bf449861c5a9219f9a1f` |
| 10 | `theorem` | [transport_reference](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/transport-reference--dcb463ab0992209b70c7e0ee.md) | 134 | `result-track:dcb463ab0992209b70c7e0ee9f9fb6c81ad67e19b1e6d30a94f9dfdac25646ef` |
| 11 | `def` | [transportReferences](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/transportreferences--6a7a68ac6395dc10c5fbd581.md) | 153 | `declaration-track:6a7a68ac6395dc10c5fbd58189bb7a15675d1ad6e9701ae5f7da1518f354a296` |
| 12 | `theorem` | [transportReferences_success](../../../../mathematics/CombinatoricsAndDiscreteMathematics/DirectedGraph/PrefixTableReferenceTransport.lean/declarations/transportreferences-success--a1ad4fa332b60468da6d7abd.md) | 159 | `result-track:a1ad4fa332b60468da6d7abd590b2e652295bba4b64c69ba46c05b00f9b65fe9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
