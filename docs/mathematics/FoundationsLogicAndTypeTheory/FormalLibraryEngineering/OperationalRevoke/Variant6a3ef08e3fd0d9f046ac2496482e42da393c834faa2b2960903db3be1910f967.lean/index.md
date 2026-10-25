# GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OperationalRevoke.Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**93 observed declarations and anonymous commands**, 28 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d9b11fd270b6d951d40194a39c1da277a0708be`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/OperationalRevoke/Variant6a3ef08e3fd0d9f046ac2496482e42da393c834faa2b2960903db3be1910f967.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [nativeHead](declarations/nativehead--f5489d4255e4279ba96c2eb5.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [nativeSourceHashes](declarations/nativesourcehashes--04269a0b1be3717f80ed48a9.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `inductive` | [Mode](declarations/mode--f937cd189b76f43ee80ac187.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `abbrev` | [Key](declarations/key--f62a44e6c5264c33e4b57903.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [Scope](declarations/scope--00b4e3288adb3775e0c984dd.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [GrantData](declarations/grantdata--747d22d122dc4a675d10e1ad.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [GrantValue](declarations/grantvalue--d775072152ff4953692423d5.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [GrantRecord](declarations/grantrecord--851e20b7fa0baa1673bea9a6.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [GrantTable](declarations/granttable--cc1c0fed9158e6b5e02921f4.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [lookup](declarations/lookup--4e9146b4e48e2a7051739e4f.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [markRevoked](declarations/markrevoked--7772cd2766cebe0c32c233e2.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [State](declarations/state--cc55ee3c4b66ed56030a4a94.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `inductive` | [Target](declarations/target--6362eec3b4c7925fd1172483.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Event](declarations/event--e0c0aaf6c4975961010a2c7b.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [HostEvent](declarations/hostevent--6e4080de482fbc02b1adea67.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [targetKey](declarations/targetkey--513640ee2c4f363e4d84ebdc.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [authorizedActor](declarations/authorizedactor--74efde362455de7204444f63.md) | 148 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `inductive` | [Outcome](declarations/outcome--6445e48eb4cf1558c61e3063.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [changed](declarations/changed--3e007167966247401a96c139.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [revokeCore](declarations/revokecore--b238f30384bab570805a169d.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [unauthorized_no_core_mutation](declarations/unauthorized-no-core-mutation--378f6e6ad48f0c4c1a935ac9.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [missing_no_core_mutation](declarations/missing-no-core-mutation--8c5b901f3d632c62407dd4cd.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [authorized_existing_changes_once](declarations/authorized-existing-changes-once--95d01eb8594de14bbf9f50da.md) | 181 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [already_revoked_no_core_mutation](declarations/already-revoked-no-core-mutation--cbdc00ee436dd8d367f3aa5e.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `def` | [immutableRecord](declarations/immutablerecord--d39a3cf02a42b848d8bc7633.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [markRevoked_immutable](declarations/markrevoked-immutable--1df698c751bf33d55c873dca.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [markRevoked_unrelated](declarations/markrevoked-unrelated--f81eced488455f708069e795.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [fixedFields](declarations/fixedfields--8b92cde90da20b83766a6fc4.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [revokeCore_fixed_fields](declarations/revokecore-fixed-fields--4c328b471e8a58598c28938f.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [revokeCore_keys_preserved](declarations/revokecore-keys-preserved--55e83d24b4ffa12772ddbdec.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [revokeCore_immutable_inventory](declarations/revokecore-immutable-inventory--b24dca07633e36e634df7a10.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [revokeCore_unrelated_stable](declarations/revokecore-unrelated-stable--1bf86861badc9545567e49ba.md) | 246 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [revokeCore_replay_idempotent](declarations/revokecore-replay-idempotent--5c216fd88857e3e87c2394ef.md) | 259 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [integerMax](declarations/integermax--344562b4077842acebb25ea9.md) | 277 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [alnumAscii](declarations/alnumascii--708ebe1f4011555c5b5632e7.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [TokenValid](declarations/tokenvalid--6406791e104e2806082dcfbd.md) | 284 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `def` | [KeyValid](declarations/keyvalid--808244f432cb6cc96266ecfe.md) | 289 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `instance` | [(anonymous)](declarations/instance--9523fbfaf7527f0e4b325824.md) | 291 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `instance` | [(anonymous)](declarations/instance--21f46263607637801491a69e.md) | 295 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `instance` | [(anonymous)](declarations/instance--d1fb90bc0732c85e199759cd.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `def` | [ScopeValid](declarations/scopevalid--dc5e3d46475bf771e0caade4.md) | 303 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `def` | [GrantDataValid](declarations/grantdatavalid--c5cc6bcbb1dff4e332c6bc92.md) | 310 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `instance` | [(anonymous)](declarations/instance--e7be217b5f67dd850e60f6b7.md) | 320 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `instance` | [(anonymous)](declarations/instance--571fe416873187d803d87d8b.md) | 324 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `def` | [installedKey](declarations/installedkey--c13ad0e5c2ab5dec32867d23.md) | 327 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `def` | [RecordValid](declarations/recordvalid--a66f792458bbb9815302d8f7.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `def` | [StateValid](declarations/statevalid--bfce2e0a1df57e2110be6686.md) | 341 | `BLOCKED_NATIVE_ADMISSION` |
| 48 | `instance` | [(anonymous)](declarations/instance--f7084a0a4afc060184d6ab00.md) | 346 | `BLOCKED_NATIVE_ADMISSION` |
| 49 | `instance` | [(anonymous)](declarations/instance--f7c34dfff7847aaf72dd9879.md) | 351 | `BLOCKED_NATIVE_ADMISSION` |
| 50 | `def` | [checkState](declarations/checkstate--b696b5ae684c9ca87a58303d.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 51 | `theorem` | [checkState_correct](declarations/checkstate-correct--f35b6a739baf0f9889ddab7f.md) | 357 | `BLOCKED_NATIVE_ADMISSION` |
| 52 | `theorem` | [changed_state_valid](declarations/changed-state-valid--870c324b6ddf9f7c5664c093.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 53 | `theorem` | [revokeCore_state_valid](declarations/revokecore-state-valid--5a0fc946dfe29ed19664847c.md) | 374 | `BLOCKED_NATIVE_ADMISSION` |
| 54 | `def` | [TargetValid](declarations/targetvalid--0b2700f09c37267bcfbd10e4.md) | 386 | `BLOCKED_NATIVE_ADMISSION` |
| 55 | `def` | [EventValid](declarations/eventvalid--2e2faaa4818162c65be88616.md) | 393 | `BLOCKED_NATIVE_ADMISSION` |
| 56 | `def` | [HostMatches](declarations/hostmatches--e654dee1dfed0cc9db7f416f.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 57 | `def` | [ScopeMatches](declarations/scopematches--ac56ce796e8b697ce65eaf77.md) | 405 | `BLOCKED_NATIVE_ADMISSION` |
| 58 | `def` | [Admission](declarations/admission--4712cfcfee86bc16b20d0f4a.md) | 408 | `BLOCKED_NATIVE_ADMISSION` |
| 59 | `instance` | [(anonymous)](declarations/instance--1a2e4324fbe4f962a906e603.md) | 412 | `BLOCKED_NATIVE_ADMISSION` |
| 60 | `instance` | [(anonymous)](declarations/instance--ba41de35ccabae13b5aff687.md) | 415 | `BLOCKED_NATIVE_ADMISSION` |
| 61 | `instance` | [(anonymous)](declarations/instance--eb2feb32271e3c99fb329b87.md) | 420 | `BLOCKED_NATIVE_ADMISSION` |
| 62 | `instance` | [(anonymous)](declarations/instance--1343a62299068896c0b0b63e.md) | 424 | `BLOCKED_NATIVE_ADMISSION` |
| 63 | `instance` | [(anonymous)](declarations/instance--f11fd93638edaf06ddc395d9.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 64 | `def` | [checkAdmission](declarations/checkadmission--eeb4c0fe507df18f775d6ba0.md) | 434 | `BLOCKED_NATIVE_ADMISSION` |
| 65 | `theorem` | [checkAdmission_correct](declarations/checkadmission-correct--0c2dbd2ddfae4b25ee93b68c.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 66 | `theorem` | [uncertain_time_permits_revocation](declarations/uncertain-time-permits-revocation--43c35beac861f41d94baa96c.md) | 442 | `BLOCKED_NATIVE_ADMISSION` |
| 67 | `theorem` | [wrong_host_actor_rejected](declarations/wrong-host-actor-rejected--3d624375b7e426203ab76101.md) | 448 | `BLOCKED_NATIVE_ADMISSION` |
| 68 | `def` | [scope](declarations/scope--07a1fe19b5bed7f0f35b46e9.md) | 460 | `BLOCKED_NATIVE_ADMISSION` |
| 69 | `def` | [effectValue](declarations/effectvalue--29fef3880b664094a2bbb80f.md) | 466 | `BLOCKED_NATIVE_ADMISSION` |
| 70 | `def` | [effectCanonical](declarations/effectcanonical--6b50839bf7f66a7594164f0e.md) | 468 | `BLOCKED_NATIVE_ADMISSION` |
| 71 | `def` | [effectRecord](declarations/effectrecord--13c5a19471df13b05f317c26.md) | 476 | `BLOCKED_NATIVE_ADMISSION` |
| 72 | `def` | [effectState](declarations/effectstate--96e7624add60fa7c74ebaea7.md) | 478 | `BLOCKED_NATIVE_ADMISSION` |
| 73 | `def` | [effectEvent](declarations/effectevent--5ab0a90923309bfaac03f7e4.md) | 482 | `BLOCKED_NATIVE_ADMISSION` |
| 74 | `def` | [host](declarations/host--1d4fbdadd00ab3e125f57f55.md) | 484 | `BLOCKED_NATIVE_ADMISSION` |
| 75 | `theorem` | [effect_state_independently_valid](declarations/effect-state-independently-valid--9cfb54952b3a2ec7374a91b8.md) | 486 | `BLOCKED_NATIVE_ADMISSION` |
| 76 | `theorem` | [effect_admission_independently_valid](declarations/effect-admission-independently-valid--94eb2a4ea4d85d4de63fcee3.md) | 488 | `BLOCKED_NATIVE_ADMISSION` |
| 77 | `theorem` | [native_effect_revoke_after](declarations/native-effect-revoke-after--d084215fb54fe1fceb164438.md) | 490 | `BLOCKED_NATIVE_ADMISSION` |
| 78 | `def` | [rootValue](declarations/rootvalue--98c0283b70e52980ba9ab91e.md) | 499 | `BLOCKED_NATIVE_ADMISSION` |
| 79 | `def` | [childValue](declarations/childvalue--4504e1ba6202a764d680e0ca.md) | 502 | `BLOCKED_NATIVE_ADMISSION` |
| 80 | `def` | [rootCanonical](declarations/rootcanonical--b2fa373b30bf7a940f911ccf.md) | 506 | `BLOCKED_NATIVE_ADMISSION` |
| 81 | `def` | [childCanonical](declarations/childcanonical--25b0696b1a8f9ea66be56322.md) | 515 | `BLOCKED_NATIVE_ADMISSION` |
| 82 | `def` | [rootRecord](declarations/rootrecord--a2bac7da9de1e075ca7c651b.md) | 525 | `BLOCKED_NATIVE_ADMISSION` |
| 83 | `def` | [childRecord](declarations/childrecord--359336b1a4a63314d9e82a55.md) | 526 | `BLOCKED_NATIVE_ADMISSION` |
| 84 | `def` | [delegationState](declarations/delegationstate--0c0259f658bff5c258004224.md) | 528 | `BLOCKED_NATIVE_ADMISSION` |
| 85 | `def` | [delegationEvent](declarations/delegationevent--e6dd7e200f0e03ee3920c6d1.md) | 534 | `BLOCKED_NATIVE_ADMISSION` |
| 86 | `theorem` | [delegation_state_independently_valid](declarations/delegation-state-independently-valid--e8e6e9e66081b56c67b5e037.md) | 537 | `BLOCKED_NATIVE_ADMISSION` |
| 87 | `theorem` | [delegation_admission_independently_valid](declarations/delegation-admission-independently-valid--3c365bfc48a316fc6d6f9fd9.md) | 539 | `BLOCKED_NATIVE_ADMISSION` |
| 88 | `theorem` | [native_ancestor_revoke_root_only](declarations/native-ancestor-revoke-root-only--b23c0a879dfb1ebfe08a709a.md) | 542 | `BLOCKED_NATIVE_ADMISSION` |
| 89 | `theorem` | [child_issuer_can_revoke_without_authority_actor](declarations/child-issuer-can-revoke-without-authority-actor--36ab4afaf256e9784e704996.md) | 552 | `BLOCKED_NATIVE_ADMISSION` |
| 90 | `theorem` | [amendment_uses_reference_issuer](declarations/amendment-uses-reference-issuer--2cb040e1029b18dae08fac02.md) | 559 | `BLOCKED_NATIVE_ADMISSION` |
| 91 | `theorem` | [unauthorized_precedes_missing_lookup](declarations/unauthorized-precedes-missing-lookup--376b667d77030927d39480b3.md) | 566 | `BLOCKED_NATIVE_ADMISSION` |
| 92 | `theorem` | [authorized_missing_rejected_without_mutation](declarations/authorized-missing-rejected-without-mutation--71278c37118aaf3dbcdb87de.md) | 572 | `BLOCKED_NATIVE_ADMISSION` |
| 93 | `theorem` | [mismatched_host_claim_rejected](declarations/mismatched-host-claim-rejected--d548b6982cad7ae04f5cc726.md) | 579 | `BLOCKED_NATIVE_ADMISSION` |
