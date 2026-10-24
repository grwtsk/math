# GRWTSK.DynamicalSystems.TransitionSystems.GuardedFiniteBudget

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**38 observed declarations and anonymous commands**, 26 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1d3f4f339e079b69883fca2ed763e26109b3bfd8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/GuardedFiniteBudget.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [ControllerPolicy](declarations/controllerpolicy--319724fd6a8cda32fee94233.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [EffectReceipt](declarations/effectreceipt--aec1862e5afe2d69a67936a7.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [ControllerState](declarations/controllerstate--fd549e280fd6aa65d25e595a.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [ControllerProposal](declarations/controllerproposal--2571bfcd3db51d7f9485974d.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [ReceiptValid](declarations/receiptvalid--065629483d4a8ea1bc58175e.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [Safe](declarations/safe--aa8532855587a3c46eef426a.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [initialState](declarations/initialstate--818e6a9c684838f67f22bd4b.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [initial_state_safe](declarations/initial-state-safe--cec43288958bcce448400206.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [Guard](declarations/guard--a95041d8c0b6b10364fe1d07.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [update](declarations/update--cd9b8eafb43ccb982e0fa97f.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [GuardedStep](declarations/guardedstep--5de0ee13f8a40acdda40fb91.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [update_source](declarations/update-source--d49606cae6c8a250457b8e0a.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [update_issued_mono](declarations/update-issued-mono--9ca4bddb786587cbd03bd8bd.md) | 163 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [update_verified_mono](declarations/update-verified-mono--654debddc19643c7666bef11.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [update_retains_pending](declarations/update-retains-pending--67b18ca79cf052b94b6c85c8.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [guard_preserves_safe](declarations/guard-preserves-safe--5cfc822177d59ef0d1df2dd7.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [guarded_step_safe](declarations/guarded-step-safe--c286e71ebb58a3ac048a407b.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [GuardedSteps](declarations/guardedsteps--84dff2aea06cb4edcd36926c.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [GuardedReachable](declarations/guardedreachable--cfbf35e397713bd2b663e690.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [guarded_steps_safe](declarations/guarded-steps-safe--bf602ed24b87c69ab7c3da14.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [reachable_safe](declarations/reachable-safe--9d9a1e548f6d9bcbc0b7e21e.md) | 243 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [guarded_steps_issued_mono](declarations/guarded-steps-issued-mono--05846d77ac10a98e02d2aab4.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [guarded_steps_verified_mono](declarations/guarded-steps-verified-mono--741dbb832d0b2f4dfbc0b04e.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [guarded_steps_retain_pending](declarations/guarded-steps-retain-pending--0312609ea305a24ebca5083b.md) | 267 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [reachable_obligation_retention](declarations/reachable-obligation-retention--ccf8910686e9139712220b3d.md) | 280 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [guarded_steps_source](declarations/guarded-steps-source--7dd0a1bbbeadc99697b2cab4.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [guarded_steps_lift](declarations/guarded-steps-lift--e9d8f238b72fbc6f63207186.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [guarded_steps_checkpoint](declarations/guarded-steps-checkpoint--953fa36bb9ac47bc8293ce77.md) | 308 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [guarded_steps_receipts_append](declarations/guarded-steps-receipts-append--21e498b7625b07965f1d70d5.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [guarded_steps_budget](declarations/guarded-steps-budget--e99350cb2ff8cec4c5e4a2e4.md) | 330 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [guarded_steps_length_le_budget](declarations/guarded-steps-length-le-budget--d454a37b210a498f7a4fae11.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [no_infinite_guarded_trajectory](declarations/no-infinite-guarded-trajectory--7402bae101ff51f2d8b3e66f.md) | 348 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [unproved_obligation_blocks](declarations/unproved-obligation-blocks--97c630a18ee0431daf1b0e3b.md) | 362 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [unauthenticated_effect_blocks](declarations/unauthenticated-effect-blocks--36262d1e03c85998d94d43e1.md) | 367 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [unauthorized_effect_blocks](declarations/unauthorized-effect-blocks--550a4888075912eeb375ded1.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [forbidden_surface_blocks](declarations/forbidden-surface-blocks--08509eb9a8aa52ac9284143b.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [changed_source_blocks](declarations/changed-source-blocks--85cf81b8c96aa22dd98551cf.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [exhausted_budget_blocks](declarations/exhausted-budget-blocks--209f43f4d1f97f62c8e8665f.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
