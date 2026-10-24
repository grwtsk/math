# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Intervals.Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7832cd662a47307e4e284cb0d54ee879a2a54b10",
  "lexical_observation_count": 31,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7832cd662a47307e4e284cb0d54ee879a2a54b10`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Sigma` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Interval.Finset.SuccPred` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Order.Sub.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Factorial.Basic` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.SuccPred` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Interval.Finset.Nat` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prod_Ico_add'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-add--58c0bec33d75184eead5e984.md) | 30 | `result-track:58c0bec33d75184eead5e98495d43e985ea01442ccadf55ff934ec076cce0001` |
| 2 | `theorem` | [prod_Ico_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-add--b0e4e02ef100655fbd9a8041.md) | 37 | `result-track:b0e4e02ef100655fbd9a80411d92d8a6ecf50158e80640d74ad76f70ea15bbfe` |
| 3 | `theorem` | [prod_Ico_add_right_sub_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-add-right-sub-eq--0694b2dbe41a7ac3709bba72.md) | 44 | `result-track:0694b2dbe41a7ac3709bba72f45afeab643e8305adffd9e742474607927ddc23` |
| 4 | `theorem` | [prod_Ico_succ_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-succ-top--bfcff3136b468cd9203b410a.md) | 50 | `result-track:bfcff3136b468cd9203b410a9a916c436f92f9a02a4412ca982972ea63900ed4` |
| 5 | `theorem` | [prod_eq_prod_Ico_succ_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-eq-prod-ico-succ-bot--067c5d8af6a1e46967c2ad6c.md) | 55 | `result-track:067c5d8af6a1e46967c2ad6c7a545a21046641c8b34ba65a368a118950caa12d` |
| 6 | `theorem` | [prod_Ico_consecutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-consecutive--ff426fd875ce0f95c51c8207.md) | 61 | `result-track:ff426fd875ce0f95c51c8207f6fee21e848a4d1cd7da82f228f1e21ad0be81e0` |
| 7 | `theorem` | [prod_Ioc_consecutive](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ioc-consecutive--3e9bdf15c82c3fed4bdff9b3.md) | 66 | `result-track:3e9bdf15c82c3fed4bdff9b38c18e241a4cf5204487da1b9cfbed00add99fa93` |
| 8 | `theorem` | [prod_Ioc_succ_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ioc-succ-top--0ae10e52f2b9ce9838f00f67.md) | 74 | `result-track:0ae10e52f2b9ce9838f00f676e3954bf0024e689c22f3590219eeda832ff4b91` |
| 9 | `theorem` | [prod_Icc_succ_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-icc-succ-top--d38c142f7e40a29a2872071f.md) | 79 | `result-track:d38c142f7e40a29a2872071f8fca7e112f19b7253bb2a2744d94715f559eb52b` |
| 10 | `theorem` | [prod_range_mul_prod_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-range-mul-prod-ico--d744c4a0d8ba2310833924f3.md) | 84 | `result-track:d744c4a0d8ba2310833924f3f92b2c1d3b967081e464472983a7bf4f58ebe126` |
| 11 | `theorem` | [prod_range_eq_mul_Ico](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-range-eq-mul-ico--ae19ebc7e0525024e070edf5.md) | 89 | `result-track:ae19ebc7e0525024e070edf58a3da6897964a9393d6fbb67d5106e06e504cf94` |
| 12 | `theorem` | [prod_Ico_eq_mul_inv](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-eq-mul-inv--bcd48a5ab86587a04cd1ef2c.md) | 94 | `result-track:bcd48a5ab86587a04cd1ef2c84da205923df1571bdcd342d1872ea0314148af0` |
| 13 | `theorem` | [prod_Ico_eq_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-eq-div--66e4b466795a8ac3f61ff4ee.md) | 99 | `result-track:66e4b466795a8ac3f61ff4ee5855db5a0a4d7d883989acb52c284e4b7ddffdc2` |
| 14 | `theorem` | [prod_range_div_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-range-div-prod-range--6e5ac4a282e2f218cafc3d77.md) | 104 | `result-track:6e5ac4a282e2f218cafc3d7794b82558f506fbc0edd931b24431f30a9887be3a` |
| 15 | `theorem` | [sum_Ico_Ico_comm](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/sum-ico-ico-comm--4d4deb9f3b88910dd7028b3f.md) | 113 | `result-track:4d4deb9f3b88910dd7028b3f6c56c3c749a3d5035db13f9db130937f10d7c354` |
| 16 | `theorem` | [sum_Ico_Ico_comm'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/sum-ico-ico-comm--9d699df339023feaa92bc627.md) | 124 | `result-track:9d699df339023feaa92bc627cd42a712edde078c3f0b45a29c0611d5374625fa` |
| 17 | `theorem` | [prod_Ico_eq_prod_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-eq-prod-range--31cea45f07abb48ea3b366ec.md) | 135 | `result-track:31cea45f07abb48ea3b366ec7673fd067fa2a75b31882649f82d785e80cfaa76` |
| 18 | `theorem` | [prod_Ico_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-reflect--9e37c651163cc14b18cc5dcc.md) | 142 | `result-track:9e37c651163cc14b18cc5dcc65209fc473a8f30ae60f1b8bd2f9809e412a2ecd` |
| 19 | `theorem` | [sum_Ico_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/sum-ico-reflect--e6656204254a2fb3c456fa4c.md) | 159 | `result-track:e6656204254a2fb3c456fa4cf712912d0c35b4311ec79caef82c43e2b2cee5ba` |
| 20 | `theorem` | [prod_range_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-range-reflect--ae615695ee9616f0fd07208c.md) | 163 | `result-track:ae615695ee9616f0fd07208c36425a9750f43d4f9998bd53f533b202a29e130c` |
| 21 | `theorem` | [sum_range_reflect](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/sum-range-reflect--bb8db40f90c959c0f105258d.md) | 171 | `result-track:bb8db40f90c959c0f105258dc80be667e696ca969577792799a38800904dd541` |
| 22 | `theorem` | [prod_Ico_id_eq_factorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-id-eq-factorial--b328156e72ad5022c9b921d4.md) | 176 | `result-track:b328156e72ad5022c9b921d42e1ea6127ca8a04a2f087e58f66510b631efaa48` |
| 23 | `theorem` | [prod_range_add_one_eq_factorial](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-range-add-one-eq-factorial--edf745cd85fd60577d3e0566.md) | 183 | `result-track:edf745cd85fd60577d3e05662c146520545150a373ce0c6a6b226bc841e61b6f` |
| 24 | `theorem` | [sum_range_id_mul_two](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/sum-range-id-mul-two--858e8873fab84dae1e3319fb.md) | 190 | `result-track:858e8873fab84dae1e3319fb0b6a575a63e167766f4c9b7381a86363cf17d20c` |
| 25 | `theorem` | [sum_range_id](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/sum-range-id--f8a2c0c1b6566603a06e642c.md) | 200 | `result-track:f8a2c0c1b6566603a06e642cdf2f448bc135a586fb38679ff1cc0525c40139e7` |
| 26 | `lemma` | [prod_range_diag_flip](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-range-diag-flip--5783690991709f5bae1e2595.md) | 206 | `result-track:5783690991709f5bae1e2595b09ad19543b98891f2dc6d0d39cc8f932a31b5e1` |
| 27 | `theorem` | [prod_range_succ_div_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-range-succ-div-prod--36b1fd5a19955f641fb62aba.md) | 229 | `result-track:36b1fd5a19955f641fb62abaf2e8ec489b448d05dbed373512a9aef6c349f9d9` |
| 28 | `theorem` | [prod_range_succ_div_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-range-succ-div-top--f3348b605d67da5d6f7498fe.md) | 233 | `result-track:f3348b605d67da5d6f7498fe18770cf6947eb589d7b330e6587ce3b8ca58759b` |
| 29 | `theorem` | [prod_Ico_div_bot](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-div-bot--31bc09cfe933fcba0fe1b8dd.md) | 237 | `result-track:31bc09cfe933fcba0fe1b8dd8e98421ff05b37bcd2ee95048054bb5b7e97ba29` |
| 30 | `theorem` | [prod_Ico_succ_div_top](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-succ-div-top--69c43d9205f8ac8721d417da.md) | 241 | `result-track:69c43d9205f8ac8721d417da67e0530efc3bc903e9cc21ffc204ccac65a1d3c4` |
| 31 | `theorem` | [prod_Ico_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Intervals/Variant3b668c765e958bd64b508c489750443e144c9249dbf41b5196faa6c3b836c8cc.lean/declarations/prod-ico-div--3f3fa024d793f448ab739ea9.md) | 246 | `result-track:3f3fa024d793f448ab739ea90ef15082d85a6a035a9498ee945ff81f14e80cfa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
