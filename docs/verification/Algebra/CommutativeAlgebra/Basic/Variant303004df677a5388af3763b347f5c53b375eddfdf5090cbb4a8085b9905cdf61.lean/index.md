# Verification target: GRWTSK.Algebra.CommutativeAlgebra.Basic.Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d20f5461432043b353465bf024bd2e6b857d2dd1",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/index.md) · [Full source](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d20f5461432043b353465bf024bd2e6b857d2dd1`.

Source path: `GRWTSK/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.FieldTheory.Separable` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.RingTheory.IntegralDomain` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.ApplyFun` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [card_image_polynomial_eval](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/card-image-polynomial-eval--037178f0c8739bc646c50866.md) | 73 | `result-track:037178f0c8739bc646c50866482490ca796bc92a0e7922ff4cf8f7d2e868b206` |
| 2 | `theorem` | [exists_root_sum_quadratic](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/exists-root-sum-quadratic--91270e091276d3a9502cb03a.md) | 84 | `result-track:91270e091276d3a9502cb03a408dde6a1411f4323f1625a2d2bfb5c760758a1a` |
| 3 | `theorem` | [prod_univ_units_id_eq_neg_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/prod-univ-units-id-eq-neg-one--481df8c8dae776b71605c9ae.md) | 112 | `result-track:481df8c8dae776b71605c9ae0a56dc7d98bfcb3064094a5d9a12d8967d643709` |
| 4 | `theorem` | [pow_card_sub_one_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/pow-card-sub-one-eq-one--7d446d9fdc291968b16d845d.md) | 126 | `result-track:7d446d9fdc291968b16d845dafd019d6cb6c2f04a06ebe992edc08ff2ffe2266` |
| 5 | `theorem` | [pow_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/pow-card--829fbc74745fcac410723860.md) | 136 | `result-track:829fbc74745fcac410723860165e3bfee1ea0b2d33c0af5a883511799ed6bb88` |
| 6 | `theorem` | [pow_card_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/pow-card-pow--e0d02296cfd5c4c1846735cf.md) | 143 | `result-track:e0d02296cfd5c4c1846735cf75baa500fda612c1cfbbbacf033616668f0fcfd3` |
| 7 | `theorem` | [card](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/card--11e3c7f880cc3d0dca232232.md) | 153 | `result-track:11e3c7f880cc3d0dca232232aaab7df601a1cac4056d001808580f33b7e53111` |
| 8 | `theorem` | [card'](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/card--b4038737c88f6d65d574f0cd.md) | 167 | `result-track:b4038737c88f6d65d574f0cd446902a23c8ee16206231831bb0debb44cd9553e` |
| 9 | `theorem` | [cast_card_eq_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/cast-card-eq-zero--0529137ba49cec79dd80b0b0.md) | 173 | `result-track:0529137ba49cec79dd80b0b0c52157e566221d2a3154ae5f570c245bfecca2de` |
| 10 | `theorem` | [forall_pow_eq_one_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/forall-pow-eq-one-iff--cd489ebfedd8c3c20d5ceaf7.md) | 177 | `result-track:cd489ebfedd8c3c20d5ceaf7bc197db70d8ff8d90d079bd0db1458c8c69ecd11` |
| 11 | `theorem` | [sum_pow_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/sum-pow-units--e28d2f8316a898070fe45d81.md) | 192 | `result-track:e28d2f8316a898070fe45d810a7feb129a2526894ccb9232e10f0bd1e8499f9c` |
| 12 | `theorem` | [sum_pow_lt_card_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/sum-pow-lt-card-sub-one--7fac40e3629889f88a9dbc22.md) | 214 | `result-track:7fac40e3629889f88a9dbc22432ea6f8ac21f9870288b0c25cb90526037f016a` |
| 13 | `theorem` | [X_pow_card_sub_X_natDegree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/x-pow-card-sub-x-natdegree-eq--4ab0764766bf3f49f9c581fa.md) | 238 | `result-track:4ab0764766bf3f49f9c581fa525d97e12dda56f701ff1aa0c736cdc00eb28d11` |
| 14 | `theorem` | [X_pow_card_pow_sub_X_natDegree_eq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/x-pow-card-pow-sub-x-natdegree-eq--4e8d60af13e50b0bbbe23075.md) | 247 | `result-track:4e8d60af13e50b0bbbe230753fd013a3596e9469e5af31af659d088cbda5348b` |
| 15 | `theorem` | [X_pow_card_sub_X_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/x-pow-card-sub-x-ne-zero--ca845dfd59c2cbc74006a676.md) | 253 | `result-track:ca845dfd59c2cbc74006a676076c91bb952c8c571220ef53ae07418c30ccc362` |
| 16 | `theorem` | [X_pow_card_pow_sub_X_ne_zero](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/x-pow-card-pow-sub-x-ne-zero--e62d5caa967e42190f0bf17e.md) | 261 | `result-track:e62d5caa967e42190f0bf17e9b04f3651c54cebd59f6ea79cdf34a164e2bbf5b` |
| 17 | `theorem` | [roots_X_pow_card_sub_X](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/roots-x-pow-card-sub-x--7e51852df39ca4c432848f82.md) | 270 | `result-track:7e51852df39ca4c432848f82de81a74561b0093cf32132fd486965e98132daca` |
| 18 | `theorem` | [frobenius_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/frobenius-pow--4d52c0fb9a1c9323c3a2f4f7.md) | 289 | `result-track:4d52c0fb9a1c9323c3a2f4f72e48d5a36c3bfe9e27cbe43a13efa8ad40bc4288` |
| 19 | `theorem` | [expand_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/expand-card--f069a3f98e5647c920be3439.md) | 300 | `result-track:f069a3f98e5647c920be3439812a8ab0e0712e76e6773283bdcf2e0f71b0a9d6` |
| 20 | `theorem` | [sq_add_sq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/sq-add-sq--d8d6842d9a53e2d5f2597af5.md) | 315 | `result-track:d8d6842d9a53e2d5f2597af56f8c273bcf10e077fa916333a71ba9d2cdeb9b4e` |
| 21 | `theorem` | [Nat.sq_add_sq_zmodEq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/nat-sq-add-sq-zmodeq--e54a90d974a6d82bfb88a50b.md) | 337 | `result-track:e54a90d974a6d82bfb88a50b64656258cb2ad7865926c6f69534be234458af57` |
| 22 | `theorem` | [Nat.sq_add_sq_modEq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/nat-sq-add-sq-modeq--82de1c158cce1c7943f6dec0.md) | 350 | `result-track:82de1c158cce1c7943f6dec0c31d41e5e03a8a929c05df4a6b7879aac2646741` |
| 23 | `theorem` | [sq_add_sq](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/sq-add-sq--c25eea85672c657293f8ec15.md) | 356 | `result-track:c25eea85672c657293f8ec15a25bfd81bf7165c9309ded33816de7d7d1d7014d` |
| 24 | `theorem` | [ZMod.pow_totient](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/zmod-pow-totient--f12512626a4301bcedae4597.md) | 373 | `result-track:f12512626a4301bcedae45974d787eb412d95e43d90133e80d9a84756c74047d` |
| 25 | `theorem` | [Nat.ModEq.pow_totient](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/nat-modeq-pow-totient--ef1914a8707b233f5b15a521.md) | 381 | `result-track:ef1914a8707b233f5b15a5216956091c993a66602652641bf23af714958a8504` |
| 26 | `theorem` | [card_eq_pow_finrank](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/card-eq-pow-finrank--23839f14216bf68864850379.md) | 397 | `result-track:23839f14216bf688648503799ca8c795e25aaabf2323d62c282810a4f7e4e68c` |
| 27 | `theorem` | [pow_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/pow-card--2133814861f4640b3064ce3a.md) | 410 | `result-track:2133814861f4640b3064ce3a930d8a6dea139fd57d55fcd99d6af0b58bbfd8fb` |
| 28 | `theorem` | [pow_card_pow](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/pow-card-pow--b84db2d12f6dc618058e22f8.md) | 415 | `result-track:b84db2d12f6dc618058e22f86389acb052104e225dfef2351f6dca79f21c30ef` |
| 29 | `theorem` | [frobenius_zmod](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/frobenius-zmod--33b44080bbf65874c564ede7.md) | 422 | `result-track:33b44080bbf65874c564ede755671bfa30e971383f5c03ca8cb550964adbdeb4` |
| 30 | `theorem` | [card_units](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/card-units--84e2f1d28ace71d377633cb6.md) | 428 | `result-track:84e2f1d28ace71d377633cb694086a1b827c3ea39d46efc34f6f4958fe4b7a9c` |
| 31 | `theorem` | [units_pow_card_sub_one_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/units-pow-card-sub-one-eq-one--11e0a307fcaa125bd981df3f.md) | 433 | `result-track:11e0a307fcaa125bd981df3fbece9d641707d565592cb80692d5c780dfb5e6d8` |
| 32 | `theorem` | [pow_card_sub_one_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/pow-card-sub-one-eq-one--33e663b8d42bac790b384556.md) | 438 | `result-track:33e663b8d42bac790b3845568c7c1d3c8b1578edda47bbab4ee3585e48855e77` |
| 33 | `theorem` | [orderOf_units_dvd_card_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/orderof-units-dvd-card-sub-one--3a4d69304e8d4caa90657be5.md) | 444 | `result-track:3a4d69304e8d4caa90657be5882f37e1018ae211c49cd463ed659f75f83b0070` |
| 34 | `theorem` | [orderOf_dvd_card_sub_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/orderof-dvd-card-sub-one--cc394178eb91aa77643ba878.md) | 448 | `result-track:cc394178eb91aa77643ba87887f20d7838df6fc17e5d318946ff3a6216fa5641` |
| 35 | `theorem` | [expand_card](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/expand-card--74cc58e39c7edc3a848a342f.md) | 455 | `result-track:74cc58e39c7edc3a848a342f94217fc919ab7ff40662718d7c930cd461c9b72b` |
| 36 | `theorem` | [Int.ModEq.pow_card_sub_one_eq_one](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/int-modeq-pow-card-sub-one-eq-one--ded6cc42a79545f4f8f0b7f6.md) | 463 | `result-track:ded6cc42a79545f4f8f0b7f649eabedf6723e740b1916ae7c9e34d1113b2b7fb` |
| 37 | `theorem` | [isSquare_of_char_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/issquare-of-char-two--b810286682ad6d08ba989718.md) | 483 | `result-track:b810286682ad6d08ba989718fcfff99384f01d31f7f29ed56d01104328ee4ed8` |
| 38 | `theorem` | [exists_nonsquare](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/exists-nonsquare--0f90f2670e170dd5e5ed199c.md) | 489 | `result-track:0f90f2670e170dd5e5ed199c2ee4d69058a1b34d3767c258f9a3ce672247815c` |
| 39 | `theorem` | [even_card_iff_char_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/even-card-iff-char-two--7e9827f5d6b3b6d94b9bc0d0.md) | 509 | `result-track:7e9827f5d6b3b6d94b9bc0d07d1c4e75736e488aee2a24a51f4e4430c4d7ad8b` |
| 40 | `theorem` | [even_card_of_char_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/even-card-of-char-two--0570854ae927cccb37aceb64.md) | 521 | `result-track:0570854ae927cccb37aceb644498a2c9b31a19d8b4e97177cbfcdd9366200d79` |
| 41 | `theorem` | [odd_card_of_char_ne_two](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/odd-card-of-char-ne-two--5f0be60a99324a591fc5fb1c.md) | 525 | `result-track:5f0be60a99324a591fc5fb1c01ebdfbdce10f7fdc20d0b62a0995ecc734a079f` |
| 42 | `theorem` | [pow_dichotomy](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/pow-dichotomy--aaba225fc10799dd92ed833e.md) | 530 | `result-track:aaba225fc10799dd92ed833e6ef3c88593fa456573d019d111a4ac99788a0f16` |
| 43 | `theorem` | [unit_isSquare_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/unit-issquare-iff--a56fdecb4b3437b01808fda2.md) | 540 | `result-track:a56fdecb4b3437b01808fda2f43a6404fc84f81a20c4436003273e2f1cc8d60e` |
| 44 | `theorem` | [isSquare_iff](../../../../../mathematics/Algebra/CommutativeAlgebra/Basic/Variant303004df677a5388af3763b347f5c53b375eddfdf5090cbb4a8085b9905cdf61.lean/declarations/issquare-iff--6473f8aabaa91f3b3663c7f4.md) | 565 | `result-track:6473f8aabaa91f3b3663c7f419511c86128d47f54d7b75c5a95615f136bb857f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
