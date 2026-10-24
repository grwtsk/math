# Verification target: GRWTSK.Algebra.LinearAlgebra.Notation.Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fd5190fcd5011308f55facf7c9fe04707d5ced8b",
  "lexical_observation_count": 68,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fd5190fcd5011308f55facf7c9fe04707d5ced8b`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Fin.Tuple` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.RowCol` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FinCases` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Fin` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [mkLiteralQ](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/mkliteralq--08ca65fbe055e48c7494fe1e.md) | 54 | `declaration-track:08ca65fbe055e48c7494fe1e240eb301a791a0c4582f86bfb6cd8a43a101a851` |
| 2 | `instance` | [toExpr](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/toexpr--6239b148dfd14bdca405cc19.md) | 61 | `declaration-track:6239b148dfd14bdca405cc19f39943325c3a9d4a6d8b70bc49c217bcef804866` |
| 3 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/syntax--b2c191ec30d9c22a6e8cf84f.md) | 95 | `declaration-track:b2c191ec30d9c22a6e8cf84f636e0061fbcef2c289ca6efc1c021d9e92ee866d` |
| 4 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/syntax--473bab03339392cb8e435336.md) | 99 | `declaration-track:473bab03339392cb8e43533617c4b3478fd641f410713c8b8e82f5771ae9c354` |
| 5 | `syntax` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/syntax--3fd68997c6c601bcbc014825.md) | 101 | `declaration-track:3fd68997c6c601bcbc014825dd910dda1134ff5e25df57ca7fb520171b0da45c` |
| 6 | `macro_rules` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/macro-rules--59b0faacb6f9877ba1971ce1.md) | 103 | `declaration-track:59b0faacb6f9877ba1971ce116246cda2892e2ca6a16ce59b03709bdd35f3ad9` |
| 7 | `def` | [delabMatrixNotation](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/delabmatrixnotation--8c8ba13b691d111f13c9f869.md) | 122 | `declaration-track:8c8ba13b691d111f13c9f8694e52dce2ea7299fecfd6936146e2a6570999f5e1` |
| 8 | `instance` | [repr](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/repr--671fc640767210972b3e934d.md) | 151 | `declaration-track:671fc640767210972b3e934d80a7cdf6fde0b2c5278eb365a34d9cfff3ac58a4` |
| 9 | `theorem` | [cons_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/cons-val--44a5064cf0ed26b7b9224d3d.md) | 161 | `result-track:44a5064cf0ed26b7b9224d3dd742de1f9eaabd311aca4b010db21a101c4a48dd` |
| 10 | `theorem` | [head_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/head-val--d6e8e41039a0e92f7327a67b.md) | 165 | `result-track:d6e8e41039a0e92f7327a67b94801feae888466285e33e54d59900cf1f02444c` |
| 11 | `theorem` | [tail_val'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/tail-val--532e035e6b3b5833b2381634.md) | 169 | `result-track:532e035e6b3b5833b2381634aacead22c916ce2222bcd7ae4a1fd0af597df77d` |
| 12 | `theorem` | [dotProduct_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/dotproduct-empty--c697a462adb3845e4c3b7ab8.md) | 177 | `result-track:c697a462adb3845e4c3b7ab8e13f6c335d637ad901be878ffdbd10d1d760479b` |
| 13 | `theorem` | [cons_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/cons-dotproduct--cc5b542ea8f481a8824e19b2.md) | 181 | `result-track:cc5b542ea8f481a8824e19b2e39c9396c4b864f86d9a0834fab15752de17efb1` |
| 14 | `theorem` | [dotProduct_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/dotproduct-cons--8ed3d18804a8a456624e7201.md) | 186 | `result-track:8ed3d18804a8a456624e720150049e8bdd2fe4a105602f25d679b105fe9361ca` |
| 15 | `theorem` | [cons_dotProduct_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/cons-dotproduct-cons--8c61b5299554b6310971ec80.md) | 190 | `result-track:8c61b5299554b6310971ec805377ad571360e329797cdfe640c7c621131da39d` |
| 16 | `theorem` | [replicateCol_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/replicatecol-empty--00cfbf268bc82c743ab2e0ec.md) | 200 | `result-track:00cfbf268bc82c743ab2e0ec9a4a94c4ee9e07ba38ea66221b465ab2df5d5291` |
| 17 | `theorem` | [replicateCol_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/replicatecol-cons--cdf3d8f65e07552ac72cd8f2.md) | 206 | `result-track:cdf3d8f65e07552ac72cd8f2cdd882138c97aecadb7df1e8eb65080a803d25e9` |
| 18 | `theorem` | [replicateRow_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/replicaterow-empty--c90238b2228671efc7fe48de.md) | 214 | `result-track:c90238b2228671efc7fe48de3ca4e1f1a2b3c93f900616dc2362d7a48e4a19ca` |
| 19 | `theorem` | [replicateRow_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/replicaterow-cons--8d11cf4b8ac487931b47014c.md) | 219 | `result-track:8d11cf4b8ac487931b47014c02e3dfda949ea349ba4bf8e7d5fccc12b0404671` |
| 20 | `theorem` | [transpose_empty_rows](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/transpose-empty-rows--847319db09f6332a12a560c3.md) | 230 | `result-track:847319db09f6332a12a560c342c4c5498c9a49c6e4d2de3827605253fd7e99e0` |
| 21 | `theorem` | [transpose_empty_cols](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/transpose-empty-cols--2769dc7b803cdedebb46507c.md) | 234 | `result-track:2769dc7b803cdedebb46507c08ab77b4e452f3cf76d689ecf00fc69ee855d1f1` |
| 22 | `theorem` | [cons_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/cons-transpose--fe8efa5a9d8e5b329a03e9d1.md) | 238 | `result-track:fe8efa5a9d8e5b329a03e9d104e79a60320b00bf1975328e6dc3e1b391a36a23` |
| 23 | `theorem` | [head_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/head-transpose--61ad3a803ba0c68c7255f714.md) | 244 | `result-track:61ad3a803ba0c68c7255f7141bf9264f14b5a69a2bc57c026565c75c881e3e90` |
| 24 | `theorem` | [tail_transpose](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/tail-transpose--2da6e53cd06f9c09841453e0.md) | 249 | `result-track:2da6e53cd06f9c09841453e06f4de9b40dfa0537599f24d4efcf1ad0caa67b00` |
| 25 | `theorem` | [empty_mul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/empty-mul--d0512dc070ca51d253eed2bf.md) | 260 | `result-track:d0512dc070ca51d253eed2bf72f4fcca341fcdbc80ad36c2980d6b1c65499e25` |
| 26 | `theorem` | [empty_mul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/empty-mul-empty--80614dd4b2b00763d0574b06.md) | 264 | `result-track:80614dd4b2b00763d0574b060a6f6223eb9c9d31472cad5daf8692dd2898f23b` |
| 27 | `theorem` | [mul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/mul-empty--8c7a11c035f44b6960ee1e97.md) | 268 | `result-track:8c7a11c035f44b6960ee1e97c24eca20464884f3739471a58c3e767388ade5ac` |
| 28 | `theorem` | [mul_val_succ](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/mul-val-succ--f074d5a3803c7d903893f6f4.md) | 272 | `result-track:f074d5a3803c7d903893f6f49fe3d6e6c1c74b31a007dcaf64aacd12d9f66643` |
| 29 | `theorem` | [cons_mul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/cons-mul--7eff031a6ac860cf86990c25.md) | 277 | `result-track:7eff031a6ac860cf86990c2582339d3571b26a874f24c30ee6ab344765bb3d62` |
| 30 | `theorem` | [empty_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/empty-vecmul--a8a9e9871bbb0ed2d9599a9e.md) | 291 | `result-track:a8a9e9871bbb0ed2d9599a9e6233b72964333991630fee6ffe3effd7ca8a380a` |
| 31 | `theorem` | [vecMul_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vecmul-empty--e4400cd7d18492d667e89b21.md) | 295 | `result-track:e4400cd7d18492d667e89b2159d07043871b01e713f34ae737f1dacb31001df0` |
| 32 | `theorem` | [cons_vecMul](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/cons-vecmul--924bd37caf80a621a34ccf2d.md) | 299 | `result-track:924bd37caf80a621a34ccf2d18cab6b6e1facc9ffe7fe83835acfae4514a34bb` |
| 33 | `theorem` | [vecMul_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vecmul-cons--47d48c8c2a9f91a26efd28ad.md) | 305 | `result-track:47d48c8c2a9f91a26efd28ada3cca6b9aa2494e506371b7f9223fb60cb4333f2` |
| 34 | `theorem` | [cons_vecMul_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/cons-vecmul-cons--a58ae418443deaecbaee8054.md) | 310 | `result-track:a58ae418443deaecbaee8054d09a33521efdc812150594e06c2e17226501aeba` |
| 35 | `theorem` | [empty_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/empty-mulvec--26be2278dc7d67aee19c260e.md) | 320 | `result-track:26be2278dc7d67aee19c260e02137a0cdcc22efe51b59a7d205b2c549991a68c` |
| 36 | `theorem` | [mulVec_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/mulvec-empty--9a7c784db4e5497b69b8343f.md) | 324 | `result-track:9a7c784db4e5497b69b8343f4e3d9f1a3125ad9db18a6abb37be35399815fdef` |
| 37 | `theorem` | [cons_mulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/cons-mulvec--12954f66798b4fa1afd62308.md) | 328 | `result-track:12954f66798b4fa1afd623085419f319ff38a549e22766c4d7ee46c8fae73b0a` |
| 38 | `theorem` | [mulVec_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/mulvec-cons--47e20e114d0a94263c5895a3.md) | 334 | `result-track:47e20e114d0a94263c5895a3172f3064e33a70ebb2753f5ddc830d7f430ab40b` |
| 39 | `theorem` | [empty_vecMulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/empty-vecmulvec--0c713918539aa03c4bc57277.md) | 346 | `result-track:0c713918539aa03c4bc572776318794863ef8612146cd43b4e605013b791604a` |
| 40 | `theorem` | [vecMulVec_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vecmulvec-empty--f2f91211aa37186025aa3188.md) | 350 | `result-track:f2f91211aa37186025aa318836400984ee02a28ad8f3b1b92f026cb6c01b4e4e` |
| 41 | `theorem` | [cons_vecMulVec](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/cons-vecmulvec--01611fac15935ce6e9804343.md) | 354 | `result-track:01611fac15935ce6e9804343b3817de4487f62c76217a963d64ce9bb4ac315d9` |
| 42 | `theorem` | [vecMulVec_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vecmulvec-cons--63887846b3f4cc3e3470de2f.md) | 360 | `result-track:63887846b3f4cc3e3470de2fa0ad0bb81f050f895d445a0ebb6a609f247e530a` |
| 43 | `theorem` | [smul_mat_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/smul-mat-empty--84b0033e763fbd8d1b7b24fb.md) | 369 | `result-track:84b0033e763fbd8d1b7b24fbd4d78b4c2f7bd16fc75a483feb7cbb4b5041e0f1` |
| 44 | `theorem` | [smul_mat_cons](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/smul-mat-cons--8c3cc9d9a8292f9247e18a14.md) | 372 | `result-track:8c3cc9d9a8292f9247e18a148b6d791cbe30bba6a477390c3dbdde5965c203a7` |
| 45 | `theorem` | [submatrix_empty](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/submatrix-empty--f4493aee1825c71de9d26a56.md) | 382 | `result-track:f4493aee1825c71de9d26a56e159a105ae14e81d052c4c6aa9674f91c34f3254` |
| 46 | `theorem` | [submatrix_cons_row](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/submatrix-cons-row--e9427ef5e83c01fc07e06d62.md) | 387 | `result-track:e9427ef5e83c01fc07e06d62645a99ef3b9b00102fba24c5c6f54ee922a754ea` |
| 47 | `theorem` | [submatrix_updateRow_succAbove](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/submatrix-updaterow-succabove--828a56cd64f379752181f138.md) | 394 | `result-track:828a56cd64f379752181f1387e999ed46bf2c237fa9dfca8ff541c4389bd5ff7` |
| 48 | `theorem` | [submatrix_updateCol_succAbove](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/submatrix-updatecol-succabove--f09b174b14bf555c5bd30e05.md) | 400 | `result-track:f09b174b14bf555c5bd30e05ffd6423dc08ca66c07ccf86c6bf2d5859865fe39` |
| 49 | `theorem` | [one_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/one-fin-two--2816e25dcba6b1af11994a86.md) | 415 | `result-track:2816e25dcba6b1af11994a86794ac8f1a9412c6c28d773702bb1dfd984088bfb` |
| 50 | `theorem` | [one_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/one-fin-three--00b20dc3655bafb77a994ffe.md) | 419 | `result-track:00b20dc3655bafb77a994ffef666f3284b3c9d924d02a5806e80d702207c64bb` |
| 51 | `theorem` | [natCast_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/natcast-fin-two--23a3ec24583638e25c8e9652.md) | 428 | `result-track:23a3ec24583638e25c8e9652c2c3e1e34ea77404fc5b89585093f393c23a8778` |
| 52 | `theorem` | [natCast_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/natcast-fin-three--b1ede3ad1de239a2bf90cb4a.md) | 432 | `result-track:b1ede3ad1de239a2bf90cb4a1f9c3f2242496423f40a09031fbf5088463b1718` |
| 53 | `theorem` | [ofNat_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/ofnat-fin-two--f522a7ab5c01d60302376acc.md) | 437 | `result-track:f522a7ab5c01d60302376acc7f19eb0857cfb08bb647b50e5999dc243a2c7e1c` |
| 54 | `theorem` | [ofNat_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/ofnat-fin-three--e1ec475c0179db5b508c9db9.md) | 442 | `result-track:e1ec475c0179db5b508c9db992e93e145799ba3ee1ee1668dc550924ffaf5295` |
| 55 | `theorem` | [eta_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/eta-fin-two--93941b572344a4d169f3f139.md) | 449 | `result-track:93941b572344a4d169f3f13974a0f8cd8ea67ae0299158eb77ca6e31edc69c11` |
| 56 | `theorem` | [eta_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/eta-fin-three--81654f69202f30c4cc2fbc53.md) | 453 | `result-track:81654f69202f30c4cc2fbc53f067416dbd36b2f00dbb987628f1a8748d626716` |
| 57 | `theorem` | [mul_fin_two](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/mul-fin-two--b9e8dddb09008d94a3c0b66e.md) | 460 | `result-track:b9e8dddb09008d94a3c0b66ef4df096d341a047d470af0640f225086bb4469e5` |
| 58 | `theorem` | [mul_fin_three](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/mul-fin-three--4c716a6994ee55ffd5a3638c.md) | 468 | `result-track:4c716a6994ee55ffd5a3638cba2f26f199bce0bb08973bb0442bbdb74038a09c` |
| 59 | `theorem` | [vec2_eq](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vec2-eq--c9815790daff86f02edcad9d.md) | 482 | `result-track:c9815790daff86f02edcad9d3d8d8d00fa8dbfe25e222d06e0dc6c6e42bcc4c3` |
| 60 | `theorem` | [vec3_eq](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vec3-eq--98a1d564c378068682daa080.md) | 486 | `result-track:98a1d564c378068682daa080abf504526518fc42de7ebd225e033d3dfbc4a43c` |
| 61 | `theorem` | [vec2_add](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vec2-add--5b367c5b1bd9d0865321cf57.md) | 491 | `result-track:5b367c5b1bd9d0865321cf574ea1351ab18d9e2c81926331485cb9a5988b3817` |
| 62 | `theorem` | [vec3_add](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vec3-add--7556b943f7b03db3fb7e076f.md) | 494 | `result-track:7556b943f7b03db3fb7e076ff61ddedc40dbf2cc1ac13c59f4b549ac8d744627` |
| 63 | `theorem` | [smul_vec2](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/smul-vec2--a3a3e84330960a547eb3012b.md) | 498 | `result-track:a3a3e84330960a547eb3012b8a1c2f0babf97cfccd629ed840ac5d5337544bb6` |
| 64 | `theorem` | [smul_vec3](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/smul-vec3--69df11103545415a54e48b36.md) | 501 | `result-track:69df11103545415a54e48b36523f378cba73289ea9c9d91c7a5b04e6d4ae6777` |
| 65 | `theorem` | [vec2_dotProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vec2-dotproduct--b8f985ba8680c0e8e49fc990.md) | 507 | `result-track:b8f985ba8680c0e8e49fc990ddad86b2abdfa28b52a91e355e812b272ba92f69` |
| 66 | `theorem` | [vec2_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vec2-dotproduct--d96f498302c4ab003f0c42ea.md) | 511 | `result-track:d96f498302c4ab003f0c42eaca91f63a4886e8b9daf2107630886a554003d21b` |
| 67 | `theorem` | [vec3_dotProduct'](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vec3-dotproduct--105902d48edfc7146f3c72a0.md) | 514 | `result-track:105902d48edfc7146f3c72a0fedea7a2513e8a54f54aa0af2d94a4fa807fa3e9` |
| 68 | `theorem` | [vec3_dotProduct](../../../../../mathematics/Algebra/LinearAlgebra/Notation/Variantcf6faad271beae09d36754dabc3ca01b5709e281fb23f40a496c44f2afc5397a.lean/declarations/vec3-dotproduct--63342b83ca4eb80637d62812.md) | 521 | `result-track:63342b83ca4eb80637d62812508bf23db123bdf89481d44d493b0bafe7f9058f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
