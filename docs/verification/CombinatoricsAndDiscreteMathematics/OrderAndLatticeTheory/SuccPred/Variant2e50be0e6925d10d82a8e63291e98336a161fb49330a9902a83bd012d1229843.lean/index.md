# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SuccPred.Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2da0c2c0526d404b27e35f65846c7410ab8335d1",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2da0c2c0526d404b27e35f65846c7410ab8335d1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Set.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SuccPred.Basic` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ico_succ_left_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ico-succ-left-eq-ioo--a86c650ad690e39db3b259df.md) | 52 | `result-track:a86c650ad690e39db3b259df5adfdd10d54aee28bf4193337e882f7a33b52550` |
| 2 | `lemma` | [Icc_succ_left_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/icc-succ-left-eq-ioc-of-not-ismax--8a0f2bf5816e1c0e5e4a034d.md) | 58 | `result-track:8a0f2bf5816e1c0e5e4a034d8f629d7760c7038199f3e0de9d7df106dfe97b7a` |
| 3 | `lemma` | [Ico_succ_right_eq_Icc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ico-succ-right-eq-icc-of-not-ismax--4d83c716c617396963729fbf.md) | 61 | `result-track:4d83c716c617396963729fbfa976c33d6ca90ce02c4f2958dca702d7b5641699` |
| 4 | `lemma` | [Ioo_succ_right_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ioo-succ-right-eq-ioc-of-not-ismax--8eac6035ef75aa412a490c3a.md) | 64 | `result-track:8eac6035ef75aa412a490c3a7a0f8700e5a619df9fa66d926941765a0b0ced12` |
| 5 | `lemma` | [Ico_succ_succ_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ico-succ-succ-eq-ioc-of-not-ismax--87ef09ab655b63f1a41e6a04.md) | 67 | `result-track:87ef09ab655b63f1a41e6a0421c862a3a342699ce24bbc6a9a24b02616248c6e` |
| 6 | `lemma` | [insert_Icc_succ_left_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-icc-succ-left-eq-icc--b4b9242ff6ed08682d14f99f.md) | 73 | `result-track:b4b9242ff6ed08682d14f99f4409e39cd25c1bda717b59bbfba706aba8bce71d` |
| 7 | `lemma` | [insert_Icc_right_eq_Icc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-icc-right-eq-icc-succ--468a283a1384c29394df2b31.md) | 76 | `result-track:468a283a1384c29394df2b312fb058d98a8e4201815552b5e03cfe961464fcc3` |
| 8 | `lemma` | [insert_Ico_right_eq_Ico_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ico-right-eq-ico-succ-of-not-ismax--71b2845e4febf9fd931467ee.md) | 83 | `result-track:71b2845e4febf9fd931467eeb7839ee39c9d9d7e774fc57f2e21f2158de7fc4f` |
| 9 | `lemma` | [insert_Ico_succ_left_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ico-succ-left-eq-ico--67f5b0d26f542e001c1d5bb6.md) | 90 | `result-track:67f5b0d26f542e001c1d5bb6c569240f21b017d90ca22172efef166702fe8c78` |
| 10 | `lemma` | [insert_Ioc_right_eq_Ioc_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ioc-right-eq-ioc-succ-of-not-ismax--ed43d2f40afa35ae2fa78c09.md) | 93 | `result-track:ed43d2f40afa35ae2fa78c09eb5beae216330706c92b05fc4237de0cc5658263` |
| 11 | `lemma` | [insert_Ioc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ioc-succ-left-eq-ioc--972cacfac7f87c359f2a2a69.md) | 97 | `result-track:972cacfac7f87c359f2a2a693cd6279ecb3b43d289511940ae75e309d8200c82` |
| 12 | `lemma` | [Icc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/icc-succ-left-eq-ioc--2ec616761a1d8c50bd7add8f.md) | 108 | `result-track:2ec616761a1d8c50bd7add8f188c01cb2a5ee900b90ab0200d66eaeb81de16ca` |
| 13 | `lemma` | [Ico_succ_right_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ico-succ-right-eq-icc--306798fdd982b2fc935e695a.md) | 111 | `result-track:306798fdd982b2fc935e695afc7461525ce3bccff9fd0588e43657a18e86ead2` |
| 14 | `lemma` | [Ioo_succ_right_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ioo-succ-right-eq-ioc--ba00b02a13659f04c5a4fcb0.md) | 114 | `result-track:ba00b02a13659f04c5a4fcb0b6563d4fa534422575e50d58a2ae8ba8dbb837ff` |
| 15 | `lemma` | [Ico_succ_succ_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ico-succ-succ-eq-ioc--3d6447ba918b122e724ef1d3.md) | 117 | `result-track:3d6447ba918b122e724ef1d3aca0ce07d10471fc8273fd524c9c3639e8cf131c` |
| 16 | `lemma` | [insert_Ico_right_eq_Ico_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ico-right-eq-ico-succ--5314a3869a66e3df6491d8aa.md) | 122 | `result-track:5314a3869a66e3df6491d8aa61fafcab5aa5b1afe02afb6a88743a68859a6544` |
| 17 | `lemma` | [insert_Ioc_right_eq_Ioc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ioc-right-eq-ioc-succ--9263906e6f481ecabef4ecbb.md) | 128 | `result-track:9263906e6f481ecabef4ecbb27ac92a1136467b5544b66f023149021eb7d74ea` |
| 18 | `lemma` | [Ioc_pred_right_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ioc-pred-right-eq-ioo--541e0759fa1c4a870bbf7d01.md) | 142 | `result-track:541e0759fa1c4a870bbf7d01da6e054a742bee650bfe52a92ab068029d0262c2` |
| 19 | `lemma` | [Icc_pred_right_eq_Ico_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/icc-pred-right-eq-ico-of-not-ismin--97d6a126e316036fefe9ccbf.md) | 148 | `result-track:97d6a126e316036fefe9ccbfbc14d911ba51bd9682d6c241f963c68d18b9d0b0` |
| 20 | `lemma` | [Ioc_pred_left_eq_Icc_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ioc-pred-left-eq-icc-of-not-ismin--0816f876cc60af6bd8be0881.md) | 151 | `result-track:0816f876cc60af6bd8be088162deb986d2cd2a4c6272c8a9ee77ed84daba2dd8` |
| 21 | `lemma` | [Ioo_pred_left_eq_Ioc_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ioo-pred-left-eq-ioc-of-not-ismin--1fd1f51f6a86e7b6e6303709.md) | 154 | `result-track:1fd1f51f6a86e7b6e6303709f6bed51383890e69379397cb87e60ec44aaa2ee1` |
| 22 | `lemma` | [Ioc_pred_pred_eq_Ico_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ioc-pred-pred-eq-ico-of-not-ismin--d1102a8a3ebc8699f9d67a5f.md) | 157 | `result-track:d1102a8a3ebc8699f9d67a5f025db0b3365041f1041b42cfad2b2c653222605c` |
| 23 | `lemma` | [insert_Icc_pred_right_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-icc-pred-right-eq-icc--503bbef663f7ac62d74f68b6.md) | 163 | `result-track:503bbef663f7ac62d74f68b63d538e06f2db726291315f05b1417eac6ea75442` |
| 24 | `lemma` | [insert_Icc_left_eq_Icc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-icc-left-eq-icc-pred--99e4801154a1e2e75008525a.md) | 166 | `result-track:99e4801154a1e2e75008525a839b61dd9b822826c54ea1b2a5a6f067162d2d17` |
| 25 | `lemma` | [insert_Ioc_left_eq_Ioc_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ioc-left-eq-ioc-pred-of-not-ismin--d334cfc0504c264661e85244.md) | 173 | `result-track:d334cfc0504c264661e85244d48a8d1f134371f00156d7467daac954f088ad1d` |
| 26 | `lemma` | [insert_Ioc_pred_right_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ioc-pred-right-eq-ioc--05efa58d67c64dcdfa9d5b30.md) | 180 | `result-track:05efa58d67c64dcdfa9d5b3080eba582c1879a1325bb98731d3ee91fbf7db853` |
| 27 | `lemma` | [insert_Ico_left_eq_Ico_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ico-left-eq-ico-pred-of-not-ismin--599511f2e20dc6cda8152d77.md) | 183 | `result-track:599511f2e20dc6cda8152d7723036c63aee680cd676d25d207a67bfbc29403d8` |
| 28 | `lemma` | [insert_Ico_pred_right_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ico-pred-right-eq-ico--d074be09ae1ae4db61d3897f.md) | 187 | `result-track:d074be09ae1ae4db61d3897f199c6a157928653ccd290443ca348b373cae0a9c` |
| 29 | `lemma` | [Icc_pred_right_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/icc-pred-right-eq-ico--94222ae724498e7c0b624701.md) | 198 | `result-track:94222ae724498e7c0b62470199979badf90a357c55538b0f402ae1b03dfd0285` |
| 30 | `lemma` | [Ioc_pred_left_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ioc-pred-left-eq-icc--20ab0e88af3ba02150efe80f.md) | 201 | `result-track:20ab0e88af3ba02150efe80fbc0ad8c52cab9e5d0b418e31e29bfce5db97661b` |
| 31 | `lemma` | [Ioo_pred_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ioo-pred-left-eq-ioc--56b65631e8ce7fc32c4a12c5.md) | 204 | `result-track:56b65631e8ce7fc32c4a12c5a81d9c40bac88897985820dd2a1aa054a4b5e8b9` |
| 32 | `lemma` | [Ioc_pred_pred_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ioc-pred-pred-eq-ico--2d84fec99b1ad78bee5106cf.md) | 207 | `result-track:2d84fec99b1ad78bee5106cfe9f5065be7b6a15fc35894236e896c4a3ef1c80c` |
| 33 | `lemma` | [insert_Ioc_left_eq_Ioc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ioc-left-eq-ioc-pred--bec778c78e3db77d6f5483f7.md) | 212 | `result-track:bec778c78e3db77d6f5483f7eb50a04f588e56385baed1b3e906fedab3ed7937` |
| 34 | `lemma` | [insert_Ico_left_eq_Ico_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/insert-ico-left-eq-ico-pred--441edc12ea57163320573aa9.md) | 218 | `result-track:441edc12ea57163320573aa992dff845b76e0adac45403857b900365af162f13` |
| 35 | `lemma` | [Icc_succ_pred_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/icc-succ-pred-eq-ioo--0af35d87017cfb2616593f0d.md) | 226 | `result-track:0af35d87017cfb2616593f0d5fe0fb81fec1d2d2f3ef225ac6fdeb831d838106` |
| 36 | `lemma` | [Iio_succ_eq_Iic_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/iio-succ-eq-iic-of-not-ismax--87f8f890fe8c7b78ada2b403.md) | 239 | `result-track:87f8f890fe8c7b78ada2b4038225c8e9ad444bbaed433fbbd160927272b69b99` |
| 37 | `lemma` | [Iio_succ_eq_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/iio-succ-eq-iic--23bc97a36ed90a0fd07cf66c.md) | 244 | `result-track:23bc97a36ed90a0fd07cf66c4e82b8c3df44fc1c2a7cb58f1de8ad6128603f37` |
| 38 | `lemma` | [Iic_pred_eq_Iio_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/iic-pred-eq-iio-of-not-ismin--0123a8536f247f40f6adda64.md) | 251 | `result-track:0123a8536f247f40f6adda647bebc6499d98f750db89b35311aae0bf15d7422b` |
| 39 | `lemma` | [Iic_pred_eq_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/iic-pred-eq-iio--c142e7d34e913e71dd283355.md) | 256 | `result-track:c142e7d34e913e71dd283355a639bb70b1ffef4fd389905546c471eb1f292235` |
| 40 | `lemma` | [Ici_succ_eq_Ioi_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ici-succ-eq-ioi-of-not-ismax--c27994b837b35db0000f95db.md) | 265 | `result-track:c27994b837b35db0000f95db8e57f344424073d33a6ae21d1fbaa947caf302a6` |
| 41 | `lemma` | [Ici_succ_eq_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ici-succ-eq-ioi--37a0c89d6bf0ce21b300a91b.md) | 270 | `result-track:37a0c89d6bf0ce21b300a91bc805314a0ee5927cd9d23bab2e28d3ce7bb30294` |
| 42 | `lemma` | [Ioi_pred_eq_Ici_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ioi-pred-eq-ici-of-not-ismin--9323bc7f453c161521f680c3.md) | 277 | `result-track:9323bc7f453c161521f680c3c1afbbe53fed9da74c4431deb30e3b9d1b5ef2b9` |
| 43 | `lemma` | [Ioi_pred_eq_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant2e50be0e6925d10d82a8e63291e98336a161fb49330a9902a83bd012d1229843.lean/declarations/ioi-pred-eq-ici--9317b7dde78cbede5a6ef84d.md) | 282 | `result-track:9317b7dde78cbede5a6ef84de5cf2a503d470a584f412eb23a7e8229184cda30` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
