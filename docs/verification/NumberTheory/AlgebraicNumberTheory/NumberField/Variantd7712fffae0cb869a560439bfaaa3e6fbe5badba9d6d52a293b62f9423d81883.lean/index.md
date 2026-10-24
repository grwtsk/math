# Verification target: GRWTSK.NumberTheory.AlgebraicNumberTheory.NumberField.Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f7b9f8680e1e7806ca62343835bbb665248bc127",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f7b9f8680e1e7806ca62343835bbb665248bc127`.

Source path: `GRWTSK/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.FiniteSupport.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Hom.Lattice` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.Height.MvPolynomial` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.NumberField.InfinitePlace.TotallyRealComplex` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [multisetInfinitePlace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/multisetinfiniteplace--57115a8c5bb6d38a30f6c61c.md) | 52 | `declaration-track:57115a8c5bb6d38a30f6c61c19d5457e152175d7465a43d0ffad8a24743f7995` |
| 2 | `lemma` | [mem_multisetInfinitePlace](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/mem-multisetinfiniteplace--3977db167d4b338c8fb1909f.md) | 56 | `result-track:3977db167d4b338c8fb1909f18c5cac4d9341b507346239779b8f2cee033e62b` |
| 3 | `lemma` | [count_multisetInfinitePlace_eq_mult](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/count-multisetinfiniteplace-eq-mult--655c3e879eb387259e9de7b5.md) | 61 | `result-track:655c3e879eb387259e9de7b5e01293b2c0151e6a81c75833d1af790e30028862` |
| 4 | `lemma` | [prod_multisetInfinitePlace_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/prod-multisetinfiniteplace-eq--7d03c5b3ddc3eff8df7b0ca0.md) | 69 | `result-track:7d03c5b3ddc3eff8df7b0ca08ff0797a884795e5a19c66b5bfbcc0a25d479cd7` |
| 5 | `instance` | [instAdmissibleAbsValues](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/instadmissibleabsvalues--040a78834ec377b313d7ebcb.md) | 78 | `declaration-track:040a78834ec377b313d7ebcb991a7f6e0f391084f1c7746ccb2cd984c94648a6` |
| 6 | `lemma` | [prod_archAbsVal_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/prod-archabsval-eq--b041fb790e80e55d0240864b.md) | 87 | `result-track:b041fb790e80e55d0240864b08d8f3f5fd529bd323d46dddbe419beecab14e45` |
| 7 | `lemma` | [prod_nonarchAbsVal_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/prod-nonarchabsval-eq--dffd47c32fd9f430eba20107.md) | 91 | `result-track:dffd47c32fd9f430eba20107617bfb3a2b77dd19c8f8db39cee40cb4519782b8` |
| 8 | `lemma` | [sum_archAbsVal_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/sum-archabsval-eq--0c965861a4554a60f04c5ea6.md) | 97 | `result-track:0c965861a4554a60f04c5ea6cba48feb49e70313b2b64cd209fb8fee1b6a6c9f` |
| 9 | `lemma` | [sum_nonarchAbsVal_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/sum-nonarchabsval-eq--4059baf46d5c61df3afb6364.md) | 107 | `result-track:4059baf46d5c61df3afb6364f2c687d52741c0c46eb7d4dac951502810074544` |
| 10 | `lemma` | [mulHeight₁_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/mulheight-eq--a56a930be9f9ef1b99085e1e.md) | 112 | `result-track:a56a930be9f9ef1b99085e1e18a8f08a3de51f10f765e5d600420cd4b9a0541b` |
| 11 | `lemma` | [logHeight₁_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/logheight-eq--24603893b25a634bdb4479f5.md) | 120 | `result-track:24603893b25a634bdb4479f5af4e7a46b87d666d9913b703fac7bcb05687c7e3` |
| 12 | `lemma` | [mulHeight_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/mulheight-eq--75f22df870ae6bde615b224f.md) | 128 | `result-track:75f22df870ae6bde615b224f81b6ae81027aa815f1dd92eac66ea1dc0106b0cb` |
| 13 | `def` | [absMulHeight₁](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/absmulheight--db667c32a5169419862407a1.md) | 137 | `declaration-track:db667c32a5169419862407a1c9245d743edb47edcbcc5bbf65da3d2f9ec28a88` |
| 14 | `def` | [absLogHeight₁](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/abslogheight--e7de94603ffa6443e254d6f2.md) | 146 | `declaration-track:e7de94603ffa6443e254d6f2c6b38c272b60b286aae4b33153baf4586853428f` |
| 15 | `lemma` | [totalWeight_eq_sum_mult](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/totalweight-eq-sum-mult--06b95bd71b64595c46b6bf28.md) | 150 | `result-track:06b95bd71b64595c46b6bf28af6a270110daec44f26da48e7e6d8ac8a2c89ea8` |
| 16 | `lemma` | [totalWeight_eq_finrank](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/totalweight-eq-finrank--b4f267eb03ea9ae1184a7434.md) | 158 | `result-track:b4f267eb03ea9ae1184a743482387c2f21c8ea5e3dea381eda692ca4643fd2ba` |
| 17 | `lemma` | [totalWeight_pos](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/totalweight-pos--458a7ad57e4bbe7ccc1f00be.md) | 163 | `result-track:458a7ad57e4bbe7ccc1f00be7adf6d91cb2d597d962b15086f5884a859c6216c` |
| 18 | `lemma` | [absNorm_mul_finprod_finitePlace_eq_one_aux](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/absnorm-mul-finprod-finiteplace-eq-one-aux--8de737d097232847bee66e62.md) | 173 | `result-track:8de737d097232847bee66e620eed46a1c913bc560b57e2362988a9c828a38dac` |
| 19 | `lemma` | [absNorm_mul_finprod_finitePlace_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/absnorm-mul-finprod-finiteplace-eq-one--e6fe0a6df3b971f09c0927fa.md) | 200 | `result-track:e6fe0a6df3b971f09c0927fa5fdc45fdbefb22beb45fb5dfe73cebaa401eb6b2` |
| 20 | `lemma` | [relIndex_span_span_nat_mul](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/relindex-span-span-nat-mul--ae50dca0d8548ca602a91d59.md) | 240 | `result-track:ae50dca0d8548ca602a91d591c9299dce9165a6bf6293d6775e3fe6eb485fb9b` |
| 21 | `lemma` | [relIndex_span_span_eq_relIndex_span_span](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/relindex-span-span-eq-relindex-span-span--4dcd7e8ff427e37650c4eeca.md) | 253 | `result-track:4dcd7e8ff427e37650c4eecaa355b14bd3d67286feaaaf099efa29bc7ea25e1e` |
| 22 | `lemma` | [exists_nat_ne_zero_exists_integer_mul_eq_and_absNorm_span_eq_pow](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/exists-nat-ne-zero-exists-integer-mul-eq-and-absnorm-span-eq-pow--c0f281842c24082e3226649f.md) | 262 | `result-track:c0f281842c24082e3226649ff0b9fdc4030bd746415d2188c54ccce2d7fbe59e` |
| 23 | `lemma` | [one_le_pow_totalWeight_mul_finprod](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/one-le-pow-totalweight-mul-finprod--3ad10457e8d59076719dcc85.md) | 285 | `result-track:3ad10457e8d59076719dcc859b37a9b83e87729ca3aa6637b3d5a962ccc7c4c5` |
| 24 | `lemma` | [exists_nat_le_mulHeight₁](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/exists-nat-le-mulheight--fa846f2bccae297fbda60525.md) | 306 | `result-track:fa846f2bccae297fbda60525ee215180517a43bd6a8a6c38a82011c689d86dca` |
| 25 | `lemma` | [natDenominator_le_mulHeight₁](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/natdenominator-le-mulheight--a3af38e9ff4b1945db7f1738.md) | 324 | `result-track:a3af38e9ff4b1945db7f17386e4b750c091eafe38d702c051da9d57e082ed235` |
| 26 | `lemma` | [pow_totalWeight_sub_one_eq](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/pow-totalweight-sub-one-eq--f21c60fd7f3001d05078c0ee.md) | 329 | `result-track:f21c60fd7f3001d05078c0ee9375fd78951f791f472973cfe62929a0f72bcf15` |
| 27 | `lemma` | [infinitePlace_apply_le_of_prod_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/infiniteplace-apply-le-of-prod-le--736fa53ec5211a9a205789b3.md) | 336 | `result-track:736fa53ec5211a9a205789b33e15e592208a0322232f939815bb3ce69b10fdaa` |
| 28 | `lemma` | [finite_setOfPred_prod_infinitePlace_iSup_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/finite-setofpred-prod-infiniteplace-isup-le--51409b0eb4ae5cc9298f42f9.md) | 356 | `result-track:51409b0eb4ae5cc9298f42f9164942a32fde37839e29817645886be314d83d20` |
| 29 | `lemma` | [finite_setOfPred_mulHeight_nat_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/finite-setofpred-mulheight-nat-le--42f4e96e8d100a92ae19bde7.md) | 374 | `result-track:42f4e96e8d100a92ae19bde732fd95737906dfa3952bb9067b84635169382cfe` |
| 30 | `lemma` | [finite_setOfPred_isIntegral_nat_mul_and_mulHeight₁_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/finite-setofpred-isintegral-nat-mul-and-mulheight-le--5ca7e895f8f93c65162dfe64.md) | 392 | `result-track:5ca7e895f8f93c65162dfe64ad6a75a7f85c7903735a8691e0864ff4fe9cdfe4` |
| 31 | `theorem` | [finite_setOfPred_mulHeight₁_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/finite-setofpred-mulheight-le--c4b0037774e70ca32c2c2874.md) | 411 | `result-track:c4b0037774e70ca32c2c2874520db712e79ba283c5804ced6ad98cfe9d9a3ecc` |
| 32 | `instance` | [(anonymous)](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/instance--5e8e9f65a4ad44d8e9edcf03.md) | 426 | `declaration-track:5e8e9f65a4ad44d8e9edcf03915d4228543689082502c6093947927a67664336` |
| 33 | `theorem` | [finite_setOfPred_logHeight₁_le](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/finite-setofpred-logheight-le--0046513d9b35f19ee39a9674.md) | 432 | `result-track:0046513d9b35f19ee39a96742f86bc3b0975be99c0d4fe9af1c3a3194c1f37b5` |
| 34 | `def` | [evalHeightTotalWeight](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/evalheighttotalweight--a75081641019a5cb3ea248f0.md) | 453 | `declaration-track:a75081641019a5cb3ea248f07699e6bc29e58082256075de664cf327744ae36c` |
| 35 | `lemma` | [iSup_finitePlace_apply_eq_one_of_gcd_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/isup-finiteplace-apply-eq-one-of-gcd-eq-one--b32ee7c5ef361aecc1df241f.md) | 486 | `result-track:b32ee7c5ef361aecc1df241fefb67bf3fc3373a591990729e45016be06e3a96f` |
| 36 | `lemma` | [mulHeight_eq_max_abs_of_gcd_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/mulheight-eq-max-abs-of-gcd-eq-one--af1c7b97b22ab7c25fbaaf6b.md) | 503 | `result-track:af1c7b97b22ab7c25fbaaf6b0a11901788a1b69041763d1a3cfa5ff5a5d18cdd` |
| 37 | `lemma` | [logHeight_eq_max_abs_of_gcd_eq_one](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/logheight-eq-max-abs-of-gcd-eq-one--e5321b32cedb46cf8a9ca05d.md) | 517 | `result-track:e5321b32cedb46cf8a9ca05df4f36cb5e8e031d2fa099c9c966bd120c76f1299` |
| 38 | `lemma` | [mulHeight_self_one_eq_mulHeight_num_den](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/mulheight-self-one-eq-mulheight-num-den--9649d2bb1c09b56e567955e2.md) | 525 | `result-track:9649d2bb1c09b56e567955e2d6d253a5674d6198fe285eb1313c69d219132ed6` |
| 39 | `lemma` | [mulHeight₁_eq_max](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/mulheight-eq-max--f7a120d1e03ebda1c859a192.md) | 533 | `result-track:f7a120d1e03ebda1c859a192dbc38cddfa0dcd3cd1926d146e47d708ef11ac9e` |
| 40 | `lemma` | [logHeight₁_eq_log_max](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/logheight-eq-log-max--dd02c49762a0c683c398ddc9.md) | 550 | `result-track:dd02c49762a0c683c398ddc93846f2eb36c4a65ab6b873dbc4dbb6152742b3ef` |
| 41 | `theorem` | [mulHeight₁_natCast](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/mulheight-natcast--69fb2306091399e0aefbd8f5.md) | 554 | `result-track:69fb2306091399e0aefbd8f5b45ab9e4a2d851fcbfd3cc636f1b02fb22c301b5` |
| 42 | `theorem` | [logHeight₁_natCast](../../../../../mathematics/NumberTheory/AlgebraicNumberTheory/NumberField/Variantd7712fffae0cb869a560439bfaaa3e6fbe5badba9d6d52a293b62f9423d81883.lean/declarations/logheight-natcast--17f10066f9078adb8cf2942e.md) | 559 | `result-track:17f10066f9078adb8cf2942e495b0d566029442574dd085c021b972581dd43c6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
