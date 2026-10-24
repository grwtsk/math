# GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FiniteOccurrenceMaps

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**39 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fdeec763fde584ab6349c5a3fa0d412cd9394fb2`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/FiniteOccurrenceMaps.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Occurrence](declarations/occurrence--ae2ad3ebd10781bdeeeef33e.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Output](declarations/output--b68cae06f3842b3dd3fe9b39.md) | 18 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `structure` | [Reference](declarations/reference--7ae9a46bc20de1235509fc83.md) | 22 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `structure` | [Woven](declarations/woven--ff9bf30041a0d94edec9d152.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [OutputsConsistent](declarations/outputsconsistent--2e732001629ad2a69075152f.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [OccurrencesConsistent](declarations/occurrencesconsistent--ab25a6b48df35d7118892d6a.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [outputConsistencyCheck](declarations/outputconsistencycheck--e98df9b0008c933a1c77f107.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [occurrenceConsistencyCheck](declarations/occurrenceconsistencycheck--e7fb4f88ac135d56b3a589c2.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [outputConsistencyCheck_eq_true_iff](declarations/outputconsistencycheck-eq-true-iff--a2ad131fe5cf299f4e46ef5c.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [occurrenceConsistencyCheck_eq_true_iff](declarations/occurrenceconsistencycheck-eq-true-iff--68805b1ae014c80d4a3f0603.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [lookup](declarations/lookup--e042e1c930421600d1a0c3b7.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [Covered](declarations/covered--d0d2a8e9d93dd4bc7483aa18.md) | 60 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [coverageCheck](declarations/coveragecheck--373bc45ed0df4266703fd48d.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [coverageCheck_eq_true_iff](declarations/coveragecheck-eq-true-iff--1ee227c5e2c68d5b05ebf2fb.md) | 68 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [covered_occurrences_consistent](declarations/covered-occurrences-consistent--8dcbf603fe9160b3dd635c26.md) | 73 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [references](declarations/references--5c879ac79c150a84bb416838.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [decode](declarations/decode--2955bcf64f08785529a8705d.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [reference_length_preserved](declarations/reference-length-preserved--e48e7085f546266e1b52ca37.md) | 93 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [decode_references_of_coverage](declarations/decode-references-of-coverage--c74dcf504b557326fc3f30e4.md) | 97 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [PlanValid](declarations/planvalid--e665f7df4f570334b07e9b0f.md) | 112 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [planCheck](declarations/plancheck--2deda2a6685d8b751a01ed00.md) | 117 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [planCheck_eq_true_iff](declarations/plancheck-eq-true-iff--073badbb2114c4b068324598.md) | 122 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [weave](declarations/weave--5c78631245bf9db79b6b85a0.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [weave_success_iff](declarations/weave-success-iff--4b26f9fa8e006bd349122433.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [weave_preserves_every_occurrence](declarations/weave-preserves-every-occurrence--3724be1404254da039fc6ac3.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [weave_respects_finite_bounds](declarations/weave-respects-finite-bounds--4408dfcd20061a8181cb1dd0.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [over_occurrence_bound_rejected](declarations/over-occurrence-bound-rejected--9a071573c7f6b4d91ad2a237.md) | 170 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [same_path_conflicting_payloads_rejected](declarations/same-path-conflicting-payloads-rejected--61e8265a0ac1ee764ba7e2b2.md) | 176 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [conflict_blocks_weave](declarations/conflict-blocks-weave--27fd74410df95edeb84b02d2.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [shared_output_preserves_two_occurrences](declarations/shared-output-preserves-two-occurrences--c3cc722d30562b6a5056ff5d.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [missing_slot_decode_failure](declarations/missing-slot-decode-failure--54e67db82bcd1370a3076454.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [readsetCheck](declarations/readsetcheck--8767a2248745fbb986c4ab0e.md) | 209 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [readsetCheck_eq_true_iff](declarations/readsetcheck-eq-true-iff--5045e2f8d6348c46e86cf6d7.md) | 213 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [transition](declarations/transition--1d0401e9a5bf884d352213f2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [stale_readset_blocks_transition](declarations/stale-readset-blocks-transition--1bdcc40576a1ac5e4eed69b0.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [transition_success_iff](declarations/transition-success-iff--075f597b1c8bbf7a4fb25600.md) | 232 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `example` | [(anonymous)](declarations/example--28a5d8bdf38c07e1d5372cae.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `example` | [(anonymous)](declarations/example--be6612958a3e367f808a3ed4.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `example` | [(anonymous)](declarations/example--ae1af5d3a0d84c8129f06e9e.md) | 247 | `BLOCKED_NATIVE_ADMISSION` |
