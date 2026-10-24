# Verification target: GRWTSK.Algebra.LinearAlgebra.GramSchmidtOrtho.Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9603ad9dc618fe4cd27d85b4de57012c25186b11",
  "lexical_observation_count": 36,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9603ad9dc618fe4cd27d85b4de57012c25186b11`.

Source path: `GRWTSK/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt--9f87eab25bd123a653033f76.md) | 54 | `declaration-track:9f87eab25bd123a653033f76d8e5763c1cc525b8c36527b62978a3bb4a58c327` |
| 2 | `theorem` | [gramSchmidt_def](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-def--e0af35e1001dcd5c0b224e23.md) | 61 | `result-track:e0af35e1001dcd5c0b224e23a21e6c8276232be5026c7d8aa5f25c1f6bdc9a46` |
| 3 | `theorem` | [gramSchmidt_def'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-def--807d5db2315c889a2dd9831a.md) | 66 | `result-track:807d5db2315c889a2dd9831a8c4d339917df251c1e7426542e1d790466a18165` |
| 4 | `theorem` | [gramSchmidt_def''](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-def--8b5801252004c4351bb059e6.md) | 71 | `result-track:8b5801252004c4351bb059e66b5cbf06bd453cd7d24e7043090d298c5fa83252` |
| 5 | `theorem` | [gramSchmidt_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-zero--02e1ffc97b0c117687a9e5da.md) | 79 | `result-track:02e1ffc97b0c117687a9e5da39f13981b7fdb807ed89ab2b0716748ad562aeb5` |
| 6 | `theorem` | [gramSchmidt_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-orthogonal--130fdfdf3f9ac1200b93faf5.md) | 86 | `result-track:130fdfdf3f9ac1200b93faf5f3f4f35a722f091d70bf010d706ee48a0e8485d0` |
| 7 | `theorem` | [gramSchmidt_pairwise_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-pairwise-orthogonal--4c4622e69df6fdabf0ac4f3c.md) | 115 | `result-track:4c4622e69df6fdabf0ac4f3cdfe2e50e013f43710777d6cf9b457d7aa19fadbd` |
| 8 | `theorem` | [gramSchmidt_inv_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-inv-triangular--a2f68ba0f0145502f172fc6c.md) | 120 | `result-track:a2f68ba0f0145502f172fc6c9648b032820f9f5265830d2b055aadca975ad878` |
| 9 | `theorem` | [mem_span_gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/mem-span-gramschmidt--ea1d3a0b148375ee1bcafcc5.md) | 136 | `result-track:ea1d3a0b148375ee1bcafcc59a6e797ff274374c37bc1fd38579f4b9a96d4e49` |
| 10 | `theorem` | [gramSchmidt_mem_span](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-mem-span--185fc7d0e5672d59d55c950d.md) | 145 | `result-track:185fc7d0e5672d59d55c950d4e99e0c0ecd704f1f734e1babafac08a540ab56a` |
| 11 | `theorem` | [span_gramSchmidt_Iic](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/span-gramschmidt-iic--22064491b30008ede1493b3a.md) | 159 | `result-track:22064491b30008ede1493b3a66ad7f5f10466d3ccc375340fb2c73da6f5d2dc1` |
| 12 | `theorem` | [span_gramSchmidt_Iio](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/span-gramschmidt-iio--aade892d073b4e40fd5c4ebc.md) | 165 | `result-track:aade892d073b4e40fd5c4ebc30a608411aac80c403e75c7754d3edbaa49e3bfb` |
| 13 | `theorem` | [span_gramSchmidt](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/span-gramschmidt--fdf9b3e656a3ef222bb38603.md) | 174 | `result-track:fdf9b3e656a3ef222bb386035741d5c6244b0a46cb4bc0d49cd782f099f89516` |
| 14 | `theorem` | [gramSchmidt_of_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-of-orthogonal--5384b1298c3e6431f1f1951b.md) | 181 | `result-track:5384b1298c3e6431f1f1951b1dee23669a60709d3baaad781db62463dd39db6b` |
| 15 | `theorem` | [gramSchmidt_ne_zero_coe](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-ne-zero-coe--32aab4c61f9053ecb2c2acf5.md) | 204 | `result-track:32aab4c61f9053ecb2c2acf5f0007261144ec36415799f6ae22b9409b15160b7` |
| 16 | `theorem` | [gramSchmidt_ne_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-ne-zero--99f24c71d426e855ae811320.md) | 229 | `result-track:99f24c71d426e855ae8113205ff0ee6a7cb75142793ed1fcbda6f5c1d02913da` |
| 17 | `theorem` | [gramSchmidt_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-triangular--1159b91faaead2fa419650b6.md) | 235 | `result-track:1159b91faaead2fa419650b609454c4b55b407ebf14b8bdfa7b6f7ac485a3939` |
| 18 | `theorem` | [gramSchmidt_linearIndependent](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-linearindependent--b897f7c534fe318a934819ba.md) | 246 | `result-track:b897f7c534fe318a934819ba2455ad5c0a43d372fac300f6800cf5375d5f9ab7` |
| 19 | `def` | [gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtbasis--d0aaaaa17070c67347f3f31d.md) | 253 | `declaration-track:d0aaaaa17070c67347f3f31d99f3f85b1c39f10f5137951936b9cb72565c600c` |
| 20 | `theorem` | [coe_gramSchmidtBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/coe-gramschmidtbasis--60da3fac72ed025f5bc61592.md) | 258 | `result-track:60da3fac72ed025f5bc615922d11785e31813b29b7bcab63ff7d2c6d04382a4a` |
| 21 | `def` | [gramSchmidtNormed](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtnormed--13e80f8c10e5c0c00257a3ab.md) | 266 | `declaration-track:13e80f8c10e5c0c00257a3abf281cd4e38caabb6b8f949ece2a86aed61877820` |
| 22 | `theorem` | [gramSchmidtNormed_unit_length_coe](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtnormed-unit-length-coe--a69cbf435ef652a9595cf211.md) | 272 | `result-track:a69cbf435ef652a9595cf211a5addd791db45b13ffcdf7d2d187afb13522c83a` |
| 23 | `theorem` | [gramSchmidtNormed_unit_length](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtnormed-unit-length--2e1b235587fb68c7645be6bb.md) | 278 | `result-track:2e1b235587fb68c7645be6bbfc1356db8c64e9348e443089d62690bbc6ff6dc3` |
| 24 | `theorem` | [gramSchmidtNormed_unit_length'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtnormed-unit-length--8f7eb88db69cd226815f9d88.md) | 283 | `result-track:8f7eb88db69cd226815f9d88e6669b03ae72ec41df8cab4ed27f0cf8e4289ab6` |
| 25 | `theorem` | [gramSchmidt_orthonormal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-orthonormal--8a7c74c1d30c658819e00cd1.md) | 293 | `result-track:8a7c74c1d30c658819e00cd1dbd491cf7e4ae393a7ddf2b1ef8d823afe4a674c` |
| 26 | `theorem` | [gramSchmidt_orthonormal'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidt-orthonormal--020caa0c102a8c9ae636b374.md) | 308 | `result-track:020caa0c102a8c9ae636b374fbc9cabbe741dfe0d7f51ba3060de541863dd272` |
| 27 | `theorem` | [span_gramSchmidtNormed](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/span-gramschmidtnormed--5e9755d2864e8821cd61afe7.md) | 316 | `result-track:5e9755d2864e8821cd61afe72aedf219176c43a899d155885a530114970285e7` |
| 28 | `theorem` | [span_gramSchmidtNormed_range](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/span-gramschmidtnormed-range--94864530ce8dd41a126ebd82.md) | 329 | `result-track:94864530ce8dd41a126ebd82f3b171964dacba653a24b4cc918e7122eb8e12c8` |
| 29 | `def` | [gramSchmidtOrthonormalBasis](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtorthonormalbasis--d7444327c87a6f519fc7f531.md) | 342 | `declaration-track:d7444327c87a6f519fc7f531a2e08bd167bee9badbeef24b18a1db12a866d841` |
| 30 | `theorem` | [gramSchmidtOrthonormalBasis_apply](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtorthonormalbasis-apply--e8a0e3215d68810895db9e0a.md) | 347 | `result-track:e8a0e3215d68810895db9e0af6621e1bb8800ed08d90a7a0eb972337f723236b` |
| 31 | `theorem` | [gramSchmidtOrthonormalBasis_apply_of_orthogonal](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtorthonormalbasis-apply-of-orthogonal--243d83f710886188b707bbcd.md) | 353 | `result-track:243d83f710886188b707bbcd8b3967302d0482f31a1024ae16b4827d1055fdf4` |
| 32 | `theorem` | [inner_gramSchmidtOrthonormalBasis_eq_zero](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/inner-gramschmidtorthonormalbasis-eq-zero--ba584d16898a23da1bc780dd.md) | 362 | `result-track:ba584d16898a23da1bc780ddf0b1b7b3a8ef48adf6448c8f71c96da6a56b2ca8` |
| 33 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtorthonormalbasis-inv-triangular--e50bb568af8899cf8fe8fc88.md) | 380 | `result-track:e50bb568af8899cf8fe8fc886d04a1be556c74eb298b9d0b17c463d7b9fb95d4` |
| 34 | `theorem` | [gramSchmidtOrthonormalBasis_inv_triangular'](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtorthonormalbasis-inv-triangular--6ecc48686cb5b422ae0fb9d6.md) | 388 | `result-track:6ecc48686cb5b422ae0fb9d62665f57ab305538dbf1488aed6a0c3d7151d8462` |
| 35 | `theorem` | [gramSchmidtOrthonormalBasis_inv_blockTriangular](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtorthonormalbasis-inv-blocktriangular--61869655bb0f5e8d503551bb.md) | 396 | `result-track:61869655bb0f5e8d503551bb144d219dd641c47887262b656745f9fe2adfdd7f` |
| 36 | `theorem` | [gramSchmidtOrthonormalBasis_det](../../../../../mathematics/Algebra/LinearAlgebra/GramSchmidtOrtho/Variant056eccf62a2856e5fb31f82ecd035e0e0eb11f1806910a9d5e72850c458364fe.lean/declarations/gramschmidtorthonormalbasis-det--8bfc8f57636f33e6547326c9.md) | 403 | `result-track:8bfc8f57636f33e6547326c92b8e763177bb0b0fd59cd56193e10fe6b472a579` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
