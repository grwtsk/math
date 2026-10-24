# GRWTSK.InformationTheory.ReedSolomon.Wire

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**30 observed declarations and anonymous commands**, 18 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/InformationTheory/ReedSolomon/Wire.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6909eabfef71ec98640030d785e0fcf36f555c55`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/CodingTheory/AlgebraicCodes/ReedSolomonCodes/Wire.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [packNatLE](declarations/packnatle--a71a4c805f459aae07f30c08.md) | 13 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [unpackNatLE](declarations/unpacknatle--343b977e1468a7c4ac0b5d83.md) | 17 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `theorem` | [unpackNatLE_packNatLE](declarations/unpacknatle-packnatle--35e09355163a3d6c8ca905df.md) | 21 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `theorem` | [packNatLE_bound](declarations/packnatle-bound--ed1735c8ee726a7628524083.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `theorem` | [packNatLE_append_zero](declarations/packnatle-append-zero--be10a607b3d4927b6734e68b.md) | 39 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [pad](declarations/pad--091b61f93c6b6a110d93013c.md) | 50 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [pad_length](declarations/pad-length--120924752545730a022b3581.md) | 53 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [take_pad](declarations/take-pad--9463d4b6e864f6fae16b1fa7.md) | 57 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [pad_nil](declarations/pad-nil--e3bae0f6d87752cbf2cbeea5.md) | 61 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `theorem` | [pad_cons](declarations/pad-cons--4ab46d3218e3995eed8fe3af.md) | 64 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [pad_add](declarations/pad-add--eeb5181a0860555c2ae526db.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [packWord](declarations/packword--7f224f15072dac3d26546ee3.md) | 80 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [unpackWord](declarations/unpackword--3096cd3da484f1aeb4bbce1a.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [unpackWord_packWord](declarations/unpackword-packword--585c06e738712ef1e0b0347d.md) | 86 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [unpackWord_packWord_take](declarations/unpackword-packword-take--071e01315984a92f279a3313.md) | 96 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `def` | [packStripe](declarations/packstripe--d0a3842e81c82f63dccf615b.md) | 101 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `def` | [unpackStripe](declarations/unpackstripe--10ba1d627d7d3b61bf6717ec.md) | 105 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [packStripe_length](declarations/packstripe-length--b39ac639f5b4ef0efa43f298.md) | 107 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [unpackStripe_packStripe](declarations/unpackstripe-packstripe--8492e89caa64720da414bb67.md) | 110 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [unpackStripe_packStripe_take](declarations/unpackstripe-packstripe-take--631725bffa5dc935bea9323c.md) | 120 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `def` | [packStripes](declarations/packstripes--51aeef9be6a95872b60881ba.md) | 125 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [unpackStripes](declarations/unpackstripes--64631b2a5b9e4e3d6c44409a.md) | 129 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [packStripes_length](declarations/packstripes-length--da16c6edf631dfa0505e99d9.md) | 132 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [packStripes_shape](declarations/packstripes-shape--1fb2bb7a15e15c275cf39794.md) | 138 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [unpackStripes_packStripes](declarations/unpackstripes-packstripes--00ece2f1222c3d1d92446882.md) | 150 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `def` | [stripeCount](declarations/stripecount--53abc5d6754f6df622bf2e40.md) | 160 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `def` | [packPayload](declarations/packpayload--951849d168db73044fee7ec7.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `def` | [unpackPayload](declarations/unpackpayload--54e23c352f0477165b550437.md) | 165 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [stripeCount_capacity](declarations/stripecount-capacity--a39cd98091f8197a94531fc0.md) | 168 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [unpackPayload_packPayload](declarations/unpackpayload-packpayload--225f19e021a5aa72032422e9.md) | 175 | `BLOCKED_NATIVE_ADMISSION` |
