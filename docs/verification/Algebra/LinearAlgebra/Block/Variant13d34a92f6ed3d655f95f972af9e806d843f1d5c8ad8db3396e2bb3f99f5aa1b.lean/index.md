# Verification target: GRWTSK.Algebra.LinearAlgebra.Block.Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "93b7d0d9959dc8d03294789ee6727e8b21dbcf03",
  "lexical_observation_count": 52,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `93b7d0d9959dc8d03294789ee6727e8b21dbcf03`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [BlockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular--c072c7aa73c82e4089ba6e25.md) | 63 | `declaration-track:c072c7aa73c82e4089ba6e250e0d0d2c36c6243fee854bbc033f3eea5b904c57` |
| 2 | `abbrev` | [IsUpperTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/isuppertriangular--c752b8a7076a2a58f19fc17e.md) | 67 | `declaration-track:c752b8a7076a2a58f19fc17ed1615449802cca15ee9e63ce1e1699f08eded5b5` |
| 3 | `abbrev` | [IsLowerTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/islowertriangular--6e7a4586bc58a73e7726faf9.md) | 71 | `declaration-track:6e7a4586bc58a73e7726faf9c7b1b5b8ed7b3a7188e5253e146c76565fdc6528` |
| 4 | `def` | [IsIndecomposable](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/isindecomposable--b453cd7b6807fda9776a1607.md) | 75 | `declaration-track:b453cd7b6807fda9776a1607fbb1ecbed4c934689f8797e9ca1bd54f4d51a4f2` |
| 5 | `theorem` | [BlockTriangular.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-submatrix--de5f72e4d34caa246cedfef0.md) | 79 | `result-track:de5f72e4d34caa246cedfef03a7e263b4521085dd99fd1643e1bd85c308b66db` |
| 6 | `theorem` | [blockTriangular_reindex_iff](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-reindex-iff--162a2d870a83c8e56c743a35.md) | 82 | `result-track:162a2d870a83c8e56c743a3534b9d8ea84c730a06b0777f965d0e6bfd22e0c85` |
| 7 | `theorem` | [BlockTriangular.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-transpose--2b5a1ef32281f4382849ca87.md) | 90 | `result-track:2b5a1ef32281f4382849ca875dda8beca4f789a95c51f818d31df4c0ee2d62bb` |
| 8 | `theorem` | [blockTriangular_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-transpose-iff--59f4f4d5c243b1f3d5594ed0.md) | 95 | `result-track:59f4f4d5c243b1f3d5594ed095fe4f855d43a8722853a73e650890208be252c5` |
| 9 | `theorem` | [blockTriangular_zero](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-zero--8d0d6c99d097a2c3eb5f74a0.md) | 100 | `result-track:8d0d6c99d097a2c3eb5f74a03e56653abe6c98e4fe1c945fad774a19a1802461` |
| 10 | `instance` | [decidableBlockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/decidableblocktriangular--87e3da3be5aea0a1b1ea2598.md) | 102 | `declaration-track:87e3da3be5aea0a1b1ea25983ae487387d2a6a1b197f5730e3aedee769af0849` |
| 11 | `theorem` | [BlockTriangular.neg](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-neg--8dc4cab1cdc48cd7dfc06047.md) | 109 | `result-track:8dc4cab1cdc48cd7dfc060472cfa1e7ee8abfb906e967bc2a79239e362e9ad0e` |
| 12 | `theorem` | [BlockTriangular.add](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-add--9300b671f457be005be80213.md) | 113 | `result-track:9300b671f457be005be80213628c22f2c84db23b0b3866244b7b2d8e3161bd27` |
| 13 | `theorem` | [BlockTriangular.sub](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-sub--c2722737015fd6945be2c6e1.md) | 116 | `result-track:c2722737015fd6945be2c6e1bd6ebd19b2535a606781a0019489f7fc167a9c39` |
| 14 | `lemma` | [BlockTriangular.add_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-add-iff-right--e82a1c72e1443d0c2b943446.md) | 120 | `result-track:e82a1c72e1443d0c2b9434466e17fd69235c3238caec39d3ce0e09c05e8769e1` |
| 15 | `lemma` | [BlockTriangular.add_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-add-iff-left--42a8cb7a8852c9d07ec26bf5.md) | 123 | `result-track:42a8cb7a8852c9d07ec26bf5b5e9c51ecaa5279d9fbe79fab9463f43860970ee` |
| 16 | `lemma` | [BlockTriangular.sub_iff_right](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-sub-iff-right--514f4fc9842805d855a8157e.md) | 126 | `result-track:514f4fc9842805d855a8157ef0cf5b3e0ea17dbd9e82ab763a255995af558de9` |
| 17 | `lemma` | [BlockTriangular.sub_iff_left](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-sub-iff-left--96be761ce3d4ac7678f19273.md) | 129 | `result-track:96be761ce3d4ac7678f19273651be3610ca2d118aef7e3dd4d8ab6040c216dd4` |
| 18 | `lemma` | [BlockTriangular.map](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-map--488b8beffbd253af881c2d7d.md) | 132 | `result-track:488b8beffbd253af881c2d7d246834c28e53c486ebd23e192550ca28b68a98e9` |
| 19 | `lemma` | [BlockTriangular.comp](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-comp--5cbc17faddbf1e45fe188dcf.md) | 136 | `result-track:5cbc17faddbf1e45fe188dcf001a72510e55545ca5ff9d39957889560cde0582` |
| 20 | `theorem` | [blockTriangular_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-diagonal--792a13335c77cc88c1c442b0.md) | 150 | `result-track:792a13335c77cc88c1c442b06074b23bbc6662d414a69cac609fedfd55a744c2` |
| 21 | `theorem` | [blockTriangular_blockDiagonal'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-blockdiagonal--e8ef5ea39791e13d2d657b92.md) | 153 | `result-track:e8ef5ea39791e13d2d657b929f35c2f833269890816a75af81d1542d66df81d3` |
| 22 | `theorem` | [blockTriangular_blockDiagonal](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-blockdiagonal--b9ba476aa78606a50c5b75eb.md) | 158 | `result-track:b9ba476aa78606a50c5b75eb394e9d52eb007d942a7d3cce6ab5b2c01ae7d0cc` |
| 23 | `theorem` | [blockTriangular_one](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-one--297ad0fa4673014b37df8392.md) | 166 | `result-track:297ad0fa4673014b37df8392cdf85ffb4ea6cc6352394398fb8f3a21b610cfb1` |
| 24 | `theorem` | [blockTriangular_single](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-single--0275176eb753d023e5a3b4e2.md) | 169 | `result-track:0275176eb753d023e5a3b4e2ba99c30dc5f435182196d88abb3a0646409d3efb` |
| 25 | `theorem` | [blockTriangular_single'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-single--a007c33e3312d764d65d9ccc.md) | 176 | `result-track:a007c33e3312d764d65d9ccc5960eb2480ba30ed53e698743fe82ce854178dac` |
| 26 | `theorem` | [blockTriangular_transvection](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-transvection--63aba48cd138e38403b6019d.md) | 184 | `result-track:63aba48cd138e38403b6019df885e3a939922290f4fbb36a03bbcb59143d2021` |
| 27 | `theorem` | [blockTriangular_transvection'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-transvection--63de286073b93060672e1d41.md) | 188 | `result-track:63de286073b93060672e1d41fff492b01e5b59e0d6aa0c190826488077fc102b` |
| 28 | `theorem` | [BlockTriangular.mul](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-mul--671d5763b82ac1cd89c9d451.md) | 198 | `result-track:671d5763b82ac1cd89c9d4515ba1ff3a90892008f5828ad6e29e98f1ec03ccac` |
| 29 | `def` | [blockTriangularSubsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangularsubsemiring--25bb88cd4df5a89cc84788f0.md) | 211 | `declaration-track:25bb88cd4df5a89cc84788f014c938232fde5b147a7e8b2708b2dbd3575e9c18` |
| 30 | `theorem` | [mem_blockTriangularSubsemiring](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/mem-blocktriangularsubsemiring--bce9937cfbb58fc48fc3c9d8.md) | 220 | `result-track:bce9937cfbb58fc48fc3c9d80e30845dc66a10661fa1a0dcff7948981c0a01a3` |
| 31 | `theorem` | [BlockTriangular.pow](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-pow--031fc231c733e2b685f7294f.md) | 225 | `result-track:031fc231c733e2b685f7294f6cba527a6c69942ecd473915eb6e7f7d1d6579d2` |
| 32 | `theorem` | [blockTriangular_algebraMap](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-algebramap--d602467f0e3350ed0c4156da.md) | 229 | `result-track:d602467f0e3350ed0c4156dab43dc6a4d19f70428bcfd59895d2f3f90988984b` |
| 33 | `def` | [blockTriangularSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangularsubalgebra--f95d3ad6c23ca2edca7902ec.md) | 235 | `declaration-track:f95d3ad6c23ca2edca7902ec864842bf5c8c6134107d4404cf1a4a543602acc1` |
| 34 | `theorem` | [mem_blockTriangularSubalgebra](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/mem-blocktriangularsubalgebra--109cd59d02c883f4b3870aaf.md) | 241 | `result-track:109cd59d02c883f4b3870aaf034cc471f313e39676f19af50bcb86009057e4b6` |
| 35 | `lemma` | [isIndecomposable_iff_blockTriangular_const](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/isindecomposable-iff-blocktriangular-const--c8466bd7cec7d03ef3ac2a9f.md) | 247 | `result-track:c8466bd7cec7d03ef3ac2a9fc47afa0bbf794ad529d05c067189e2dbe3231224` |
| 36 | `theorem` | [upper_two_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/upper-two-blocktriangular--c8286a131d1c832208aea88f.md) | 293 | `result-track:c8286a131d1c832208aea88f448244ad4fd735bc49006cf8baa9d49fff744509` |
| 37 | `theorem` | [equiv_block_det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/equiv-block-det--410b29bcd15acd60865ab6b1.md) | 303 | `result-track:410b29bcd15acd60865ab6b11854cab72d25266b4e275e56d4ab876c67401252` |
| 38 | `theorem` | [det_toSquareBlock_id](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/det-tosquareblock-id--e9743eeefee53c3252a5dbb7.md) | 314 | `result-track:e9743eeefee53c3252a5dbb71623118ab859ec165e2f0274172e9d23aeda983f` |
| 39 | `theorem` | [det_toBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/det-toblock--d5d851e31954918531f3d07a.md) | 318 | `result-track:d5d851e31954918531f3d07a8f69c5bd7a87b424325ac1c8818345765021948d` |
| 40 | `theorem` | [twoBlockTriangular_det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/twoblocktriangular-det--4ba693668df451e934dd0fcd.md) | 331 | `result-track:4ba693668df451e934dd0fcd2c55761f6ab2759e857c03bd75e6a29bd116619b` |
| 41 | `theorem` | [twoBlockTriangular_det'](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/twoblocktriangular-det--b52db001c2f8608a5867d457.md) | 341 | `result-track:b52db001c2f8608a5867d4572528333793babbf2e49a34833ef89c84243ced77` |
| 42 | `theorem` | [BlockTriangular.det](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-det--9c067bd5dc288e488840a105.md) | 349 | `result-track:9c067bd5dc288e488840a105c53a2563447da418306622957c0cba55f24ca0d0` |
| 43 | `theorem` | [BlockTriangular.det_fintype](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-det-fintype--74294c058872987f57f0acd4.md) | 384 | `result-track:74294c058872987f57f0acd4f730ae3de793e510f4063f940ff87b9ce4c3e112` |
| 44 | `theorem` | [det_of_isUpperTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/det-of-isuppertriangular--dfb1f3abdc94040e39ab0d31.md) | 390 | `result-track:dfb1f3abdc94040e39ab0d313cc421a4661b1dda8a8cd1723c2012c20ee3ae7a` |
| 45 | `theorem` | [det_of_isLowerTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/det-of-islowertriangular--870d9d23b5bb920944e5f4d4.md) | 397 | `result-track:870d9d23b5bb920944e5f4d4e81cbd5092287ef7ec84024222d15fcfb65967f9` |
| 46 | `theorem` | [matrixOfPolynomials_isUpperTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/matrixofpolynomials-isuppertriangular--7ddc2a893c481ed515aac2e5.md) | 406 | `result-track:7ddc2a893c481ed515aac2e5c7b95bf5b510b9520597d4bef591612ae0e3923f` |
| 47 | `theorem` | [det_matrixOfPolynomials](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/det-matrixofpolynomials--912a75d1be252247a16c6b80.md) | 415 | `result-track:912a75d1be252247a16c6b80b1737c8f6aa81880a95bf6674fff809080ead250` |
| 48 | `theorem` | [BlockTriangular.toBlock_inverse_mul_toBlock_eq_one](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-toblock-inverse-mul-toblock-eq-one--aa65ad251d50fa3923c1b57c.md) | 426 | `result-track:aa65ad251d50fa3923c1b57c4d49233c2b307ec09da0dfbd7b3a651455f5015b` |
| 49 | `theorem` | [BlockTriangular.inv_toBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-inv-toblock--9d60f83671f68575c7eebe98.md) | 444 | `result-track:9d60f83671f68575c7eebe9839b7b6fdcd6e3d72c918f0868b0951c5519984e2` |
| 50 | `def` | [BlockTriangular.invertibleToBlock](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-invertibletoblock--063397a5e14979961d41d4df.md) | 452 | `declaration-track:063397a5e14979961d41d4dfbb05c5ecacff935b8847facd14abae191a5339cd` |
| 51 | `theorem` | [toBlock_inverse_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/toblock-inverse-eq-zero--ece920cc4082e426615980d9.md) | 459 | `result-track:ece920cc4082e426615980d9598224be151eaea4a7fa3ac8dee64ea34567d266` |
| 52 | `theorem` | [blockTriangular_inv_of_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/Block/Variant13d34a92f6ed3d655f95f972af9e806d843f1d5c8ad8db3396e2bb3f99f5aa1b.lean/declarations/blocktriangular-inv-of-blocktriangular--68f7ad2170ab7e639e5de166.md) | 479 | `result-track:68f7ad2170ab7e639e5de1663a3aade8eb43a013213b55ae11193407f000b89c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
