# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Service.Variante74698aa942446e31aff6319667b02013e0c96b49900a8bb5ef32cdc93f68a89

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**55 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variante74698aa942446e31aff6319667b02013e0c96b49900a8bb5ef32cdc93f68a89.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `20b90a22fc318e258dc882d05044b5c7180718b0`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Service/Variante74698aa942446e31aff6319667b02013e0c96b49900a8bb5ef32cdc93f68a89.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [ServiceSnapshot](declarations/servicesnapshot--7826cb7377fbfda87d168fbc.md) | 24 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [RefreshPhase](declarations/refreshphase--3dac0ccd7354c53cdb1b8cd0.md) | 27 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [RefreshPhaseTransition](declarations/refreshphasetransition--d9c9f66c4bcc6bb2e255e88c.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [failed_phase_terminal](declarations/failed-phase-terminal--efe2fe44a7cf561dae1eb919.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [stale_phase_terminal](declarations/stale-phase-terminal--4bbb4f454f0e3e33bee8d6f7.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `structure` | [ValidationState](declarations/validationstate--fb58e0b96773567c4bbe1f2c.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [RefreshCandidate](declarations/refreshcandidate--b0e21a05d6da1ad55a1d02d5.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [FreshFor](declarations/freshfor--decd7f62a74b94f1daa24e02.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `instance` | [(anonymous)](declarations/instance--e3fd59f1ce4886c59de630c8.md) | 108 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [MathematicallyStable](declarations/mathematicallystable--6946c2a15b43a2cb2ef4e71e.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance--98f54f3295afb33fdbbc587d.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [WellFormedSuccessor](declarations/wellformedsuccessor--c1f637c6dffce07ca3ec5f63.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `instance` | [(anonymous)](declarations/instance--21de84bc760d8a4ea8320d44.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [ReadyForActivation](declarations/readyforactivation--c092300d9021e9bcb7635e62.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [(anonymous)](declarations/instance--c32765febb1a92c0b3e83d2b.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [RefreshCandidate.advance](declarations/refreshcandidate-advance--03b4286de212daedc78baf1b.md) | 151 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [advance_preserves_snapshot_binding](declarations/advance-preserves-snapshot-binding--d89bc95347f377952740e0bb.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [AuthorityInputs](declarations/authorityinputs--4b3c9976903fe5c8f4f920ff.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ServiceState](declarations/servicestate--fba2b7e2d0ffe8ea5006bee2.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [enqueueRefresh](declarations/enqueuerefresh--77cfdbf754e87400350fd10f.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [enqueueRefresh_preserves_active](declarations/enqueuerefresh-preserves-active--6cfcde9f0d578b28e648b735.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [enqueueRefresh_preserves_authority](declarations/enqueuerefresh-preserves-authority--8c5805207752346bce25a023.md) | 200 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `inductive` | [ActivationDecision](declarations/activationdecision--60bf3e22feae860afe351737.md) | 207 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [decideActivation](declarations/decideactivation--3558f426dbb8a582a95194db.md) | 221 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [activation_decision_requires_freshness](declarations/activation-decision-requires-freshness--3035b52dce75fcefbc1b9017.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [activation_decision_requires_readiness](declarations/activation-decision-requires-readiness--1a08e2f324a0ace6d1d2069a.md) | 261 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [activation_decision_requires_stability](declarations/activation-decision-requires-stability--590f5c84810c91074954fc1c.md) | 285 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [commitDecision](declarations/commitdecision--d9241aaea1793483d10aa5ac.md) | 296 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `inductive` | [ActivationStatus](declarations/activationstatus--af734daea2a1c6a806317d3c.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [ActivationDecision.status](declarations/activationdecision-status--d39c5aeffb2f1ab8c20afa3c.md) | 318 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `structure` | [ActivationResult](declarations/activationresult--f0f6ff08681797609a6640f4.md) | 325 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [tryActivate](declarations/tryactivate--a127be1e3075c2ba3e1f1245.md) | 331 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [successful_activation_is_atomic](declarations/successful-activation-is-atomic--9acd784fd27d9b61a27b3db2.md) | 338 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [unsuccessful_activation_preserves_state](declarations/unsuccessful-activation-preserves-state--c36be770bee54deb06522d5c.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [failed_activation_preserves_state](declarations/failed-activation-preserves-state--0fc8b381f3a447a4b999dc3f.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [stale_activation_preserves_state](declarations/stale-activation-preserves-state--142e616e1efa4af7efb77c5e.md) | 384 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [incomplete_activation_preserves_state](declarations/incomplete-activation-preserves-state--edd60a70e0da608a53ed8eab.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `structure` | [EventPacket](declarations/eventpacket--769b856723cf2c7bebfb3315.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `inductive` | [ServiceRasterCell](declarations/servicerastercell--277a3586d2a6f2b489a8676b.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `def` | [rasterView](declarations/rasterview--1758a70ca243626aa986c06c.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [EventPacket.toConditional](declarations/eventpacket-toconditional--56e23bcddbf0d572eb7c8d34.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `inductive` | [EventApplyStatus](declarations/eventapplystatus--59f3b722209fc25097f47289.md) | 446 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `structure` | [EventApplyResult](declarations/eventapplyresult--128b54da1c49691983530eda.md) | 453 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `def` | [applyEvent](declarations/applyevent--ccf05b0177e440a8656aba81.md) | 462 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [applyEventState](declarations/applyeventstate--9ff93c66e9c12b0ace13f020.md) | 483 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [fresh_event_refines_exactly_once_raster](declarations/fresh-event-refines-exactly-once-raster--7e0583467994165faa943ce0.md) | 494 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [stale_event_is_noop](declarations/stale-event-is-noop--2f98b3e09871e704bd727c1b.md) | 584 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `theorem` | [duplicate_event_is_noop](declarations/duplicate-event-is-noop--30b0f4cbc0108f5be2908f56.md) | 591 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `theorem` | [false_event_is_noop](declarations/false-event-is-noop--506e678080dfeffde794c405.md) | 600 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `theorem` | [fresh_unseen_true_event_applies_atomically](declarations/fresh-unseen-true-event-applies-atomically--ea1e1286ec981c420ef03f14.md) | 611 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [applyEvent_preserves_active_snapshot](declarations/applyevent-preserves-active-snapshot--a7b9973dac23e862232f7e54.md) | 622 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [applyEvent_preserves_refresh_queue](declarations/applyevent-preserves-refresh-queue--89a2c88f6e0096afc9492248.md) | 634 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [applyEvent_preserves_authority](declarations/applyevent-preserves-authority--1492b41158eb85b057f04a8c.md) | 646 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `theorem` | [applyEvent_replay_idempotent](declarations/applyevent-replay-idempotent--2facf2c8dcae16ccf0d0f0bd.md) | 659 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `theorem` | [event_replay_nonauthority](declarations/event-replay-nonauthority--ea831caca84c3c2c70613f64.md) | 686 | `BLOCKED_NATIVE_ADMISSION` |
