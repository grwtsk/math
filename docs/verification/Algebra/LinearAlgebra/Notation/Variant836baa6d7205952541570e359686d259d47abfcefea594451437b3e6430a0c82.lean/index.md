# Verification target: GRWTSK.Algebra.LinearAlgebra.Notation.Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "73b4d4c23ec30ba28869e7effe417e19a2fd1f48",
  "lexical_observation_count": 62,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `73b4d4c23ec30ba28869e7effe417e19a2fd1f48`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [toExpr](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/toexpr--b91540670d23efcd16693f30.md) | 57 | `declaration-track:b91540670d23efcd16693f3039ab1364344b219412984a389ca81c7266f9fd9f` |
| 2 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/syntax--9a5f6217ef270d040978411a.md) | 75 | `declaration-track:9a5f6217ef270d040978411a32511aa49bcd1b877c0bcfa96d2d8a9b67554fd9` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/syntax--50960afa869e78b3c7c0b402.md) | 77 | `declaration-track:50960afa869e78b3c7c0b4024601c8e6551f34a33b09e5748ae87543879f135b` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/syntax--8f2a4d47cb6c460c8c61d441.md) | 78 | `declaration-track:8f2a4d47cb6c460c8c61d441c4388432221840e416571e917b00781d7d241798` |
| 5 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/macro-rules--332090c7fb87618532518149.md) | 80 | `declaration-track:332090c7fb8761853251814971d8fa2f15a5b7a26c9f9a0ff2d95d576581e657` |
| 6 | `instance` | [repr](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/repr--7cc8b9181399115540940a1f.md) | 107 | `declaration-track:7cc8b9181399115540940a1fa2914c912eafbcfa299506f6fd8dbea5aa38060c` |
| 7 | `theorem` | [cons_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/cons-val--8f64c7c063868c1ec0bd9727.md) | 118 | `result-track:8f64c7c063868c1ec0bd972734b4d5eb8da44639ea66cecc7ac7678441ab540c` |
| 8 | `theorem` | [head_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/head-val--f0f73daec1e350003ec2ad6b.md) | 123 | `result-track:f0f73daec1e350003ec2ad6b891e0ac4423394f3dbc1a7baac1bd18ccb50455d` |
| 9 | `theorem` | [tail_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/tail-val--bf96f36b52f985b6ba682b34.md) | 128 | `result-track:bf96f36b52f985b6ba682b3445e00df54093a0b8f64a909097744bcdbd7bf6a0` |
| 10 | `theorem` | [dotProduct_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/dotproduct-empty--9f7c5cc69821aaeae5d4e698.md) | 139 | `result-track:9f7c5cc69821aaeae5d4e6980bbdd94e96579583b7c8101a028f0b3d2fdcbe6f` |
| 11 | `theorem` | [cons_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/cons-dotproduct--e5b27679c87eafd4e35fddd2.md) | 144 | `result-track:e5b27679c87eafd4e35fddd2422b9eaa3f4ce655d222ff0008c8133866e1f5b5` |
| 12 | `theorem` | [dotProduct_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/dotproduct-cons--c06599d8572c7739565d9338.md) | 150 | `result-track:c06599d8572c7739565d93383f2c9785fbb76b7f09ddf8d388ba41561d27feda` |
| 13 | `theorem` | [cons_dotProduct_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/cons-dotproduct-cons--91a184e2d97167fa7f64d2db.md) | 156 | `result-track:91a184e2d97167fa7f64d2dba47de0f7028f1aa8ce149bf3d20cbb3236dc819a` |
| 14 | `theorem` | [col_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/col-empty--611e0e4e994b5fb690620c97.md) | 165 | `result-track:611e0e4e994b5fb690620c97a8bb16eb8263b29fadda2f464b3e4d698a46544c` |
| 15 | `theorem` | [col_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/col-cons--09d1786e5c4f63ee728ba5b3.md) | 170 | `result-track:09d1786e5c4f63ee728ba5b38c0a4992a6ce12de08c82df14713fe6fd4448027` |
| 16 | `theorem` | [row_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/row-empty--97b0709400709c61dbe8463c.md) | 176 | `result-track:97b0709400709c61dbe8463c321c4f8fc9889fcd3c98e08120029f262e8b94cb` |
| 17 | `theorem` | [row_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/row-cons--bb2d5b612383029d6ee1e277.md) | 182 | `result-track:bb2d5b612383029d6ee1e277ca271e563448d4ac3be6527256a932e8ba54724d` |
| 18 | `theorem` | [transpose_empty_rows](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/transpose-empty-rows--140234d549d31f2503760b91.md) | 192 | `result-track:140234d549d31f2503760b913661e3e9957bb43421c454e7e1ca9fa396cbd753` |
| 19 | `theorem` | [transpose_empty_cols](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/transpose-empty-cols--71a4c6c09e47bd8e686971c7.md) | 197 | `result-track:71a4c6c09e47bd8e686971c70d496064e64783bd02103170513405eb4f8fb0e3` |
| 20 | `theorem` | [cons_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/cons-transpose--5f0df9eace7baac92ea3ec72.md) | 202 | `result-track:5f0df9eace7baac92ea3ec72910cec94c3435a93f4ff0bca5dd34d1aa47c72e3` |
| 21 | `theorem` | [head_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/head-transpose--23163f6db0b644ebad5359d6.md) | 209 | `result-track:23163f6db0b644ebad5359d6169b8faeb65ec6822c7b9d74a224a582e5b242c0` |
| 22 | `theorem` | [tail_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/tail-transpose--445a6c241a40877c98d23b3a.md) | 215 | `result-track:445a6c241a40877c98d23b3ace4f4f179f9ca9474ae0abf136cc019195935d6c` |
| 23 | `theorem` | [empty_mul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/empty-mul--f89a19d84ac023e9f48dc920.md) | 227 | `result-track:f89a19d84ac023e9f48dc920fc5a1e6e58e996a37788aceed92b978d35e2fc7c` |
| 24 | `theorem` | [empty_mul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/empty-mul-empty--c842c96b2fb467f1d36593f0.md) | 232 | `result-track:c842c96b2fb467f1d36593f00f52e99ef3e05a4d0188159d046dc5d3be4111d8` |
| 25 | `theorem` | [mul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/mul-empty--de8f856543c78d628031625a.md) | 237 | `result-track:de8f856543c78d628031625aa2fd827e194769f5575480046137a383fc18165c` |
| 26 | `theorem` | [mul_val_succ](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/mul-val-succ--922d58867d4b975c900a4679.md) | 242 | `result-track:922d58867d4b975c900a46792bf5e03dadd49469c31c7c00bdfed27cc66de7e6` |
| 27 | `theorem` | [cons_mul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/cons-mul--1af6093aebeba778c0cdf44a.md) | 248 | `result-track:1af6093aebeba778c0cdf44ab8d5b699832780c90a7c4f7974e97978911ca454` |
| 28 | `theorem` | [empty_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/empty-vecmul--a044c2de19211db4057c8f19.md) | 263 | `result-track:a044c2de19211db4057c8f1977e60dfe3054008e36498499ecd421b5d79e1f44` |
| 29 | `theorem` | [vecMul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vecmul-empty--62fb3a65d510aaebce9f4ca7.md) | 268 | `result-track:62fb3a65d510aaebce9f4ca7799ea24c361ff15d3b728ad93ce7459a78dc0b2b` |
| 30 | `theorem` | [cons_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/cons-vecmul--e281a04abbf321699fa7a63f.md) | 273 | `result-track:e281a04abbf321699fa7a63f459a2174fef8888ef500feb0805bee385147922b` |
| 31 | `theorem` | [vecMul_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vecmul-cons--c6368675c2709194db1fc51e.md) | 280 | `result-track:c6368675c2709194db1fc51e568d2cc07727bdbc30c58a3f39a8dab5d5c8d44d` |
| 32 | `theorem` | [cons_vecMul_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/cons-vecmul-cons--d1e54936e3f62230db35c245.md) | 287 | `result-track:d1e54936e3f62230db35c245545677b6a0f8c6085ac0dce47d14abd32fda6542` |
| 33 | `theorem` | [empty_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/empty-mulvec--0c6b558c66e4caa6af437cdd.md) | 298 | `result-track:0c6b558c66e4caa6af437cdd7153435c04d9f9f3ec3eebd66290788af5799680` |
| 34 | `theorem` | [mulVec_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/mulvec-empty--a27aaad22817028ad795f013.md) | 303 | `result-track:a27aaad22817028ad795f0139c1a6b69336321f6300aaaa60e159940a5aaef96` |
| 35 | `theorem` | [cons_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/cons-mulvec--d31efc81a4942a1a2278fff5.md) | 308 | `result-track:d31efc81a4942a1a2278fff53f381f93663cc8358c0487536701d45bbf6e950c` |
| 36 | `theorem` | [mulVec_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/mulvec-cons--83f5be68d596ef5eec4771f9.md) | 315 | `result-track:83f5be68d596ef5eec4771f9c508462dda34a60c4f35f5d3d759097dbea4c87c` |
| 37 | `theorem` | [empty_vecMulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/empty-vecmulvec--4d61fa36591466fe8d51306e.md) | 328 | `result-track:4d61fa36591466fe8d51306e8f79b21a65f2bf4a4ba7a0916538ab169ae1e12f` |
| 38 | `theorem` | [vecMulVec_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vecmulvec-empty--295deb9aaa6b8fe30c05ec4e.md) | 333 | `result-track:295deb9aaa6b8fe30c05ec4e0bf396da8d3192d42436d381f1ef8a6ff40127c4` |
| 39 | `theorem` | [cons_vecMulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/cons-vecmulvec--f75a8a5cc13219f06d69dd33.md) | 338 | `result-track:f75a8a5cc13219f06d69dd33b7c60716ed452ffd51b39e884cc1459a5eefbead` |
| 40 | `theorem` | [vecMulVec_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vecmulvec-cons--a6ca9ada7f3dbc097ec7066f.md) | 345 | `result-track:a6ca9ada7f3dbc097ec7066fc71f246e5b84f897512bf7c667e0d9f73a994d26` |
| 41 | `theorem` | [smul_mat_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/smul-mat-empty--0e66cf9c185ccef6855b3f01.md) | 358 | `result-track:0e66cf9c185ccef6855b3f010534b82aee1191c56cfb31c90b70aeab09d1de08` |
| 42 | `theorem` | [smul_mat_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/smul-mat-cons--f66b31971f1f6f2a05cf9bef.md) | 363 | `result-track:f66b31971f1f6f2a05cf9beffd684cba53f860eb33622bb7d1aa087f238ef81b` |
| 43 | `theorem` | [submatrix_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/submatrix-empty--b4ad916482a6ba21c593e9c0.md) | 374 | `result-track:b4ad916482a6ba21c593e9c09ce21691751d244e99a58f6beb86c1fea8896795` |
| 44 | `theorem` | [submatrix_cons_row](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/submatrix-cons-row--c9bb0a79320726eb1ad0bd4b.md) | 380 | `result-track:c9bb0a79320726eb1ad0bd4be51bbc6dea65daa22b39ad7e26da15e4abf17d13` |
| 45 | `theorem` | [submatrix_updateRow_succAbove](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/submatrix-updaterow-succabove--afc9ed556145c8b738ad3741.md) | 388 | `result-track:afc9ed556145c8b738ad374166e506a694e8d45c626992a94c296bd123f67de5` |
| 46 | `theorem` | [submatrix_updateColumn_succAbove](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/submatrix-updatecolumn-succabove--82d1b85bcf6f437d5e817428.md) | 395 | `result-track:82d1b85bcf6f437d5e817428ad863c3f1514f1dbc1b76f4ed98d6cb31a7fd36d` |
| 47 | `theorem` | [one_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/one-fin-two--5aff1ac2dcccc5b16ea68d7c.md) | 408 | `result-track:5aff1ac2dcccc5b16ea68d7c33bba1e2c5073e0abe2cb867744d35435eaad6d5` |
| 48 | `theorem` | [one_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/one-fin-three--11e0265dbb15dc25ed1a1514.md) | 413 | `result-track:11e0265dbb15dc25ed1a1514881f08267be17b78660dd6092b38d9ddc806a7ac` |
| 49 | `theorem` | [eta_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/eta-fin-two--ce74ab405f1d104cfb60d078.md) | 420 | `result-track:ce74ab405f1d104cfb60d07827a981b183b885c1a42c5bde0cb1398aae38fb08` |
| 50 | `theorem` | [eta_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/eta-fin-three--bc559e73478320e331bde611.md) | 425 | `result-track:bc559e73478320e331bde6111d7f5fd5f0f0b7ced21dd3dd22912482a939c6b0` |
| 51 | `theorem` | [mul_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/mul-fin-two--d8ffdd221375f4697e494ead.md) | 433 | `result-track:d8ffdd221375f4697e494ead0b31684e282b6af87734d907465d3c4849d1bd2f` |
| 52 | `theorem` | [mul_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/mul-fin-three--b27b9b869de18d60563f9abb.md) | 442 | `result-track:b27b9b869de18d60563f9abb9d275116726d6532e517c447f5479efbd9e5dec8` |
| 53 | `theorem` | [vec2_eq](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vec2-eq--814d2d336f4f90256c6293eb.md) | 457 | `result-track:814d2d336f4f90256c6293ebe087e0e724e3c5f5cab2010db0e960156423e8f0` |
| 54 | `theorem` | [vec3_eq](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vec3-eq--321350f2a78f4ab5971e867c.md) | 462 | `result-track:321350f2a78f4ab5971e867cfd19fa975d887ae13d424d3c7e43ce3b89f0bedd` |
| 55 | `theorem` | [vec2_add](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vec2-add--b7d1a410fbda44b7de4aff79.md) | 468 | `result-track:b7d1a410fbda44b7de4aff79ff4bd6760494a2353b1db38504f85b31cc4f9ea8` |
| 56 | `theorem` | [vec3_add](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vec3-add--d11102d0f60e11c9dd68d291.md) | 472 | `result-track:d11102d0f60e11c9dd68d291690ec11c0700d40985917e46ed05e499cc005b04` |
| 57 | `theorem` | [smul_vec2](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/smul-vec2--f929c7d686548c2f5dd69119.md) | 477 | `result-track:f929c7d686548c2f5dd6911995907e2ecb6952fa8ce0f00306a88c27c6305535` |
| 58 | `theorem` | [smul_vec3](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/smul-vec3--194d92c2826522261d243a0e.md) | 481 | `result-track:194d92c2826522261d243a0eeb173cc30dfad1d0e080769c3e5fe83a40d785e2` |
| 59 | `theorem` | [vec2_dotProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vec2-dotproduct--accbf2cd29b018b24129fca1.md) | 488 | `result-track:accbf2cd29b018b24129fca1edce0b838bda356da39f799528050f6d7b0759bc` |
| 60 | `theorem` | [vec2_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vec2-dotproduct--d6cb289335dc318a47cdb2fb.md) | 493 | `result-track:d6cb289335dc318a47cdb2fb76554fbde4fe7e114e1ff8581177e1e3c5b6f723` |
| 61 | `theorem` | [vec3_dotProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vec3-dotproduct--16c13a09ade27dbe42233c33.md) | 497 | `result-track:16c13a09ade27dbe42233c330c7d62f5a03854a748d334ad04036a9acafdde46` |
| 62 | `theorem` | [vec3_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant836baa6d7205952541570e359686d259d47abfcefea594451437b3e6430a0c82.lean/declarations/vec3-dotproduct--7ebe8037d81a2a4463225acf.md) | 504 | `result-track:7ebe8037d81a2a4463225acfac93ce53ecea12e95d85f2a23b31ffc07f889567` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
