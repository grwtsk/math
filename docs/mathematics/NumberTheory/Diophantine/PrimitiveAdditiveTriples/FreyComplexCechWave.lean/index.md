# GRWTSK.NumberTheory.Diophantine.PrimitiveAdditiveTriples.FreyComplexCechWave

[Complete source index](../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**34 observed declarations and anonymous commands**, 20 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a272c7f5aeb65de79e1372f4a43c786fd2ec5a0c`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyComplexCechWave.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Data](declarations/data--3294df7ec93d88daabf64fc8.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [componentData](declarations/componentdata--549cfe69fdab635acc2e18ff.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [data_ext](declarations/data-ext--b0b793efc7a10d34c1883bf2.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [mean](declarations/mean--0d4e5872723652ad7b22c571.md) | 47 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [heat](declarations/heat--2e737cbd13f25f446df698a7.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [evolve](declarations/evolve--05ba7154d9dae4f77913ee1d.md) | 55 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [component_mean](declarations/component-mean--cb608a46960192050bbb7d73.md) | 59 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [component_heat](declarations/component-heat--639e0a3b10bc2005d68bba68.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [component_evolve](declarations/component-evolve--1597f40d1116acc7a2be6b68.md) | 71 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [evolve_zero](declarations/evolve-zero--ab27ff945b87b99701d3be74.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [evolve_add](declarations/evolve-add--5dd01ac970325d188db7b637.md) | 91 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [component_mismatch](declarations/component-mismatch--951ed603c9ad82743a28b947.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [mismatch_evolve](declarations/mismatch-evolve--51363874b114fce686fdf8e6.md) | 103 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [defect](declarations/defect--f56533f897c2f4e338e819cc.md) | 115 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [defect_evolve](declarations/defect-evolve--716c88a38d2587745126cf1e.md) | 119 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [scaleData](declarations/scaledata--af1f03b914165c88455a5f44.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [mismatch_scale](declarations/mismatch-scale--66ce762e2499a78b88b0afa0.md) | 128 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `structure` | [Raw](declarations/raw--0b4bbbc56ee27b83dfaac47d.md) | 134 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `def` | [encode](declarations/encode--c6b563450c285a198b5ea0b2.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `def` | [decode](declarations/decode--3a8bee6742471acae5dbcbca.md) | 141 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [decode_encode](declarations/decode-encode--d173890d8c87d4e3a70e36ec.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [encode_decode](declarations/encode-decode--cbb52f3aa3aaa594dd2ada71.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `def` | [wave](declarations/wave--6c67703548d3c27ac4053602.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [wave_period](declarations/wave-period--0f44789662dc402f9af10d62.md) | 161 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [wave_mismatch](declarations/wave-mismatch--ddceba8d77ce9657f6782dab.md) | 166 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [wave_matching_iff](declarations/wave-matching-iff--e02a7a3be45039f34509c0ae.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [wave_glue_iff](declarations/wave-glue-iff--d76eb46d707fb7591c258f13.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [mismatchEnergy](declarations/mismatchenergy--9ec2b2195b27090cf10bf93d.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [wave_mismatch_energy](declarations/wave-mismatch-energy--e8bd5e87d9c2f2f24c6c100b.md) | 194 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `def` | [port](declarations/port--2f0ef7017e8c993f16d98771.md) | 203 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [component_port](declarations/component-port--2c0b83be2985718a83b9bcf4.md) | 206 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [port_evolve](declarations/port-evolve--4eeb8dac71c6b3220aeb8c27.md) | 212 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `def` | [rawPort](declarations/rawport--f9775cc1201ed5472762dd05.md) | 219 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [rawPort_wave](declarations/rawport-wave--349ec1adadbaaf7d59507395.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
