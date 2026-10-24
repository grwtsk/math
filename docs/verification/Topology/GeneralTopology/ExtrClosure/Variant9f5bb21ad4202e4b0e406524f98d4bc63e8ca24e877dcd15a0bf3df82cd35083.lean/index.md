# Verification target: GRWTSK.Topology.GeneralTopology.ExtrClosure.Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb0cc23863c9339823dbc531090eda353f5ceb94",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb0cc23863c9339823dbc531090eda353f5ceb94`.

Source path: `GRWTSK/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Order.OrderClosed` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.LocalExtr` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsMaxOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean/declarations/ismaxon-closure--b256735cc529f69e971af931.md) | 33 | `result-track:b256735cc529f69e971af9311c1e321e4f184c2246bf48f079c4e024b2f0a542` |
| 2 | `theorem` | [IsMinOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean/declarations/isminon-closure--92500bcd40f295c6cb505a0b.md) | 37 | `result-track:92500bcd40f295c6cb505a0b7973416de380ff975c41587f37e2c9f52c35b99c` |
| 3 | `theorem` | [IsExtrOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean/declarations/isextron-closure--1e49cd4651a18c537682ebbb.md) | 41 | `result-track:1e49cd4651a18c537682ebbbc915de0e14227dd2e3e6c7581ec2625f58d222e9` |
| 4 | `theorem` | [IsLocalMaxOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean/declarations/islocalmaxon-closure--bee6ca4df1c846d543b88537.md) | 45 | `result-track:bee6ca4df1c846d543b885375bdb5f9b181595ec4991fc4cb4b75dd3f019d8b8` |
| 5 | `theorem` | [IsLocalMinOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean/declarations/islocalminon-closure--093642b8cab1e0c9806c0cbb.md) | 56 | `result-track:093642b8cab1e0c9806c0cbb303477b92c58a40c4efad41878a7178de0c74f41` |
| 6 | `theorem` | [IsLocalExtrOn.closure](../../../../../mathematics/Topology/GeneralTopology/ExtrClosure/Variant9f5bb21ad4202e4b0e406524f98d4bc63e8ca24e877dcd15a0bf3df82cd35083.lean/declarations/islocalextron-closure--d082e2155158c453a2815cbd.md) | 60 | `result-track:d082e2155158c453a2815cbdbaac2f8c0bb6063b2202d29275c1d62d679f722d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
