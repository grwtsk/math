# GRWTSK.InformationTheory.Huffman.Bounds

[Complete source index](../../../../../../complete-source-index.md) · [Up one directory](../complete-source-index.md) · [Full source](source.md)

**44 observed declarations and anonymous commands**, 36 preserved theorem/lemma result identities. Every occurrence is linked below; no sampling or verification filter is applied.

Source: `GRWTSK/InformationTheory/Huffman/Bounds.lean` · commit `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cb9bf59c507e727aef8d34827adf353c3f1ab108`.

**Verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/index.md).

Lexical command heads are source observations, not a Lean parse or theorem acceptance. Unrecognized syntax remains included in the complete source snapshot.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


| No. | Kind | Source declaration / anonymous command | Source line | Verification |
|---:|---|---|---:|---|
| 1 | `def` | [maxFileBytes](declarations/maxfilebytes--3d5509f782b2943c0543b4d9.md) | 29 | `BLOCKED_NATIVE_ADMISSION` |
| 2 | `def` | [maxCorpusBytes](declarations/maxcorpusbytes--796a3e01b84d36ced945dd05.md) | 30 | `BLOCKED_NATIVE_ADMISSION` |
| 3 | `def` | [maxCodeBits](declarations/maxcodebits--0700ce2e3b3bebc148f1e1f1.md) | 31 | `BLOCKED_NATIVE_ADMISSION` |
| 4 | `def` | [maxFileBits](declarations/maxfilebits--c4fa828f2555b920a40ab87f.md) | 32 | `BLOCKED_NATIVE_ADMISSION` |
| 5 | `def` | [maxFileCompressedBytes](declarations/maxfilecompressedbytes--728c10ac92e870ccd28af821.md) | 33 | `BLOCKED_NATIVE_ADMISSION` |
| 6 | `theorem` | [maxFileBytes_value](declarations/maxfilebytes-value--ad2039f3692f2e39fcac39bc.md) | 35 | `BLOCKED_NATIVE_ADMISSION` |
| 7 | `theorem` | [maxCorpusBytes_value](declarations/maxcorpusbytes-value--8a37737a9381f27b24ad0750.md) | 36 | `BLOCKED_NATIVE_ADMISSION` |
| 8 | `theorem` | [maxFileBits_value](declarations/maxfilebits-value--93c726e29752ff4db2208275.md) | 37 | `BLOCKED_NATIVE_ADMISSION` |
| 9 | `theorem` | [maxU64_value](declarations/maxu64-value--7987248fa78a5973de70591c.md) | 38 | `BLOCKED_NATIVE_ADMISSION` |
| 10 | `def` | [compressedByteLen](declarations/compressedbytelen--803ce0aec1435d28fc047b3b.md) | 41 | `BLOCKED_NATIVE_ADMISSION` |
| 11 | `theorem` | [compressedByteLen_eq_ceil](declarations/compressedbytelen-eq-ceil--4ca4a059dd933b25f47dce3c.md) | 44 | `BLOCKED_NATIVE_ADMISSION` |
| 12 | `theorem` | [compressedByteLen_monotone](declarations/compressedbytelen-monotone--d667e1f93b2ff06d79f12243.md) | 51 | `BLOCKED_NATIVE_ADMISSION` |
| 13 | `theorem` | [compressedByteLen_le_self](declarations/compressedbytelen-le-self--982bae4b4dfed09929c69f64.md) | 56 | `BLOCKED_NATIVE_ADMISSION` |
| 14 | `theorem` | [compressedByteLen_u64_bound](declarations/compressedbytelen-u64-bound--fec7347cc8c095fee8e539c3.md) | 62 | `BLOCKED_NATIVE_ADMISSION` |
| 15 | `theorem` | [compressed_len_add_checked](declarations/compressed-len-add-checked--ca96ca2b7bb4070836ab8f69.md) | 70 | `BLOCKED_NATIVE_ADMISSION` |
| 16 | `theorem` | [compressed_len_max](declarations/compressed-len-max--3fd9e186c823e94300c7eb07.md) | 76 | `BLOCKED_NATIVE_ADMISSION` |
| 17 | `theorem` | [naive_ceil_add_overflows](declarations/naive-ceil-add-overflows--bc451e9f0acecd3418b3ffa3.md) | 79 | `BLOCKED_NATIVE_ADMISSION` |
| 18 | `def` | [checkedUsize](declarations/checkedusize--e11b0fd7d3a059353f15be88.md) | 82 | `BLOCKED_NATIVE_ADMISSION` |
| 19 | `theorem` | [checkedUsize_eq_some_iff](declarations/checkedusize-eq-some-iff--398874ce3ab0759c3547e39a.md) | 85 | `BLOCKED_NATIVE_ADMISSION` |
| 20 | `theorem` | [checkedUsize_eq_none_iff](declarations/checkedusize-eq-none-iff--c54a3f7e6e29ed94f31471ff.md) | 90 | `BLOCKED_NATIVE_ADMISSION` |
| 21 | `theorem` | [compressed_len_64](declarations/compressed-len-64--8c9fae7ce028d64cb7ab42d6.md) | 94 | `BLOCKED_NATIVE_ADMISSION` |
| 22 | `def` | [weightSum](declarations/weightsum--c4f7ef3b2d3e67af7fb235dc.md) | 100 | `BLOCKED_NATIVE_ADMISSION` |
| 23 | `theorem` | [products_le_weightSum_mul](declarations/products-le-weightsum-mul--b2f4b5e358bff2f7d6bedece.md) | 102 | `BLOCKED_NATIVE_ADMISSION` |
| 24 | `theorem` | [inventory_products_bound](declarations/inventory-products-bound--d2109c4e0a48118c77ba80e8.md) | 114 | `BLOCKED_NATIVE_ADMISSION` |
| 25 | `theorem` | [maxFileBits_le_u64](declarations/maxfilebits-le-u64--45bd6a9292ecf3b5e49c3126.md) | 121 | `BLOCKED_NATIVE_ADMISSION` |
| 26 | `theorem` | [inventory_dot_checked](declarations/inventory-dot-checked--3d64f1d096721ce30ef504ac.md) | 126 | `BLOCKED_NATIVE_ADMISSION` |
| 27 | `theorem` | [merge_checked_of_mass](declarations/merge-checked-of-mass--84e0fa6009e396164177ee3f.md) | 137 | `BLOCKED_NATIVE_ADMISSION` |
| 28 | `theorem` | [inventory_compressed_bound](declarations/inventory-compressed-bound--989152f10c572385f1065168.md) | 143 | `BLOCKED_NATIVE_ADMISSION` |
| 29 | `theorem` | [inventory_compressed_32](declarations/inventory-compressed-32--0bc59fa6028debff97e2ce0b.md) | 147 | `BLOCKED_NATIVE_ADMISSION` |
| 30 | `theorem` | [code_length_u64_cast](declarations/code-length-u64-cast--b9737b9dd53510833a0874c9.md) | 157 | `BLOCKED_NATIVE_ADMISSION` |
| 31 | `theorem` | [code_length_u64_checked](declarations/code-length-u64-checked--470c66b9c315937c17c84888.md) | 164 | `BLOCKED_NATIVE_ADMISSION` |
| 32 | `theorem` | [symbol_index_bound](declarations/symbol-index-bound--c2af1e1f91d6abd0c7a04233.md) | 171 | `BLOCKED_NATIVE_ADMISSION` |
| 33 | `theorem` | [inventory_position_64](declarations/inventory-position-64--22d8ac6324356a4a6f31614a.md) | 173 | `BLOCKED_NATIVE_ADMISSION` |
| 34 | `theorem` | [inventory_position_bound_exceeds_32](declarations/inventory-position-bound-exceeds-32--250a2863acd6b88642539dc4.md) | 178 | `BLOCKED_NATIVE_ADMISSION` |
| 35 | `theorem` | [position_limit_32_refuses_max_bound](declarations/position-limit-32-refuses-max-bound--5596e393e24f81953afb1e58.md) | 182 | `BLOCKED_NATIVE_ADMISSION` |
| 36 | `theorem` | [inventory_position_platform](declarations/inventory-position-platform--a4729b4ca09c7cb78a13cd5b.md) | 185 | `BLOCKED_NATIVE_ADMISSION` |
| 37 | `theorem` | [position_successor_fits](declarations/position-successor-fits--a0661b7044aec2d21c3044d5.md) | 193 | `BLOCKED_NATIVE_ADMISSION` |
| 38 | `theorem` | [packed_index_bound](declarations/packed-index-bound--77b06cbe1aca02ebc11d96cf.md) | 197 | `BLOCKED_NATIVE_ADMISSION` |
| 39 | `theorem` | [packed_shift_bound](declarations/packed-shift-bound--346bef6686469d74596c2a86.md) | 202 | `BLOCKED_NATIVE_ADMISSION` |
| 40 | `theorem` | [padding_shift_bound](declarations/padding-shift-bound--3bada69578c97345863403d6.md) | 205 | `BLOCKED_NATIVE_ADMISSION` |
| 41 | `theorem` | [packed_index_usize](declarations/packed-index-usize--6eb216e3ce7802e8e59d60fb.md) | 208 | `BLOCKED_NATIVE_ADMISSION` |
| 42 | `theorem` | [increment_before_end](declarations/increment-before-end--f7519dd4b7e01fd80cd3e002.md) | 216 | `BLOCKED_NATIVE_ADMISSION` |
| 43 | `theorem` | [inventory_output_64](declarations/inventory-output-64--360996e66bd22d9517760742.md) | 222 | `BLOCKED_NATIVE_ADMISSION` |
| 44 | `theorem` | [inventory_total_add_32](declarations/inventory-total-add-32--7d760d965848a5e699d94777.md) | 228 | `BLOCKED_NATIVE_ADMISSION` |
