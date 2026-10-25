# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WritePlan.Variantb2ffee266a2ada3a9d19ea8f02a9c49cc93d3a15456b6982cc7d75ba19bbb8e8

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**22 observed declarations and anonymous commands**, 9 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WritePlan/Variantb2ffee266a2ada3a9d19ea8f02a9c49cc93d3a15456b6982cc7d75ba19bbb8e8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14ba657a531a94889a27686b13e57194b3e532ed`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WritePlan/Variantb2ffee266a2ada3a9d19ea8f02a9c49cc93d3a15456b6982cc7d75ba19bbb8e8.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [WriteTarget](declarations/writetarget--bbb7536b9fc65980124fd766.md) | 20 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [CompatibleTargets](declarations/compatibletargets--f014d9185a4dedcded018980.md) | 25 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [PairwiseCompatible](declarations/pairwisecompatible--9064f3880f7f36cb2accf6c7.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [WriteConflict](declarations/writeconflict--f45617b7a967027fc042eccc.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [RawWritePlan](declarations/rawwriteplan--351986a3c50d58689c844fbd.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [WritePlan](declarations/writeplan--44b37341935c2fdc8e5e3a53.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [FileState](declarations/filestate--5a3e6eb640b078ad942d6bf4.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [declaredTarget?](declarations/declaredtarget--3cedd48ab696df35d37fae60.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [apply](declarations/apply--1e8489f669a8c517fd2b04d2.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [safeApply](declarations/safeapply--0126d9a1fa147c68c48d054a.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [hasConflictWith](declarations/hasconflictwith--32383fcbec58bbc070733902.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [firstConflict](declarations/firstconflict--575a2953644ec46d7a55a1e8.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [compatibleTargets_symm](declarations/compatibletargets-symm--e7d4c64a1cf9b31d6883dc49.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [compatible_self](declarations/compatible-self--649fcdb07dd69b2131b9d730.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [hasConflictWith_eq_none_iff](declarations/hasconflictwith-eq-none-iff--28ec8f21f04efe049c462fa0.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [pairwise_cons_iff](declarations/pairwise-cons-iff--7c05aac51f9c4ab6cfec2cbe.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [firstConflict_eq_none_iff](declarations/firstconflict-eq-none-iff--b7ab5c92052e167f44129029.md) | 136 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [validate](declarations/validate--de44f0fac6920e2a65974723.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [no_conflicting_duplicates](declarations/no-conflicting-duplicates--23eeed492dceffbeece1fe3b.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [apply_deterministic](declarations/apply-deterministic--d154263dd961811a2e531bff.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [safe_apply_preserves_unmentioned_files](declarations/safe-apply-preserves-unmentioned-files--d00fb01a48472ebeba61ec18.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [safe_apply_writes_declared_payloads](declarations/safe-apply-writes-declared-payloads--bd9eb1dbe29c727912f42a26.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
