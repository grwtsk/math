# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stability.Variant1a0568c6f303e386e279dbf07135051ac775363551e3f8a1a799e295ea56e5a8

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**25 observed declarations and anonymous commands**, 7 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variant1a0568c6f303e386e279dbf07135051ac775363551e3f8a1a799e295ea56e5a8.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3fa4c59f16d3887a88d7751c2fdb3a3e30a08ad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Stability/Variant1a0568c6f303e386e279dbf07135051ac775363551e3f8a1a799e295ea56e5a8.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [StabilityScope](declarations/stabilityscope--427bf95bc3331e27869bbf4e.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `inductive` | [StabilityUnit](declarations/stabilityunit--08d4ae5f990a104b2466ccdf.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [StabilityTerm](declarations/stabilityterm--bb70f0a709ed13612d9fed9b.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [StabilityProfile](declarations/stabilityprofile--271743eb48229663629a1b1d.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `structure` | [StabilityTerms](declarations/stabilityterms--5b05f0a263bf595b46c9fa8d.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [stabilityEnergy](declarations/stabilityenergy--d5ca98021cb5049d84a92855.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `structure` | [ProofGate](declarations/proofgate--0b19165bdb43b0a700ccf878.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `structure` | [CertifiedRepresentationMigration](declarations/certifiedrepresentationmigration--137de2dc25e6e5385fc35c27.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [proof_stable_under_representation_migration](declarations/proof-stable-under-representation-migration--9e41f58c5241cf7dc205a559.md) | 123 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [representation_migration_authority_nonpromotion](declarations/representation-migration-authority-nonpromotion--ec9f68f56681af86de3a4ee0.md) | 133 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `structure` | [DependencyUpdateProofReplay](declarations/dependencyupdateproofreplay--409854c12c182c40305a3177.md) | 140 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [proof_stable_under_dependency_update](declarations/proof-stable-under-dependency-update--a19c362971c07cd9376f4df7.md) | 154 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [dependency_update_authority_nonpromotion](declarations/dependency-update-authority-nonpromotion--4cb780960fff0e2d6e1861b6.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [ProofGate.Passes](declarations/proofgate-passes--ee82cf3cf81f363f7b1aeb2d.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `structure` | [LocalNumericalStabilityCertificate](declarations/localnumericalstabilitycertificate--b294894df17d0f015bea6be6.md) | 179 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `structure` | [ReflectionStabilityCertificate](declarations/reflectionstabilitycertificate--f03a86f9e68d8bcecb539e7c.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `structure` | [TranslationStabilityCertificate](declarations/translationstabilitycertificate--21e9a2e627a7a2f84e5414a0.md) | 189 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [CohomologicalStabilityCertificate](declarations/cohomologicalstabilitycertificate--39d2c5d0ec9af647238116a7.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `structure` | [ProofStabilityCertificate](declarations/proofstabilitycertificate--1ca1308b1d3fc07a995d6ac4.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `structure` | [GluingStabilityCertificate](declarations/gluingstabilitycertificate--90f9d8286d9e8536b38be8ac.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `structure` | [CouplingStabilityCertificate](declarations/couplingstabilitycertificate--385cc779219f57998877334f.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `structure` | [ScopedSystemStabilityCertificate](declarations/scopedsystemstabilitycertificate--c4792beef355461093c1862c.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [failed_proof_gate_blocks_stability](declarations/failed-proof-gate-blocks-stability--1f681478865b8d809dce80ad.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [small_update_alone_not_stability](declarations/small-update-alone-not-stability--545ace17e34579185ed34c1d.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [nonnegative_coefficients_alone_not_monotonicity](declarations/nonnegative-coefficients-alone-not-monotonicity--893c467f7881ef5370c19138.md) | 258 | `BLOCKED_NATIVE_ADMISSION` |
