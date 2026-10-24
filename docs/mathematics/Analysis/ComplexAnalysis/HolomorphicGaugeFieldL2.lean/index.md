# GRWTSK.Analysis.Complex.HolomorphicGaugeFieldL2

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**47 observed declarations and anonymous commands**, 29 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/Complex/HolomorphicGaugeFieldL2.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `31ad6b4463dd12613f6a0bbb294a3e9b9f45f3fc`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ComplexAnalysis/HolomorphicGaugeFieldL2.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [RawField](declarations/rawfield--dcbe870ba8b98920ed02e1f7.md) | 40 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [unframe](declarations/unframe--64ce8e75ff58189e64597a68.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [frame](declarations/frame--aaecbef163cc9c3be3f06f49.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [unframe_frame](declarations/unframe-frame--a3f0d401952aa7d0892ac934.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [frame_unframe](declarations/frame-unframe--cbbba09e528eeeb54ac61959.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [chart_coordinate](declarations/chart-coordinate--bb03e68fbd465104fcc65d10.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [square](declarations/square--33a3c30fc27d84d80ca41206.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [square_eq](declarations/square-eq--827abaebcc6f3cfb991cb79e.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [fieldEnergy](declarations/fieldenergy--f89d27e2467546926a775dd6.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [fieldEnergy_eq](declarations/fieldenergy-eq--4e86aa0cc80ade1e9871d9f0.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [fieldEnergy_frame](declarations/fieldenergy-frame--a49167e2ced25d1cb7dd4c73.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `structure` | [FiniteField](declarations/finitefield--3d6c92ea92e595feca010eda.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [square_integrable](declarations/square-integrable--0467121440bb668e8b51c480.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [field_memLp](declarations/field-memlp--3f867629be04268e41c5e4b0.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `def` | [ofMemLp](declarations/ofmemlp--c0f672d0919120014a4f5ba1.md) | 127 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [fieldSetoid](declarations/fieldsetoid--6ee435ee9fe63558705900c6.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [FieldL2](declarations/fieldl2--b319deda1fb76539e41c843d.md) | 146 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [fieldClass](declarations/fieldclass--c07fc5e7a71c3f275c2b18e5.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [fieldClass_eq_iff](declarations/fieldclass-eq-iff--b2ff645ec088291a7a10cc2a.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [ofMemLp_congr_ae](declarations/ofmemlp-congr-ae--e6194b76c2aa98e9b4157a8d.md) | 159 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [toScalarL2](declarations/toscalarl2--3293babd267adedb8f93e97d.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [toScalarL2_class_ae](declarations/toscalarl2-class-ae--4aeafcbd9833016d69987c53.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [fromScalarL2](declarations/fromscalarl2--1b532da02e1e37afacd95097.md) | 180 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [to_from](declarations/to-from--a526b55d7861434484744170.md) | 184 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [from_to](declarations/from-to--4ca8cd6011534cd44628f0bf.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [scalarEquiv](declarations/scalarequiv--12c761d8d00d0b256dfbe04b.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [quotientFieldEnergy](declarations/quotientfieldenergy--99b7287670b06d2ba0546bac.md) | 211 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [pairing_eq](declarations/pairing-eq--23355fce468e0cca474016c2.md) | 218 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [pairing_cross_ae](declarations/pairing-cross-ae--f9c64db5f328cb1485d7d462.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [fieldPair_integrable](declarations/fieldpair-integrable--417b90451c8a79415c77e644.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [fieldPairing](declarations/fieldpairing--d594dae1a56a390add712cf2.md) | 244 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [fieldPairing_class](declarations/fieldpairing-class--29e44a1735874f5116e33b83.md) | 248 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [quotientFieldEnergy_norm](declarations/quotientfieldenergy-norm--04d57f57df0241e530c74b04.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [class_zero_iff](declarations/class-zero-iff--cacc30c13c6ce097341dd54d.md) | 279 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `def` | [completedField](declarations/completedfield--9748bb44cdfd5cc0f629fc15.md) | 300 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `def` | [targetEmbedding](declarations/targetembedding--c94e668741d6b447ecc490e6.md) | 314 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [targetEmbedding_normalizes](declarations/targetembedding-normalizes--faf1cef95370b7b269333823.md) | 319 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `def` | [fieldProjection](declarations/fieldprojection--90ae7370af04414b3b812f06.md) | 332 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [fieldProjection_normalizes](declarations/fieldprojection-normalizes--e77726b38c455dc05fc2c9ad.md) | 337 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [fieldProjection_idempotent](declarations/fieldprojection-idempotent--be34d8aa9a0d38cbd5e7dc33.md) | 342 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [fieldProjection_realizes](declarations/fieldprojection-realizes--a12649347e698df72012913f.md) | 352 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [fieldProjection_fixed_iff](declarations/fieldprojection-fixed-iff--a71541edba6532ab6fc2d405.md) | 365 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [fieldProjection_pairing](declarations/fieldprojection-pairing--f3a72a76c2158114fa14e6e0.md) | 380 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [fieldProjection_energy_le](declarations/fieldprojection-energy-le--7ad51745b0c5368427862ff1.md) | 390 | `BLOCKED_NATIVE_ADMISSION` |
| 45 | `theorem` | [fieldProjection_targetEmbedding](declarations/fieldprojection-targetembedding--58ecbcb809653873936bd53a.md) | 402 | `BLOCKED_NATIVE_ADMISSION` |
| 46 | `theorem` | [framed_spike_zero_class](declarations/framed-spike-zero-class--fd27731bb26a9966a082ec62.md) | 419 | `BLOCKED_NATIVE_ADMISSION` |
| 47 | `theorem` | [no_allFields_point_recovery](declarations/no-allfields-point-recovery--08d576f3c0e6f459bac50116.md) | 427 | `BLOCKED_NATIVE_ADMISSION` |
