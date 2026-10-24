# GRWTSK.Analysis.ErrorBounds.RationalExpTrace

[Complete source index](../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**40 observed declarations and anonymous commands**, 25 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/Analysis/ErrorBounds/RationalExpTrace.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `875ba04830194bd422818d22a705a02d0cf197ff`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../verification/Analysis/ErrorBounds/RationalExpTrace.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `structure` | [Trace](declarations/trace--d936c5a1d7d9ef6b86e0cbac.md) | 28 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [valueAt](declarations/valueat--37ca5e7658ad4555cc70e103.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [radiusAt](declarations/radiusat--a869ccc06a4a0f165869ea04.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [seedValue](declarations/seedvalue--38ec17c1edb9695c634e51ba.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [exactSquares](declarations/exactsquares--7c642befb59646aa48bfe4fc.md) | 42 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [exactValue](declarations/exactvalue--a47cd2424e0fc09e5834d436.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [exactTrace](declarations/exacttrace--075f1c08410ad3f62c872cd9.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [seedTail](declarations/seedtail--05f2e0f146b656197d7028ee.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [propagate](declarations/propagate--d844bf5d06a9528235ff86e2.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [outputRadius](declarations/outputradius--74f35954f3fb1f296a3908ee.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [Valid](declarations/valid--0c4e335a6577f9978ab2c1cc.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `instance` | [instDecidableValid](declarations/instdecidablevalid--029040a3c7a45d27b15f5562.md) | 77 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [check](declarations/check--8c06bca13ae5bda6f1197571.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `def` | [checkWithin](declarations/checkwithin--5c048a36ec772e0324e52165.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [check_iff_valid](declarations/check-iff-valid--b64fbf37682bfe00719f06ae.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [checked_lengths](declarations/checked-lengths--66b1e227794a72ee350d0f00.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [toComplex_seedValue](declarations/tocomplex-seedvalue--1a2c646cdbb829760b6efe90.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [toComplex_exactSquares](declarations/tocomplex-exactsquares--87af64d7cfbeaf04f6a03c3a.md) | 106 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [toComplex_exactValue](declarations/tocomplex-exactvalue--88032ab7066dce2b4a716f61.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [exactTrace_value](declarations/exacttrace-value--57d466687f0732cb6a2e9c5a.md) | 118 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [exactTrace_radius](declarations/exacttrace-radius--cc1a424b3e6fcb80d1a4fd65.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [exactTrace_checked](declarations/exacttrace-checked--0d3fd6f32a1eb134edc99c31.md) | 130 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cast_seedTail](declarations/cast-seedtail--22f39b643d5b27a042927837.md) | 144 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [cast_propagate](declarations/cast-propagate--245132743b01324b181486be.md) | 149 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [check_sound](declarations/check-sound--ced328f8747abde4b5427bbf.md) | 158 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [checked_radius_nonneg](declarations/checked-radius-nonneg--9d9f1fe478dd9eb436a6f4f0.md) | 186 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [exactValue_error](declarations/exactvalue-error--ad04473416987ebb6a3b02d4.md) | 192 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [checkWithin_sound](declarations/checkwithin-sound--ae8abf2b1dc88a438af5daa3.md) | 201 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [missing_values_rejected](declarations/missing-values-rejected--2b576a7eb7d18c08a7a10143.md) | 210 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [missing_radii_rejected](declarations/missing-radii-rejected--3aced71735c2795f1283b1e9.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [negativeOneTrace](declarations/negativeonetrace--77f204bf8dc79dc58caf36f8.md) | 223 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [negative_one_checked](declarations/negative-one-checked--888a058ba6e8cdc3dcf6202b.md) | 225 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [negative_one_enclosure](declarations/negative-one-enclosure--e417d5c0a0509baa1a63eda9.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [wrong_input_rejected](declarations/wrong-input-rejected--e06f45679e0773505ba6b8e3.md) | 234 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [wrong_seed_rejected](declarations/wrong-seed-rejected--dde7621912e24527f9df2d90.md) | 237 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [wrong_square_rejected](declarations/wrong-square-rejected--b31f99c7be47174fb73a6fcc.md) | 241 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [rounded_trace_control](declarations/rounded-trace-control--59d5a80477f9fc44a592a538.md) | 245 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [input_guards_rejected](declarations/input-guards-rejected--b6efc8a76c70b619f8b55ea8.md) | 252 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [coarse_is_not_precise](declarations/coarse-is-not-precise--9caf66882a675458b67ec901.md) | 257 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [malformed_trace_rejected](declarations/malformed-trace-rejected--4af395211ee3ca5f16c6ff80.md) | 262 | `BLOCKED_NATIVE_ADMISSION` |
