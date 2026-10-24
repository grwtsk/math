# Verification target: GRWTSK.Algebra.LinearAlgebra.Notation.Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b71d405ce90aff1f5441e43629dcacf01392514c",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b71d405ce90aff1f5441e43629dcacf01392514c`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [toExpr](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/toexpr--e3212f25dd8c1ddeb92a9bd8.md) | 65 | `declaration-track:e3212f25dd8c1ddeb92a9bd8d34ee5b25b2e12773b77c6a9df86a73497eb1163` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/syntax--50c3020932044b72bf25a7c6.md) | 83 | `declaration-track:50c3020932044b72bf25a7c683ce46ebb5a281756d0e70047a0d0b2c37005bc3` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/syntax--391d179687402c2166d8f9f9.md) | 85 | `declaration-track:391d179687402c2166d8f9f9b87ff71451e9ebb01a79d708f610826d20ee1e94` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/syntax--c19bdd25335adc849b29b8e2.md) | 86 | `declaration-track:c19bdd25335adc849b29b8e2db30776f5251a28d0f542a521bb5ae9bdde0e2be` |
| 5 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/macro-rules--746cad42698069d0bdcf1ebf.md) | 88 | `declaration-track:746cad42698069d0bdcf1ebfae2576c4805671286ac78bbfca17ac6daa5fc24e` |
| 6 | `instance` | [repr](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/repr--dca1de1c7ded4bf3939050cd.md) | 115 | `declaration-track:dca1de1c7ded4bf3939050cdd68112ae5a1545fc01754fc4f44473d50a801b10` |
| 7 | `theorem` | [cons_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/cons-val--376e0f84cebdd9449ce6f66b.md) | 126 | `result-track:376e0f84cebdd9449ce6f66b050724a55e7b0e9bfd0afcb01108c33f005e1466` |
| 8 | `theorem` | [head_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/head-val--2844cb6198a698668edf80a7.md) | 131 | `result-track:2844cb6198a698668edf80a7fc1faa3ac9b10ed74f143cddfbee1a268d4d0910` |
| 9 | `theorem` | [tail_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/tail-val--3d57ae504ecdbbf0980092e7.md) | 136 | `result-track:3d57ae504ecdbbf0980092e7db824c593da834526e4d704074a6f157932eac64` |
| 10 | `theorem` | [dotProduct_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/dotproduct-empty--290d2c6a2e83c992a5b79ffa.md) | 147 | `result-track:290d2c6a2e83c992a5b79ffa927e508023537906f90d0137a4ff14bbd68d935c` |
| 11 | `theorem` | [cons_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/cons-dotproduct--515819a1481360600f9df5d1.md) | 152 | `result-track:515819a1481360600f9df5d102c9418aa33a49d3448c9fd37aeda215f49362c6` |
| 12 | `theorem` | [dotProduct_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/dotproduct-cons--0f6dc97916b5bdb6dc7a6634.md) | 158 | `result-track:0f6dc97916b5bdb6dc7a6634baf75c7364c4db1d69e32165b756e1ce68d90884` |
| 13 | `theorem` | [cons_dotProduct_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/cons-dotproduct-cons--c742b19121a85cffe02adfbe.md) | 164 | `result-track:c742b19121a85cffe02adfbeaa0a3b7cc861ddd01a682a8cf9c2bf7dbcb1dc93` |
| 14 | `theorem` | [col_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/col-empty--f217d5d875d783718da701db.md) | 173 | `result-track:f217d5d875d783718da701db6af3c80c7805535eb00c53ee46a248151317eeac` |
| 15 | `theorem` | [col_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/col-cons--45cbe7bd38b475b77909ca4a.md) | 178 | `result-track:45cbe7bd38b475b77909ca4a4c1da8c12c47dbd3bfa934f8afbd717af73fd806` |
| 16 | `theorem` | [row_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/row-empty--fde32be851e373addbdeb390.md) | 184 | `result-track:fde32be851e373addbdeb3904a6d2f0fe32844004d3cb4cd8698fd5d272985c0` |
| 17 | `theorem` | [row_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/row-cons--2fe7d008fab75d598412de16.md) | 190 | `result-track:2fe7d008fab75d598412de16de31083425cb49249fe63eb66332b037a686f877` |
| 18 | `theorem` | [transpose_empty_rows](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/transpose-empty-rows--c132d8e57e6bad2924b77e8e.md) | 200 | `result-track:c132d8e57e6bad2924b77e8e36738a88f91bf7d04effcb52d802498c096fe301` |
| 19 | `theorem` | [transpose_empty_cols](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/transpose-empty-cols--4fa9b7ad8bbf8bba8a115f30.md) | 205 | `result-track:4fa9b7ad8bbf8bba8a115f302fbe6261a46daae2d84bcc547d089b0befc8e744` |
| 20 | `theorem` | [cons_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/cons-transpose--b6c1f75b02dfd59d457308e1.md) | 210 | `result-track:b6c1f75b02dfd59d457308e18a63c99c756fe902f58fd4dbdaf036ae974feab2` |
| 21 | `theorem` | [head_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/head-transpose--f369b3590cd187983ba72659.md) | 217 | `result-track:f369b3590cd187983ba72659c24cfcb056376fd1ecfa0e8b6a06384899d81bbe` |
| 22 | `theorem` | [tail_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/tail-transpose--4875081ef7ba59d4b5cda29c.md) | 223 | `result-track:4875081ef7ba59d4b5cda29c35631b6f300e1665bf94e4d30cbcc343ebf8159d` |
| 23 | `theorem` | [empty_mul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/empty-mul--3cc984c274e7466d4239aac4.md) | 235 | `result-track:3cc984c274e7466d4239aac437e03ecaa2ab47a5168ec75cd68b8e094d97bed0` |
| 24 | `theorem` | [empty_mul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/empty-mul-empty--76979051f8427f595ec2197a.md) | 240 | `result-track:76979051f8427f595ec2197a565ab8a928f5e0835bd8afdc7bd53f4cdbf6cba3` |
| 25 | `theorem` | [mul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/mul-empty--a2006158dc6603cd6a25f005.md) | 245 | `result-track:a2006158dc6603cd6a25f005da3a036d0d7f7b12bca724639e293262d7d1fb02` |
| 26 | `theorem` | [mul_val_succ](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/mul-val-succ--3de4569c611b27bec5fedc49.md) | 250 | `result-track:3de4569c611b27bec5fedc491927ea4a419c13159ba2fa5b972621d04335b666` |
| 27 | `theorem` | [cons_mul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/cons-mul--3f2e649b94780a343ae6b533.md) | 256 | `result-track:3f2e649b94780a343ae6b5336a8fff4881451f99a65333ffd17ebcb84d49c9bb` |
| 28 | `theorem` | [empty_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/empty-vecmul--b343210152a3a616d7c5983e.md) | 271 | `result-track:b343210152a3a616d7c5983e7da1eda676e304bb5687c8f28ecfc4bde2962a13` |
| 29 | `theorem` | [vecMul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vecmul-empty--7f5cc9cb23e1aa54bc36d80a.md) | 276 | `result-track:7f5cc9cb23e1aa54bc36d80afcd3edbd0e1e6129983d2ac3a62bd94a99f3a76a` |
| 30 | `theorem` | [cons_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/cons-vecmul--bcb5be4fa5a2be6911ac8690.md) | 281 | `result-track:bcb5be4fa5a2be6911ac86909d78b71e86893d0400a2090c70e06b192cf9dced` |
| 31 | `theorem` | [vecMul_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vecmul-cons--4fbdb784df22a287ca0e1e58.md) | 288 | `result-track:4fbdb784df22a287ca0e1e589585f3af96b1467b9aec61c34658602af4390517` |
| 32 | `theorem` | [cons_vecMul_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/cons-vecmul-cons--c64a6e3af6cf7bc48621c004.md) | 295 | `result-track:c64a6e3af6cf7bc48621c0045420d33c468a6e94740638ffcedca93c4066ba5b` |
| 33 | `theorem` | [empty_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/empty-mulvec--372d8984ba9ba162791dce3e.md) | 306 | `result-track:372d8984ba9ba162791dce3ed0292cd4d1d3ebc405c9ea5764fcd27b4323ca48` |
| 34 | `theorem` | [mulVec_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/mulvec-empty--ebb8322fc7a886afdd2b93ac.md) | 311 | `result-track:ebb8322fc7a886afdd2b93acf946085b3c3ee98e05b31f357cdcf51df1f7be9f` |
| 35 | `theorem` | [cons_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/cons-mulvec--a95ecfa787945f79fcb33cba.md) | 316 | `result-track:a95ecfa787945f79fcb33cba7e67e561290c57230d464e082ff09bfe44c4c4d1` |
| 36 | `theorem` | [mulVec_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/mulvec-cons--7f54e2bc0cc81b48c81b6d2b.md) | 323 | `result-track:7f54e2bc0cc81b48c81b6d2b99c92130f41fcdbf282257b590e5b95919046b9f` |
| 37 | `theorem` | [empty_vecMulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/empty-vecmulvec--424b3e1134b0447c7d0eb01d.md) | 336 | `result-track:424b3e1134b0447c7d0eb01d50515931532c0f3d80de8c86c06ec06dc40ecb10` |
| 38 | `theorem` | [vecMulVec_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vecmulvec-empty--e3d1103e3244b849df04224c.md) | 341 | `result-track:e3d1103e3244b849df04224c790197fea65057c2177161d9f9e5482c84a3a57f` |
| 39 | `theorem` | [cons_vecMulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/cons-vecmulvec--55ef7e45b9bfe4e326f3e94c.md) | 346 | `result-track:55ef7e45b9bfe4e326f3e94c2139f389af7c9d825030b20442b468f871396cf9` |
| 40 | `theorem` | [vecMulVec_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vecmulvec-cons--5152fc2cc1086e9f0eeebe94.md) | 353 | `result-track:5152fc2cc1086e9f0eeebe941380baa055996fdcdfa9fde0871b753d99ebdf45` |
| 41 | `theorem` | [smul_mat_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/smul-mat-empty--85f4096b21e0fb485c594b28.md) | 366 | `result-track:85f4096b21e0fb485c594b2850d188b628ec82935dfb0c554d0ed954a83c1e60` |
| 42 | `theorem` | [smul_mat_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/smul-mat-cons--933805410f87d6cf258c5f2b.md) | 371 | `result-track:933805410f87d6cf258c5f2b498a31d87b71a6f085be8f4940bd6ba5cb2df287` |
| 43 | `theorem` | [submatrix_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/submatrix-empty--616942d744ec2b66c1bf2f05.md) | 382 | `result-track:616942d744ec2b66c1bf2f0561ce4781b04436ebcaf7d11a3dec46a75226ff11` |
| 44 | `theorem` | [submatrix_cons_row](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/submatrix-cons-row--1470d4fe6991494b2ac93b8d.md) | 388 | `result-track:1470d4fe6991494b2ac93b8d3282ff43c8b5dbdcf4bad65a54ad1073b62b0f67` |
| 45 | `theorem` | [submatrix_updateRow_succAbove](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/submatrix-updaterow-succabove--550ec4ead647c4f59f6e2563.md) | 396 | `result-track:550ec4ead647c4f59f6e2563b0273921561ecf54c9b7400a20a2a067bb06905a` |
| 46 | `theorem` | [submatrix_updateColumn_succAbove](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/submatrix-updatecolumn-succabove--70c06ca0493d04ff081532fd.md) | 403 | `result-track:70c06ca0493d04ff081532fd190d720267b729a85d95b8ca213b90070e0712b0` |
| 47 | `theorem` | [one_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/one-fin-two--0845d5f3ec548d5ec83546df.md) | 416 | `result-track:0845d5f3ec548d5ec83546dff367bf0667587fa342a445b93f0312c518619767` |
| 48 | `theorem` | [one_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/one-fin-three--c6989af6bfbe42ca1e0067ee.md) | 421 | `result-track:c6989af6bfbe42ca1e0067ee0752a9aa8ab69267fb8fb93bc865d34de260db7e` |
| 49 | `theorem` | [eta_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/eta-fin-two--0864574c80edba0f623893a4.md) | 428 | `result-track:0864574c80edba0f623893a4720e01a6609b45966dc0c51c4ec9843de102ee55` |
| 50 | `theorem` | [eta_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/eta-fin-three--931875d2583ecccca00cb8b9.md) | 433 | `result-track:931875d2583ecccca00cb8b9474fbefc03e2c2c57184eeaf8dde1ddbd6411885` |
| 51 | `theorem` | [mul_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/mul-fin-two--568b6d7d87cca16be73f793e.md) | 441 | `result-track:568b6d7d87cca16be73f793e210dd442b1652a3e256c4a39888fc7b5e9188f0b` |
| 52 | `theorem` | [mul_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/mul-fin-three--637c82c6e068f7d2b719f694.md) | 450 | `result-track:637c82c6e068f7d2b719f6944c0126ffd5d942b3633ead26df7863ff32eb79fc` |
| 53 | `theorem` | [vec2_eq](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vec2-eq--10965447b0febb6dfccc54ee.md) | 465 | `result-track:10965447b0febb6dfccc54eece7115e1ec2455f18df3287001a7f0a058bd16c0` |
| 54 | `theorem` | [vec3_eq](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vec3-eq--0c0030f3eb5d0bc77bce67fd.md) | 470 | `result-track:0c0030f3eb5d0bc77bce67fda2bfe1183248c5a5f2f5b1dab12d25d555392c94` |
| 55 | `theorem` | [vec2_add](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vec2-add--22f3afffaa7fe2b66e233481.md) | 476 | `result-track:22f3afffaa7fe2b66e233481f2563f03385611850c4aea9236fc1fe12d0e96fa` |
| 56 | `theorem` | [vec3_add](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vec3-add--da9c65a57da5db54e8e138fb.md) | 480 | `result-track:da9c65a57da5db54e8e138fb214a27ac6c23c30c28073002c487434d4ea365e4` |
| 57 | `theorem` | [smul_vec2](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/smul-vec2--8c3ee8d2b2ef97978e9df822.md) | 485 | `result-track:8c3ee8d2b2ef97978e9df822cb03a1d95292a11584e2e18abe49ee08d4f0f69d` |
| 58 | `theorem` | [smul_vec3](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/smul-vec3--74a7d831af53731f4f27d458.md) | 489 | `result-track:74a7d831af53731f4f27d4589096e8698731c57128d55a7833c1e4b455ee601c` |
| 59 | `theorem` | [vec2_dotProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vec2-dotproduct--b3d32c01b14d52f337d8acc6.md) | 496 | `result-track:b3d32c01b14d52f337d8acc6558096e02538ab406a3a4a2b89a0c7c0d680950a` |
| 60 | `theorem` | [vec2_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vec2-dotproduct--8fcf96f5847fba24be6b4082.md) | 501 | `result-track:8fcf96f5847fba24be6b40823ee5c37f387f2efb9b7696472e63bbfba768f18d` |
| 61 | `theorem` | [vec3_dotProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vec3-dotproduct--2b6350c6757be73a1e44d299.md) | 505 | `result-track:2b6350c6757be73a1e44d2995d6036e547df749ba26bc630fc9548effa3db47c` |
| 62 | `theorem` | [vec3_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantae84c1254a2c7a94a8fc306d55af301e0f8c0c7e2ab6798a07275a8d1e011732.lean/declarations/vec3-dotproduct--df3772ec5ed479cbde108263.md) | 512 | `result-track:df3772ec5ed479cbde1082637eff190e40f4dc0192ceac8b436703391d0331b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
