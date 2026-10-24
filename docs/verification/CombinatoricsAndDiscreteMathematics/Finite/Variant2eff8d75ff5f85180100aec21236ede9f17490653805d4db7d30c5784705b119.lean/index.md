# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff92d11b029fbaee7c433832e611cebbcebce63b",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff92d11b029fbaee7c433832e611cebbcebce63b`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Closure` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite--6f35de94a977c3d33553ebee.md) | 37 | `declaration-track:6f35de94a977c3d33553ebee66b8937eafaf1069897464ddef8dc40eac92fb30` |
| 2 | `lemma` | [IsRkFinite.rankFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-rankfinite--fe054f3b076a3e436c50bd39.md) | 39 | `result-track:fe054f3b076a3e436c50bd39494ef84dcdb097c69c87ac334c011fd3b67be014` |
| 3 | `lemma` | [RankFinite.isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/rankfinite-isrkfinite--10cb682eefa847513a361418.md) | 42 | `result-track:10cb682eefa847513a3614181aaf8fdbf329c47e732d4da531900fc99062c322` |
| 4 | `lemma` | [IsBasis'.finite_iff_isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isbasis-finite-iff-isrkfinite--9fbc6563ce486401b03a1232.md) | 45 | `result-track:9fbc6563ce486401b03a12321c5b498a6d250cf3d8282b8fccf022b7bdaf8b20` |
| 5 | `lemma` | [IsBasis.finite_iff_isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isbasis-finite-iff-isrkfinite--5158a500ff995f6026f1e839.md) | 50 | `result-track:5158a500ff995f6026f1e8398bfdbf4493059462d1456406a8e529167108cd05` |
| 6 | `lemma` | [IsBasis'.isRkFinite_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isbasis-isrkfinite-of-finite--53da27562aa4f4675d38caae.md) | 55 | `result-track:53da27562aa4f4675d38caaebf6357e78755e8b28e4f1754d8f50a12341f2db7` |
| 7 | `lemma` | [IsBasis.isRkFinite_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isbasis-isrkfinite-of-finite--de39039e20e19f79ad2934ef.md) | 58 | `result-track:de39039e20e19f79ad2934efba16154b30b48ce4c3d4d7d155f6c05e9be3bb9f` |
| 8 | `lemma` | [IsRkFinite.finite_of_isBasis'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-finite-of-isbasis--73d067ff5000c5debd0e2ed1.md) | 62 | `result-track:73d067ff5000c5debd0e2ed1c76f47c4a51e68e42a42bbc5ef0adc95ee816747` |
| 9 | `lemma` | [IsRkFinite.finite_of_isBasis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-finite-of-isbasis--a2ba213b6a0641f9b6c6e27a.md) | 66 | `result-track:a2ba213b6a0641f9b6c6e27a6b5ca28ccd6d22eb4dbfdcf7ae5e49b3e474c7c0` |
| 10 | `lemma` | [IsRkFinite.exists_finite_isBasis'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-exists-finite-isbasis--9a36886de2f4d7db679189dd.md) | 70 | `result-track:9a36886de2f4d7db679189dd11807d25f553d056611deda9afef10b9061efe43` |
| 11 | `lemma` | [IsRkFinite.exists_finset_isBasis'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-exists-finset-isbasis--096d29bc0e7056d379c18d05.md) | 74 | `result-track:096d29bc0e7056d379c18d056549e4cdaf5aac8fba48fbd35fbbd6de952ad8e6` |
| 12 | `lemma` | [isRkFinite_iff_exists_isBasis'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-iff-exists-isbasis--f29f56ae36301e0ce29242c6.md) | 79 | `result-track:f29f56ae36301e0ce29242c6822b2c040a3b643c681770df1a886917847a4c67` |
| 13 | `lemma` | [IsRkFinite.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-subset--1b23e83ca483da68069a9807.md) | 82 | `result-track:1b23e83ca483da68069a9807db2b32de736c4cfe8c335ff7e39d23b840e92088` |
| 14 | `lemma` | [isRkFinite_inter_ground_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-inter-ground-iff--47b6da8abbcd42b70630c6c4.md) | 88 | `result-track:47b6da8abbcd42b70630c6c40d2859e564502ecf4b945526872a4e1caff60341` |
| 15 | `lemma` | [IsRkFinite.inter_ground](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-inter-ground--4eccc89c93b1be3e9d7ed2b7.md) | 93 | `result-track:4eccc89c93b1be3e9d7ed2b7edc5c672ce591b49c31307123ff523c45e16af08` |
| 16 | `lemma` | [isRkFinite_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-iff--05cea32609432f51afcf814a.md) | 96 | `result-track:05cea32609432f51afcf814a90a7e97b07f6b204e2bed255803d31a5f3d60d92` |
| 17 | `lemma` | [Indep.isRkFinite_iff_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/indep-isrkfinite-iff-finite--ef16c0c230d84367b6691337.md) | 100 | `result-track:ef16c0c230d84367b66913376d1f190974538d264f5a959fafcf3b08c13c936a` |
| 18 | `lemma` | [isRkFinite_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-of-finite--e7fa8d88084a710d3a355dc7.md) | 106 | `result-track:e7fa8d88084a710d3a355dc73265dc74637d99512f620ecd656f8fb2116db8e6` |
| 19 | `lemma` | [Indep.subset_finite_isBasis'_of_subset_of_isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/indep-subset-finite-isbasis-of-subset-of-isrkfinite--7d78f73fff3dba18aa9e72a2.md) | 110 | `result-track:7d78f73fff3dba18aa9e72a223aaeed22b27f04cc5028646d24751cc788110e9` |
| 20 | `lemma` | [Indep.subset_finite_isBasis_of_subset_of_isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/indep-subset-finite-isbasis-of-subset-of-isrkfinite--47f800514b4bf308093d4b48.md) | 114 | `result-track:47f800514b4bf308093d4b485ca5ccb3059587c4d1694d87748b33cb34b11c12` |
| 21 | `lemma` | [isRkFinite_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-singleton--9f09fb72724b7b949fb4ef75.md) | 118 | `result-track:9f09fb72724b7b949fb4ef75b55c75dcb67692da6bd0b58abcce491bfaf8e67e` |
| 22 | `lemma` | [IsRkFinite.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-empty--2ded7d662329654d553f2ef8.md) | 121 | `result-track:2ded7d662329654d553f2ef881e076d43b8d856272c277e8793f2cf87273e16d` |
| 23 | `lemma` | [IsRkFinite.finite_of_indep_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-finite-of-indep-subset--cdcb429cd48b449dac57b818.md) | 124 | `result-track:cdcb429cd48b449dac57b818cffecdc13dfe414066faca8641a78d6540d29474` |
| 24 | `lemma` | [isRkFinite_ground_iff_rankFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-ground-iff-rankfinite--2bc84268a61c7f968fea0e11.md) | 129 | `result-track:2bc84268a61c7f968fea0e1142037e83cf56aac20f0a28ec4073e2604d935efa` |
| 25 | `lemma` | [isRkFinite_ground](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-ground--9c04c3f9021baafda7e17355.md) | 132 | `result-track:9c04c3f9021baafda7e1735547a4cc6aade8709dc07f60983c98ebf7680c29a7` |
| 26 | `lemma` | [Indep.finite_of_subset_isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/indep-finite-of-subset-isrkfinite--25c66e90358f2ec5eb4f0b27.md) | 135 | `result-track:25c66e90358f2ec5eb4f0b274f8a2f08f15b970458c44b22bd25bd3ee666767b` |
| 27 | `lemma` | [IsRkFinite.closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-closure--03b03d37a4743d2ccc29f280.md) | 139 | `result-track:03b03d37a4743d2ccc29f28005b6f6c5adb96b02a1dd46872dbc48b31d29f6e2` |
| 28 | `lemma` | [isRkFinite_closure_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-closure-iff--b43cd5f9c4beaa59bd30dbc1.md) | 144 | `result-track:b43cd5f9c4beaa59bd30dbc1e9b7b35d09ba88ac8ab4dea79bc76ce4c867d5ca` |
| 29 | `lemma` | [IsRkFinite.union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-union--5c8a531e05bb8888d2a30ea0.md) | 148 | `result-track:5c8a531e05bb8888d2a30ea024e73ea566f74c4290c2b65f611b8d62722a8db2` |
| 30 | `lemma` | [IsRkFinite.isRkFinite_union_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-isrkfinite-union-iff--1e9bdc4c3c774d09c6bc8b00.md) | 157 | `result-track:1e9bdc4c3c774d09c6bc8b00e7aa315ad2ef0d144f591712c8e88473f8395b39` |
| 31 | `lemma` | [IsRkFinite.isRkFinite_diff_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-isrkfinite-diff-iff--47c99b54280839a18c25e07f.md) | 161 | `result-track:47c99b54280839a18c25e07f8f581a0fee5917550853e4179a8191dfafed15f4` |
| 32 | `lemma` | [IsRkFinite.inter_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-inter-right--834e22bcb411dceb8c4a82a7.md) | 165 | `result-track:834e22bcb411dceb8c4a82a77537da392af40f3d19697850f76021c0b66b535a` |
| 33 | `lemma` | [IsRkFinite.inter_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-inter-left--65d5a6bb5eb868a6ac10e72d.md) | 168 | `result-track:65d5a6bb5eb868a6ac10e72dccbce9a0bdf56de8ae28d2f6a7e8ad19f876fe86` |
| 34 | `lemma` | [IsRkFinite.diff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-diff--f33dd0d8c2d8b3f1957ff52a.md) | 171 | `result-track:f33dd0d8c2d8b3f1957ff52a8c3ba2a64c517da19f0d06ed88be5a9b605d7456` |
| 35 | `lemma` | [IsRkFinite.insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-insert--bac34602ba2a565a441b935c.md) | 174 | `result-track:bac34602ba2a565a441b935c114493af92e2cb105429f49d1a7191a99c54b5a1` |
| 36 | `lemma` | [isRkFinite_insert_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-insert-iff--c27c3223565083b399012d06.md) | 179 | `result-track:c27c3223565083b399012d0618a5301bfb4d2c5d3b7bbd7dc99928728f24cac7` |
| 37 | `lemma` | [IsRkFinite.diff_singleton_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-diff-singleton-iff--ce2e81530ea7c9e9f4a4885a.md) | 183 | `result-track:ce2e81530ea7c9e9f4a4885a9ccaec877879b65b15fc294a4a9b2490aeffb1ca` |
| 38 | `lemma` | [isRkFinite_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-set--b2f8b2d9dcec3ebe871e89d2.md) | 186 | `result-track:b2f8b2d9dcec3ebe871e89d226ceca38f9ba62940ab459fe3dc29439ead56f99` |
| 39 | `lemma` | [IsRkFinite.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant2eff8d75ff5f85180100aec21236ede9f17490653805d4db7d30c5784705b119.lean/declarations/isrkfinite-iunion--6c68b4e9dd557a5ae24ffc13.md) | 191 | `result-track:6c68b4e9dd557a5ae24ffc136b37cf70299505cdaa6dc01e29f1b5e462a0ff56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
