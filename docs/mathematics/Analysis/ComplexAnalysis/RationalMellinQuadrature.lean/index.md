# GRWTSK.Analysis.Complex.RationalMellinQuadrature

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**36 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/RationalMellinQuadrature.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe9bb430fef9fd223b23cea2616bbd33cfe3e217`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ComplexAnalysis/RationalMellinQuadrature.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Sample](declarations/sample--99febef190640f71da2dffff.md) | 26 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `structure` | [Trace](declarations/trace--491767cfba34e8e547529fc4.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [defaultSample](declarations/defaultsample--05d8f199091f007a8d14e595.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [sampleAt](declarations/sampleat--0942c00f63fcc43af82344ba.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [cellWidth](declarations/cellwidth--c8bc36577d8463590ef494c0.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [node](declarations/node--26b937c6ed400122fcd98ad1.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [sampleValue](declarations/samplevalue--3ee19f5315b96bf356b28ac6.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [sampleError](declarations/sampleerror--19a9ccc791b0fcd3350cf316.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [terms](declarations/terms--b57b0c2fa431f0ac1015fbb9.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [meshError](declarations/mesherror--ee4e20d1590c902a22f8ec5b.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [sampleBudget](declarations/samplebudget--612827d1a17c4d12c830f838.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [error](declarations/error--b80b9365ebf99d48b3957c06.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [output](declarations/output--a2a369813cb4fea94a13ab15.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [Valid](declarations/valid--bd27ece12ebd81ae5e904d80.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `instance` | [instDecidableValid](declarations/instdecidablevalid--4ee7c84b5d4fd655a5081208.md) | 72 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [check](declarations/check--6af89bcc51966b6aeb019837.md) | 75 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [checkWithin](declarations/checkwithin--4d3230b0219e887c002838c1.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [check_iff_valid](declarations/check-iff-valid--2de7db5faf8eac0383447cf8.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [length_terms](declarations/length-terms--d0be47423e90806b8c73e0a7.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [cast_node](declarations/cast-node--faf47b4586b9f7b66199f624.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [node_endpoints](declarations/node-endpoints--0d62a08a516f2d42f6704625.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cellWidth_nonneg](declarations/cellwidth-nonneg--b3b089c1969d60e2dc698b78.md) | 99 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [meshError_eq](declarations/mesherror-eq--ee86504192ca1efb45e2e169.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cast_meshError](declarations/cast-mesherror--06cb625502326502ce9e5c97.md) | 109 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [termAt_terms](declarations/termat-terms--c601c00066f21ba0fe56097a.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [terms_interpretation](declarations/terms-interpretation--dfc3ce2517aa7c4313d8a450.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [cast_sampleBudget](declarations/cast-samplebudget--c1b047459ffac6b5a427634d.md) | 131 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [quadrature_samples_error](declarations/quadrature-samples-error--7add9c81de569a3892b075fc.md) | 139 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [check_sound](declarations/check-sound--7f6dc94748b7e0e2189cff77.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [checkWithin_sound](declarations/checkwithin-sound--36acf1344e5a142c31590398.md) | 183 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [checked_lengths](declarations/checked-lengths--4941ee1f4e7dd307782bcbf5.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [checked_mesh_charge_le](declarations/checked-mesh-charge-le--f0f17eed6315ac3bb37b48f6.md) | 198 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [referenceSamples](declarations/referencesamples--0ccf4425e063d454ad57946e.md) | 215 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `def` | [referenceTrace](declarations/referencetrace--669f04a4a64a4d14e64ee2e2.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [referenceSampleAt](declarations/referencesampleat--35ca9d66aeda41012f03efa7.md) | 224 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [reference_checked](declarations/reference-checked--a2aba0c8016f26532d5ff6f4.md) | 233 | `BLOCKED_NATIVE_ADMISSION` |
