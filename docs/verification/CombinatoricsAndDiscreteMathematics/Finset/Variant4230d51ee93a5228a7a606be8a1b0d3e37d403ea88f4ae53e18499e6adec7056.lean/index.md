# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finset.Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c73dd83fb59e99e8c7029d9f176ce82d564b8cc4",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c73dd83fb59e99e8c7029d9f176ce82d564b8cc4`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Group.Finset.Pi` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Group.Finset.Piecewise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.GroupWithZero.Finset` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Ring.Multiset` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Max` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fintype.Powerset` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Lemmas` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [prod_neg](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-neg--86394860bf95d7d74689f3da.md) | 29 | `result-track:86394860bf95d7d74689f3da914540012d9bd39b552f152f7df479a641a7a592` |
| 2 | `lemma` | [natCast_card_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/natcast-card-filter--d49b37e3171a2993edb7a490.md) | 35 | `result-track:d49b37e3171a2993edb7a49060f6abb5e1f5e8b2b170436ad37a9ecf438ef45a` |
| 3 | `lemma` | [sum_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-boole--7c3132ce110935093f109241.md) | 39 | `result-track:7c3132ce110935093f1092418181ead5ca202ae8d8aa17758b6cd882dcc659ff` |
| 4 | `lemma` | [sum_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-mul--40c7e0d002d148a11de6691d.md) | 48 | `result-track:40c7e0d002d148a11de6691de83c1060c68d858ae381b982af4b6183e2a8a7c2` |
| 5 | `lemma` | [mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/mul-sum--7e08ce9d78c20a6a3871b13f.md) | 51 | `result-track:7e08ce9d78c20a6a3871b13ff1965dac756251b52ae881d69878d267bba7250b` |
| 6 | `lemma` | [sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-mul-sum--b5eb7975a9dcd73e5cc495db.md) | 54 | `result-track:b5eb7975a9dcd73e5cc495dbfdec2b55c25f5f4da31f1f709199de6e372a7658` |
| 7 | `lemma` | [_root_.Fintype.sum_mul_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/root-fintype-sum-mul-sum--391da10a4959eb0bbbf2adf0.md) | 58 | `result-track:391da10a4959eb0bbbf2adf007c7789b2cd2c9aa73d10c55e4fe56736b67343c` |
| 8 | `lemma` | [_root_.Commute.sum_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/root-commute-sum-right--09dfc444297e705791c61908.md) | 62 | `result-track:09dfc444297e705791c6190877a6f33f23b9d9955382f00b82d56bb3c0adf543` |
| 9 | `lemma` | [_root_.Commute.sum_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/root-commute-sum-left--1ee54d670dbe737a9d3a545c.md) | 68 | `result-track:1ee54d670dbe737a9d3a545c2bc21b93cf0e969e39f504fc1a3d72794f35225d` |
| 10 | `lemma` | [sum_range_succ_mul_sum_range_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-range-succ-mul-sum-range-succ--79f88ec916ee710de900669e.md) | 72 | `result-track:79f88ec916ee710de900669e952e1ec8fe971a67b3e1efa92ed301d0f96e3593` |
| 11 | `lemma` | [dvd_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/dvd-sum--57ab258949f6b41a9fe4d40d.md) | 83 | `result-track:57ab258949f6b41a9fe4d40d3e729e414c246268951dc6e08e546a1338386d07` |
| 12 | `lemma` | [sum_mul_boole](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-mul-boole--782c14acb0eaac74e841191c.md) | 91 | `result-track:782c14acb0eaac74e841191c3d50dbf1c44b8fd98bbc5998f86c1a0d37fd0519` |
| 13 | `lemma` | [sum_boole_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-boole-mul--6d53193db6ece64a9044dfdb.md) | 94 | `result-track:6d53193db6ece64a9044dfdba03d135adb207050fbfbd615d180d323db15bf30` |
| 14 | `theorem` | [prod_add_prod_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-add-prod-eq--48c62008574ab620c2d3c31a.md) | 104 | `result-track:48c62008574ab620c2d3c31aeb8d1d8ac3c9df66446134e98c868e1775367661` |
| 15 | `lemma` | [prod_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-sum--201b915ebdfdfe0ec7cce2de.md) | 116 | `result-track:201b915ebdfdfe0ec7cce2dec0e94194c6fe1ff540a46d5a2af3abe2eeb27eb3` |
| 16 | `lemma` | [prod_univ_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-univ-sum--865c9c4b4206b29f12d01e6c.md) | 149 | `result-track:865c9c4b4206b29f12d01e6c03353986a57d89f99cf3697deb3376267058a328` |
| 17 | `lemma` | [sum_prod_piFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-prod-pifinset--3ba64b89eeb509972c067260.md) | 153 | `result-track:3ba64b89eeb509972c067260665bff7aa898e6aee662cf8442f6343325b9339b` |
| 18 | `lemma` | [sum_pow'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-pow--993790dcdc35fdab44445541.md) | 157 | `result-track:993790dcdc35fdab44445541b94a228138da7364cb86a91765ca4b524994cbc4` |
| 19 | `theorem` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-add--39bf8534a9e8bd728ee80c82.md) | 163 | `result-track:39bf8534a9e8bd728ee80c824ad4ffce4e77062d408d90c105901231e1c01986` |
| 20 | `theorem` | [prod_one_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-one-add--0840c23aedb87b8613693e88.md) | 188 | `result-track:0840c23aedb87b8613693e88fa9dfdc1acb426e0e7622dd1a1bd93b79ad11abe` |
| 21 | `theorem` | [prod_add_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-add-one--d69e3a8184b1b6950b23a5d8.md) | 192 | `result-track:d69e3a8184b1b6950b23a5d8bb0b7366b39d7d937f0fe2d71c2b5deadb722090` |
| 22 | `theorem` | [prod_add_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-add-ordered--d06b3a502208b315072669ba.md) | 197 | `result-track:d06b3a502208b315072669ba0e88b9a1f15f1ca553104faa97b99c320a689b5d` |
| 23 | `theorem` | [sum_pow_mul_eq_add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-pow-mul-eq-add-pow--1323ea3a02b9966e09cf8daf.md) | 220 | `result-track:1323ea3a02b9966e09cf8daf9ec69ee021cecaf4d0068a02641dd627228739b1` |
| 24 | `lemma` | [_root_.Fintype.sum_pow_mul_eq_add_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/root-fintype-sum-pow-mul-eq-add-pow--12a80eabbd0612bbbdb6fe00.md) | 231 | `result-track:12a80eabbd0612bbbdb6fe00f9a4b371e5396ec92d1d3d81132caaee4265fb22` |
| 25 | `theorem` | [prod_natCast](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-natcast--5ef4962a7f1ca99a3faebbe9.md) | 236 | `result-track:5ef4962a7f1ca99a3faebbe9d85fc46961773faf01cb32aa0b15fc340d917f81` |
| 26 | `lemma` | [prod_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-sub--7eb1465301fefdd835da6b45.md) | 246 | `result-track:7eb1465301fefdd835da6b45f720d6eca280ada3b4a5da59560622152e3e7a8e` |
| 27 | `lemma` | [prod_sub_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-sub-ordered--48e0bebae756fa7efe263668.md) | 251 | `result-track:48e0bebae756fa7efe263668f8092973bb8586eefaa3a74bb60c51c06fdc3a1a` |
| 28 | `theorem` | [prod_one_sub_ordered](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-one-sub-ordered--84b379dacaa4df8bc0a5acc4.md) | 261 | `result-track:84b379dacaa4df8bc0a5acc42cff6979deea93ba8a11c2ded7c282d9808f5468` |
| 29 | `theorem` | [prod_range_natCast_sub](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-range-natcast-sub--92d22d64c8a70101d9ec4d85.md) | 266 | `result-track:92d22d64c8a70101d9ec4d8566d0b0c7f0c38371fe31a29c660116f6b4d284c8` |
| 30 | `lemma` | [sum_pow](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-pow--d8f06875fcd777e69caf917b.md) | 282 | `result-track:d8f06875fcd777e69caf917b3802345da2db27bbd08093148fe00e73b929a524` |
| 31 | `lemma` | [prod_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-sum--b498d5c2ecb20bbd14f1e541.md) | 288 | `result-track:b498d5c2ecb20bbd14f1e541e28b809673e84b6b7c1b70a2ee060dbc0acf6fa2` |
| 32 | `lemma` | [prod_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/prod-add--4853e06b03ea0b7425af63bb.md) | 291 | `result-track:4853e06b03ea0b7425af63bb2526aa91ebb383835213769d35645cc9d4efec05` |
| 33 | `lemma` | [sum_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-div--8bb580b112e21a9269c9e494.md) | 299 | `result-track:8bb580b112e21a9269c9e49452a31d5a64d870ca06f8d0e79b33ceccb85e42bb` |
| 34 | `lemma` | [cast_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-list-sum--b830901c2626263b4d2d1612.md) | 307 | `result-track:b830901c2626263b4d2d161242dbc8bf65b193d0ce5ba3ea8935855c14f90d3b` |
| 35 | `lemma` | [cast_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-list-prod--5fd3393a0027431f36079210.md) | 311 | `result-track:5fd3393a0027431f3607921037051bec15d2356ee0d18d5f3861ad643fac8fb1` |
| 36 | `lemma` | [cast_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-multiset-sum--69693b3b2be0f6c191e4a956.md) | 315 | `result-track:69693b3b2be0f6c191e4a956f2e715cc997ded1272744b01652adca30473f98f` |
| 37 | `lemma` | [cast_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-multiset-prod--6f16acaa991b52b3f9433ee4.md) | 320 | `result-track:6f16acaa991b52b3f9433ee4e2528c72164b056daaec5d462e74db92930c32c2` |
| 38 | `lemma` | [cast_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-sum--530160bd028f5f779c96b95f.md) | 324 | `result-track:530160bd028f5f779c96b95f05b8c95cb550dc4a7d6a45fbb4c1b0ae55ee17e0` |
| 39 | `lemma` | [cast_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-prod--437a8c7a08de3cf16e8bc766.md) | 329 | `result-track:437a8c7a08de3cf16e8bc766570d73971f5eaea3d1504ecc1c59239f52493b9a` |
| 40 | `lemma` | [sum_div](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/sum-div--ab80b352aa76bf72277dcbb0.md) | 338 | `result-track:ab80b352aa76bf72277dcbb088e0b420dfb72b9fbf0ba956b15159107dd12349` |
| 41 | `lemma` | [cast_list_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-list-sum--a98328cb38a84a75780327bd.md) | 346 | `result-track:a98328cb38a84a75780327bd9a73fd19e72d9a7061535b4d4134bbddbfdda48f` |
| 42 | `lemma` | [cast_list_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-list-prod--efe781aa1cd61e11b042806e.md) | 350 | `result-track:efe781aa1cd61e11b042806ea243cbffbf312c9d8268831aa25a895a44f89cb7` |
| 43 | `lemma` | [cast_multiset_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-multiset-sum--432529e47ade2321e3294eb5.md) | 354 | `result-track:432529e47ade2321e3294eb5a3acfe28975c94cf64a2927fa2100d6e5008b071` |
| 44 | `lemma` | [cast_multiset_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-multiset-prod--882d5b3698d142db31f57c29.md) | 359 | `result-track:882d5b3698d142db31f57c29bad49bab91e0179ebd67d0aeb3e886116633563c` |
| 45 | `lemma` | [cast_sum](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-sum--f8e502f3f30ee435d5250e1e.md) | 364 | `result-track:f8e502f3f30ee435d5250e1ea1121d4ed5a8d298cf8b01b4323f83683d4ae093` |
| 46 | `lemma` | [cast_prod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finset/Variant4230d51ee93a5228a7a606be8a1b0d3e37d403ea88f4ae53e18499e6adec7056.lean/declarations/cast-prod--99cc99785478fac3c14b5499.md) | 369 | `result-track:99cc99785478fac3c14b549932df87ac20656b69c0355e94efb8b3ae45f3b472` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
