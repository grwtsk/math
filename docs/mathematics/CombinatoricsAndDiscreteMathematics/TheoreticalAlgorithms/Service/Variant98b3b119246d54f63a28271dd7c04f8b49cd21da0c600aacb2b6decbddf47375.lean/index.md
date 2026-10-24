# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Service.Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a10eb1f9c640bf5af9904a1e9dffc96833d9d1c3`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variant98b3b119246d54f63a28271dd7c04f8b49cd21da0c600aacb2b6decbddf47375.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ServiceSnapshot](declarations/servicesnapshot--67040f4af8c28363c82a71fc.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [RefreshPhase](declarations/refreshphase--cf8639d1fc61bd2de841ed65.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [RefreshPhaseTransition](declarations/refreshphasetransition--3ac4ddc2da46425375ff3357.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [failed_phase_terminal](declarations/failed-phase-terminal--f39516d9f6b755e82543d672.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [stale_phase_terminal](declarations/stale-phase-terminal--0f38046f1b6c11ff1cda9001.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ValidationState](declarations/validationstate--4bc5a64436acdde520a8ef19.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RefreshCandidate](declarations/refreshcandidate--9ff78bbfbef93699bc0c16da.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [FreshFor](declarations/freshfor--3e6c3835ef44eb2042ecf396.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance--8c5fe441ee4237932934338b.md) | 116 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [MathematicallyStable](declarations/mathematicallystable--f4a05aacadc35c00bc03d628.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance--ee04862b6422350e5501021d.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [WellFormedSuccessor](declarations/wellformedsuccessor--5c4341a15dac88dbbcdb8235.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--347bf6697c8bdb418ad914d1.md) | 142 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [ReadyForActivation](declarations/readyforactivation--acd65b958aeb80d1ae8774b3.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance--97036454300ca4df9ffb6750.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [RefreshCandidate.advance](declarations/refreshcandidate-advance--b41228401f62f20fc617d891.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [advance_preserves_snapshot_binding](declarations/advance-preserves-snapshot-binding--e9cac514e1ab4cc94e41451c.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [AuthorityInputs](declarations/authorityinputs--b78ecaa769f2553c8ff5bdb9.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ServiceState](declarations/servicestate--a63de6f5d6db4923324fe114.md) | 187 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [enqueueRefresh](declarations/enqueuerefresh--62cfcd6eabc0bdc70b442a28.md) | 196 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [enqueueRefresh_preserves_active](declarations/enqueuerefresh-preserves-active--987d674e3579e3c2a0204e91.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [enqueueRefresh_preserves_authority](declarations/enqueuerefresh-preserves-authority--65469d1f4dbdaac1c3ade86c.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [ActivationDecision](declarations/activationdecision--0733b71d098c5ac7ccff09f6.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [decideActivation](declarations/decideactivation--3c0e122243f7eeb96e8198d5.md) | 229 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [activation_decision_requires_freshness](declarations/activation-decision-requires-freshness--06fdd38fa294fceb2f919743.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [activation_decision_requires_readiness](declarations/activation-decision-requires-readiness--0f9da689b2e2d869c34b29a3.md) | 269 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [activation_decision_requires_stability](declarations/activation-decision-requires-stability--a004d2431af6a637a473533f.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [commitDecision](declarations/commitdecision--26c479ca2683777babb14be6.md) | 304 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `inductive` | [ActivationStatus](declarations/activationstatus--61a464ae286b0a229cefb8e9.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [ActivationDecision.status](declarations/activationdecision-status--dfe59fe093b3e8034072a5bd.md) | 326 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [ActivationResult](declarations/activationresult--51f226097ca37be0de835cb3.md) | 333 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [tryActivate](declarations/tryactivate--9c6cc05eb2e25107a13765c7.md) | 339 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [successful_activation_is_atomic](declarations/successful-activation-is-atomic--e6eeb621b3e823af5c5bf35e.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [unsuccessful_activation_preserves_state](declarations/unsuccessful-activation-preserves-state--b7f341adadd4b4a541c5585d.md) | 360 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [failed_activation_preserves_state](declarations/failed-activation-preserves-state--0a4cb209c52919bdc0b5cabf.md) | 379 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [stale_activation_preserves_state](declarations/stale-activation-preserves-state--a34534f01e6ef59d761f7b60.md) | 392 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [incomplete_activation_preserves_state](declarations/incomplete-activation-preserves-state--1048f663826351c3dc269ddd.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [EventPacket](declarations/eventpacket--120b57f09d6e889766e66fc6.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `inductive` | [ServiceRasterCell](declarations/servicerastercell--17b787c4b37cacc3e2ffbacd.md) | 428 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [rasterView](declarations/rasterview--999dc1e15305b1765398c116.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [EventPacket.toConditional](declarations/eventpacket-toconditional--0f8393eff3ca89aba6a30c5a.md) | 444 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `inductive` | [EventApplyStatus](declarations/eventapplystatus--996680cafacc69af9084173c.md) | 454 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [EventApplyResult](declarations/eventapplyresult--c99a74bc8b09e62180438232.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [applyEvent](declarations/applyevent--4dbddf1c14ee93131571c8d3.md) | 470 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [applyEventState](declarations/applyeventstate--72f7a95e1edf6b4d0e7f170c.md) | 491 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [fresh_event_refines_exactly_once_raster](declarations/fresh-event-refines-exactly-once-raster--9f34c9b8798a3937a8b7fec0.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [stale_event_is_noop](declarations/stale-event-is-noop--e3ac89c867f971b1da06ae59.md) | 592 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [duplicate_event_is_noop](declarations/duplicate-event-is-noop--2dc1b1d8c95e297438015c40.md) | 599 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [false_event_is_noop](declarations/false-event-is-noop--390f91a94878aae049f7e936.md) | 608 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [fresh_unseen_true_event_applies_atomically](declarations/fresh-unseen-true-event-applies-atomically--a53060a3f05a590721e438cf.md) | 619 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [applyEvent_preserves_active_snapshot](declarations/applyevent-preserves-active-snapshot--a30c0fd5205ab2137962b56a.md) | 630 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [applyEvent_preserves_refresh_queue](declarations/applyevent-preserves-refresh-queue--872eff3e5a5a936422b9d0b6.md) | 642 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [applyEvent_preserves_authority](declarations/applyevent-preserves-authority--9a3335ca82dacce3cbe59464.md) | 654 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [applyEvent_replay_idempotent](declarations/applyevent-replay-idempotent--87415bbf2689cdc89d6b9f40.md) | 667 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [event_replay_nonauthority](declarations/event-replay-nonauthority--26111f353e85120043cba567.md) | 694 | `BLOCKED_NATIVE_ADMISSION` |
