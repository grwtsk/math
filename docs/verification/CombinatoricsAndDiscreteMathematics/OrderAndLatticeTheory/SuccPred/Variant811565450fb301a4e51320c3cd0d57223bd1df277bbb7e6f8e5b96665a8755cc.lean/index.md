# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.SuccPred.Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fca0efad209bbb8c43e59db2d031a54709fbe791",
  "lexical_observation_count": 43,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fca0efad209bbb8c43e59db2d031a54709fbe791`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Set.SuccPred` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [Ico_succ_left_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ico-succ-left-eq-ioo--326f1cbf7186f76b46070bdc.md) | 55 | `result-track:326f1cbf7186f76b46070bdc37e03e2ba3b90c1bc6d7f48f04c2e886530c7b5c` |
| 2 | `lemma` | [Icc_succ_left_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/icc-succ-left-eq-ioc-of-not-ismax--0a1f25c9866691a8260f59a7.md) | 58 | `result-track:0a1f25c9866691a8260f59a755569523106c74d95045985e100c9ccc21700e39` |
| 3 | `lemma` | [Ico_succ_right_eq_Icc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ico-succ-right-eq-icc-of-not-ismax--2ab9c9f4881d783bafee8ea9.md) | 61 | `result-track:2ab9c9f4881d783bafee8ea935299779629ee94a9105a3bcdd641b67e500b492` |
| 4 | `lemma` | [Ioo_succ_right_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ioo-succ-right-eq-ioc-of-not-ismax--8a67e7195be3a6dcb40c50e0.md) | 64 | `result-track:8a67e7195be3a6dcb40c50e09a5d5d37d710e1e35960b044b22d785acb8f896e` |
| 5 | `lemma` | [Ico_succ_succ_eq_Ioc_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ico-succ-succ-eq-ioc-of-not-ismax--f5a15b02367b28332cbb5eb6.md) | 67 | `result-track:f5a15b02367b28332cbb5eb688c9052358b97763fecd7fd68b681695f5629444` |
| 6 | `lemma` | [insert_Icc_succ_left_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-icc-succ-left-eq-icc--a60d7c7ecb1c04fc83776934.md) | 73 | `result-track:a60d7c7ecb1c04fc837769345805a641b618fea74eb53b4aca5f408dccdba349` |
| 7 | `lemma` | [insert_Icc_right_eq_Icc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-icc-right-eq-icc-succ--a3f7de474c2b77d7592ab7f1.md) | 76 | `result-track:a3f7de474c2b77d7592ab7f15b7ec446ab89b01d995e0d503499fc23c40bab19` |
| 8 | `lemma` | [insert_Ico_right_eq_Ico_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ico-right-eq-ico-succ-of-not-ismax--be1e172f34549d6c09680ede.md) | 82 | `result-track:be1e172f34549d6c09680ede5b8c40beb79b90c01e5942674b7ae2f40419f563` |
| 9 | `lemma` | [insert_Ico_succ_left_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ico-succ-left-eq-ico--13c6219d6c7cbfd5d01a0016.md) | 89 | `result-track:13c6219d6c7cbfd5d01a001621808a156d904b5fd2f267c3609aa3e7244ace0d` |
| 10 | `lemma` | [insert_Ioc_right_eq_Ioc_succ_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ioc-right-eq-ioc-succ-of-not-ismax--aecf7260912306212a532fb8.md) | 92 | `result-track:aecf7260912306212a532fb8c4c651a03b2b79f047653ecd92b6adc1606d9f2c` |
| 11 | `lemma` | [insert_Ioc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ioc-succ-left-eq-ioc--ee01a83e4b3dcd950c9ee498.md) | 96 | `result-track:ee01a83e4b3dcd950c9ee498c3dcffed0b45171897deae9f510b35534287c1bd` |
| 12 | `lemma` | [Icc_succ_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/icc-succ-left-eq-ioc--bb19876124acaa836523fe46.md) | 107 | `result-track:bb19876124acaa836523fe465b2dbc2ef9147f2e6468657119e4e71162a68c3b` |
| 13 | `lemma` | [Ico_succ_right_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ico-succ-right-eq-icc--34807d642bd01f3618358de6.md) | 108 | `result-track:34807d642bd01f3618358de6c902b79adb8cd722f83eed5acc8cb0ed43263738` |
| 14 | `lemma` | [Ioo_succ_right_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ioo-succ-right-eq-ioc--4756d0eaed728af9a79e75f8.md) | 109 | `result-track:4756d0eaed728af9a79e75f84959fe7565f654957e64b16593804c728b29ba5d` |
| 15 | `lemma` | [Ico_succ_succ_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ico-succ-succ-eq-ioc--675a05d4dda8b9a21f79ab71.md) | 110 | `result-track:675a05d4dda8b9a21f79ab7110b885b07738a47ea002a7a737ebd1a081c819bf` |
| 16 | `lemma` | [insert_Ico_right_eq_Ico_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ico-right-eq-ico-succ--d41817b69c1853420c2fdf63.md) | 114 | `result-track:d41817b69c1853420c2fdf638500dfd2cbb590265bdf2da958890336001a017a` |
| 17 | `lemma` | [insert_Ioc_right_eq_Ioc_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ioc-right-eq-ioc-succ--359615aadd4204c876446f0a.md) | 120 | `result-track:359615aadd4204c876446f0af318450a02c6ce0a920b0bc5e0a1f0b593de7cf7` |
| 18 | `lemma` | [Ioc_pred_right_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ioc-pred-right-eq-ioo--262dfa6f0d84f1f03f658f17.md) | 134 | `result-track:262dfa6f0d84f1f03f658f1735cfe9dc364530d479066cc0660e6249d6ad97cb` |
| 19 | `lemma` | [Icc_pred_right_eq_Ico_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/icc-pred-right-eq-ico-of-not-ismin--f3a02311e9ccec338d82ed1b.md) | 137 | `result-track:f3a02311e9ccec338d82ed1bae6da40562672407023a644858007680be8faa7f` |
| 20 | `lemma` | [Ioc_pred_left_eq_Icc_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ioc-pred-left-eq-icc-of-not-ismin--6e975b19a4f7fec67a3300c4.md) | 140 | `result-track:6e975b19a4f7fec67a3300c4c7dbd4fcd070f9a1498fc44551bcfaf58566284d` |
| 21 | `lemma` | [Ioo_pred_left_eq_Ioc_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ioo-pred-left-eq-ioc-of-not-ismin--388b067af52f215d598fd082.md) | 143 | `result-track:388b067af52f215d598fd082b6512b7346dac891020c585f4102e3e7bc5479f7` |
| 22 | `lemma` | [Ioc_pred_pred_eq_Ico_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ioc-pred-pred-eq-ico-of-not-ismin--607214b2335afab5fb74c4a4.md) | 146 | `result-track:607214b2335afab5fb74c4a48102bdecab087e29bfb23e1d69496696cda789a3` |
| 23 | `lemma` | [insert_Icc_pred_right_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-icc-pred-right-eq-icc--89c037e2d496209263819be0.md) | 152 | `result-track:89c037e2d496209263819be063ed65f5bf1f4468f699a374127ce0473deed277` |
| 24 | `lemma` | [insert_Icc_left_eq_Icc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-icc-left-eq-icc-pred--73b3bd4d769ef2c5ab88aac4.md) | 155 | `result-track:73b3bd4d769ef2c5ab88aac4442d5bb2852e1f82e083ec168e72fb5f8ce6c5b9` |
| 25 | `lemma` | [insert_Ioc_left_eq_Ioc_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ioc-left-eq-ioc-pred-of-not-ismin--d0504636ac2c6f31f0204c99.md) | 161 | `result-track:d0504636ac2c6f31f0204c99d6795512aba0c1eb5c34f2870f5dc7b9815f453e` |
| 26 | `lemma` | [insert_Ioc_pred_right_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ioc-pred-right-eq-ioc--e0dcd96d1650eba3af4ac0c2.md) | 168 | `result-track:e0dcd96d1650eba3af4ac0c21392b765e09c0b84900fd1d7be101a579a4271ca` |
| 27 | `lemma` | [insert_Ico_left_eq_Ico_pred_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ico-left-eq-ico-pred-of-not-ismin--84df40790506754089696ae7.md) | 171 | `result-track:84df40790506754089696ae76326fdf69ec3f7f475c1d9003757ad2fcd8a319b` |
| 28 | `lemma` | [insert_Ico_pred_right_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ico-pred-right-eq-ico--c21554b1910bae5a62201ec2.md) | 175 | `result-track:c21554b1910bae5a62201ec2896791cbf850ce8ab019d3753692abad1da9eed1` |
| 29 | `lemma` | [Icc_pred_right_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/icc-pred-right-eq-ico--1890cf172286c12187481bb4.md) | 186 | `result-track:1890cf172286c12187481bb4bb827cb8616e15d3abe1ae31dc522358bdf4e791` |
| 30 | `lemma` | [Ioc_pred_left_eq_Icc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ioc-pred-left-eq-icc--91ce9d3b1f3831757928a077.md) | 187 | `result-track:91ce9d3b1f3831757928a077e8d9e3f1819f72efbed952400543c4ff0050e686` |
| 31 | `lemma` | [Ioo_pred_left_eq_Ioc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ioo-pred-left-eq-ioc--801dae509b32fc43293bd46a.md) | 188 | `result-track:801dae509b32fc43293bd46a05012c863567c56c3bd8c3d1c3b60aff694cddaa` |
| 32 | `lemma` | [Ioc_pred_pred_eq_Ico](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ioc-pred-pred-eq-ico--dd83426ee9d51b3f4fb9586b.md) | 189 | `result-track:dd83426ee9d51b3f4fb9586b4aede7bf0914935e3608d233943ee7c555b634f4` |
| 33 | `lemma` | [insert_Ioc_left_eq_Ioc_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ioc-left-eq-ioc-pred--a44a84d08ce20420af060de2.md) | 193 | `result-track:a44a84d08ce20420af060de2d60374b8788f15a0057fe71062f00ac4eeb4353c` |
| 34 | `lemma` | [insert_Ico_left_eq_Ico_pred](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/insert-ico-left-eq-ico-pred--243647cf95cd3ac7ee76ce1f.md) | 199 | `result-track:243647cf95cd3ac7ee76ce1f507083793e57585282083cb4b9b0117549f460a0` |
| 35 | `lemma` | [Icc_succ_pred_eq_Ioo](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/icc-succ-pred-eq-ioo--53205f2b36eb0025cf098803.md) | 207 | `result-track:53205f2b36eb0025cf098803ad2f2d8b39b8ac2e7d320e528351218b5c215646` |
| 36 | `lemma` | [Iio_succ_eq_Iic_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/iio-succ-eq-iic-of-not-ismax--e1120292935279f2a2d19120.md) | 221 | `result-track:e1120292935279f2a2d191205c2c2dbd78aec62220f008781ccced22aa8be68a` |
| 37 | `lemma` | [Iio_succ_eq_Iic](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/iio-succ-eq-iic--8ac81816e6a8114bf2bd3721.md) | 226 | `result-track:8ac81816e6a8114bf2bd3721bed0c02cf17f06b3e02e44580e08798e1144c219` |
| 38 | `lemma` | [Iic_pred_eq_Iio_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/iic-pred-eq-iio-of-not-ismin--e44fdb7d6af61890d24571fc.md) | 233 | `result-track:e44fdb7d6af61890d24571fc0077c33e41a167055791d8450c2c87be43fee3b2` |
| 39 | `lemma` | [Iic_pred_eq_Iio](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/iic-pred-eq-iio--0c7610d2144c0430b99a8260.md) | 238 | `result-track:0c7610d2144c0430b99a8260fc1acc5f8b8933023debb882d4b611aa628cb803` |
| 40 | `lemma` | [Ici_succ_eq_Ioi_of_not_isMax](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ici-succ-eq-ioi-of-not-ismax--b781bf0c5e9b9f0c445a9c54.md) | 251 | `result-track:b781bf0c5e9b9f0c445a9c549b540460d9f3b819d29b8846f4031d36f8b9e185` |
| 41 | `lemma` | [Ici_succ_eq_Ioi](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ici-succ-eq-ioi--6b433c3a0c7e62ab71a8572e.md) | 256 | `result-track:6b433c3a0c7e62ab71a8572ee9e6130e77b7d71b1dc9839356d5328d2b616243` |
| 42 | `lemma` | [Ioi_pred_eq_Ici_of_not_isMin](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ioi-pred-eq-ici-of-not-ismin--5b246c58427f4bb661b08677.md) | 263 | `result-track:5b246c58427f4bb661b08677bb8ee865438c64d6807a1cad09a2c130afcaa568` |
| 43 | `lemma` | [Ioi_pred_eq_Ici](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/SuccPred/Variant811565450fb301a4e51320c3cd0d57223bd1df277bbb7e6f8e5b96665a8755cc.lean/declarations/ioi-pred-eq-ici--3ca5466a24f20db0d3d62d9d.md) | 268 | `result-track:3ca5466a24f20db0d3d62d9d6661d1e25fc9a280710b6a031afd598c0d0162d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
