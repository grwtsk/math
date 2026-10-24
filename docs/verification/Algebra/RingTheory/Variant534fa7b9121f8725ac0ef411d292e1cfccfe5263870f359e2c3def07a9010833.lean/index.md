# Verification target: GRWTSK.Algebra.Ring.Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4e3ffd9e520beafb2a75f8b749825234799af39f",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/Ring/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/index.md) · [Full source](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4e3ffd9e520beafb2a75f8b749825234799af39f`.

Source path: `GRWTSK/Algebra/Ring/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/Ring/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.GroupPower.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Commute` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Hom.Ring` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Commute` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.GroupWithZero.Divisibility` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Ring.Divisibility` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Order.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [zero_pow](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/zero-pow--e8f7dd682a3d6b8a329d0cea.md) | 31 | `result-track:e8f7dd682a3d6b8a329d0ceaa205814aa2983828534daee634666be71767ecfe` |
| 2 | `theorem` | [zero_pow'](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/zero-pow--e5f11affbe120ac829ddabb8.md) | 36 | `result-track:e5f11affbe120ac829ddabb88ff5a4e4652e6ba19fad99ba3df6ff13bfbae455` |
| 3 | `theorem` | [zero_pow_eq](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/zero-pow-eq--81c527d40c45956bd87e020f.md) | 43 | `result-track:81c527d40c45956bd87e020fd7d3eb6b8292ad24e78da664abbff17a104e24ae` |
| 4 | `theorem` | [pow_eq_zero_of_le](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/pow-eq-zero-of-le--ab9715732800d14a6884b586.md) | 49 | `result-track:ab9715732800d14a6884b586aa00a132f194f57eb21ef64aa7a6ad55fdcc11fb` |
| 5 | `theorem` | [pow_eq_zero](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/pow-eq-zero--1cc81c4569c7353a8c302f06.md) | 53 | `result-track:1cc81c4569c7353a8c302f06a583d9c5f0187690e85745ce6478cd30ba0ea311` |
| 6 | `theorem` | [pow_eq_zero_iff](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/pow-eq-zero-iff--9aad1c20813b805961768554.md) | 62 | `result-track:9aad1c20813b80596176855464f5a0d1df1be9b2c8a5c605851fbba0d51c70b1` |
| 7 | `theorem` | [pow_eq_zero_iff'](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/pow-eq-zero-iff--1f0afcea06b3694e29cecd61.md) | 68 | `result-track:1f0afcea06b3694e29cecd610a7bcd0a602fd054008684ca3965754537a8b00d` |
| 8 | `theorem` | [pow_ne_zero_iff](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/pow-ne-zero-iff--34d4316041ef0a095528c6a9.md) | 72 | `result-track:34d4316041ef0a095528c6a9b677ff82d502fc0eaf8a140e29493912fced2a22` |
| 9 | `theorem` | [ne_zero_pow](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/ne-zero-pow--acbc1a6608ef26ab59cb6a3a.md) | 76 | `result-track:acbc1a6608ef26ab59cb6a3a9601a44ad68cf3b422878c700578a929dd55c411` |
| 10 | `theorem` | [pow_ne_zero](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/pow-ne-zero--39a9af194ba488c8bbbd5ad1.md) | 83 | `result-track:39a9af194ba488c8bbbd5ad1ec4c4c7c0cd49e395f4f640928a5b83491e9c1b9` |
| 11 | `instance` | [NeZero.pow](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/nezero-pow--13c5075f58f51a79351b8455.md) | 87 | `declaration-track:13c5075f58f51a79351b8455f99de5b469cf39c7dcbf62cb59729402fde80f7b` |
| 12 | `theorem` | [sq_eq_zero_iff](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/sq-eq-zero-iff--9b8d00bf2489464e3d70cfeb.md) | 91 | `result-track:9b8d00bf2489464e3d70cfeb6f0c9d56c763e766db2c5c01f771f4f4e54ec587` |
| 13 | `theorem` | [zero_pow_eq_zero](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/zero-pow-eq-zero--07541389aee5ab94cb41a0b5.md) | 96 | `result-track:07541389aee5ab94cb41a0b5ba711e2c50af888af2314036e4889e3847342b91` |
| 14 | `theorem` | [Ring.inverse_pow](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/ring-inverse-pow--033f688bb7a9dd034f495a22.md) | 104 | `result-track:033f688bb7a9dd034f495a22bccd21915fcdd583e80ee5093f3654d3a04a592d` |
| 15 | `def` | [powMonoidWithZeroHom](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/powmonoidwithzerohom--4d8605b7c79cdfa7d8354395.md) | 118 | `declaration-track:4d8605b7c79cdfa7d8354395657aaf5d41c03318a94a42861c80bb881cef448f` |
| 16 | `theorem` | [coe_powMonoidWithZeroHom](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/coe-powmonoidwithzerohom--1ab94d6e755b1eec38a54c15.md) | 123 | `result-track:1ab94d6e755b1eec38a54c159125073ff9003220944d49aa85f6abb8a587a1ea` |
| 17 | `theorem` | [powMonoidWithZeroHom_apply](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/powmonoidwithzerohom-apply--d43c68f14b9e373fd2bc7e9a.md) | 127 | `result-track:d43c68f14b9e373fd2bc7e9a10735a3008b7eb3b11fe3785ae6af7ecab8bd28c` |
| 18 | `theorem` | [pow_dvd_pow_iff](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/pow-dvd-pow-iff--9c07966874c975942004a6f0.md) | 133 | `result-track:9c07966874c975942004a6f09772f9735c0ab261bb573a44196d0d130ac38b70` |
| 19 | `theorem` | [RingHom.map_pow](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/ringhom-map-pow--21f0fd26aa2b75be4acf3872.md) | 152 | `result-track:21f0fd26aa2b75be4acf387219828ffe3ad52849590b6bf89930691a9f6450b2` |
| 20 | `theorem` | [min_pow_dvd_add](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/min-pow-dvd-add--84586f21452c5c2d7b2358bd.md) | 156 | `result-track:84586f21452c5c2d7b2358bd133d72891b8e7c143e0baa230fa7dcbab5b1e6f0` |
| 21 | `theorem` | [add_sq](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/add-sq--3edd2a87e1afeebf712b9a7d.md) | 169 | `result-track:3edd2a87e1afeebf712b9a7d7bdbd578da01ca2fe8caa7d8bd5838878504fd41` |
| 22 | `theorem` | [add_sq'](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/add-sq--29885ed8df4d4d5156348483.md) | 173 | `result-track:29885ed8df4d4d51563484833b36a3154f365f5297c9de0d69f7a23c31572efc` |
| 23 | `theorem` | [neg_one_pow_eq_or](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/neg-one-pow-eq-or--ae55decaf18ab0d40b2f322e.md) | 188 | `result-track:ae55decaf18ab0d40b2f322e186478ad470ca7922e2ddc23f3c9f4119af1ad50` |
| 24 | `theorem` | [neg_pow](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/neg-pow--2fc8a552521f40bb585c7421.md) | 197 | `result-track:2fc8a552521f40bb585c7421278bb87b43229bab1520e874204b3b86aa1c40b7` |
| 25 | `theorem` | [neg_pow_bit0](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/neg-pow-bit0--268428329dec322e96ba1895.md) | 204 | `result-track:268428329dec322e96ba1895df288bba4ecd520cea7c02d5c3b083795e1f2e88` |
| 26 | `theorem` | [neg_pow_bit1](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/neg-pow-bit1--49ad9cf5fc89294297a06a0b.md) | 209 | `result-track:49ad9cf5fc89294297a06a0be7f0debee25f0cb56e74c5a0031be1651e18e23e` |
| 27 | `theorem` | [neg_sq](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/neg-sq--e54abcc40c9008e2fe935539.md) | 215 | `result-track:e54abcc40c9008e2fe935539336392ce758f879ef2ad84d5391f44f8247398ed` |
| 28 | `theorem` | [neg_one_sq](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/neg-one-sq--efa8d97c75d125d814a43d76.md) | 219 | `result-track:efa8d97c75d125d814a43d768ea5d922de66a3ddcdf24996e447a8180c916a29` |
| 29 | `theorem` | [Commute.sq_sub_sq](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/commute-sq-sub-sq--1dbff1f8c9224b86431231e1.md) | 234 | `result-track:1dbff1f8c9224b86431231e1d26ac1ca63a2b68f10cf5cf85f789bd197d148f3` |
| 30 | `theorem` | [neg_one_pow_mul_eq_zero_iff](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/neg-one-pow-mul-eq-zero-iff--53ac022ffbf8e6756f4dfcd7.md) | 239 | `result-track:53ac022ffbf8e6756f4dfcd7f74c01b0a3e4f8ec8a405c1c3c0174c197861330` |
| 31 | `theorem` | [mul_neg_one_pow_eq_zero_iff](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/mul-neg-one-pow-eq-zero-iff--3e0a6000c866c4fef4f1454b.md) | 244 | `result-track:3e0a6000c866c4fef4f1454bfa5dc2b9f023713819e5c78007e6a5de922cad48` |
| 32 | `theorem` | [Commute.sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/commute-sq-eq-sq-iff-eq-or-eq-neg--eff60c563b886ae6441485be.md) | 250 | `result-track:eff60c563b886ae6441485bea6492bf83fd96875ed0baae5a1c925b16e254f65` |
| 33 | `theorem` | [sq_eq_one_iff](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/sq-eq-one-iff--8827f6e9cb0037272e76acf2.md) | 256 | `result-track:8827f6e9cb0037272e76acf29ca0233219bcf16ceed018b54bf12e27238c2ffb` |
| 34 | `theorem` | [sq_ne_one_iff](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/sq-ne-one-iff--2e8837b9b79a5cc46bfe8142.md) | 260 | `result-track:2e8837b9b79a5cc46bfe81423463b03490f376ccda924691c02bec1cc50a21fe` |
| 35 | `theorem` | [sq_sub_sq](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/sq-sub-sq--0d32c4f2cf70610b95419940.md) | 270 | `result-track:0d32c4f2cf70610b95419940927ff4f1c5283e0cfa84dc061973bddf083e9918` |
| 36 | `theorem` | [sub_sq](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/sub-sq--890cdc9d859dfa96f72124c4.md) | 277 | `result-track:890cdc9d859dfa96f72124c4fd93f4aa2d8281e6ae127309a62c8eac3a6ccd1b` |
| 37 | `theorem` | [sub_sq'](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/sub-sq--8a07be20687d55d85f6261aa.md) | 284 | `result-track:8a07be20687d55d85f6261aa7036105aac23b3c8cfb8f89fc9384e838053ea08` |
| 38 | `theorem` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--feb3331acddc203a416eceb1.md) | 290 | `result-track:feb3331acddc203a416eceb1800cf930292306f116ff73fb80e09d8b03cb5539` |
| 39 | `theorem` | [eq_or_eq_neg_of_sq_eq_sq](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/eq-or-eq-neg-of-sq-eq-sq--67284966d1d0b457c86d51be.md) | 294 | `result-track:67284966d1d0b457c86d51be9db5b74504f2b360c7bc884f1f30af2f4e9484b2` |
| 40 | `theorem` | [sq_eq_sq_iff_eq_or_eq_neg](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/sq-eq-sq-iff-eq-or-eq-neg--82e20b5b4e13aca2f0c25ba1.md) | 301 | `result-track:82e20b5b4e13aca2f0c25ba167428684e475294e24fbaa40794e9e9e9ed5ce4c` |
| 41 | `theorem` | [eq_or_eq_neg_of_sq_eq_sq](../../../../mathematics/Algebra/RingTheory/Variant534fa7b9121f8725ac0ef411d292e1cfccfe5263870f359e2c3def07a9010833.lean/declarations/eq-or-eq-neg-of-sq-eq-sq--336fdb33b1fabbf7d0b0b803.md) | 305 | `result-track:336fdb33b1fabbf7d0b0b803e1fefeab8935a0f9184fa03147b5ddea97a2afa8` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
