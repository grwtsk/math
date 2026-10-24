# Verification target: GRWTSK.Algebra.LinearAlgebra.ColumnRowPartitioned.Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "499e31f34561c6c5d136f733ada6f46669464a48",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `499e31f34561c6c5d136f733ada6f46669464a48`.

Source path: `GRWTSK/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Block` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.SemiringInverse` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [fromRows](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows--72bb620668e225c964719133.md) | 31 | `declaration-track:72bb620668e225c964719133bf66e436f168f18de3fe72b7ae160eb43aea70c5` |
| 2 | `def` | [fromCols](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols--d1d86758d83819194f7295d2.md) | 36 | `declaration-track:d1d86758d83819194f7295d24576927cdedadde0937e6cc355c69496a4c92812` |
| 3 | `def` | [toCols₁](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/tocols--a0726d00ca42d4420aedc3c9.md) | 40 | `declaration-track:a0726d00ca42d4420aedc3c94d371c8a8aae3c2749764e2cb8da35724066d281` |
| 4 | `def` | [toCols₂](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/tocols--d396c2f58e2f9a3584c07976.md) | 43 | `declaration-track:d396c2f58e2f9a3584c0797684382e2388d89c6d219cf159f8db9d72f34cbab0` |
| 5 | `def` | [toRows₁](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/torows--e3f064e21bc004f8f87d2b45.md) | 46 | `declaration-track:e3f064e21bc004f8f87d2b4551bca5e7ecff9b843704a6cec8bf1c0b0b303439` |
| 6 | `def` | [toRows₂](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/torows--b980cece31c625d8fc6267c3.md) | 49 | `declaration-track:b980cece31c625d8fc6267c3593257b952299e146044fc4d2d7007f4bfc80762` |
| 7 | `lemma` | [fromRows_apply_inl](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows-apply-inl--e38157d8543f8c4e7cd3f3c1.md) | 56 | `result-track:e38157d8543f8c4e7cd3f3c114073ad86cb43b3cf48e8a131656b7ff5ce712fa` |
| 8 | `lemma` | [fromRows_apply_inr](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows-apply-inr--5a2a389ad091a2d9f636cae8.md) | 60 | `result-track:5a2a389ad091a2d9f636cae8596a6c6274a94e88b42390eb7c91c19d46709ca6` |
| 9 | `lemma` | [fromCols_apply_inl](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-apply-inl--c5e29ff1dba0223c7b9acf8c.md) | 64 | `result-track:c5e29ff1dba0223c7b9acf8c7d1d13280a9477c197d9443a2a66fae043db1f6f` |
| 10 | `lemma` | [fromCols_apply_inr](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-apply-inr--3918c54b91b3b3335cca5af4.md) | 70 | `result-track:3918c54b91b3b3335cca5af49602844a9d938ee9efdf60996e50f4b0b06abd79` |
| 11 | `lemma` | [toRows₁_apply](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/torows-apply--1088e74e6795e267e28f460a.md) | 76 | `result-track:1088e74e6795e267e28f460a0e0ba8d44f5b7924d6906c14d2521798780e01ca` |
| 12 | `lemma` | [toRows₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/torows-apply--78234ab37f83a38d71c06705.md) | 80 | `result-track:78234ab37f83a38d71c067054cf31954a77baa5557d2fdfa2a6717d5b47e5043` |
| 13 | `lemma` | [toRows₁_fromRows](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/torows-fromrows--40cd483bec41b6bbb1b7293e.md) | 84 | `result-track:40cd483bec41b6bbb1b7293eb830245c1442b5c7e4c78eb435d6319e2c4d772c` |
| 14 | `lemma` | [toRows₂_fromRows](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/torows-fromrows--4ccdd312b50a881c0f1818b6.md) | 88 | `result-track:4ccdd312b50a881c0f1818b663c9cfb29fd7f6e4bceac5065eb93d7713770fb7` |
| 15 | `lemma` | [toCols₁_apply](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/tocols-apply--dab7814bb2adbbc181e73be7.md) | 92 | `result-track:dab7814bb2adbbc181e73be7f1a23737134b158348a38a130174e5048a8e9b13` |
| 16 | `lemma` | [toCols₂_apply](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/tocols-apply--16010271e0189f1436fcc5ab.md) | 98 | `result-track:16010271e0189f1436fcc5ab62cfdbf024c42b667fce95bac5a012a49dd3f05e` |
| 17 | `lemma` | [toCols₁_fromCols](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/tocols-fromcols--7f4981f94f11fb61c09f3b7a.md) | 104 | `result-track:7f4981f94f11fb61c09f3b7a2b59d2214addda2a69d327f2a2514be729da8f36` |
| 18 | `lemma` | [toCols₂_fromCols](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/tocols-fromcols--8465253aac153ef01cae004e.md) | 110 | `result-track:8465253aac153ef01cae004e34d75372f711b41576d29739d3671bf8b4b3df92` |
| 19 | `lemma` | [fromCols_toCols](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-tocols--67cc6c859f307ced26f5cb30.md) | 116 | `result-track:67cc6c859f307ced26f5cb30588e5bca37dcf3f6455781e91bdd802e24634e6b` |
| 20 | `lemma` | [fromRows_toRows](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows-torows--d526b6cf3ee53826f6a62225.md) | 123 | `result-track:d526b6cf3ee53826f6a6222509bf6a9ba040ce2f805dc776a4ba90fbce442c81` |
| 21 | `lemma` | [fromRows_inj](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows-inj--331c4a0ef16388552897d958.md) | 126 | `result-track:331c4a0ef16388552897d9583a68fe5979cec185f7e5efbf29f56d426f223c76` |
| 22 | `lemma` | [fromCols_inj](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-inj--5d4508f4c70bb41d47456e63.md) | 130 | `result-track:5d4508f4c70bb41d47456e636f0e4764c30c2daeeeeb112291c4f3305e692cc6` |
| 23 | `lemma` | [fromCols_ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-ext-iff--c0fac60e4cfc2e86eee3833f.md) | 137 | `result-track:c0fac60e4cfc2e86eee3833f5da8c7671d241a0ccbbd60376f9757d4862280cc` |
| 24 | `lemma` | [fromRows_ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows-ext-iff--a3608a5a7cf14135a5528b30.md) | 143 | `result-track:a3608a5a7cf14135a5528b30ccff1af784113df80b8bb1faeef9c392ebeed852` |
| 25 | `lemma` | [transpose_fromCols](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/transpose-fromcols--5e1151f6e24a001c34fea56a.md) | 149 | `result-track:5e1151f6e24a001c34fea56a9880989fef5069734d51ef197bfccca5838e68cc` |
| 26 | `lemma` | [transpose_fromRows](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/transpose-fromrows--11c5823c617c0c8f48c8f6d9.md) | 157 | `result-track:11c5823c617c0c8f48c8f6d9e11dfb244ce72c84c3aaed866677d5c7f382364a` |
| 27 | `lemma` | [fromRows_neg](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows-neg--b84234aeff346c967c9bf6d9.md) | 167 | `result-track:b84234aeff346c967c9bf6d94a88f42f46cd222aa12a6f58bd998d4be5b3ea1b` |
| 28 | `lemma` | [fromCols_neg](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-neg--1f856513388592a2d3c1d1b6.md) | 173 | `result-track:1f856513388592a2d3c1d1b62afd833e12e53f5f5e76dccf89e9083ad09ee640` |
| 29 | `lemma` | [fromCols_fromRows_eq_fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-fromrows-eq-fromblocks--4ed359f924b9dd14f487b1c7.md) | 182 | `result-track:4ed359f924b9dd14f487b1c7a5f33daece9a063b5422cb3754312c64fd523469` |
| 30 | `lemma` | [fromRows_fromCols_eq_fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows-fromcols-eq-fromblocks--9037ae047a445c7d657d3bd2.md) | 191 | `result-track:9037ae047a445c7d657d3bd28a3cb7ebeb993d9d00e3d4579626dfda77ee0bca` |
| 31 | `lemma` | [fromRows_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows-mulvec--ba19b4f77794f70e37d00ca3.md) | 204 | `result-track:ba19b4f77794f70e37d00ca36a4e415e673fb797c33b5b5ef222c01126c8f1dd` |
| 32 | `lemma` | [vecMul_fromCols](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/vecmul-fromcols--774e5beaf2e4251d89cfb79a.md) | 209 | `result-track:774e5beaf2e4251d89cfb79a2eefa6fcd8f430416a94a02e9b7126a4b955ed23` |
| 33 | `lemma` | [sumElim_vecMul_fromRows](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/sumelim-vecmul-fromrows--b1de7bb03fe3e1228d41ca8c.md) | 216 | `result-track:b1de7bb03fe3e1228d41ca8c31d8e5bc5ea50818a64ae0d21dc8ff05d52250e5` |
| 34 | `lemma` | [fromCols_mulVec_sumElim](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-mulvec-sumelim--f0648c1e42c3e4836e67d3d0.md) | 225 | `result-track:f0648c1e42c3e4836e67d3d034201caf934b4f164f8966667ed3e56c1fe98761` |
| 35 | `lemma` | [fromRows_mul](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows-mul--00c19da520ddf62c40248f09.md) | 236 | `result-track:00c19da520ddf62c40248f0903d34fea5fd40765e78cf3cdef6728afa480c95d` |
| 36 | `lemma` | [mul_fromCols](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/mul-fromcols--15209412742e30706e60dd18.md) | 241 | `result-track:15209412742e30706e60dd183dbeb9baa646ea1addbd714a6479a5d143934f52` |
| 37 | `lemma` | [fromRows_zero](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows-zero--3715d069dfaf7c7a52fc5bc2.md) | 248 | `result-track:3715d069dfaf7c7a52fc5bc2810ee2cfd399c02a7e6807bff26bea0914cd2ec7` |
| 38 | `lemma` | [fromCols_zero](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-zero--7c9ccd96df8aa0bee5e19ed0.md) | 252 | `result-track:7c9ccd96df8aa0bee5e19ed0ef22b6413ed2876b0c92cfe77b519ac88454ed94` |
| 39 | `lemma` | [fromRows_mul_fromCols](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromrows-mul-fromcols--895c21768ecc475c085c734d.md) | 259 | `result-track:895c21768ecc475c085c734d85993181ec1a8095a7063d10a42b8018680e2b50` |
| 40 | `lemma` | [fromCols_mul_fromRows](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-mul-fromrows--ae43f56ac4f1b14e33784602.md) | 269 | `result-track:ae43f56ac4f1b14e337846022818831c77d676fc0beea6f646d0587dd0d7a900` |
| 41 | `lemma` | [fromCols_mul_fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-mul-fromblocks--5dc0145263e2edf04d31d436.md) | 279 | `result-track:5dc0145263e2edf04d31d43646a6a6ec1d577da6cdbc5df3c8609a0b1db1244c` |
| 42 | `lemma` | [fromBlocks_mul_fromRows](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromblocks-mul-fromrows--e1de8fcdd34fd9474522c4ab.md) | 288 | `result-track:e1de8fcdd34fd9474522c4abacc4f0c1ec984785a302aa076e1c139030d81454` |
| 43 | `lemma` | [fromCols_mul_fromRows_eq_one_comm](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/fromcols-mul-fromrows-eq-one-comm--aefa4bb67457834597782809.md) | 305 | `result-track:aefa4bb67457834597782809c0cda9ef423f612dc514229b5d169f76dbd18994` |
| 44 | `lemma` | [equiv_compl_fromCols_mul_fromRows_eq_one_comm](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/equiv-compl-fromcols-mul-fromrows-eq-one-comm--c602ca6c9501fcfd1ffbd745.md) | 317 | `result-track:c602ca6c9501fcfd1ffbd745e27c0300a0469bd33e0dd17e659324e96d6e77e6` |
| 45 | `lemma` | [conjTranspose_fromCols_eq_fromRows_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/conjtranspose-fromcols-eq-fromrows-conjtranspose--a491e76c3aa426ff474f520a.md) | 335 | `result-track:a491e76c3aa426ff474f520a82decf0e68fc793a98d3e64934226cd9c59283b5` |
| 46 | `lemma` | [conjTranspose_fromRows_eq_fromCols_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/ColumnRowPartitioned/Variantbfd99849d14ca70042bbc1e6a3e8d69ad849562eb6468372c1f310d089d9a7e6.lean/declarations/conjtranspose-fromrows-eq-fromcols-conjtranspose--52854e5fbd9ad959480d5547.md) | 346 | `result-track:52854e5fbd9ad959480d55476fbf7a3761b3c6bef14ed9bbd16f997479740ff2` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
