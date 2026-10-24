# Verification target: GRWTSK.Interfaces.PortFiberSectionPairing

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6ddac384f805f5f4461e4e5adcd5a360a728b0e7",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberSectionPairing.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6ddac384f805f5f4461e4e5adcd5a360a728b0e7`.

Source path: `GRWTSK/Interfaces/PortFiberSectionPairing.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberSectionPairing.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberSectionLinear`](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionLinear.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicLineSectionPairing`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicLineSectionPairing.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/declarations/schemaversion--e8f8f66c3fdb6489b2ac46b0.md) | 29 | `declaration-track:e8f8f66c3fdb6489b2ac46b0a285b315972ff879ff5a6c7622258ef7b3896178` |
| 2 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/declarations/addedindex--fa89526e4534393f1705f412.md) | 31 | `declaration-track:fa89526e4534393f1705f412fee19a687fd25a9b6538c369f781acb4ca186d3f` |
| 3 | `def` | [AddedClaim](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/declarations/addedclaim--f1c6062885417403b12c02b8.md) | 42 | `declaration-track:f1c6062885417403b12c02b8354b6bc840745834088e2959c12d3af8bb7a3623` |
| 4 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/declarations/addedclaim-proof--e055ca2cc7e477961b9fe094.md) | 95 | `result-track:e055ca2cc7e477961b9fe09499edfb4cea47529801fb88e58406584766394315` |
| 5 | `def` | [portfolio](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/declarations/portfolio--f7a2613c60b1f0e3d9024fd6.md) | 131 | `declaration-track:f7a2613c60b1f0e3d9024fd63b1ea22cc12e1ac2bec252e752a02ae85c457c80` |
| 6 | `def` | [architecture](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/declarations/architecture--859b6dd704fdddac95719cec.md) | 134 | `declaration-track:859b6dd704fdddac95719cec209c26ccf403d601f0e6792e2f531bc63bd9e387` |
| 7 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/declarations/previousindex--ef359edfd6d59dd6753395d8.md) | 138 | `declaration-track:ef359edfd6d59dd6753395d8898c8c10b5cc463d85959fd5a3053374170f58a0` |
| 8 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/declarations/original-branch-unchanged--0852133baa133e13a21b0af0.md) | 142 | `result-track:0852133baa133e13a21b0af09a999e7b8027b515f36a1519c0c7c46ba5c7258a` |
| 9 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/declarations/new-branch-proved--03e52620c2c558f97741958f.md) | 148 | `result-track:03e52620c2c558f97741958f438dedaaa26d92c2ff562fae337fa063145c42f3` |
| 10 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/declarations/target-unchanged--15a4c61607d2415f22c7d676.md) | 153 | `result-track:15a4c61607d2415f22c7d676f3782949e3d28c82ecd98eb7cd36f182b9ec237a` |
| 11 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberSectionPairing.lean/declarations/retarget-preserves-new--0fc29b77437bc3f370303b0e.md) | 158 | `result-track:0fc29b77437bc3f370303b0e46dcfb7afa699588c3fbafaad7c1f98b1092ae6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
