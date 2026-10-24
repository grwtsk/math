# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "258b26ad38358658689eee58d88978c735c717dd",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `258b26ad38358658689eee58d88978c735c717dd`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.ByCases` — import line 11; external provider; requires a separately pinned dependency.
- `Init.Data.List.Erase` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.List.Find` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Nat.TakeDrop` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.List.Pairwise` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.List.Range` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.List.Zip` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Dvd` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Omega` — import line 20; external provider; requires a separately pinned dependency.
- `Init.TacticsExtra` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [mem_range'_1](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/mem-range-1--0243495fae95009f9abc6361.md) | 40 | `result-track:0243495fae95009f9abc6361b31ee4ff23eb943a8d22fdd402fdaa5c43534bde` |
| 2 | `theorem` | [getLast?_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/getlast-range--f77bac3892c30814b6c88933.md) | 46 | `result-track:f77bac3892c30814b6c88933bbc85aab56bdc146683a99964dc24bc62ef3b1ae` |
| 3 | `theorem` | [getLast_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/getlast-range--f3a5a1fae5fa55c9417fb4e8.md) | 57 | `result-track:f3a5a1fae5fa55c9417fb4e8a5cc1b3b6222fd7ef2553e0708f4fa64d410193e` |
| 4 | `theorem` | [pairwise_lt_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/pairwise-lt-range--bd8a23ac8c0d3ef29b8cbd03.md) | 62 | `result-track:bd8a23ac8c0d3ef29b8cbd03f6f922533a4f1830117fc73bdc6edb7cf5faa991` |
| 5 | `theorem` | [pairwise_le_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/pairwise-le-range--773730424dfa2c62bba3b19f.md) | 74 | `result-track:773730424dfa2c62bba3b19fd772aba16336d5643fd6e097b5a23e703e17250c` |
| 6 | `theorem` | [nodup_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/nodup-range--8322d0708a13238a667fe70a.md) | 86 | `result-track:8322d0708a13238a667fe70ae77f284a8d5c674cc32d6afcfb422e871e603f64` |
| 7 | `theorem` | [map_sub_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/map-sub-range--ecfa4c282973c8fb95319866.md) | 89 | `result-track:ecfa4c282973c8fb95319866360d5f7362829f639faf78a6303563ce8024c1af` |
| 8 | `theorem` | [range'_eq_singleton_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/range-eq-singleton-iff--2cbca5bcb8e53ccd03e401c1.md) | 95 | `result-track:2cbca5bcb8e53ccd03e401c1b395b164a90592efe4ae7cf267103b030aeb33cb` |
| 9 | `theorem` | [range'_eq_append_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/range-eq-append-iff--48f12eced12f9f0864fce238.md) | 101 | `result-track:48f12eced12f9f0864fce238ce7622333714ea356fa4634024e5cf44e228d163` |
| 10 | `theorem` | [find?_range'_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/find-range-eq-some--f6e4b1096806b57b728a5730.md) | 123 | `result-track:f6e4b1096806b57b728a57307727691fe6926ea5537bd165acd7ed6c93cc62f7` |
| 11 | `theorem` | [find?_range'_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/find-range-eq-none--13ea0600d64f5d1cec19b467.md) | 142 | `result-track:13ea0600d64f5d1cec19b467ce8d01d42429348dba1224df7c5d91360e0e0474` |
| 12 | `theorem` | [erase_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/erase-range--2ec6d81b10ed03d713dd4603.md) | 146 | `result-track:2ec6d81b10ed03d713dd4603b137c1bf6d3e87d865835ecb97c91df13bcfa795` |
| 13 | `theorem` | [count_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/count-range--911d30576359395622d48b4c.md) | 169 | `result-track:911d30576359395622d48b4c48adf22467c0223be69e09fea4893f17fac83b34` |
| 14 | `theorem` | [count_range_1'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/count-range-1--4e02a3080ee422eff05856ea.md) | 175 | `result-track:4e02a3080ee422eff05856ea5b4cf02e03a798f37897694f583f1808618da91a` |
| 15 | `theorem` | [sum_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/sum-range--e277874e1697a16f2cafab43.md) | 189 | `result-track:e277874e1697a16f2cafab4320691dc1ed6d58b554da9787e04c85f025538fab` |
| 16 | `theorem` | [drop_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/drop-range--db1e393cac2190e5aa4262e7.md) | 211 | `result-track:db1e393cac2190e5aa4262e7e6ff356bd72077f12d53aa769433fd123e7b3995` |
| 17 | `theorem` | [take_range'_of_length_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/take-range-of-length-le--f2e563f7b2bf6a79324d9356.md) | 223 | `result-track:f2e563f7b2bf6a79324d93562901ea44a27a29e7f5ab3ced88626b45f904c286` |
| 18 | `theorem` | [take_range'_of_length_ge](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/take-range-of-length-ge--810b60d6be55f930b7419147.md) | 229 | `result-track:810b60d6be55f930b7419147630a788c316821d9f920213e69798f2bc5e5f26d` |
| 19 | `theorem` | [reverse_range'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/reverse-range--3a96ed9cf8c5dfae539294ec.md) | 236 | `result-track:3a96ed9cf8c5dfae539294ec913e39d45c228f84f1d7fecff0b287f3fb69b2ea` |
| 20 | `theorem` | [mem_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/mem-range--95c504ea4f5bee6bea65bf28.md) | 244 | `result-track:95c504ea4f5bee6bea65bf28a1f72e2bf8f1c0b27e589f5abe7bda03400049f5` |
| 21 | `theorem` | [not_mem_range_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/not-mem-range-self--f992876317b7494474d8e5f8.md) | 247 | `result-track:f992876317b7494474d8e5f86d7e57ef8900f06d84f9fdf5cc38f2518383d430` |
| 22 | `theorem` | [self_mem_range_succ](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/self-mem-range-succ--1997bb5ed82cdbe1c94d4beb.md) | 249 | `result-track:1997bb5ed82cdbe1c94d4bebf70d670cd5ab289b406b51884624ed0e3d133ce1` |
| 23 | `theorem` | [pairwise_lt_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/pairwise-lt-range--bba40ec4f0de122937720159.md) | 251 | `result-track:bba40ec4f0de1229377201592ef5bcf5128d00dbc6a98040a23c9b106329aa5f` |
| 24 | `theorem` | [pairwise_le_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/pairwise-le-range--acbfc15f7e176edb94e344c2.md) | 254 | `result-track:acbfc15f7e176edb94e344c228bf426ad42f36bca92036eeaf5cead643415bf1` |
| 25 | `theorem` | [take_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/take-range--5f512abab3a3d758d65fdb9b.md) | 257 | `result-track:5f512abab3a3d758d65fdb9b01d6251e088355d0c3e1785349f4e4e5167dd189` |
| 26 | `theorem` | [nodup_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/nodup-range--f8a04b06a0a6542d83cd1b92.md) | 262 | `result-track:f8a04b06a0a6542d83cd1b925c213a5477bfbb2d2c7ec6db86cf51a6c39510e1` |
| 27 | `theorem` | [find?_range_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/find-range-eq-some--1f7cae0d6931f390f7e4acc0.md) | 265 | `result-track:1f7cae0d6931f390f7e4acc089f9a5832e0bc8ed67e3607f4ab9a58d00aa8d32` |
| 28 | `theorem` | [find?_range_eq_none](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/find-range-eq-none--042e5193d3fd256c55aae414.md) | 269 | `result-track:042e5193d3fd256c55aae414b008ea281ccec448b742be981656af23749fdce2` |
| 29 | `theorem` | [erase_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/erase-range--405c19c32de056edacb99be1.md) | 273 | `result-track:405c19c32de056edacb99be10b49336333f562f56b169f7bb1b38b51e8d552c0` |
| 30 | `theorem` | [count_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/count-range--f7637a9660476df4a7a77512.md) | 277 | `result-track:f7637a9660476df4a7a77512e72360cfbfd07392c3f98d7d73d9a863101eec17` |
| 31 | `theorem` | [zipIdx_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/zipidx-singleton--114872de50c9d87158ac62e8.md) | 285 | `result-track:114872de50c9d87158ac62e83a95daadfa89f79eb6771aa57b25655d4006c3c9` |
| 32 | `theorem` | [head?_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/head-zipidx--0c52bde301d798514af296e8.md) | 288 | `result-track:0c52bde301d798514af296e817e17b666e6fa415a50a948d8c59017e4bc95e82` |
| 33 | `theorem` | [getLast?_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/getlast-zipidx--394690246fa332ad80318b10.md) | 292 | `result-track:394690246fa332ad80318b103cc602d702133481523602cc6a84eefe8f3d0dd7` |
| 34 | `theorem` | [mk_add_mem_zipIdx_iff_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/mk-add-mem-zipidx-iff-getelem--1e952719d6c3681efc02082a.md) | 297 | `result-track:1e952719d6c3681efc02082a85198475e01ccab9bc7c565fcd8e6b1d1cbed882` |
| 35 | `theorem` | [mk_mem_zipIdx_iff_le_and_getElem?_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/mk-mem-zipidx-iff-le-and-getelem-sub--3e7167f749ff550bbd2f00a3.md) | 301 | `result-track:3e7167f749ff550bbd2f00a3d946eced5db07288693b156cbc45ce376d8275fd` |
| 36 | `theorem` | [mk_mem_zipIdx_iff_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/mk-mem-zipidx-iff-getelem--a3d0195268e9beb713cf79a0.md) | 312 | `result-track:a3d0195268e9beb713cf79a08a96d56a5a56cf6cc810ecfab96d038e71987998` |
| 37 | `theorem` | [mem_zipIdx_iff_le_and_getElem?_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/mem-zipidx-iff-le-and-getelem-sub--b7c247e1ff13fb02533c4a3a.md) | 316 | `result-track:b7c247e1ff13fb02533c4a3a88082a66b9e89600ca0becab10db45a0aa8922e9` |
| 38 | `theorem` | [mem_zipIdx_iff_getElem?](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/mem-zipidx-iff-getelem--c750b1f869027eec49944eed.md) | 323 | `result-track:c750b1f869027eec49944eed23246d17149dd9dad7394f69d40de2291ed02352` |
| 39 | `theorem` | [le_snd_of_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/le-snd-of-mem-zipidx--0f958040f323f243d7016cf4.md) | 327 | `result-track:0f958040f323f243d7016cf4c621187a38b3c6b4681d8dc4e3a466536a11443f` |
| 40 | `theorem` | [snd_lt_add_of_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/snd-lt-add-of-mem-zipidx--b5cc4d4de7717730e817e4f9.md) | 331 | `result-track:b5cc4d4de7717730e817e4f97aa73c29e24b54af184ff4cafec1832316f4cc40` |
| 41 | `theorem` | [snd_lt_of_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/snd-lt-of-mem-zipidx--5c022ce937a4054e154b21e8.md) | 336 | `result-track:5c022ce937a4054e154b21e82401a96a32bb8174e4489f28053f1e24ea2c10f1` |
| 42 | `theorem` | [map_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/map-zipidx--6cf423f71492a586d447c2f6.md) | 339 | `result-track:6cf423f71492a586d447c2f658281940a8121e9078e383d90b11e17529d0fb26` |
| 43 | `theorem` | [fst_mem_of_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/fst-mem-of-mem-zipidx--94f267c3f08e55b36ab46a35.md) | 343 | `result-track:94f267c3f08e55b36ab46a35b106edc87f58b47e46ea8fa8c3280a1366005eeb` |
| 44 | `theorem` | [fst_eq_of_mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/fst-eq-of-mem-zipidx--19e2f4773c4000afffbf39cb.md) | 346 | `result-track:19e2f4773c4000afffbf39cb64da02cc5422c30772c677f9fca6bfeb45fbb2d3` |
| 45 | `theorem` | [mem_zipIdx](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/mem-zipidx--65ff8a8e90e8e164ad0c6f49.md) | 360 | `result-track:65ff8a8e90e8e164ad0c6f492f1b4999a9bfbe782b38d381bfe2212e2daf6f67` |
| 46 | `theorem` | [mem_zipIdx'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/mem-zipidx--b6bc6d49e227c7b556538c94.md) | 366 | `result-track:b6bc6d49e227c7b556538c94fdeae824a5f467297c5a2ef937f3ba923d07b459` |
| 47 | `theorem` | [zipIdx_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/zipidx-map--3b4479bbaacd64755def8703.md) | 370 | `result-track:3b4479bbaacd64755def870351e9961973b4df7b5ad8d8f7896eddec24e252d0` |
| 48 | `theorem` | [zipIdx_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/zipidx-append--c714b311a14ae8a025fed7c7.md) | 379 | `result-track:c714b311a14ae8a025fed7c7f35ebcae422568d4a4e51b5a86a0aa3e72c546b2` |
| 49 | `theorem` | [zipIdx_eq_cons_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/zipidx-eq-cons-iff--de6681105784cc5dfbbfdaad.md) | 387 | `result-track:de6681105784cc5dfbbfdaad9b70dbbb8fef331c3df28dc029159ec5049db571` |
| 50 | `theorem` | [zipIdx_eq_append_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Range/Variant5833d2cb3477413282faf54587e490d10288096f2ef6a8d4394b1602c1533286.lean/declarations/zipidx-eq-append-iff--03f5bd1cb67217fe9c38c76e.md) | 399 | `result-track:03f5bd1cb67217fe9c38c76e1dfe92f4e2b5a96a3006ecb40e7b85bc8b998b99` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
