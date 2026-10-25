# GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.StateTransition.ResearchState

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 10 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5c15e98bc719a5799e742195aa26fe0550b30e3b`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/StateTransition/ResearchState.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [SourceIdentity](declarations/sourceidentity--3844fbef9606f04073ff52cf.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Catalog](declarations/catalog--96fe51567e2483be7b507c04.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [Meaning](declarations/meaning--16e20a8cf4100ff56092a9a8.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [Holds](declarations/holds--14b4bdebab9e962211b8c416.md) | 48 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `abbrev` | [Reduction](declarations/reduction--08b31c3f3c465fa082ae98f7.md) | 52 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `inductive` | [TypedRelation](declarations/typedrelation--9eeabc74a9fa6779ad7353bb.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `inductive` | [VerificationStatus](declarations/verificationstatus--914cf0e958e1a41179c00635.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [VerificationMetadata](declarations/verificationmetadata--65363a794c1d2efccbd71552.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `structure` | [Metadata](declarations/metadata--7d3a7ebeee91426b3c52f08b.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `inductive` | [Operation](declarations/operation--981fc1b563908a9f5edd38c7.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `instance` | [(anonymous)](declarations/instance--816c6ed633164a5e5128948b.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [SelfSpecification](declarations/selfspecification--21f626031355f12d5271e944.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [SelfSpecification.unrestricted](declarations/selfspecification-unrestricted--b1d1859de63c0cbdedc4fac2.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `structure` | [Event](declarations/event--b8930d9ec57c9f47e0b202cb.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [State](declarations/state--7c89d14ed515cabd75852119.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [advance](declarations/advance--66d07a3bbb10d53ef114f3b3.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [initialState](declarations/initialstate--4fd69b1616805ba838a6ac27.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [Valid](declarations/valid--7d4b45e1a69715d777ca9383.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `inductive` | [Change](declarations/change--52420aeb076c162f4d14f020.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [change_conserves](declarations/change-conserves--7ddc2ff4843293ace11ac6f0.md) | 239 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [change_preserves_locked_target](declarations/change-preserves-locked-target--5257f49b7069500873b0235b.md) | 266 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [change_history_extends](declarations/change-history-extends--2215d3214c45ed5151012dc7.md) | 276 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [change_preserves_valid](declarations/change-preserves-valid--317a178a897b1e1472f1aca8.md) | 281 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [initialState_valid](declarations/initialstate-valid--535a5e7085dfb24b462a2e17.md) | 355 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `abbrev` | [Reachable](declarations/reachable--4c000a8bc7104bdc61741f59.md) | 361 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [reachable_preserves_valid](declarations/reachable-preserves-valid--8567c5c6fe93ef3d3892df4e.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [reachable_conserves](declarations/reachable-conserves--b2e7129ae86fb5c340367f10.md) | 372 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [reachable_preserves_locked_target](declarations/reachable-preserves-locked-target--96f9dff9c251c19de66ff349.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [selected_of_empty_frontier](declarations/selected-of-empty-frontier--ece0c4f5246a1d8122263700.md) | 389 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [statement_of_meaning](declarations/statement-of-meaning--92d28dec07b16b677f2ef15a.md) | 397 | `BLOCKED_NATIVE_ADMISSION` |
