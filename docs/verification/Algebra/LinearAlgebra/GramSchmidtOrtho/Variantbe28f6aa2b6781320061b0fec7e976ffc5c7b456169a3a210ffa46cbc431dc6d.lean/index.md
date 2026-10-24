# Verification target: GRWTSK.Algebra.LinearAlgebra.GramSchmidtOrtho.Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "26cf34eee0498ed315fb94a9a4344a3d201420c9",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `26cf34eee0498ed315fb94a9a4344a3d201420c9`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Block` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt--fd8ab521d4023a7ed2d5d887.md) | 57 | `declaration-track:fd8ab521d4023a7ed2d5d8876c83d98ec2d7fe835fa43f62efd474e13079b665` |
| 2 | `theorem` | [gramSchmidt_def](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-def--7c9e769b05a7bb64c4becc32.md) | 63 | `result-track:7c9e769b05a7bb64c4becc32aa49a329bf8a85ac2f3cee31126d0195a158e233` |
| 3 | `theorem` | [gramSchmidt_def'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-def--ead9cbc5a3baed964b3f8b89.md) | 67 | `result-track:ead9cbc5a3baed964b3f8b897e93944ebe1baaa8ca29cf46322d8001bd09399a` |
| 4 | `theorem` | [gramSchmidt_def''](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-def--6c6468fa05d19788566a04ee.md) | 71 | `result-track:6c6468fa05d19788566a04eed225af9f3333c9499047a3d068007d8efaaa6e91` |
| 5 | `theorem` | [gramSchmidt_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-zero--835418d6e1192f3a5c617229.md) | 78 | `result-track:835418d6e1192f3a5c617229a038bc9aba859948805654daf43a848843a5f0f7` |
| 6 | `theorem` | [gramSchmidt_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-orthogonal--4aaffe4406aa3407ff0aa30d.md) | 84 | `result-track:4aaffe4406aa3407ff0aa30d41663a2734bbf306b062afaa784ab74830973173` |
| 7 | `theorem` | [gramSchmidt_pairwise_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-pairwise-orthogonal--5ce7622a4805cdd31664dfb4.md) | 112 | `result-track:5ce7622a4805cdd31664dfb4d3e12b2ea40d216d4673d072ef6c2b65cc410ba8` |
| 8 | `theorem` | [gramSchmidt_inv_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-inv-triangular--2e6eb6b88452215c2e61f541.md) | 116 | `result-track:2e6eb6b88452215c2e61f541138f324d2872c4f98730aeadbb08bae89e98d380` |
| 9 | `theorem` | [mem_span_gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/mem-span-gramschmidt--e6141656495277b937a93cb4.md) | 131 | `result-track:e6141656495277b937a93cb44687a795163c5d89f43b32cd1bd59fe24afe98f4` |
| 10 | `theorem` | [gramSchmidt_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-mem-span--7b74d67b80d626ba03b49805.md) | 139 | `result-track:7b74d67b80d626ba03b498051f863a42024e70b8eb21eea742087039d78abe77` |
| 11 | `theorem` | [span_gramSchmidt_Iic](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/span-gramschmidt-iic--cf11466bec026a4dd486d9ec.md) | 151 | `result-track:cf11466bec026a4dd486d9ec21424bdf5a0a6852991ee5f5293577cd7f08d08d` |
| 12 | `theorem` | [span_gramSchmidt_Iio](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/span-gramschmidt-iio--a6c18dbf7e19b5a6ec536afa.md) | 156 | `result-track:a6c18dbf7e19b5a6ec536afaf09b9a5ed954fd201d4c879f5f5f8fe45f6cb302` |
| 13 | `theorem` | [span_gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/span-gramschmidt--2c25f8e35ce9a507388e44f0.md) | 164 | `result-track:2c25f8e35ce9a507388e44f0a03615b2992f606d503d06efd7581614f3e2f589` |
| 14 | `theorem` | [gramSchmidt_of_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-of-orthogonal--5197377c7a9af2174b4dd446.md) | 170 | `result-track:5197377c7a9af2174b4dd446b1278b17424ffff36083b8dc6a135ddeb31b0829` |
| 15 | `theorem` | [gramSchmidt_ne_zero_coe](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-ne-zero-coe--fa36e829332b61ac59d8cca3.md) | 192 | `result-track:fa36e829332b61ac59d8cca3ef3d18da097b606c013dbf605b579a804bd8c620` |
| 16 | `theorem` | [gramSchmidt_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-ne-zero--cf6fbc7ce11c8ab8e9cf9f5a.md) | 212 | `result-track:cf6fbc7ce11c8ab8e9cf9f5a3c783789e984fe04bcd9d983652f87c826490e70` |
| 17 | `theorem` | [gramSchmidt_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-triangular--3a72130c6f92467102f14f33.md) | 217 | `result-track:3a72130c6f92467102f14f33fef2e2a9ea34e2ffd08b8e63eb17c86a867ce395` |
| 18 | `theorem` | [gramSchmidt_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-linearindependent--a85de8183a2b6d3d332a4d1d.md) | 227 | `result-track:a85de8183a2b6d3d332a4d1dbbc5b660f973c169ff3ba05283237901c086af02` |
| 19 | `def` | [gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtbasis--efe51d4220f196fe49757be7.md) | 233 | `declaration-track:efe51d4220f196fe49757be7aaed4901fda293631d30ec28973c93a624580016` |
| 20 | `theorem` | [coe_gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/coe-gramschmidtbasis--76f3bf48aae242f2569d00b6.md) | 237 | `result-track:76f3bf48aae242f2569d00b647603a54d2fa81961b4e89998f27f75b04bdbf2e` |
| 21 | `def` | [gramSchmidtNormed](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtnormed--c7cbf14129cae67a3634789a.md) | 243 | `declaration-track:c7cbf14129cae67a3634789a96cf7b7891381626a3c037a469093c30f22aed27` |
| 22 | `theorem` | [gramSchmidtNormed_unit_length_coe](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtnormed-unit-length-coe--78749c124fe253cfcb41b817.md) | 246 | `result-track:78749c124fe253cfcb41b817245c08daf7f81d194567518a4e3cf5876063061e` |
| 23 | `theorem` | [gramSchmidtNormed_unit_length](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtnormed-unit-length--ed74ce8cf775e91a43ea67e2.md) | 251 | `result-track:ed74ce8cf775e91a43ea67e27705eefaf1b0fcbd0e69c6e2f945253166826c6c` |
| 24 | `theorem` | [gramSchmidtNormed_unit_length'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtnormed-unit-length--30df8e5eb7e1006e8bf5f3d3.md) | 255 | `result-track:30df8e5eb7e1006e8bf5f3d3240937df2bb3bd2632c3ee1f13acf54c1263e571` |
| 25 | `theorem` | [gramSchmidt_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-orthonormal--aaed57abd1a13d1508dcc48c.md) | 264 | `result-track:aaed57abd1a13d1508dcc48c1f648b6c810d0e8e31aefbbae498e5eda628ff81` |
| 26 | `theorem` | [gramSchmidt_orthonormal'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidt-orthonormal--0e14832cb2e28850aa4b1bd2.md) | 278 | `result-track:0e14832cb2e28850aa4b1bd286a8e28b9fecf9adf3d1e82a3b37c94678d0b8de` |
| 27 | `theorem` | [span_gramSchmidtNormed](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/span-gramschmidtnormed--0fe82a95e912a1377848f3cb.md) | 285 | `result-track:0fe82a95e912a1377848f3cbdc79eb9dc548ec196055a898c081342f39fa98e8` |
| 28 | `theorem` | [span_gramSchmidtNormed_range](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/span-gramschmidtnormed-range--5055992499ef3178b4a29092.md) | 297 | `result-track:5055992499ef3178b4a2909211ca275bc1da9fecae3df37b74284b9a3d875a91` |
| 29 | `def` | [gramSchmidtOrthonormalBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtorthonormalbasis--29d70b60f5803b9d45403f0a.md) | 309 | `declaration-track:29d70b60f5803b9d45403f0a07c7303ded5e58eb6f2a1c5f4fcff19b83956e16` |
| 30 | `theorem` | [gramSchmidtOrthonormalBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtorthonormalbasis-apply--9f1c4746f1004df7ba29be6d.md) | 313 | `result-track:9f1c4746f1004df7ba29be6d3b9236f0a2e1eef016fd7b39a2e99849b7ed64ea` |
| 31 | `theorem` | [gramSchmidtOrthonormalBasis_apply_of_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtorthonormalbasis-apply-of-orthogonal--7b5d74736e6bc0712c83c815.md) | 318 | `result-track:7b5d74736e6bc0712c83c815c220948d73561118315a900d0b6645e1a925246b` |
| 32 | `theorem` | [inner_gramSchmidtOrthonormalBasis_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/inner-gramschmidtorthonormalbasis-eq-zero--5536bce37817fe8d74718619.md) | 326 | `result-track:5536bce37817fe8d747186191da7dd040dd3648ada460832da7d38a47048655d` |
| 33 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtorthonormalbasis-inv-triangular--9f18579e99418890dfaf7886.md) | 343 | `result-track:9f18579e99418890dfaf7886a420d36991eeb0c55f8842e2d4802aa2781f609a` |
| 34 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtorthonormalbasis-inv-triangular--e604a07cf69721cfb6a7e718.md) | 350 | `result-track:e604a07cf69721cfb6a7e718c9690d83b16cfd944dbf9d4d0dbccf2de75a1451` |
| 35 | `theorem` | [gramSchmidtOrthonormalBasis_inv_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtorthonormalbasis-inv-blocktriangular--376c5ba17e16c011b465f800.md) | 357 | `result-track:376c5ba17e16c011b465f80034b87f4c49f1b948d6032e2ab09bca43d164da7b` |
| 36 | `theorem` | [gramSchmidtOrthonormalBasis_det](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variantbe28f6aa2b6781320061b0fec7e976ffc5c7b456169a3a210ffa46cbc431dc6d.lean/declarations/gramschmidtorthonormalbasis-det--3ff6a8da7b3e310c84e0dca2.md) | 361 | `result-track:3ff6a8da7b3e310c84e0dca22f82b761ab1e13559e65de1fba34d6939b6aceac` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
