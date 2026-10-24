# GRWTSK.NumberTheory.VonMangoldt.DyadicDiscrepancy

[Complete source index](../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**32 observed declarations and anonymous commands**, 17 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/NumberTheory/VonMangoldt/DyadicDiscrepancy.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e54ed6f2f472cad8f6e60d4b80e9d0648f15f6ad`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/ElementaryNumberTheory/ArithmeticFunctions/VonMangoldtFunction/DyadicDiscrepancy.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [mangoldt](declarations/mangoldt--ec8f9ab820aeccee042d0982.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [window](declarations/window--64662d499cd3d4c85bcad48b.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [location](declarations/location--860e56775d14b78b98ad9a02.md) | 34 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [coefficient](declarations/coefficient--bf6b55b99f62211568badac7.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [action](declarations/action--2dd8019735608a03dbac5139.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `def` | [mass0](declarations/mass0--4cebd8dd0c616f0a984b8ef4.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `def` | [mass1](declarations/mass1--d5dda243b18ecc07a6ce1bd1.md) | 43 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `def` | [cumulative](declarations/cumulative--85d45ee39e940e00a19c3265.md) | 46 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `def` | [center](declarations/center--cb8b96f9fe3777158a0aeb52.md) | 49 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [greenEnergy](declarations/greenenergy--ccdd77e640fea4d0166ed946.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `def` | [augmentedEnergy](declarations/augmentedenergy--95126010caff44e6c62fc99e.md) | 54 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `def` | [dyadicScale](declarations/dyadicscale--f52b87832d10c722805cf0b5.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `def` | [AllDyadicEnergyBound](declarations/alldyadicenergybound--86968ce846646bfcfd714f5c.md) | 58 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [window_lower](declarations/window-lower--3c44128180f1091d1f0ba079.md) | 63 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [window_upper](declarations/window-upper--95d366f2c4e371c32f8fd83b.md) | 66 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [location_mem](declarations/location-mem--8a58ae4efda6214668fd32c3.md) | 69 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [endpoint_mem](declarations/endpoint-mem--7e0ba7a4164e0a6db6448c4f.md) | 83 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `theorem` | [endpoint_location](declarations/endpoint-location--4bc9a36442bb8f99e23b3222.md) | 87 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [endpoint_green_silent](declarations/endpoint-green-silent--da334df613f0f91dddb46946.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [center_expansion](declarations/center-expansion--ec69a42bd053872e572f68b1.md) | 98 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [cumulative_integrable](declarations/cumulative-integrable--f73738ff8d262841072f385a.md) | 104 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `theorem` | [cumulative_square_integrable](declarations/cumulative-square-integrable--0311db9d80c35fdff7a37e1a.md) | 113 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [cumulative_memLp_two](declarations/cumulative-memlp-two--65e630c342249a97278a3523.md) | 153 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [centered_memLp_two](declarations/centered-memlp-two--a5a894af9c84a8498ccfbd35.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [integral_cumulative](declarations/integral-cumulative--383fb7ed5c02d18742f2d06d.md) | 162 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [greenEnergy_nonneg](declarations/greenenergy-nonneg--282b0774b89064f756c5c999.md) | 188 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [augmentedEnergy_nonneg](declarations/augmentedenergy-nonneg--fa98f9a220bef571a205a541.md) | 191 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [mass0_sq_le_energy](declarations/mass0-sq-le-energy--165f861fd76d8b085584a8b8.md) | 195 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [mass1_sq_le_energy](declarations/mass1-sq-le-energy--31f4440ca755c0140742fddf.md) | 199 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [raw_cumulative_energy](declarations/raw-cumulative-energy--904bec4d8595e1460662984d.md) | 204 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `def` | [mellinTest](declarations/mellintest--71b062f46f7f390dde3c3025.md) | 214 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `def` | [dirichletBlock](declarations/dirichletblock--ec4c86618456bfd41f34cd80.md) | 217 | `BLOCKED_NATIVE_ADMISSION` |
