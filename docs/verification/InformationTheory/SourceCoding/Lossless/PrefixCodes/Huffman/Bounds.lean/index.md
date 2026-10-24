# Verification target: GRWTSK.InformationTheory.Huffman.Bounds

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cb9bf59c507e727aef8d34827adf353c3f1ab108",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/InformationTheory/Huffman/Bounds.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/index.md) · [Full source](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cb9bf59c507e727aef8d34827adf353c3f1ab108`.

Source path: `GRWTSK/InformationTheory/Huffman/Bounds.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/InformationTheory/Huffman/Bounds.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.InformationTheory.Huffman.CheckedArithmetic`](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/CheckedArithmetic.lean/index.md) — import line 1; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [maxFileBytes](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/maxfilebytes--3d5509f782b2943c0543b4d9.md) | 29 | `declaration-track:3d5509f782b2943c0543b4d9730dea5ba5d7814044d2e454c78c0264223171f7` |
| 2 | `def` | [maxCorpusBytes](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/maxcorpusbytes--796a3e01b84d36ced945dd05.md) | 30 | `declaration-track:796a3e01b84d36ced945dd05cd9f760940cebec2ca0fddd09c82ba6721a8dc5b` |
| 3 | `def` | [maxCodeBits](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/maxcodebits--0700ce2e3b3bebc148f1e1f1.md) | 31 | `declaration-track:0700ce2e3b3bebc148f1e1f181bdb228c344c368155ec8c3e82c02913c5fd74d` |
| 4 | `def` | [maxFileBits](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/maxfilebits--c4fa828f2555b920a40ab87f.md) | 32 | `declaration-track:c4fa828f2555b920a40ab87fec8861ac107d8c6838893f5e860208236d6499d4` |
| 5 | `def` | [maxFileCompressedBytes](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/maxfilecompressedbytes--728c10ac92e870ccd28af821.md) | 33 | `declaration-track:728c10ac92e870ccd28af821e7ec6a1b4ecf784721c37b3bd0c2eba7f6e593f9` |
| 6 | `theorem` | [maxFileBytes_value](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/maxfilebytes-value--ad2039f3692f2e39fcac39bc.md) | 35 | `result-track:ad2039f3692f2e39fcac39bc9820d78de1885d7ee6bd75e88d977a06b2e5d086` |
| 7 | `theorem` | [maxCorpusBytes_value](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/maxcorpusbytes-value--8a37737a9381f27b24ad0750.md) | 36 | `result-track:8a37737a9381f27b24ad075094217d6baaee13d739fff12718219c97ffa567fc` |
| 8 | `theorem` | [maxFileBits_value](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/maxfilebits-value--93c726e29752ff4db2208275.md) | 37 | `result-track:93c726e29752ff4db2208275ca86080df67820911b2ff2ff8fd432b5536f7e28` |
| 9 | `theorem` | [maxU64_value](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/maxu64-value--7987248fa78a5973de70591c.md) | 38 | `result-track:7987248fa78a5973de70591cc5e05188accbb1e8d1587884c22e4319a6df49d3` |
| 10 | `def` | [compressedByteLen](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/compressedbytelen--803ce0aec1435d28fc047b3b.md) | 41 | `declaration-track:803ce0aec1435d28fc047b3ba54d135878fd0f6ca74629647df92d4f6b4fd1cb` |
| 11 | `theorem` | [compressedByteLen_eq_ceil](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/compressedbytelen-eq-ceil--4ca4a059dd933b25f47dce3c.md) | 44 | `result-track:4ca4a059dd933b25f47dce3c4d00c80570d50beb2fdc64deaef3b1fce6b90672` |
| 12 | `theorem` | [compressedByteLen_monotone](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/compressedbytelen-monotone--d667e1f93b2ff06d79f12243.md) | 51 | `result-track:d667e1f93b2ff06d79f1224344b5732d3c2684fb78f2efd9fccbe6850ae44bd8` |
| 13 | `theorem` | [compressedByteLen_le_self](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/compressedbytelen-le-self--982bae4b4dfed09929c69f64.md) | 56 | `result-track:982bae4b4dfed09929c69f6435666ea63f502aa5459766a737e9bc782666bd75` |
| 14 | `theorem` | [compressedByteLen_u64_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/compressedbytelen-u64-bound--fec7347cc8c095fee8e539c3.md) | 62 | `result-track:fec7347cc8c095fee8e539c3c94a7c9f9dbb1dc5d3d7039e70e8ab89fe7cc77b` |
| 15 | `theorem` | [compressed_len_add_checked](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/compressed-len-add-checked--ca96ca2b7bb4070836ab8f69.md) | 70 | `result-track:ca96ca2b7bb4070836ab8f694ab278ff0608b29b207b561e26d0d2283495ff40` |
| 16 | `theorem` | [compressed_len_max](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/compressed-len-max--3fd9e186c823e94300c7eb07.md) | 76 | `result-track:3fd9e186c823e94300c7eb0780506a1aee9b48eaf5f89390e1e7a5da945bb670` |
| 17 | `theorem` | [naive_ceil_add_overflows](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/naive-ceil-add-overflows--bc451e9f0acecd3418b3ffa3.md) | 79 | `result-track:bc451e9f0acecd3418b3ffa3ab3b7a11e4b276b4019122ab5c80af72187c09b4` |
| 18 | `def` | [checkedUsize](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/checkedusize--e11b0fd7d3a059353f15be88.md) | 82 | `declaration-track:e11b0fd7d3a059353f15be88228e7dc155f571e49dfb792455d0cb4df56b5bea` |
| 19 | `theorem` | [checkedUsize_eq_some_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/checkedusize-eq-some-iff--398874ce3ab0759c3547e39a.md) | 85 | `result-track:398874ce3ab0759c3547e39ab7540450acfc1e574fbc792d29d185a635dfe347` |
| 20 | `theorem` | [checkedUsize_eq_none_iff](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/checkedusize-eq-none-iff--c54a3f7e6e29ed94f31471ff.md) | 90 | `result-track:c54a3f7e6e29ed94f31471ff36f85e963b51ce5a8178a923b9e0fe7e371d4a5a` |
| 21 | `theorem` | [compressed_len_64](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/compressed-len-64--8c9fae7ce028d64cb7ab42d6.md) | 94 | `result-track:8c9fae7ce028d64cb7ab42d6ccf3470e7c4920216239445efad6758dffdc689e` |
| 22 | `def` | [weightSum](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/weightsum--c4f7ef3b2d3e67af7fb235dc.md) | 100 | `declaration-track:c4f7ef3b2d3e67af7fb235dc4b6d3871908f936ecb55883d0ef2bec587410794` |
| 23 | `theorem` | [products_le_weightSum_mul](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/products-le-weightsum-mul--b2f4b5e358bff2f7d6bedece.md) | 102 | `result-track:b2f4b5e358bff2f7d6bedece1a9ef85a1c62e506091d878703867039d4f33e90` |
| 24 | `theorem` | [inventory_products_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/inventory-products-bound--d2109c4e0a48118c77ba80e8.md) | 114 | `result-track:d2109c4e0a48118c77ba80e8206254ee61b7d4258ea917b55330fb6ccee643c2` |
| 25 | `theorem` | [maxFileBits_le_u64](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/maxfilebits-le-u64--45bd6a9292ecf3b5e49c3126.md) | 121 | `result-track:45bd6a9292ecf3b5e49c312630d21d20a18ffab19fdf9c85a2357af353731105` |
| 26 | `theorem` | [inventory_dot_checked](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/inventory-dot-checked--3d64f1d096721ce30ef504ac.md) | 126 | `result-track:3d64f1d096721ce30ef504ac7c0790cf1c58fe069db0e5907c2ae2595cb8ed8a` |
| 27 | `theorem` | [merge_checked_of_mass](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/merge-checked-of-mass--84e0fa6009e396164177ee3f.md) | 137 | `result-track:84e0fa6009e396164177ee3f441442c4ae5bb689802997eea531bf2936d9cce1` |
| 28 | `theorem` | [inventory_compressed_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/inventory-compressed-bound--989152f10c572385f1065168.md) | 143 | `result-track:989152f10c572385f1065168934cae43de9b999e4018719f68e679b1723db6ea` |
| 29 | `theorem` | [inventory_compressed_32](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/inventory-compressed-32--0bc59fa6028debff97e2ce0b.md) | 147 | `result-track:0bc59fa6028debff97e2ce0b4be9d6b073e8cbcc8a0495e377cc1bf217fa4086` |
| 30 | `theorem` | [code_length_u64_cast](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/code-length-u64-cast--b9737b9dd53510833a0874c9.md) | 157 | `result-track:b9737b9dd53510833a0874c9d7bb3a4c22282ae684527d2bbdcf3ac469c2bfe9` |
| 31 | `theorem` | [code_length_u64_checked](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/code-length-u64-checked--470c66b9c315937c17c84888.md) | 164 | `result-track:470c66b9c315937c17c8488826c5835f1fc42a685a647e9affb37722a6d4f96a` |
| 32 | `theorem` | [symbol_index_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/symbol-index-bound--c2af1e1f91d6abd0c7a04233.md) | 171 | `result-track:c2af1e1f91d6abd0c7a042331ed932b868bbe268059793e32224632274a91019` |
| 33 | `theorem` | [inventory_position_64](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/inventory-position-64--22d8ac6324356a4a6f31614a.md) | 173 | `result-track:22d8ac6324356a4a6f31614a082de22489d855072ea30ab25874384e2bf84824` |
| 34 | `theorem` | [inventory_position_bound_exceeds_32](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/inventory-position-bound-exceeds-32--250a2863acd6b88642539dc4.md) | 178 | `result-track:250a2863acd6b88642539dc456a29280e045c861d482e11103d9eda4c5eede21` |
| 35 | `theorem` | [position_limit_32_refuses_max_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/position-limit-32-refuses-max-bound--5596e393e24f81953afb1e58.md) | 182 | `result-track:5596e393e24f81953afb1e580d58758c122655972e61e107c2817e33d7936b03` |
| 36 | `theorem` | [inventory_position_platform](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/inventory-position-platform--a4729b4ca09c7cb78a13cd5b.md) | 185 | `result-track:a4729b4ca09c7cb78a13cd5b67e01ec4d774c55daf40a5c6730c34559c18afae` |
| 37 | `theorem` | [position_successor_fits](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/position-successor-fits--a0661b7044aec2d21c3044d5.md) | 193 | `result-track:a0661b7044aec2d21c3044d53ba162ca090ad5346f03197a4e6f07f7cefa7cd1` |
| 38 | `theorem` | [packed_index_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/packed-index-bound--77b06cbe1aca02ebc11d96cf.md) | 197 | `result-track:77b06cbe1aca02ebc11d96cf7961c017fbe067610cabac0473a56e95609e43f4` |
| 39 | `theorem` | [packed_shift_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/packed-shift-bound--346bef6686469d74596c2a86.md) | 202 | `result-track:346bef6686469d74596c2a866b01704ac5de669e28d04f0b5dc3178fbfa06bd4` |
| 40 | `theorem` | [padding_shift_bound](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/padding-shift-bound--3bada69578c97345863403d6.md) | 205 | `result-track:3bada69578c97345863403d64681a82755fc7c801075e380a7406832b4d83d8b` |
| 41 | `theorem` | [packed_index_usize](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/packed-index-usize--6eb216e3ce7802e8e59d60fb.md) | 208 | `result-track:6eb216e3ce7802e8e59d60fba2f7735324e597963ac0b48ea9c8880b99a52bf9` |
| 42 | `theorem` | [increment_before_end](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/increment-before-end--f7519dd4b7e01fd80cd3e002.md) | 216 | `result-track:f7519dd4b7e01fd80cd3e00205cbd7a2e507b924f26a38ce8add32818f1951a2` |
| 43 | `theorem` | [inventory_output_64](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/inventory-output-64--360996e66bd22d9517760742.md) | 222 | `result-track:360996e66bd22d951776074204d55c26f2ea49647d8527c8ffa97dabb7f138a6` |
| 44 | `theorem` | [inventory_total_add_32](../../../../../../../mathematics/InformationTheory/SourceCoding/Lossless/PrefixCodes/Huffman/Bounds.lean/declarations/inventory-total-add-32--7d760d965848a5e699d94777.md) | 228 | `result-track:7d760d965848a5e699d9477738d57d5fa62645eadbcc133e073d92b923fe9caf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
