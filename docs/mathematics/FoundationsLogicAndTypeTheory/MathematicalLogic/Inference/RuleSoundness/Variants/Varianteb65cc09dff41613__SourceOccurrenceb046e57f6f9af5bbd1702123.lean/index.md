# GRWTSK.Logic.Inference.RuleSoundness

[Complete source index](../../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**43 observed declarations and anonymous commands**, 23 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Logic/Inference/RuleSoundness.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `954e95a7f7a2902201f74f7dcc889de2e86a1ecc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Inference/RuleSoundness/Variants/Varianteb65cc09dff41613__SourceOccurrenceb046e57f6f9af5bbd1702123.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `inductive` | [DecisionResult](declarations/decisionresult--a85bf45875ebb88b9ef9b7b4.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [InterpretedRule](declarations/interpretedrule--487ed1b8826f84d8419fc372.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [RuleSound](declarations/rulesound--eab3e5edf595179264872dc7.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [SoundRule](declarations/soundrule--72dbea4af9bfb91a74f34198.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [SoundRule.route](declarations/soundrule-route--b58fd05de2a8153412cf46d6.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [grounded_rules_meaning](declarations/grounded-rules-meaning--5592d3ab7313797b92e20840.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [CertificateChecker](declarations/certificatechecker--ad25ed78c78c787133ae0a55.md) | 78 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [CertificateChecker.Accepts](declarations/certificatechecker-accepts--5f6dfa24eb806430879eceb0.md) | 88 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [CertificateChecker.meaning_of_accepts](declarations/certificatechecker-meaning-of-accepts--7520058fec9591bbe899fb2f.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [CertificateChecker.Covers](declarations/certificatechecker-covers--c94ac4bd7f9fabded6726b9e.md) | 111 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [CertificateChecker.meaning_of_complete_coverage](declarations/certificatechecker-meaning-of-complete-coverage--f7b0f05e27087b82f600229e.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [CertificateChecker.unknown_not_accepts](declarations/certificatechecker-unknown-not-accepts--401e4032262769e4e432e7f6.md) | 135 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `structure` | [CheckedByteInterface](declarations/checkedbyteinterface--41580ab2f71df1b4fea175cc.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [CheckedByteInterface.accepted_meaning](declarations/checkedbyteinterface-accepted-meaning--396b12a2f445b4e50de045fa.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unknown_ne_accept](declarations/unknown-ne-accept--5e45ab4be4a477fba4defc8f.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [reject_ne_accept](declarations/reject-ne-accept--0d594af95efac65b6c424464.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [CheckedByteInterface.accepted_meaning_at_requested](declarations/checkedbyteinterface-accepted-meaning-at-requested--ed568c37a5322fc1aa287a91.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [CertificateChecker.meaning_of_ambient_coverage](declarations/certificatechecker-meaning-of-ambient-coverage--214b49e5d3fc64f2834bf0fd.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [CheckedByteInterface.meaning_of_ambient_byte_coverage](declarations/checkedbyteinterface-meaning-of-ambient-byte-coverage--ebe7c75fbb3284499bbe6edd.md) | 227 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [CertificateChecker.guarded](declarations/certificatechecker-guarded--b1614366bc3797e983c20e48.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [CertificateChecker.guarded_accepts_iff](declarations/certificatechecker-guarded-accepts-iff--928293452ea427e8add548c3.md) | 275 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [CertificateChecker.guarded_not_accepts_of_gate_false](declarations/certificatechecker-guarded-not-accepts-of-gate-false--5135670779efeab4663afda6.md) | 299 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [meaningful](declarations/meaningful--760a761a85960b517004bef7.md) | 316 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `def` | [versionBlind](declarations/versionblind--6f834c41b77cf7fcd9f01cb8.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [sound_checker_can_accept_wrong_version](declarations/sound-checker-can-accept-wrong-version--8d4e27966863e1fb060cebcf.md) | 328 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [exactVersion](declarations/exactversion--d825d9eef1317b38d12f837e.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exact_version_gate_rejects_mismatch](declarations/exact-version-gate-rejects-mismatch--7d822b4739522fb2bdc4bfc7.md) | 335 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [exact_version_gate_retains_match](declarations/exact-version-gate-retains-match--c65fcc1c7a36f7ff4ce4768a.md) | 340 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `def` | [trueMeaning](declarations/truemeaning--98b31e121655c7eaa625c2af.md) | 350 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [trueConclusionChecker](declarations/trueconclusionchecker--a4c37a133011f6b3247b60a6.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [accepted_conclusion_and_digest_do_not_bind_request](declarations/accepted-conclusion-and-digest-do-not-bind-request--dd77948c22f8a9539c4fb46c.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [snapshotMeaning](declarations/snapshotmeaning--0fd55c14ddc778f8028dbed1.md) | 369 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [snapshotChecker](declarations/snapshotchecker--75131376299b6f123fb1afad.md) | 371 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [acceptance_does_not_change_snapshot](declarations/acceptance-does-not-change-snapshot--9bd2f292421764002f9b27ad.md) | 383 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [falseMeaning](declarations/falsemeaning--a506ae45fb77cd09923faab4.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [falseConclusionChecker](declarations/falseconclusionchecker--19c97cdc968f6e9adf846d69.md) | 391 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [complete_finite_index_does_not_exhaust_ambient](declarations/complete-finite-index-does-not-exhaust-ambient--d971478f5087cacb102a2da5.md) | 400 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [collapsed_targets_can_exhaust_distinct_ambient_values](declarations/collapsed-targets-can-exhaust-distinct-ambient-values--389ccb85a784c79092e5077e.md) | 418 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `def` | [rejectingChecker](declarations/rejectingchecker--f923119d9568258d54848971.md) | 429 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [rejecting_checker_does_not_cover_singleton](declarations/rejecting-checker-does-not-cover-singleton--f61134bce26114f0505b42f4.md) | 437 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [rejecting_checker_covers_empty](declarations/rejecting-checker-covers-empty--d97dc64ffc09e9fbd6ce42ca.md) | 445 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [empty_domain_does_not_exhaust_singleton](declarations/empty-domain-does-not-exhaust-singleton--b04781c83342a8dc0676efa4.md) | 452 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [empty_ambient_exhaustion_is_vacuous](declarations/empty-ambient-exhaustion-is-vacuous--cd48990992003ad5c1372bd2.md) | 461 | `BLOCKED_NATIVE_ADMISSION` |
