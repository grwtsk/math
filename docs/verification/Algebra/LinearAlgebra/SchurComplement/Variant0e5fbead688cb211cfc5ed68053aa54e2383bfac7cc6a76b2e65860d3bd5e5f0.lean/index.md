# Verification target: GRWTSK.Algebra.LinearAlgebra.SchurComplement.Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e59d6048d6cb307cdee7c9aa697c59463c0b30b6",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e59d6048d6cb307cdee7c9aa697c59463c0b30b6`.

Source path: `GRWTSK/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matrix.Invertible` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.NonsingularInverse` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.PosDef` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [fromBlocks_eq_of_invertible₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/fromblocks-eq-of-invertible--36070fe4f774da5f97ede8d7.md) | 62 | `result-track:36070fe4f774da5f97ede8d7d501c333c83ad15cc7ca1730c458ac3661c2a25a` |
| 2 | `theorem` | [fromBlocks_eq_of_invertible₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/fromblocks-eq-of-invertible--8670df70160b42557fb571c3.md) | 74 | `result-track:8670df70160b42557fb571c37a5015beae392a87378c2464708bb7b080663273` |
| 3 | `def` | [fromBlocksZero₂₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/fromblockszero-invertible--e73926d46bfe768e128f60e5.md) | 91 | `declaration-track:e73926d46bfe768e128f60e5b08d26494f334eb1afc3cef0148166e49887a497` |
| 4 | `def` | [fromBlocksZero₁₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/fromblockszero-invertible--43b6accdc3bed0488a51b019.md) | 100 | `declaration-track:43b6accdc3bed0488a51b019522fd4ee431f0ae863b73050243cff579fc267e4` |
| 5 | `theorem` | [invOf_fromBlocks_zero₂₁_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/invof-fromblocks-zero-eq--02e5222c59b4196133af5819.md) | 110 | `result-track:02e5222c59b4196133af5819f82e7dc2ec7870f48df9f27db38370296fb98240` |
| 6 | `theorem` | [invOf_fromBlocks_zero₁₂_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/invof-fromblocks-zero-eq--bcf3d96dd76a37df33c2b136.md) | 117 | `result-track:bcf3d96dd76a37df33c2b13667c724747fda4d4b00d46b25806ee4a1fec80219` |
| 7 | `def` | [invertibleOfFromBlocksZero₂₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/invertibleoffromblockszero-invertible--73c22c6ba21267e3c31a20c5.md) | 126 | `declaration-track:73c22c6ba21267e3c31a20c5f87b39437d921c83ef0c303c2e7ea3283557fe23` |
| 8 | `def` | [invertibleOfFromBlocksZero₁₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/invertibleoffromblockszero-invertible--b3cc8b1efb975d43bd594323.md) | 146 | `declaration-track:b3cc8b1efb975d43bd594323e86df2e4293152475020f1d96234c895973f7344` |
| 9 | `def` | [fromBlocksZero₂₁InvertibleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/fromblockszero-invertibleequiv--9b4348afbc2051e49ee79b6f.md) | 166 | `declaration-track:9b4348afbc2051e49ee79b6f07511ad3a14c7190884771645477923bdf1867cb` |
| 10 | `def` | [fromBlocksZero₁₂InvertibleEquiv](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/fromblockszero-invertibleequiv--a2445e27d46168b1f5d54227.md) | 179 | `declaration-track:a2445e27d46168b1f5d542276de21fb15233d5f60d375d55f944dcba1d8c77f3` |
| 11 | `theorem` | [isUnit_fromBlocks_zero₂₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/isunit-fromblocks-zero--6e3fded960833e2a28150d57.md) | 194 | `result-track:6e3fded960833e2a28150d57a1f257e8e8fccce6d137f6b16da9375bb5c681d9` |
| 12 | `theorem` | [isUnit_fromBlocks_zero₁₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/isunit-fromblocks-zero--da061c9fd4716a838926791a.md) | 204 | `result-track:da061c9fd4716a838926791a56608b6ba251e158213c6d0e7053aab7097a9890` |
| 13 | `theorem` | [inv_fromBlocks_zero₂₁_of_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/inv-fromblocks-zero-of-isunit-iff--dfd684ebcb3756bca687c79b.md) | 212 | `result-track:dfd684ebcb3756bca687c79bab735c83e0301676c50fd56eadda3783bfd1c3f1` |
| 14 | `theorem` | [inv_fromBlocks_zero₁₂_of_isUnit_iff](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/inv-fromblocks-zero-of-isunit-iff--a697b5146babb565e1d646cb.md) | 230 | `result-track:a697b5146babb565e1d646cb36ddc199d4f239182938ff05ee2f9e6fcc9607f5` |
| 15 | `def` | [fromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/fromblocks-invertible--27ca4b7b2853701ef03e8e78.md) | 258 | `declaration-track:27ca4b7b2853701ef03e8e78dd610542f518a9ae821ef983c999b73cfca3b3b6` |
| 16 | `def` | [fromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/fromblocks-invertible--45fff51e9dc3eb2b423b680e.md) | 288 | `declaration-track:45fff51e9dc3eb2b423b680ec12dbf2eb21653b4adb4cf4c5241e5683fef3073` |
| 17 | `theorem` | [invOf_fromBlocks₂₂_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/invof-fromblocks-eq--da77e0ada8677d232fd50a38.md) | 303 | `result-track:da77e0ada8677d232fd50a389d09e4b4f7e3daf3ff5ee9e3e7c5070cd59953e9` |
| 18 | `theorem` | [invOf_fromBlocks₁₁_eq](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/invof-fromblocks-eq--15c3854d15a093fc0f658fd1.md) | 313 | `result-track:15c3854d15a093fc0f658fd1aa0dadf4f5e3a78d5c7b8617092fa76100b4b4d6` |
| 19 | `def` | [invertibleOfFromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/invertibleoffromblocks-invertible--8f866bebc6781baa84a232d9.md) | 325 | `declaration-track:8f866bebc6781baa84a232d9f9e215de280e2ab6ebfe7878056126b0b2fa802c` |
| 20 | `def` | [invertibleOfFromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/invertibleoffromblocks-invertible--1982f0009c06b939c1c8d078.md) | 343 | `declaration-track:1982f0009c06b939c1c8d0789358e7817071fcb9c55d51e665e83fb07060af1a` |
| 21 | `def` | [invertibleEquivFromBlocks₂₂Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/invertibleequivfromblocks-invertible--af285d98024edc6c72382398.md) | 355 | `declaration-track:af285d98024edc6c7238239882c6665357e7838ace1e29a6701f89e9bdfddfdd` |
| 22 | `def` | [invertibleEquivFromBlocks₁₁Invertible](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/invertibleequivfromblocks-invertible--ff955f922dd0d9a7cf6eaaae.md) | 366 | `declaration-track:ff955f922dd0d9a7cf6eaaaea270f3cd7a3882f6235fded69308ca424a7f0563` |
| 23 | `theorem` | [isUnit_fromBlocks_iff_of_invertible₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/isunit-fromblocks-iff-of-invertible--0dfc5e39a4648176167d32fb.md) | 377 | `result-track:0dfc5e39a4648176167d32fb5c416ceae0df6a3fe01dae5546871f17989a63ab` |
| 24 | `theorem` | [isUnit_fromBlocks_iff_of_invertible₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/isunit-fromblocks-iff-of-invertible--81c9b7421041c6fcd1d6cabc.md) | 386 | `result-track:81c9b7421041c6fcd1d6cabcbcca8cdeb81e6a3bb44328dd453497b3081eb0bb` |
| 25 | `theorem` | [det_fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/det-fromblocks--fd2aa480a888c27da362ffc9.md) | 402 | `result-track:fd2aa480a888c27da362ffc97877a06fabd69093ec952d6689e801e5131ec30e` |
| 26 | `theorem` | [det_fromBlocks_one₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/det-fromblocks-one--b9179c71ed7fed5ddee7f522.md) | 410 | `result-track:b9179c71ed7fed5ddee7f522f5077b80030550ede98b6ccafe593455bf4d3db2` |
| 27 | `theorem` | [det_fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/det-fromblocks--3d435d6aaa283ef0c242b4cc.md) | 418 | `result-track:3d435d6aaa283ef0c242b4cc58aab96096c77cdab8d70409780a2192f3ade6ae` |
| 28 | `theorem` | [det_fromBlocks_one₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/det-fromblocks-one--a188b9f850600c1bb6ab47f6.md) | 429 | `result-track:a188b9f850600c1bb6ab47f68f3f3d9e1be382b61c9016b9b274c32476186a5f` |
| 29 | `theorem` | [det_one_add_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/det-one-add-mul-comm--4824114d535e0f29ac530cad.md) | 437 | `result-track:4824114d535e0f29ac530cadce9d4c06d78d6db072111e100a5e243c7d218014` |
| 30 | `theorem` | [det_mul_add_one_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/det-mul-add-one-comm--204fbcfbe0a5477218bf0de4.md) | 446 | `result-track:204fbcfbe0a5477218bf0de4cca48ef21fc3a4b4f9a1f01c4904cdd7a047987b` |
| 31 | `theorem` | [det_one_sub_mul_comm](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/det-one-sub-mul-comm--fc34671785e6f0b5733d78dd.md) | 450 | `result-track:fc34671785e6f0b5733d78dd75db225d0fea5843b9bcb1dab11feec266b4fe6e` |
| 32 | `theorem` | [det_one_add_col_mul_row](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/det-one-add-col-mul-row--2b28a8b372e84703025f4fbb.md) | 458 | `result-track:2b28a8b372e84703025f4fbbea22d286887239293f7ce7af1ac84f7dfb0c47a1` |
| 33 | `theorem` | [schur_complement_eq₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/schur-complement-eq--3810ae58d8b5479ba9bb6a6c.md) | 476 | `result-track:3810ae58d8b5479ba9bb6a6c9088659d1ea898d53b28a0a701e3e8d7c913b7ae` |
| 34 | `theorem` | [schur_complement_eq₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/schur-complement-eq--9777ca1ae3c963ba78580a6e.md) | 488 | `result-track:9777ca1ae3c963ba78580a6e93d6907636f46d6fc95d44b8a7e4c29c57ce27ac` |
| 35 | `theorem` | [IsHermitian.fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/ishermitian-fromblocks--58cff8bc1bf6bd2b3c3b8dd9.md) | 500 | `result-track:58cff8bc1bf6bd2b3c3b8dd9e8b3129b569cd663f4eda62b3d4ed5b0b034e7d0` |
| 36 | `theorem` | [IsHermitian.fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/ishermitian-fromblocks--ee8a1822f2442054f564b762.md) | 516 | `result-track:ee8a1822f2442054f564b76242dbddd7d189bdb109547318441612fe3930cbfb` |
| 37 | `theorem` | [PosSemidef.fromBlocks₁₁](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/possemidef-fromblocks--cc557bdfb951a4f3ddc582af.md) | 524 | `result-track:cc557bdfb951a4f3ddc582aff33b16867ab4db3fa4a710e223b485f09a3ea952` |
| 38 | `theorem` | [PosSemidef.fromBlocks₂₂](../../../../../mathematics/Algebra/LinearAlgebra/SchurComplement/Variant0e5fbead688cb211cfc5ed68053aa54e2383bfac7cc6a76b2e65860d3bd5e5f0.lean/declarations/possemidef-fromblocks--ff9cb53f761c9e855a3ab349.md) | 543 | `result-track:ff9cb53f761c9e855a3ab349a68f0850a819e443bee22c74f6128d90b70bec74` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
