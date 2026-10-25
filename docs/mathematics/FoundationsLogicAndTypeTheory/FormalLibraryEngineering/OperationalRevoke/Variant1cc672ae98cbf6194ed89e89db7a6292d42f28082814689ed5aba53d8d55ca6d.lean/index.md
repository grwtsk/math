# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperationalRevoke.Variant1cc672ae98cbf6194ed89e89db7a6292d42f28082814689ed5aba53d8d55ca6d

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**93 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant1cc672ae98cbf6194ed89e89db7a6292d42f28082814689ed5aba53d8d55ca6d.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ed13df2f85d10ded8c0730d3ef933a59efeff73`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant1cc672ae98cbf6194ed89e89db7a6292d42f28082814689ed5aba53d8d55ca6d.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [nativeHead](declarations/nativehead--c7b523913f5c8bba3f58f3b3.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [nativeSourceHashes](declarations/nativesourcehashes--cd17cb10ceadcfdde2c8da3e.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Mode](declarations/mode--beb7383d2aec7e0e29487b95.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Key](declarations/key--2eb0f5d4eb7b68fa03ef3d34.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Scope](declarations/scope--f9168b595862ca0dd47d83cd.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [GrantData](declarations/grantdata--d69d8a28280a123fdd13b3ff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [GrantValue](declarations/grantvalue--9fcdb3b9f5df64167bec4413.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [GrantRecord](declarations/grantrecord--903e157919d3cf7c7732955f.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [GrantTable](declarations/granttable--9cb71ed68270e80733f09649.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lookup](declarations/lookup--522c5beff11d2c329a023c80.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [markRevoked](declarations/markrevoked--fd414d208c7b2bcee5cecf81.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [State](declarations/state--4b2cafc518ba06a74c1324a4.md) | 145 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [Target](declarations/target--ec02a42c4a1bae73c11c49cd.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Event](declarations/event--41ddfc4819ba551effce6d45.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [HostEvent](declarations/hostevent--915b992aa1d93a4df9835e2b.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [targetKey](declarations/targetkey--03ff0468968defdcaacf3374.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [authorizedActor](declarations/authorizedactor--f047b07d5e0c1f246cd02adc.md) | 220 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [Outcome](declarations/outcome--99d37c87019c7b4447ab4d59.md) | 226 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [changed](declarations/changed--088f064e2ec79847b2b0edf5.md) | 231 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [revokeCore](declarations/revokecore--e7763a004206c6015a800f73.md) | 235 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [unauthorized_no_core_mutation](declarations/unauthorized-no-core-mutation--1c90febad56f84547d992266.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [missing_no_core_mutation](declarations/missing-no-core-mutation--d1eef7b7a4fb3dc266d1f5ae.md) | 249 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [authorized_existing_changes_once](declarations/authorized-existing-changes-once--f8bb10c9c2a46048a7dfbc30.md) | 255 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [already_revoked_no_core_mutation](declarations/already-revoked-no-core-mutation--72ba0b851cc3825edeb7f5db.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [immutableRecord](declarations/immutablerecord--d35f6bf4e75d76a8d3356ae8.md) | 272 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [markRevoked_immutable](declarations/markrevoked-immutable--aa0ee784ad0a3fd79779744a.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [markRevoked_unrelated](declarations/markrevoked-unrelated--e3d2552eec8d53b863618e72.md) | 282 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [fixedFields](declarations/fixedfields--edbe04147d59e085c6981d6c.md) | 287 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [revokeCore_fixed_fields](declarations/revokecore-fixed-fields--1839b5f6cc9834a89795fe23.md) | 293 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [revokeCore_keys_preserved](declarations/revokecore-keys-preserved--0b58cfdc84bf977a1b2f331d.md) | 302 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [revokeCore_immutable_inventory](declarations/revokecore-immutable-inventory--33fb50a5087c4914fae06515.md) | 311 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [revokeCore_unrelated_stable](declarations/revokecore-unrelated-stable--1e6ea13ebda9d6e04bc74770.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [revokeCore_replay_idempotent](declarations/revokecore-replay-idempotent--8b1e30c8714d3bbc1b53b39d.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [integerMax](declarations/integermax--21bc14b1a1e398d1319b518b.md) | 356 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [alnumAscii](declarations/alnumascii--ebbe3078bcca5b4f9febddff.md) | 359 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [TokenValid](declarations/tokenvalid--b560bc11671ae5864924a0d8.md) | 364 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [KeyValid](declarations/keyvalid--ce7e26d3d7894efa1b2b15fa.md) | 370 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance--fb1f26a2c9b38eb4776e76ea.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance--06b3806cfaa5e0d60512e9ce.md) | 376 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance--fb62eb42370dc64c5d5a1f07.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ScopeValid](declarations/scopevalid--2d8c1c0157fce8757864c641.md) | 385 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [GrantDataValid](declarations/grantdatavalid--3344dbc54c54dc3e5c5906e8.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance--41d6273189a8935a1a9e7627.md) | 403 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance--46fec3eb2baa75b08a96e53c.md) | 407 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [installedKey](declarations/installedkey--f1363467923d2d3e650c6797.md) | 411 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [RecordValid](declarations/recordvalid--b0ea5978e05c8bdf1c322e31.md) | 417 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [StateValid](declarations/statevalid--911f1e45ca0861f51f294857.md) | 426 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance--f2ec011143fe912933d19110.md) | 431 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance--28087eb1fe15bb873e8ae15e.md) | 436 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [checkState](declarations/checkstate--416168b67638d8ed3b0569c1.md) | 441 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [checkState_correct](declarations/checkstate-correct--adcc5dd00bb4219c888774f8.md) | 443 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [changed_state_valid](declarations/changed-state-valid--a3946a92a8d2beb47f9f63f2.md) | 447 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [revokeCore_state_valid](declarations/revokecore-state-valid--a011f57fc8cd2030f7cdf122.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [TargetValid](declarations/targetvalid--9fe8bfd25a205b81443b63ec.md) | 473 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [EventValid](declarations/eventvalid--71676039e0c66d529cc10a43.md) | 480 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [HostMatches](declarations/hostmatches--34de19ab271325ef2b4ed2de.md) | 487 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [ScopeMatches](declarations/scopematches--48b16624a1dc4bf21d2b1c38.md) | 492 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [Admission](declarations/admission--7d11e131e128675b7579de10.md) | 498 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance--1296c18495c3df7d9710e960.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance--55e29ba6efa371e4f1a65a45.md) | 505 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance--d31787b8f6320062374f87ec.md) | 510 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance--2c4adb8f8746ba2b9ac2dfee.md) | 514 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance--6f71261f042b155b4cb45fd6.md) | 519 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [checkAdmission](declarations/checkadmission--5c890472b52ae0ca9e65ad0e.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [checkAdmission_correct](declarations/checkadmission-correct--66b8ec6c895fd5fb55900265.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [uncertain_time_permits_revocation](declarations/uncertain-time-permits-revocation--877ef20ecc57331b87b5cd5e.md) | 533 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [wrong_host_actor_rejected](declarations/wrong-host-actor-rejected--db90d9648a8df1c070a1e4ca.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [scope](declarations/scope--18ed468383d5211667ddb66b.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [effectValue](declarations/effectvalue--e37615023ed05f68b2ef8152.md) | 558 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [effectCanonical](declarations/effectcanonical--5f19e3fa4708db67de16d885.md) | 561 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [effectRecord](declarations/effectrecord--1994b5b1e43bd0616d74b1d6.md) | 570 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [effectState](declarations/effectstate--05c6cb9eae056e47ac3efe21.md) | 575 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [effectEvent](declarations/effectevent--1c20632d0118084472aa84ee.md) | 580 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [host](declarations/host--2bed88b7d14ee58b8bbd54dc.md) | 583 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [effect_state_independently_valid](declarations/effect-state-independently-valid--80bfd60e19d2d43f9060b6b5.md) | 585 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [effect_admission_independently_valid](declarations/effect-admission-independently-valid--e21e8aa0697e9fe4c6759928.md) | 587 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [native_effect_revoke_after](declarations/native-effect-revoke-after--6cace64e9634c9724ad3a07f.md) | 589 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [rootValue](declarations/rootvalue--29c22688b3fa4197835f1cda.md) | 598 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [childValue](declarations/childvalue--54c95253b71a2ab145a64f9b.md) | 602 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [rootCanonical](declarations/rootcanonical--1652fc53d04fd0ac8601e2be.md) | 607 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [childCanonical](declarations/childcanonical--8e8894f91bab65a019e9e65d.md) | 617 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [rootRecord](declarations/rootrecord--12f8f1957936491fb0473061.md) | 628 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [childRecord](declarations/childrecord--bec9d3e017d2e336c9be9ae5.md) | 632 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [delegationState](declarations/delegationstate--d47df7b773cab121fc242c17.md) | 637 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [delegationEvent](declarations/delegationevent--29ccfa0f29a25c04ff3f00da.md) | 644 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [delegation_state_independently_valid](declarations/delegation-state-independently-valid--0b0fbd8d7cf89e19bd5e2849.md) | 647 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [delegation_admission_independently_valid](declarations/delegation-admission-independently-valid--e1ae58207c7ab5bd4e7fc55e.md) | 649 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [native_ancestor_revoke_root_only](declarations/native-ancestor-revoke-root-only--f646662bdfacc887e7cd285d.md) | 652 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [child_issuer_can_revoke_without_authority_actor](declarations/child-issuer-can-revoke-without-authority-actor--1ad06d545bd2ff53b5b9e270.md) | 662 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [amendment_uses_reference_issuer](declarations/amendment-uses-reference-issuer--9bbd1f9f9b1a410599d81f94.md) | 669 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [unauthorized_precedes_missing_lookup](declarations/unauthorized-precedes-missing-lookup--93df77d86bb483939e49da97.md) | 676 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [authorized_missing_rejected_without_mutation](declarations/authorized-missing-rejected-without-mutation--7079289e4f1044533e4e43a7.md) | 682 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mismatched_host_claim_rejected](declarations/mismatched-host-claim-rejected--cf478e9e6af2af91293b2d74.md) | 689 | `BLOCKED_NATIVE_ADMISSION` |
