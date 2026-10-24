# Verification target: GRWTSK.Algebra.LinearAlgebra.Notation.Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bb39d400755d2f3828e893682856061f8cd2db89",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bb39d400755d2f3828e893682856061f8cd2db89`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Tuple` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.RowCol` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkLiteralQ](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/mkliteralq--8149619718982e204cb11ec2.md) | 62 | `declaration-track:8149619718982e204cb11ec2a68f68fdc70444e6751910a4aa4325f67b11e722` |
| 2 | `instance` | [toExpr](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/toexpr--81b129d8e3cf9460d0b61760.md) | 69 | `declaration-track:81b129d8e3cf9460d0b617602428716cf666bb50b9d3a4051c7dea4fe67ed30d` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/syntax--5bdcf6b7e70dc51654619236.md) | 103 | `declaration-track:5bdcf6b7e70dc5165461923648f457f7122c3847120d48ddb5e33b079440cbf2` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/syntax--ae07953afd76fb72e9fc02bf.md) | 107 | `declaration-track:ae07953afd76fb72e9fc02bf5247ce485c0ce09048623289a3c996d6285d323c` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/syntax--ffe289cfe45707b3417dfabd.md) | 109 | `declaration-track:ffe289cfe45707b3417dfabd167d291690ebf464a3c72e2f3e8b385d26c53af4` |
| 6 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/macro-rules--c1a642c8d8bbf81a5db826ae.md) | 111 | `declaration-track:c1a642c8d8bbf81a5db826aeb5470113f163922e10a29fd700c667102a26e06e` |
| 7 | `def` | [delabMatrixNotation](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/delabmatrixnotation--24dc2905af910b91cdc92717.md) | 130 | `declaration-track:24dc2905af910b91cdc92717050cb4f901f0f129a0fe98561a9cb143d748cc7e` |
| 8 | `instance` | [repr](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/repr--ec350ef5a692cfa36906bcc0.md) | 159 | `declaration-track:ec350ef5a692cfa36906bcc071991730b240d209fac7b6538f002ef90dae06c3` |
| 9 | `theorem` | [cons_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/cons-val--83a85f0386aeb067ed5f2d3a.md) | 169 | `result-track:83a85f0386aeb067ed5f2d3a085c36e68e452121bef0885624adc5e5aac09208` |
| 10 | `theorem` | [head_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/head-val--4101b4b525c983b74fdb7404.md) | 173 | `result-track:4101b4b525c983b74fdb740415042bca0bf1377fc8517e9f8b3b3988277b486c` |
| 11 | `theorem` | [tail_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/tail-val--9a24df8b86d9f602e67b6885.md) | 177 | `result-track:9a24df8b86d9f602e67b6885c86cc331430c38dfbf5067e49a6a571947b2844c` |
| 12 | `theorem` | [dotProduct_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/dotproduct-empty--118350983a261fa955e3b01a.md) | 185 | `result-track:118350983a261fa955e3b01ade090bb18b632a18438ad78564422378a6d3560a` |
| 13 | `theorem` | [cons_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/cons-dotproduct--cbfc45c62c667546b0f9664a.md) | 189 | `result-track:cbfc45c62c667546b0f9664af02fde0589005351b4398dc20736ffe3360e7d66` |
| 14 | `theorem` | [dotProduct_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/dotproduct-cons--1d6b52f8833d9eab582a6b92.md) | 194 | `result-track:1d6b52f8833d9eab582a6b92900d55e22fc87563c3861e9ac5bc7e0e494551f2` |
| 15 | `theorem` | [cons_dotProduct_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/cons-dotproduct-cons--9766254936ad5e6e8edc1130.md) | 198 | `result-track:9766254936ad5e6e8edc11304743a729c59c3f1ae01ba2aaa3528a836963f5de` |
| 16 | `theorem` | [replicateCol_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/replicatecol-empty--015ecb1b4a72f1ca06fec938.md) | 208 | `result-track:015ecb1b4a72f1ca06fec938e99779b2e8a3576e3ed6a8e7d785473d6336f768` |
| 17 | `theorem` | [replicateCol_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/replicatecol-cons--11c44ea5e7c30c6969dac587.md) | 214 | `result-track:11c44ea5e7c30c6969dac58743f8358cb6ac50e2d1e59ea03261cea69ead6224` |
| 18 | `theorem` | [replicateRow_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/replicaterow-empty--2c245567112d376a30297bb7.md) | 222 | `result-track:2c245567112d376a30297bb787f7c0f833ed4a25533c4be1fb37bd785ade610d` |
| 19 | `theorem` | [replicateRow_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/replicaterow-cons--800e055cc5c2ebad0fd829ae.md) | 227 | `result-track:800e055cc5c2ebad0fd829ae89e05c8458a796313fc33321308d5a5d55709684` |
| 20 | `theorem` | [transpose_empty_rows](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/transpose-empty-rows--85667c192d520933d3dc2515.md) | 238 | `result-track:85667c192d520933d3dc251580365d57d6b7193613e14281a4ea5a236ac1e861` |
| 21 | `theorem` | [transpose_empty_cols](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/transpose-empty-cols--48204fa0ff5dc8d4558df8bc.md) | 242 | `result-track:48204fa0ff5dc8d4558df8bc0f0f6ea6859b773e3707fbd575ed43277abed305` |
| 22 | `theorem` | [cons_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/cons-transpose--f35888dd9341c4367890a89a.md) | 246 | `result-track:f35888dd9341c4367890a89ae321f7f5bddde5a834069c173a8cc99e13319a83` |
| 23 | `theorem` | [head_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/head-transpose--7ecd499fce9a58cf27d766b7.md) | 252 | `result-track:7ecd499fce9a58cf27d766b7e91296f37953bcf525772c1d58eee7e88b4f6d06` |
| 24 | `theorem` | [tail_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/tail-transpose--0b39553f79e760cae4e531e3.md) | 257 | `result-track:0b39553f79e760cae4e531e3f92540da870e5dbadef77550f081e7880e5f7f0f` |
| 25 | `theorem` | [empty_mul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/empty-mul--449583520ffd68fc2e09bbe2.md) | 268 | `result-track:449583520ffd68fc2e09bbe2b9c7976afc8e8bd99f9f9f3d074f84c1ccbe16cb` |
| 26 | `theorem` | [empty_mul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/empty-mul-empty--0fc5ff3aa1db1036950ef2bc.md) | 272 | `result-track:0fc5ff3aa1db1036950ef2bcde7f905f0150e628e8277d65e1600bf8e98a6cda` |
| 27 | `theorem` | [mul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/mul-empty--d123a3ed6b7b1fc8438068f3.md) | 276 | `result-track:d123a3ed6b7b1fc8438068f3e2ff83551fbcc5c99ab87eec54d0df3e25b41158` |
| 28 | `theorem` | [mul_val_succ](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/mul-val-succ--075800e03a676fdd61046379.md) | 280 | `result-track:075800e03a676fdd610463791711be04303dcb647914cbb736d306db9b70e95c` |
| 29 | `theorem` | [cons_mul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/cons-mul--7f078e795dedb16537f3fc9b.md) | 285 | `result-track:7f078e795dedb16537f3fc9bf0ad49fa12588151026db973b8fbc8a50691b965` |
| 30 | `theorem` | [empty_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/empty-vecmul--5ae6a74da7836632aea18c68.md) | 299 | `result-track:5ae6a74da7836632aea18c68fbbeb67f9a6f79b2b0398fca2f9dee0c014b5815` |
| 31 | `theorem` | [vecMul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vecmul-empty--ec968dccdaae870b6ed1be53.md) | 303 | `result-track:ec968dccdaae870b6ed1be5352bb1042860616fcbb46e4d08ee54c466593eae8` |
| 32 | `theorem` | [cons_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/cons-vecmul--62dab7fb742a1b2c0718ccd1.md) | 307 | `result-track:62dab7fb742a1b2c0718ccd1aaf831ab99874c2a97957c342b0a7e0f9fa8769d` |
| 33 | `theorem` | [vecMul_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vecmul-cons--145cd041a8cc8fe6367e798c.md) | 313 | `result-track:145cd041a8cc8fe6367e798c35f432b722b53be7eef6bc7d3116a7c3aab85032` |
| 34 | `theorem` | [cons_vecMul_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/cons-vecmul-cons--26ef1bc164c5ba1b449b1d62.md) | 318 | `result-track:26ef1bc164c5ba1b449b1d627f1dc7273212f17cdbac1369eae83c0a1e0eea51` |
| 35 | `theorem` | [empty_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/empty-mulvec--af3bacf6e8f3967398bd0ec0.md) | 328 | `result-track:af3bacf6e8f3967398bd0ec032b5c558201122435e9f2dfe582526f9c310c3ee` |
| 36 | `theorem` | [mulVec_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/mulvec-empty--ff0317527f76434ba0d3ebda.md) | 332 | `result-track:ff0317527f76434ba0d3ebda49758da7b460c281f0f7a4ba40cadc1b1cd2ee49` |
| 37 | `theorem` | [cons_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/cons-mulvec--29b5d9d4845cad2398d4fb28.md) | 336 | `result-track:29b5d9d4845cad2398d4fb2870f8074663a73f673599a9f29fb6a33b0f62570f` |
| 38 | `theorem` | [mulVec_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/mulvec-cons--65c2c938f74316e65b7895eb.md) | 342 | `result-track:65c2c938f74316e65b7895ebb4fcadbe8e2900ff9004b3ef0d70dca2bc84a70e` |
| 39 | `theorem` | [empty_vecMulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/empty-vecmulvec--4557036ae954fadc49de58c3.md) | 354 | `result-track:4557036ae954fadc49de58c35d8a36395faed6aac8e468011b2f58f8b873e927` |
| 40 | `theorem` | [vecMulVec_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vecmulvec-empty--e95488f81254687e9bc3b762.md) | 358 | `result-track:e95488f81254687e9bc3b7625f9492db33429e20d47c04ebd7a0ff91e6a6997e` |
| 41 | `theorem` | [cons_vecMulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/cons-vecmulvec--0be8866063085aed7023704d.md) | 362 | `result-track:0be8866063085aed7023704d2487fb6c87693f2265788576bb6839f75ff92239` |
| 42 | `theorem` | [vecMulVec_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vecmulvec-cons--ea54a5f7a0611f437a7149a3.md) | 368 | `result-track:ea54a5f7a0611f437a7149a33073b32bd8f03a38b0be2b0500b4c8e956fb85af` |
| 43 | `theorem` | [smul_mat_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/smul-mat-empty--107267844e4f2060e82280d7.md) | 377 | `result-track:107267844e4f2060e82280d75b5cc290154e267e48ffad683e6de47bfda83689` |
| 44 | `theorem` | [smul_mat_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/smul-mat-cons--84a12fb77ea4449a118799e9.md) | 380 | `result-track:84a12fb77ea4449a118799e9449330e7889b1dc7c54a2e0435da31999865f5d8` |
| 45 | `theorem` | [submatrix_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/submatrix-empty--a484b953e4399e8be6d3655b.md) | 390 | `result-track:a484b953e4399e8be6d3655bd382380294d550e2e56f6e0406cf6cbee7ed40fe` |
| 46 | `theorem` | [submatrix_cons_row](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/submatrix-cons-row--c9119a9d4a1415cd5754e0ea.md) | 395 | `result-track:c9119a9d4a1415cd5754e0ea53c3037dd049c0adf109dab7a1ffe4a6904c3643` |
| 47 | `theorem` | [submatrix_updateRow_succAbove](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/submatrix-updaterow-succabove--28db3a9a4284598ab991644b.md) | 402 | `result-track:28db3a9a4284598ab991644beb856ef40c8eff5f5efc061862d755526d9f6f8f` |
| 48 | `theorem` | [submatrix_updateCol_succAbove](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/submatrix-updatecol-succabove--ca011f4c4fa65a0fde6a56e5.md) | 408 | `result-track:ca011f4c4fa65a0fde6a56e55190a2911cb5645bceac37b7229621e32029b87c` |
| 49 | `theorem` | [one_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/one-fin-two--2e12efd30189132ec64d8605.md) | 423 | `result-track:2e12efd30189132ec64d8605ae2272825403be3adacdb481ec930fa8be6ccb34` |
| 50 | `theorem` | [one_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/one-fin-three--c011ded5b94a88dab3dc7672.md) | 427 | `result-track:c011ded5b94a88dab3dc76721455ee445078dfe8e33123f5a3dd398f08c38745` |
| 51 | `theorem` | [natCast_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/natcast-fin-two--347ee5298ad6a764f2eb3a69.md) | 436 | `result-track:347ee5298ad6a764f2eb3a69fdc9775de1f288d88a72a5b9e3f2739c137c1004` |
| 52 | `theorem` | [natCast_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/natcast-fin-three--d61d7b0a56696b5043c0708f.md) | 440 | `result-track:d61d7b0a56696b5043c0708fcd09f43396ff3405e7bf6c80afbbd883437bebd5` |
| 53 | `theorem` | [ofNat_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/ofnat-fin-two--41dcd31c9eac646942f6ce5c.md) | 445 | `result-track:41dcd31c9eac646942f6ce5ca11b60cebe535975947be536c0f95b5aa28ebca2` |
| 54 | `theorem` | [ofNat_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/ofnat-fin-three--72c7ca22630798cb82a7b88d.md) | 450 | `result-track:72c7ca22630798cb82a7b88dc7f7179459fdfa60e507930ca377181204d18a27` |
| 55 | `theorem` | [eta_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/eta-fin-two--def6d3fa0d19e02310c94e8a.md) | 457 | `result-track:def6d3fa0d19e02310c94e8a6efb3aef590684c9f678e6cbfb6c2dc0041ee8e7` |
| 56 | `theorem` | [eta_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/eta-fin-three--80f9e0ce7b6444cf092864a8.md) | 461 | `result-track:80f9e0ce7b6444cf092864a8b6c72f9cdee77a8f960aa3713d4fc18858ff054e` |
| 57 | `theorem` | [mul_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/mul-fin-two--1d741c133feb299872bd7b4c.md) | 468 | `result-track:1d741c133feb299872bd7b4ca6fb3ff7ff1a816690a9833fd18d6e0691158fd0` |
| 58 | `theorem` | [mul_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/mul-fin-three--81f20ba3fe34fe798b468f2d.md) | 476 | `result-track:81f20ba3fe34fe798b468f2d303faf1dadc4bb717bfe9acecf0a2a4e1e0e32cd` |
| 59 | `theorem` | [vec2_eq](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vec2-eq--21f0d07efd542a6e543556b3.md) | 490 | `result-track:21f0d07efd542a6e543556b3f7275bc936db708131bdd19afaa4a14ad62509c9` |
| 60 | `theorem` | [vec3_eq](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vec3-eq--54100a90a4dbdf33f3f20f69.md) | 494 | `result-track:54100a90a4dbdf33f3f20f69a93fc6534f2006005413a3a2389ea7a17ad6e9d9` |
| 61 | `theorem` | [vec2_add](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vec2-add--b2d8527f9c71a0ff9b1abd45.md) | 499 | `result-track:b2d8527f9c71a0ff9b1abd45fda9ac234da505f2dd4a6c5d81d6a910a87a4c3f` |
| 62 | `theorem` | [vec3_add](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vec3-add--1e0d3dde730f0e14e8923dcf.md) | 502 | `result-track:1e0d3dde730f0e14e8923dcf2b61bc310e3834eb6d36999e6f58347761227ae1` |
| 63 | `theorem` | [smul_vec2](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/smul-vec2--54bf97b0d9e652326e2d45d8.md) | 506 | `result-track:54bf97b0d9e652326e2d45d8438ad28bf7ea3420be8347e5035a1e4e81b02e5f` |
| 64 | `theorem` | [smul_vec3](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/smul-vec3--00b13c8db793ea9a60fb341f.md) | 509 | `result-track:00b13c8db793ea9a60fb341fed321cc1aa88af53d128781447e9fe50feb67333` |
| 65 | `theorem` | [vec2_dotProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vec2-dotproduct--e26ffa52a626e5654bd23b57.md) | 515 | `result-track:e26ffa52a626e5654bd23b57e7a8cdf8417e698f3a92f853575baf3cdc2f6d9b` |
| 66 | `theorem` | [vec2_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vec2-dotproduct--cc1872c13a09e0dae926ef01.md) | 519 | `result-track:cc1872c13a09e0dae926ef0104d61f8a5b673e80735642b817816cb00ebf9cb0` |
| 67 | `theorem` | [vec3_dotProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vec3-dotproduct--a5b0f0483e47a68abca61277.md) | 522 | `result-track:a5b0f0483e47a68abca612775f2b8a493a7ff2adf069c24ee1536a7da724ae75` |
| 68 | `theorem` | [vec3_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variant08ac26d715f94ccd099ba34072e4ad4b4be94bd9854b911b85ea95ed01867ae4.lean/declarations/vec3-dotproduct--1bb27aea162114466791252e.md) | 529 | `result-track:1bb27aea162114466791252e951796b7d944e3309d146c4f9a41ce9d480d886c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
