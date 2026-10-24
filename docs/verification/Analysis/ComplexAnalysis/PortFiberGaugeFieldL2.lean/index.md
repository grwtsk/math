# Verification target: GRWTSK.Interfaces.PortFiberGaugeFieldL2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b44da4d5209238dff365d341831d7e9f8152d12",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Interfaces/PortFiberGaugeFieldL2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/index.md) · [Full source](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b44da4d5209238dff365d341831d7e9f8152d12`.

Source path: `GRWTSK/Interfaces/PortFiberGaugeFieldL2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Interfaces/PortFiberGaugeFieldL2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Interfaces.PortFiberAreaGaugeTransport`](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberAreaGaugeTransport.lean/index.md) — import line 1; pinned internal source present.
- [`GRWTSK.Analysis.Complex.HolomorphicGaugeFieldL2`](../../../../mathematics/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/index.md) — import line 2; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [schemaVersion](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/declarations/schemaversion--746fcaf43895a8d7211e7c14.md) | 34 | `declaration-track:746fcaf43895a8d7211e7c14740146325c308a01dae5d71506bc0822765b59cf` |
| 2 | `inductive` | [AddedIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/declarations/addedindex--a570fa1780d6ad7e7f51fb48.md) | 36 | `declaration-track:a570fa1780d6ad7e7f51fb4881b431719f1b62e5ee271bffff9185465464efeb` |
| 3 | `def` | [AddedClaim](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/declarations/addedclaim--fbb080b3904673b23fb554dc.md) | 47 | `declaration-track:fbb080b3904673b23fb554dc698074fb423e9eab77dc2fb48d364c8e551273f5` |
| 4 | `theorem` | [addedClaim_proof](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/declarations/addedclaim-proof--dffbe5a862b8e5116001cc34.md) | 92 | `result-track:dffbe5a862b8e5116001cc345a320565705b0aee7bfe331ed3c51b3df5132e5c` |
| 5 | `def` | [portfolio](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/declarations/portfolio--c17dc84624f8ddc2bca88233.md) | 110 | `declaration-track:c17dc84624f8ddc2bca88233054b8fd33e29b3d1608084956516bf3f4cdf1313` |
| 6 | `def` | [architecture](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/declarations/architecture--a40d0ecdb7a5df4df7428929.md) | 113 | `declaration-track:a40d0ecdb7a5df4df7428929aa682b18946dd48608fba28e45c2e2b21a727c25` |
| 7 | `abbrev` | [PreviousIndex](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/declarations/previousindex--c1ac7f633ae59be02ceb1d9c.md) | 117 | `declaration-track:c1ac7f633ae59be02ceb1d9c98f960ac265e5941afd94d692af53ed824f21751` |
| 8 | `theorem` | [original_branch_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/declarations/original-branch-unchanged--3db1008db4d62fcb8d1775d4.md) | 120 | `result-track:3db1008db4d62fcb8d1775d448907106c5bc89ce8de725db8319b115425cfee4` |
| 9 | `theorem` | [new_branch_proved](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/declarations/new-branch-proved--3d05ead0934ade5c59fbb0b7.md) | 126 | `result-track:3d05ead0934ade5c59fbb0b715dbf23dc23740ba7b81cb21aef3b646cbea3c1c` |
| 10 | `theorem` | [target_unchanged](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/declarations/target-unchanged--66d05a115794ed08d64ac415.md) | 131 | `result-track:66d05a115794ed08d64ac4159431ef4d8769968ce98d3d922eb4737122952068` |
| 11 | `theorem` | [retarget_preserves_new](../../../../mathematics/Analysis/ComplexAnalysis/PortFiberGaugeFieldL2.lean/declarations/retarget-preserves-new--bb52a15456c9ce17ea3d3c72.md) | 136 | `result-track:bb52a15456c9ce17ea3d3c72900d535d5c0eefcb29291cde628557c4e5d1ff62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
