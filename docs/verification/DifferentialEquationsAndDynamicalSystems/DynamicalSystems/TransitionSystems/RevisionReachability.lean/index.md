# Verification target: GRWTSK.DynamicalSystems.TransitionSystems.RevisionReachability

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4cf34b68d94e478a45c55536e4f4084826051a56",
  "lexical_observation_count": 25,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/TransitionSystems/RevisionReachability.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4cf34b68d94e478a45c55536e4f4084826051a56`.

Source path: `GRWTSK/DynamicalSystems/TransitionSystems/RevisionReachability.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/TransitionSystems/RevisionReachability.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Logic.Certificates.DependencyRevision`](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Certificates/DependencyRevision__SourceOccurrence5c20a6fa003b232dbee150f3.lean/index.md) — import line 4; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CorrectionRequest](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctionrequest--1bc38e58c21ef0a817b545f2.md) | 33 | `declaration-track:1bc38e58c21ef0a817b545f24bdf95c41203df6082ed1d1bcbe90d441baf866d` |
| 2 | `def` | [RevisionLedger.correctMany](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/revisionledger-correctmany--c353cf27b92ee87af153d077.md) | 50 | `declaration-track:c353cf27b92ee87af153d077b0cc7ddbafca6b3509f09ced69e98390a17d7465` |
| 3 | `theorem` | [correctMany_nil](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-nil--66310b8fbd3c9843ea5ba8e2.md) | 56 | `result-track:66310b8fbd3c9843ea5ba8e2a4d42132da24886ecc560fd0ce0a0f9da44efdf9` |
| 4 | `theorem` | [correctMany_cons](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-cons--78e067e432bd1af9b23f733d.md) | 60 | `result-track:78e067e432bd1af9b23f733dcfb35a7d0235b506275371baf449daaec4cb8cbb` |
| 5 | `theorem` | [correctMany_append](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-append--3799b29892fa41d525ec8a21.md) | 66 | `result-track:3799b29892fa41d525ec8a2158bb13bdebd2dc3317eac10cc90f83181edc1b58` |
| 6 | `theorem` | [correctMany_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-safe--10ec8b6581f3e6e9d7b8d78d.md) | 73 | `result-track:10ec8b6581f3e6e9d7b8d78dc74a74e331e64c6c4097b2e675a8c20fa7b07a18` |
| 7 | `theorem` | [correctMany_issued_preserved](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-issued-preserved--b5faaa79d061ec7622473f06.md) | 83 | `result-track:b5faaa79d061ec7622473f06852a94dfbe96f0863fae5033e57bdb5fe7c836cb` |
| 8 | `theorem` | [correctMany_archive_preserved](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-archive-preserved--32b14304be504d62172ec916.md) | 92 | `result-track:32b14304be504d62172ec916401040360e87b8b091a782a2c0f485f782b0c46f` |
| 9 | `theorem` | [correctMany_receipts_preserved](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-receipts-preserved--b7b47626c4599eac291d8843.md) | 102 | `result-track:b7b47626c4599eac291d8843e767d18ee2db4d3e9dfcd47052229549ee5211de` |
| 10 | `theorem` | [correctMany_verified_subset](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-verified-subset--fe467588affbe139f523af7e.md) | 110 | `result-track:fe467588affbe139f523af7e6c4d42eb257a86cd2e8aba9f5cf6386227cd19d2` |
| 11 | `theorem` | [correctMany_pending_superset](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-pending-superset--4496efe81159fadc624874ea.md) | 118 | `result-track:4496efe81159fadc624874ea199b27fb89d6e90f02cce19adb6ed57ab461527e` |
| 12 | `theorem` | [correctMany_issued_covered](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-issued-covered--37488e2af98c6b090da9bf9b.md) | 129 | `result-track:37488e2af98c6b090da9bf9be9aabb6fa5c328186bb87010e6c621b270cb5432` |
| 13 | `theorem` | [correctMany_initial_verified_accounted](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-initial-verified-accounted--60c08992bf7c11d08336eea7.md) | 138 | `result-track:60c08992bf7c11d08336eea7ddce3b3eea1930ee1c3bc9cf01331cdcffc02ea8` |
| 14 | `theorem` | [correctMany_correction_suffix](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-correction-suffix--91cdf0a7aada289c4e256877.md) | 148 | `result-track:91cdf0a7aada289c4e2568779b75c06a20f808b851dbbf8228bee16f42fdb15d` |
| 15 | `theorem` | [correctMany_correction_prefix](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-correction-prefix--0c419a86da0b7ce02f8f62e2.md) | 167 | `result-track:0c419a86da0b7ce02f8f62e207051df4e463960bc2112b8718c126e3778e225f` |
| 16 | `theorem` | [correctMany_correction_length](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-correction-length--5c9f9f0b7181e00cf58f5890.md) | 173 | `result-track:5c9f9f0b7181e00cf58f58902d643fcae727a74a2560f27184aca86761e4bb1c` |
| 17 | `theorem` | [correctMany_append_snapshot](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-append-snapshot--485dc787ae654f49cffa83bc.md) | 181 | `result-track:485dc787ae654f49cffa83bcd0c014b8951b7ea5ab3457505172fd5545409512` |
| 18 | `theorem` | [correctMany_last_snapshot](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctmany-last-snapshot--3957c1d18c7e1fba8a59cdab.md) | 187 | `result-track:3957c1d18c7e1fba8a59cdabf785d800080384207aebe47608966369732336d0` |
| 19 | `def` | [CorrectionReachable](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correctionreachable--80082abb0e37c0aa59a633ae.md) | 197 | `declaration-track:80082abb0e37c0aa59a633aecd1878f1229ff3c8a668d567e983d304e9820e40` |
| 20 | `theorem` | [correction_reachable_refl](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correction-reachable-refl--731310a4e599711349761274.md) | 201 | `result-track:731310a4e599711349761274b996fff3101e02efdfd7a87461114f102c39ff0a` |
| 21 | `theorem` | [correction_reachable_step](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correction-reachable-step--87b61b9d8a0e3774c9c2f23e.md) | 205 | `result-track:87b61b9d8a0e3774c9c2f23ebf9d649a0aad43dbcedec76ad61a72b59ff316df` |
| 22 | `theorem` | [correction_reachable_trans](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correction-reachable-trans--428bef250164452be3a19e1f.md) | 215 | `result-track:428bef250164452be3a19e1f55daeddc6cf66597a433d1e412b3f263b197f19a` |
| 23 | `theorem` | [correction_reachable_safe](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correction-reachable-safe--90175e44dcbb49c93365a0f7.md) | 225 | `result-track:90175e44dcbb49c93365a0f76095a807942a2d2935c79db29560db00226bcff1` |
| 24 | `theorem` | [correction_reachable_history](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correction-reachable-history--7f44e8ed20887667c0c81b35.md) | 234 | `result-track:7f44e8ed20887667c0c81b35c7a477439eca5f2f0b71462a7e322a021bbf2d5a` |
| 25 | `theorem` | [correction_reachable_status](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/RevisionReachability.lean/declarations/correction-reachable-status--5d339b1f983df5d7164aa50c.md) | 249 | `result-track:5d339b1f983df5d7164aa50c4146d39206948d5d8df264e170ffa5014c021db0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
