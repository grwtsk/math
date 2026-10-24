# GRWTSK.DynamicalSystems.TransitionSystems.ModularCheckpoint

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**80 observed declarations and anonymous commands**, 51 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `865bc64a18d69d2cf4325229ea08e0931dd0e1a8`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/TransitionSystems/ModularCheckpoint.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [packetIncrement](declarations/packetincrement--a685ed6dbfcd11855fda2281.md) | 45 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `theorem` | [packetIncrement_pos](declarations/packetincrement-pos--3f01b2d1b5274a73c8894e8d.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [physicalTime](declarations/physicaltime--a5697416c2abe096f7282af6.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [physicalTime_eq_batchClock](declarations/physicaltime-eq-batchclock--8e6716322e4973a56f36464e.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [physicalTime_strict](declarations/physicaltime-strict--5b6179c1251e045d3fcda458.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [terminal_cost_conserved](declarations/terminal-cost-conserved--bfc579ea2b8434bbe51196f8.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [intermediate_completion_changes](declarations/intermediate-completion-changes--4a0d9ec700e9e7cf1aad3615.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [quota_clock_eq_batchClock](declarations/quota-clock-eq-batchclock--e37f6dd1bd9a18685187f848.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [packet_unique_batch](declarations/packet-unique-batch--3aa8b23f2e343a0bd7235123.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [packet_epoch_no_starvation](declarations/packet-epoch-no-starvation--95f8e287a6d8b51b18d1c382.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [postPhases](declarations/postphases--1abb9733eadc8101b2ba457c.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [certified_postPhases_nodup](declarations/certified-postphases-nodup--1c746747b90a840d4866ff1c.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [terminal_phase_conserved](declarations/terminal-phase-conserved--1231fb24dcd4ab9b5a30a3fb.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Address](declarations/address--64c5b5894f09bf12e2c1ba1a.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [address_ne_of_epoch_ne](declarations/address-ne-of-epoch-ne--5cb3fe9593cf74cf6a9eac27.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [address_ne_of_lift_ne](declarations/address-ne-of-lift-ne--68c3ef68c7e6461e93a856e3.md) | 155 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [repeated_phase_distinct_address](declarations/repeated-phase-distinct-address--7c54bf92217386d86a63745d.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [repeated_phase_distinct_lift_address](declarations/repeated-phase-distinct-lift-address--53b22629b1e6b308023ecb95.md) | 167 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [checkpointAt](declarations/checkpointat--f6a64ed9d263bb0101dbb1da.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [checkpointAt_source_epoch_lift](declarations/checkpointat-source-epoch-lift--b6ee3059ee0d74485652c469.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [checkpointAt_injective](declarations/checkpointat-injective--462fad82d5819e5e1e1acebd.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [terminal_checkpoint_conserved](declarations/terminal-checkpoint-conserved--bfe7ff60be60f8c2d62a130c.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `structure` | [PacketBinding](declarations/packetbinding--5962ae2594892fc7c170dcae.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [BindingCurrent](declarations/bindingcurrent--1bdd6aea78f4dbd62ce9100a.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [stale_source_rejects_binding](declarations/stale-source-rejects-binding--b8f45e24d686b1358019e4b0.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [stale_epoch_rejects_binding](declarations/stale-epoch-rejects-binding--016d0e60f93d8890ba595d51.md) | 236 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [stale_binding_negative_control](declarations/stale-binding-negative-control--0ff2bf6e00d7dc0f4be11e4c.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [certificateBinding](declarations/certificatebinding--535175e12d366f6d90969021.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [checked_certificate_adapter](declarations/checked-certificate-adapter--484f3080fd1b9b3c9993cc26.md) | 254 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [checked_item_packet](declarations/checked-item-packet--c8ca12ab922eae9c1989ae01.md) | 268 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [accepted_stale_certificate_rejected](declarations/accepted-stale-certificate-rejected--c282b688e4c54f53b7961da7.md) | 290 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [DependencyOrdered](declarations/dependencyordered--4c47651008d2ea2a51cb0505.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [CommutesOnPacket](declarations/commutesonpacket--4095a5eb7681a89779a6b615.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `structure` | [ExchangeablePacket](declarations/exchangeablepacket--8e173cb96b4388b085a4ab0a.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [packet_identity_preserved](declarations/packet-identity-preserved--30b2373f7d329c443d82e042.md) | 317 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [packet_semantics_preserved](declarations/packet-semantics-preserved--7b064123063d901b4898be18.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [noncommutingEffect](declarations/noncommutingeffect--f1fff6da155475af24749c96.md) | 336 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [antichain_not_exchangeable](declarations/antichain-not-exchangeable--f703c15117cc5c65f5a7cbc5.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [dependency_breaking_reversal](declarations/dependency-breaking-reversal--ba92667005d414de1ba79e11.md) | 349 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `inductive` | [Executes](declarations/executes--52e580da032ef4ccdf1972dd.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [executes_guarded_steps](declarations/executes-guarded-steps--ed165afcc0cea3509c4e1d55.md) | 378 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [executes_safe](declarations/executes-safe--3445a675921672834c1ec024.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [executes_history_immutable](declarations/executes-history-immutable--d115b09263e32cb8ee518d02.md) | 399 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [executes_source_and_lift](declarations/executes-source-and-lift--51a60350f69f9d28030ba76e.md) | 404 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [executes_budget_exact](declarations/executes-budget-exact--fea58bbe456b7010bb08f22c.md) | 410 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `structure` | [PacketAdmission](declarations/packetadmission--56e985897464c3593272c41b.md) | 425 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [admitted_packet_safe](declarations/admitted-packet-safe--0eef893faa81c8c3ee555b6c.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [modular_validity_does_not_discharge](declarations/modular-validity-does-not-discharge--6990c2ee67a78f6ed7b7251c.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [modular_validity_does_not_authorize](declarations/modular-validity-does-not-authorize--eaa980415f7121dff7ef6da3.md) | 457 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [modular_validity_does_not_grant_rights](declarations/modular-validity-does-not-grant-rights--0c1fe1f9b0228a090d821f4e.md) | 467 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `structure` | [SearchAttempt](declarations/searchattempt--4108e2b3eddbc460c0a11b89.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `inductive` | [SearchEvent](declarations/searchevent--c5a24f5866f6f23d0abf8f76.md) | 489 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `def` | [SearchEvent.expenditure](declarations/searchevent-expenditure--46dbe7c65b8843f26eee9d26.md) | 493 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [SearchEvent.funding](declarations/searchevent-funding--a72bc14c50bda97d69952dda.md) | 497 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [totalExpenditure](declarations/totalexpenditure--782594934ee9a6ab29f2e2a5.md) | 501 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [totalFunding](declarations/totalfunding--757e65a8e168f38e6bdea842.md) | 504 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [SearchEvent.attemptCount](declarations/searchevent-attemptcount--375e5d14721fe85f743d4adc.md) | 507 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [SearchEvent.repairExpenditure](declarations/searchevent-repairexpenditure--78167d20967e34d39462201a.md) | 511 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `def` | [attemptCount](declarations/attemptcount--7b8c695a04d265beae010c81.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `def` | [repairExpenditure](declarations/repairexpenditure--11f626a2c27a2d40516f89a0.md) | 518 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `theorem` | [attempt_and_repair_monotone](declarations/attempt-and-repair-monotone--2ddbd48fed87ec6e21eae7a2.md) | 521 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `def` | [SearchFunded](declarations/searchfunded--48aa6ed44c3d469180ebd64e.md) | 529 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `theorem` | [funded_attempt_preserved](declarations/funded-attempt-preserved--4dff1ca346f7295d8850d7f6.md) | 532 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `theorem` | [expenditure_append](declarations/expenditure-append--ef82581d2f4e5d213d872703.md) | 546 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [expenditure_monotone](declarations/expenditure-monotone--b03983606c7a0fbd8f3614f3.md) | 551 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [record_attempt_exact](declarations/record-attempt-exact--9b8c43f621d19380476095d5.md) | 557 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `def` | [rejectedAttempt](declarations/rejectedattempt--eb0f35e10a0633c30acfc6a5.md) | 565 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `theorem` | [rejected_search_arbitrarily_long](declarations/rejected-search-arbitrarily-long--039732d1958644aeb4b4e4aa.md) | 574 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `theorem` | [local_budgets_do_not_bound_total](declarations/local-budgets-do-not-bound-total--711f93dff3ecbb1f61cda4db.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `structure` | [TrackedSession](declarations/trackedsession--1b30f4f184c9159577ccea40.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [TrackedSession.recordAttempt](declarations/trackedsession-recordattempt--3334854b50440bce71ab4501.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `theorem` | [tracked_attempt_expenditure](declarations/tracked-attempt-expenditure--068bb2bddd26983eb920d992.md) | 614 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [TrackedSession.restart](declarations/trackedsession-restart--9d703d39141975669fd32058.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `theorem` | [tracked_restart_expenditure](declarations/tracked-restart-expenditure--4a1f38bb120f32c80f0d81da.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [tracked_restart_funding](declarations/tracked-restart-funding--46c3720ccc821bb283697245.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [tracked_restart_attempt_and_repair](declarations/tracked-restart-attempt-and-repair--b2b4d8fd322d556a345f56fc.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [tracked_restart_lift_and_history](declarations/tracked-restart-lift-and-history--cff038050b1da696f76d1786.md) | 653 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `theorem` | [tracked_restart_attempt_retained](declarations/tracked-restart-attempt-retained--8fa3e1d9cf225ed8d6da6e4f.md) | 660 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `theorem` | [tracked_restart_safe](declarations/tracked-restart-safe--2cd465c097e2c5792245a5bb.md) | 666 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `theorem` | [restart_cannot_erase_expenditure](declarations/restart-cannot-erase-expenditure--0af695ff967208d165b8b769.md) | 673 | `BLOCKED_NATIVE_ADMISSION` |
