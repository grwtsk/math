# Verification target: GRWTSK.Algebra.LinearAlgebra.Hermitian.Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d4bb233827d8193d97553501617e0e0402a53377",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/index.md) · [Full source](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d4bb233827d8193d97553501617e0e0402a53377`.

Source path: `GRWTSK/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.Matrix.ZPow` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Matrix.ConjTranspose` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsHermitian](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian--4018a33a12284a5e9f3551bf.md) | 49 | `declaration-track:4018a33a12284a5e9f3551bf80eb472651a31e9afde6bc1207d6fb7b5c061d0e` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/instance--34c1a9efbc98de8683a6011f.md) | 51 | `declaration-track:34c1a9efbc98de8683a6011fb93049565dff16b8d11fe29a2d924db461d74fb0` |
| 3 | `theorem` | [IsHermitian.eq](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-eq--257b8661151e97236751d827.md) | 54 | `result-track:257b8661151e97236751d8273e39c405d2e48449b9f031b62473a75547116b79` |
| 4 | `theorem` | [IsHermitian.isSelfAdjoint](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-isselfadjoint--ee7bdfdb01192926bc115767.md) | 56 | `result-track:ee7bdfdb01192926bc115767f0765c218d8080aee81462e964412f2b0cb19028` |
| 5 | `theorem` | [IsHermitian.ext](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-ext--1c6380ba5b2f6981967e0f9d.md) | 59 | `result-track:1c6380ba5b2f6981967e0f9d6dbdf50c9886c1bc52934e09a921db392c58046b` |
| 6 | `theorem` | [IsHermitian.apply](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-apply--14dcbcc2cd6d55e239dea91f.md) | 62 | `result-track:14dcbcc2cd6d55e239dea91f2665190d75e821d3bf716f6029868b81fb92a591` |
| 7 | `theorem` | [IsHermitian.ext_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-ext-iff--24c2246b4706d05312ea7fdb.md) | 65 | `result-track:24c2246b4706d05312ea7fdb1f3404cce0137006f0ea9279e1a6f1d395ec1ff3` |
| 8 | `theorem` | [IsHermitian.map](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-map--a5a9ad66fa0c44340b7e5d6f.md) | 69 | `result-track:a5a9ad66fa0c44340b7e5d6f10ce32c204894bd301d602dc4a3ac90b20c4cf11` |
| 9 | `theorem` | [IsHermitian.transpose](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-transpose--6cbdc3c5cf642c29e3ae8dfe.md) | 73 | `result-track:6cbdc3c5cf642c29e3ae8dfe2d7a9a729fc182467312ed3602032638f636a8d0` |
| 10 | `theorem` | [isHermitian_transpose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-transpose-iff--32b424ce7720a83d965ad6af.md) | 78 | `result-track:32b424ce7720a83d965ad6af794d327d63f560816c7039a773f213ac0a9c0f34` |
| 11 | `theorem` | [IsHermitian.conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-conjtranspose--0f58c30205e706220b9e1de8.md) | 81 | `result-track:0f58c30205e706220b9e1de84112c12e938d3fe4ce5f42f869464620e9b9faf5` |
| 12 | `theorem` | [IsHermitian.submatrix](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-submatrix--868a4286bc1367d92d674267.md) | 85 | `result-track:868a4286bc1367d92d674267bf61dca6f876f319bc07c066cc10ce111f538dd4` |
| 13 | `theorem` | [isHermitian_submatrix_equiv](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-submatrix-equiv--18578a6cff28da20a2133242.md) | 89 | `result-track:18578a6cff28da20a2133242ab4a19f9538731cc7f1cee6be29d6caed74b915f` |
| 14 | `theorem` | [isHermitian_conjTranspose_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-conjtranspose-iff--bac2d9068cc42bf9721132f3.md) | 100 | `result-track:bac2d9068cc42bf9721132f316decedb65c0d5ba2b3f8dd8aebd0f6d54121d06` |
| 15 | `theorem` | [IsHermitian.fromBlocks](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-fromblocks--348d706adafbeb4984f6780c.md) | 105 | `result-track:348d706adafbeb4984f6780c2c37f6a881338477af20b1c81909aee73cdf8842` |
| 16 | `theorem` | [isHermitian_fromBlocks_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-fromblocks-iff--c1da694578a42ca69a001ead.md) | 113 | `result-track:c1da694578a42ca69a001ead0a5bcb33053e02ad9b1a8dde367b84bdf184074b` |
| 17 | `theorem` | [isHermitian_diagonal_of_self_adjoint](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-diagonal-of-self-adjoint--3714ad1c2474ce85ebb41343.md) | 128 | `result-track:3714ad1c2474ce85ebb413431c48d854fc91eaf3a0b6525c01a1cc1eb521aba3` |
| 18 | `lemma` | [isHermitian_diagonal_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-diagonal-iff--f22761faba661ed21b435deb.md) | 134 | `result-track:f22761faba661ed21b435deb25f99a96a223e24a1d2ea39c6179d6f9981ab218` |
| 19 | `theorem` | [isHermitian_diagonal](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-diagonal--49d04cf05870d1895b2eb213.md) | 141 | `result-track:49d04cf05870d1895b2eb2139c5e12fa92a0e5abc3901d3affd6c9c4c065a399` |
| 20 | `theorem` | [isHermitian_zero](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-zero--e872a220e165e934bbdb68f5.md) | 146 | `result-track:e872a220e165e934bbdb68f5f201af595dbd444443906ae011de619f297fec2f` |
| 21 | `theorem` | [IsHermitian.add](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-add--85a531034342798064415c4f.md) | 150 | `result-track:85a531034342798064415c4f3efb9c2527018a2173d00def664c79a054788837` |
| 22 | `theorem` | [isHermitian_add_transpose_self](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-add-transpose-self--bf141bff8afac523b8953d91.md) | 160 | `result-track:bf141bff8afac523b8953d91a16d60bafd719597d5ef30aa1be3515b39de4504` |
| 23 | `theorem` | [isHermitian_transpose_add_self](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-transpose-add-self--d1245c745c305fec297661a5.md) | 163 | `result-track:d1245c745c305fec297661a57a87b4ef36d5e9eb3f55d04293355f430301ddbd` |
| 24 | `theorem` | [IsHermitian.neg](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-neg--44b398d68a5636f65d84ea6c.md) | 173 | `result-track:44b398d68a5636f65d84ea6c3db3da18838e792f4235e67505a8914aa9bbdc26` |
| 25 | `theorem` | [IsHermitian.sub](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-sub--addd5154c36a4bb2b8596057.md) | 177 | `result-track:addd5154c36a4bb2b8596057c2ff49393dd51e89c9b82d7da94d652ac4be37f4` |
| 26 | `theorem` | [isHermitian_mul_conjTranspose_self](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-mul-conjtranspose-self--d41f034d1395e98655ba689a.md) | 188 | `result-track:d41f034d1395e98655ba689a94e1949c302df655557a6b9bce149fda18692077` |
| 27 | `theorem` | [isHermitian_transpose_mul_self](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-transpose-mul-self--29a196d7edac17faf508d936.md) | 192 | `result-track:29a196d7edac17faf508d93640cf5f950f29acb817798a6effd3faa578fe0ab3` |
| 28 | `theorem` | [isHermitian_conjTranspose_mul_mul](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-conjtranspose-mul-mul--9bc466ae7ddbf2a8880643ab.md) | 196 | `result-track:9bc466ae7ddbf2a8880643ab45435f69524a2cc9a7cf694e744b208064d1c7c3` |
| 29 | `theorem` | [isHermitian_mul_mul_conjTranspose](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-mul-mul-conjtranspose--3e5f34373c1a561e3cc60dcc.md) | 201 | `result-track:3e5f34373c1a561e3cc60dcc5a6854113a60d0630894cfac909dc8085155c4b6` |
| 30 | `lemma` | [commute_iff](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/commute-iff--63ec837fbc009f56d589c35b.md) | 205 | `result-track:63ec837fbc009f56d589c35b30ccba6049fcc0b675b884f0ca0ef856bd6c9eee` |
| 31 | `theorem` | [isHermitian_one](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-one--49d28dd67c4b5762cc7701ae.md) | 218 | `result-track:49d28dd67c4b5762cc7701ae78c5dd80af55faad25fa54d781f8897664c304a3` |
| 32 | `theorem` | [isHermitian_natCast](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-natcast--c981a830dbc019950ed6b5b1.md) | 222 | `result-track:c981a830dbc019950ed6b5b1c63776c806f98c1ab48f84369727a7d98cc87693` |
| 33 | `theorem` | [IsHermitian.pow](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-pow--06c0428c47258c3007a90207.md) | 225 | `result-track:06c0428c47258c3007a9020739247e6e62deb5222850f2538c1bb5b02c743f28` |
| 34 | `theorem` | [isHermitian_intCast](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-intcast--69a7ba216cb6e342ae74cbba.md) | 234 | `result-track:69a7ba216cb6e342ae74cbba899f87b7d29e7b8f08c947d72087ff8cdef1ad89` |
| 35 | `theorem` | [IsHermitian.inv](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-inv--f272ef119a8733f70caba7e0.md) | 243 | `result-track:f272ef119a8733f70caba7e0e05e802c43a1be1dbe406d78b63b7138cd536a5b` |
| 36 | `theorem` | [isHermitian_inv](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-inv--0764c665b42740aef91fb15e.md) | 247 | `result-track:0764c665b42740aef91fb15ef968c19aac4b27298668b47eedf03ea95bfb1d05` |
| 37 | `theorem` | [IsHermitian.adjugate](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-adjugate--6fcbbfa0d3976a71897b5205.md) | 251 | `result-track:6fcbbfa0d3976a71897b5205613f44bdbb2d2de87e43b6a88fccd6e167d79f08` |
| 38 | `theorem` | [IsHermitian.zpow](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-zpow--0fdfd9bff5451d8ec91d3a0c.md) | 255 | `result-track:0fdfd9bff5451d8ec91d3a0c973fe195c1842aeb5c7b7cbb1f2697be4fcc39ea` |
| 39 | `theorem` | [IsHermitian.coe_re_apply_self](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-coe-re-apply-self--d98402e530bb1dccb19b5e0c.md) | 269 | `result-track:d98402e530bb1dccb19b5e0c3122b268bbff47ed356ed5bdc988c40141980b47` |
| 40 | `theorem` | [IsHermitian.coe_re_diag](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-coe-re-diag--cfe0600794b588e3f911ae5e.md) | 273 | `result-track:cfe0600794b588e3f911ae5e633d4d41477a1398368a5ffe531ba8ff0e6b09b3` |
| 41 | `theorem` | [isHermitian_iff_isSymmetric](../../../../../mathematics/Algebra/LinearAlgebra/Hermitian/Variant95bed55fc85d671a36690be8cda4a30e04dad60d39fd4e24a2c8cf21f1351c2b.lean/declarations/ishermitian-iff-issymmetric--b197b7bdcfbb002f773c61a7.md) | 278 | `result-track:b197b7bdcfbb002f773c61a762990b57540e267608e152a91627cf4c2fb92baf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
