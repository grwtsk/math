# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PersistentAudit.Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "298d4fafa4d95bd942b58e34c15b2b581ef4dcef",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `298d4fafa4d95bd942b58e34c15b2b581ef4dcef`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Authority.AuditEvidence` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Mutation.Confluence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [PersistentAuditPayload](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/persistentauditpayload--bed278b2497133a32edc6b98.md) | 32 | `declaration-track:bed278b2497133a32edc6b9807ad05ec527580b30d2ab662261f87ce10f39ab3` |
| 2 | `structure` | [PersistentAuditEvent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/persistentauditevent--c34c1014ce61985a311319e9.md) | 56 | `declaration-track:c34c1014ce61985a311319e9652c36c7ab30631a53c1e7ee3bb07e5cb0712765` |
| 3 | `inductive` | [CommittedAuditReplay](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/committedauditreplay--e6147451fcced1261d37c533.md) | 76 | `declaration-track:e6147451fcced1261d37c533453b68bcb6f3dd6933fcf8b3fcfe4a99e444ad7e` |
| 4 | `theorem` | [head_snapshot_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/head-snapshot-exact--f23413ac25f2d53ef6223c72.md) | 98 | `result-track:f23413ac25f2d53ef6223c72d740b6c6c3ae7533d934dbf7d8cbd93351031a20` |
| 5 | `theorem` | [appended_predecessor_exact](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/appended-predecessor-exact--cc133c045827331b2d1f28d9.md) | 106 | `result-track:cc133c045827331b2d1f28d912ba34fdf63e752747731cd780cef714f5adae87` |
| 6 | `structure` | [SnapshotAuditResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/snapshotauditresult--91725ed899c27fbbbf349e7a.md) | 123 | `declaration-track:91725ed899c27fbbbf349e7a4f1ffdf0f608d4ee2ccffabaa5af50acec3f350f` |
| 7 | `structure` | [AuditResultRevalidation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/auditresultrevalidation--d4116e2254db7e342af6c19c.md) | 135 | `declaration-track:d4116e2254db7e342af6c19cb6f625c8036d7ef2abf37267a42dd8a1fae60579` |
| 8 | `inductive` | [UsableAuditResult](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/usableauditresult--f12b598b97d0ca9391d581ed.md) | 149 | `declaration-track:f12b598b97d0ca9391d581edcf0105cf14df90fbed06b9c323f8001d6fa56a2b` |
| 9 | `theorem` | [stale_result_requires_revalidation](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/stale-result-requires-revalidation--c1938b9fe274d3e4ac2a7510.md) | 165 | `result-track:c1938b9fe274d3e4ac2a7510920e58f352345f47e7e81d35483c38b1caaba6e9` |
| 10 | `structure` | [PersistentAuditView](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/persistentauditview--c774c0e1e15fd35c3884a1c0.md) | 178 | `declaration-track:c774c0e1e15fd35c3884a1c0aa5b9b1cd5855a1c69276f875223eaf0c331de10` |
| 11 | `def` | [empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/empty--62ffaa03139800bd85e5be56.md) | 189 | `declaration-track:62ffaa03139800bd85e5be56561b52ff36dbc0a998f11eefed2cfc87c3b69c82` |
| 12 | `def` | [join](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/join--8bb4cbecd7329c0c4c66ba38.md) | 198 | `declaration-track:8bb4cbecd7329c0c4c66ba3801575921f82af3d14ead15ef622b0b7ec7597b5a` |
| 13 | `theorem` | [ext](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/ext--791d1afdf738e7149179c5a2.md) | 212 | `result-track:791d1afdf738e7149179c5a2d6686dc666ee89330cbd9a4a8f942b220c1f87ec` |
| 14 | `theorem` | [join_assoc](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/join-assoc--78302dc4e75088cdbf683d05.md) | 228 | `result-track:78302dc4e75088cdbf683d0522e728e6a2432d52c7819db7c6c42baa90922013` |
| 15 | `theorem` | [join_comm](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/join-comm--b6b086da94ce6697c4c20fc4.md) | 234 | `result-track:b6b086da94ce6697c4c20fc46d479b1db689c38d29cfe86097d159a90e2dc17f` |
| 16 | `def` | [persistentAuditDelta](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/persistentauditdelta--b056031df42af029939996d4.md) | 242 | `declaration-track:b056031df42af029939996d4e1b94f637c4fb3eb6fa44c2fac9ce1c98debbecd` |
| 17 | `def` | [applyPersistentAuditEvent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/applypersistentauditevent--9d190ecc4467b2ac5957dbe2.md) | 267 | `declaration-track:9d190ecc4467b2ac5957dbe2702c83c4d807a3a1c636d06bf600fdcb3f79a529` |
| 18 | `def` | [persistentAuditCompatibleReduction](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/persistentauditcompatiblereduction--cb95d5f9b2d01b439060614f.md) | 278 | `declaration-track:cb95d5f9b2d01b439060614f274c2f5c562a6d96c9fb0fb8ec17c15538735cf7` |
| 19 | `theorem` | [compatible_audit_events_order_independent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PersistentAudit/Variantd4c50297115aa50d92451462379d409e38264c3c8aa96e187d9723dc6f9c9498.lean/declarations/compatible-audit-events-order-independent--fc9c9357ede7960a2d1288bb.md) | 294 | `result-track:fc9c9357ede7960a2d1288bbb89c73decb007fe3efe6ffe2bb68984a5c2ec116` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
