# Verification target: GRWTSK.Algebra.CommSemiringAdapter.Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ee8a0434998c1908f6d6af2f41c9607ebec91a06",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/index.md) · [Full source](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ee8a0434998c1908f6d6af2f41c9607ebec91a06`.

Source path: `GRWTSK/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.Int.LemmasAux` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Expr.denoteS](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/expr-denotes--587ba0896c7642223bcde9b9.md) | 24 | `declaration-track:587ba0896c7642223bcde9b9d7c56ed9939c10c3f54224d964320e92f670c1e4` |
| 2 | `def` | [Expr.denoteSAsRing](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/expr-denotesasring--843685d0434a7285cf198d0d.md) | 33 | `declaration-track:843685d0434a7285cf198d0d71d16c0dfbb505552547fe4355b198c9a6462d11` |
| 3 | `theorem` | [Expr.denoteAsRing_eq](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/expr-denoteasring-eq--1dbaad6f1ec42a21c8b245b1.md) | 44 | `result-track:1dbaad6f1ec42a21c8b245b142c852e1abf5c4e0c9e36baa46a49100ee7f4124` |
| 4 | `def` | [Expr.toPolyS](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/expr-topolys--ef9fbf3ce2a5769a0c728713.md) | 47 | `declaration-track:ef9fbf3ce2a5769a0c7287139be64e115e24363d256a6b4e410583e8ac77c7ca` |
| 5 | `def` | [Expr.toPolyS_nc](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/expr-topolys-nc--938f04251ed0f88df2aefcbe.md) | 60 | `declaration-track:938f04251ed0f88df2aefcbeb1207c2fff1577557712b59ea2f3ee4bf2d1ad39` |
| 6 | `inductive` | [Poly.NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-nonnegcoeffs--a7aeca6a1de9db7f27ee3f31.md) | 81 | `declaration-track:a7aeca6a1de9db7f27ee3f31f93871998a0df618f93944ab913f16414de6e83f` |
| 7 | `def` | [denoteSInt](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/denotesint--e95c2f4b5375ed9481d1cb53.md) | 85 | `declaration-track:e95c2f4b5375ed9481d1cb53fd0f291657c525b69fe45d1086e6cbdb10257090` |
| 8 | `theorem` | [denoteSInt_eq](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/denotesint-eq--3a2e274a37830601bb888df2.md) | 91 | `result-track:3a2e274a37830601bb888df29010ed7b54ca8c706921a26bb8f6f58138e74f64` |
| 9 | `def` | [Poly.denoteS](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes--7c4280eb8a4803c4981f74fc.md) | 99 | `declaration-track:7c4280eb8a4803c4981f74fca3b4df9c7b037ef96420b71dc16b8b026cf73d8f` |
| 10 | `theorem` | [Poly.denoteS_ofMon](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-ofmon--caeae376830e2c8b25bc1c15.md) | 106 | `result-track:caeae376830e2c8b25bc1c15e8d6e895010f90430351782b25fa6444362754d6` |
| 11 | `theorem` | [Poly.denoteS_ofVar](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-ofvar--c101aebe9fd0c41572e997ac.md) | 110 | `result-track:c101aebe9fd0c41572e997acb6f2c59c127b7435b1f5a69ef0caf542853b9d2f` |
| 12 | `theorem` | [Poly.denoteS_addConst](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-addconst--2ae7e698c29d1efd6e22281e.md) | 114 | `result-track:2ae7e698c29d1efd6e22281eada880ea93030d9945ef821f8c0f63a0a308bfd0` |
| 13 | `theorem` | [Poly.denoteS_insert](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-insert--77c01fec4f7f069ac5815be3.md) | 127 | `result-track:77c01fec4f7f069ac5815be30bd871dc4ff24962c5a2fde8f1030783e8608dac` |
| 14 | `theorem` | [Poly.denoteS_concat](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-concat--9cfc34795a814b637aee036e.md) | 154 | `result-track:9cfc34795a814b637aee036ecca100fb8883bb646c3b0a394a5b08064d135539` |
| 15 | `theorem` | [Poly.denoteS_mulConst](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-mulconst--2671dc73485b581354d99da4.md) | 160 | `result-track:2671dc73485b581354d99da42c5856a94d5e238ac7b9c95f8719acd3117b0210` |
| 16 | `theorem` | [Poly.denoteS_combine](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-combine--f54a781c72b51f38a4abab19.md) | 174 | `result-track:f54a781c72b51f38a4abab195d12a67fc53fe250d2d5bfd7096bc80fce4e06d6` |
| 17 | `theorem` | [Poly.denoteS_mulMon](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-mulmon--b72a6e0cbbac69cc56cba433.md) | 207 | `result-track:b72a6e0cbbac69cc56cba4334dd418955ebf265dd531153ec3c0dccb2a87c42a` |
| 18 | `theorem` | [Poly.addConst_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-addconst-nonnegcoeffs--49d1d5e24816cf4a7379846c.md) | 230 | `result-track:49d1d5e24816cf4a7379846c718c5c02bbe3e66c1a17286840e1d1a0959a46fc` |
| 19 | `theorem` | [Poly.insert_Nonneg](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-insert-nonneg--c508f6533d0d2cf96c4b456b.md) | 237 | `result-track:c508f6533d0d2cf96c4b456b53f10a2c9e61d40d130b3f85909447fd50dfbb72` |
| 20 | `theorem` | [Poly.denoteS_mulMon_nc_go](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-mulmon-nc-go--4d694a5bfb46f3c56e70fe71.md) | 253 | `result-track:4d694a5bfb46f3c56e70fe71a326c1be1c4ab419946939c915d44b2ebe6f14a3` |
| 21 | `theorem` | [Poly.num_zero_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-num-zero-nonnegcoeffs--ec79ecf4d8919a8d3f24419d.md) | 277 | `result-track:ec79ecf4d8919a8d3f24419d6db821259ea0c339644b809e8a47bdf8d112410e` |
| 22 | `theorem` | [Poly.denoteS_mulMon_nc](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-mulmon-nc--a78f707892cbe5fbb5a6adaf.md) | 280 | `result-track:a78f707892cbe5fbb5a6adaf4e83506ea5c8b06db67dbd700a11539bfaa32245` |
| 23 | `theorem` | [Poly.mulConst_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-mulconst-nonnegcoeffs--c9ce5d25967050e6308ed2e0.md) | 294 | `result-track:c9ce5d25967050e6308ed2e04f05b5f7fb871cad13cfca67c5f4ccce4a6d71b2` |
| 24 | `theorem` | [Poly.mulMon_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-mulmon-nonnegcoeffs--0afcefbe617a0235d49c3f21.md) | 307 | `result-track:0afcefbe617a0235d49c3f218539240d18b3179840248dd31de88f6d8e710afd` |
| 25 | `theorem` | [Poly.mulMon_nc_go_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-mulmon-nc-go-nonnegcoeffs--03c107f42e315e4a9b101446.md) | 320 | `result-track:03c107f42e315e4a9b10144630acfc45dd533ab6b0134feefc9bdb0c1f01281c` |
| 26 | `theorem` | [Poly.mulMon_nc_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-mulmon-nc-nonnegcoeffs--61e64f2374af1d17d29d22e4.md) | 335 | `result-track:61e64f2374af1d17d29d22e40e6d19eef97831924a64b7b62e67fc3fe16b18cb` |
| 27 | `theorem` | [Poly.concat_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-concat-nonnegcoeffs--6f0c46523063af6ca76de65b.md) | 344 | `result-track:6f0c46523063af6ca76de65b895178965bfc86a9c05f75196c56200ee47afe2d` |
| 28 | `theorem` | [Poly.combine_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-combine-nonnegcoeffs--cad9163b80fddd69b52fb8fb.md) | 349 | `result-track:cad9163b80fddd69b52fb8fb9548f744a2a648ab3ff9c0122cced35d8e2ff2d4` |
| 29 | `theorem` | [Poly.mul_go_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-mul-go-nonnegcoeffs--050f34e78b15962f470c28d2.md) | 370 | `result-track:050f34e78b15962f470c28d24dbae5b28ee1ed835cd9d068e014a729b834d075` |
| 30 | `theorem` | [Poly.mul_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-mul-nonnegcoeffs--31366312e6519a094c89f199.md) | 386 | `result-track:31366312e6519a094c89f1994576d4fbbdea7065783820e319ac2d7abdbeae95` |
| 31 | `theorem` | [Poly.mul_nc_go_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-mul-nc-go-nonnegcoeffs--c8205188aced1b1471dae107.md) | 390 | `result-track:c8205188aced1b1471dae107d60c1d16a81511e88d760b014204456a055bd4e9` |
| 32 | `theorem` | [Poly.mul_nc_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-mul-nc-nonnegcoeffs--1c83b7b267b554092408bebc.md) | 406 | `result-track:1c83b7b267b554092408bebcddf943ffe1171cab6bc4ffef4cf0453a80752e27` |
| 33 | `theorem` | [Poly.pow_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-pow-nonnegcoeffs--5cc521897cebdb59b6e63a92.md) | 410 | `result-track:5cc521897cebdb59b6e63a929f9ce6e78ddfd25c4104fac07e0f48a8231f7af1` |
| 34 | `theorem` | [Poly.pow_nc_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-pow-nc-nonnegcoeffs--82fc4b6aeb3f07be9edc1c53.md) | 416 | `result-track:82fc4b6aeb3f07be9edc1c5345fdece4da1686bf400862560dc4cb3abc1a5429` |
| 35 | `theorem` | [Poly.denoteS_mul_go](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-mul-go--82e55dc4c8f8df6d5d4ce25e.md) | 425 | `result-track:82e55dc4c8f8df6d5d4ce25e1113b1e7fb47afc8bd94b2464dfd5e23c392c4cb` |
| 36 | `theorem` | [Poly.denoteS_mul](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-mul--fe116c5f26de7c34f6231ca1.md) | 441 | `result-track:fe116c5f26de7c34f6231ca1da15cede09363c81ea4a8f27976cbe5f47dd1d8e` |
| 37 | `theorem` | [Poly.denoteS_mul_nc_go](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-mul-nc-go--a69e606bad39c578ad29f079.md) | 446 | `result-track:a69e606bad39c578ad29f079679048bd1b6b76f39d9313ba7b7bf036abb4e604` |
| 38 | `theorem` | [Poly.denoteS_mul_nc](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-mul-nc--c195368725a5f97efa3fff2c.md) | 462 | `result-track:c195368725a5f97efa3fff2c131504a8d03bce22f3e995428d6d7fcb31726f94` |
| 39 | `theorem` | [Poly.denoteS_pow](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-pow--6b3d18f123eb3ca4fefbaa81.md) | 467 | `result-track:6b3d18f123eb3ca4fefbaa81068ffeb757e60f6e872c706aab829724ca250437` |
| 40 | `theorem` | [Poly.denoteS_pow_nc](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/poly-denotes-pow-nc--3972c0ee0a603e7261aa0300.md) | 478 | `result-track:3972c0ee0a603e7261aa03005656a7026f56f6bc4be606615791e096566be3a2` |
| 41 | `theorem` | [Expr.toPolyS_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/expr-topolys-nonnegcoeffs--a8f8ed4771754d01f3c754f0.md) | 489 | `result-track:a8f8ed4771754d01f3c754f0adb2cc88f488b8b3dba08675f97b3a07013c4371` |
| 42 | `theorem` | [Expr.toPolyS_nc_NonnegCoeffs](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/expr-topolys-nc-nonnegcoeffs--6eee97d65b6c79bb5c3e206a.md) | 503 | `result-track:6eee97d65b6c79bb5c3e206a64179f2635c5adcd2a2fe4f186590983e24c6a2f` |
| 43 | `theorem` | [Expr.denoteS_toPolyS](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/expr-denotes-topolys--d0907950f8bc3192933533e2.md) | 517 | `result-track:d0907950f8bc3192933533e22869baebd4cfea22a7a0b59d4d2e607ba39f56ca` |
| 44 | `theorem` | [Expr.denoteS_toPolyS_nc](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/expr-denotes-topolys-nc--84573fc7481a3fa2eedf9840.md) | 531 | `result-track:84573fc7481a3fa2eedf98401970f8f394964e5966f41b2161ea2905deb3a310` |
| 45 | `def` | [eq_normS_cert](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/eq-norms-cert--90dbb0bb29c4a1e5bba71122.md) | 545 | `declaration-track:90dbb0bb29c4a1e5bba711223e5bdd9417e27d83ad9ae0a50be5cf467651658a` |
| 46 | `theorem` | [eq_normS](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/eq-norms--9af8b242c3aecb8b62ea245b.md) | 548 | `result-track:9af8b242c3aecb8b62ea245bb2a4e6505b0fd503dd4c2f8669d00cf8edfe4fa5` |
| 47 | `def` | [eq_normS_nc_cert](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/eq-norms-nc-cert--0a06f9ef3f81d8f43acec391.md) | 555 | `declaration-track:0a06f9ef3f81d8f43acec39164bac293a3be434b3df7b4b350dd5d6619a57b25` |
| 48 | `theorem` | [eq_normS_nc](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/eq-norms-nc--ec0cdd43ce146d9c8568b831.md) | 558 | `result-track:ec0cdd43ce146d9c8568b8316f8be7b823146844e6fb74d08860fb26cd709efb` |
| 49 | `theorem` | [of_eq](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/of-eq--170a9a6a46b6eed6a3b5e465.md) | 570 | `result-track:170a9a6a46b6eed6a3b5e46530be748abf3d703fe0158155aa6f5bb40ff8c30f` |
| 50 | `theorem` | [of_diseq](../../../../mathematics/Algebra/CommSemiringAdapter/Variant70688e894265c2fae00f6e7e78e65c53a8cf594cdb1be62dd1d0f7049530fbe5.lean/declarations/of-diseq--2def4e526a00c8b6e97fffe7.md) | 575 | `result-track:2def4e526a00c8b6e97fffe791b135e54dee31b8cb98d6806873828de0f2d767` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
