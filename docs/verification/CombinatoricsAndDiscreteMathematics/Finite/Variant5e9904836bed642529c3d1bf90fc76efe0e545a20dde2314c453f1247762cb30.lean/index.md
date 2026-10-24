# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Finite.Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87684652ed194f6469975408ec2acbd2e18ba5b7",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87684652ed194f6469975408ec2acbd2e18ba5b7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Matroid.Closure` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite--0775d809e6172476bc61106d.md) | 29 | `declaration-track:0775d809e6172476bc61106d5e1214482d57da5173b2ec2c8f5a44d67ee96972` |
| 2 | `lemma` | [IsRkFinite.rankFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-rankfinite--8063df3a6cd6a1b6a12c21cd.md) | 31 | `result-track:8063df3a6cd6a1b6a12c21cd22bdfe4a606f44a438c53061c13cbc89e9123dcd` |
| 3 | `lemma` | [RankFinite.isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/rankfinite-isrkfinite--bcec5a4688e3b03afbccc14d.md) | 34 | `result-track:bcec5a4688e3b03afbccc14d72c61d746a79dc991d771b7d1df1f0ad8b9bbe61` |
| 4 | `lemma` | [IsBasis'.finite_iff_isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isbasis-finite-iff-isrkfinite--65ce7ad94d9785917a9816be.md) | 37 | `result-track:65ce7ad94d9785917a9816bec0e73a607cce5ae79cb390b30283482e8e157d0f` |
| 5 | `lemma` | [IsBasis.finite_iff_isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isbasis-finite-iff-isrkfinite--d50f9750adcb0b2b8d65cc15.md) | 42 | `result-track:d50f9750adcb0b2b8d65cc1527946357c3ee48ae8d29e2b470a455ed16e4c702` |
| 6 | `lemma` | [IsBasis'.isRkFinite_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isbasis-isrkfinite-of-finite--7f5ddbb36b813b1f884ffd20.md) | 47 | `result-track:7f5ddbb36b813b1f884ffd2008c627692cbd024c917913132dd792c086e2c1e2` |
| 7 | `lemma` | [IsBasis.isRkFinite_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isbasis-isrkfinite-of-finite--2cb73a2f394e8f3f1f4e31f7.md) | 50 | `result-track:2cb73a2f394e8f3f1f4e31f758f6d99c6afc4e67e268b1c082e86307726ead0b` |
| 8 | `lemma` | [IsRkFinite.finite_of_isBasis'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-finite-of-isbasis--101af2b3d5bf63a2e4064978.md) | 54 | `result-track:101af2b3d5bf63a2e40649786585793f7830dcfb00b1cc87a623f18814c25a74` |
| 9 | `lemma` | [IsRkFinite.finite_of_isBasis](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-finite-of-isbasis--a2892cbddb7498a9fc7c2aec.md) | 58 | `result-track:a2892cbddb7498a9fc7c2aec7f7e2c9efc4ab25f4b41b230672317461ab667a0` |
| 10 | `lemma` | [IsRkFinite.exists_finite_isBasis'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-exists-finite-isbasis--8d36aae5d456523e979b8edf.md) | 62 | `result-track:8d36aae5d456523e979b8edf2287b9e26fdcaa61f7ac2fcfb31835189340804e` |
| 11 | `lemma` | [IsRkFinite.exists_finset_isBasis'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-exists-finset-isbasis--7083a0ff06f7c5c9f343c1e4.md) | 66 | `result-track:7083a0ff06f7c5c9f343c1e42dc58cdd3f08bb287965bbd0562e2d0111ed16c0` |
| 12 | `lemma` | [isRkFinite_iff_exists_isBasis'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-iff-exists-isbasis--d03538fa176645156a4e468e.md) | 71 | `result-track:d03538fa176645156a4e468e2058a5cf362f30d5d324dc89742bcb5759ae9048` |
| 13 | `lemma` | [IsRkFinite.subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-subset--d523be1682a01ed28b584cf0.md) | 74 | `result-track:d523be1682a01ed28b584cf0f2615e773fdc54f894f35756499a1fe9d3c0d576` |
| 14 | `lemma` | [isRkFinite_inter_ground_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-inter-ground-iff--4aacf9c6e3e8af70391c4d67.md) | 80 | `result-track:4aacf9c6e3e8af70391c4d670da324e34ade4e68832fd5d224b968fa43a8b352` |
| 15 | `lemma` | [IsRkFinite.inter_ground](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-inter-ground--cc046d4a0085d6a706136d40.md) | 85 | `result-track:cc046d4a0085d6a706136d40aa4aab24db2924713846e92d3c745add254aac97` |
| 16 | `lemma` | [isRkFinite_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-iff--ef51cda27264a34d8d8b7609.md) | 88 | `result-track:ef51cda27264a34d8d8b760921f46e62a6db639c80ad8c9448737f9cff087efd` |
| 17 | `lemma` | [Indep.isRkFinite_iff_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/indep-isrkfinite-iff-finite--6d7ab1f13edab20c9dec71cf.md) | 92 | `result-track:6d7ab1f13edab20c9dec71cf51f989c8dbe39d096825b2126f5046b8984c4d96` |
| 18 | `lemma` | [isRkFinite_of_finite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-of-finite--351bf660c2930ca2e63fa51a.md) | 98 | `result-track:351bf660c2930ca2e63fa51a194eed01be4b2c041b529cb6509c4a1daa6e189d` |
| 19 | `lemma` | [Indep.subset_finite_isBasis'_of_subset_of_isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/indep-subset-finite-isbasis-of-subset-of-isrkfinite--c997303c7e1f63b163dc3a04.md) | 102 | `result-track:c997303c7e1f63b163dc3a045330d489c2bbf0d73eccbf4309f4adfb5677c558` |
| 20 | `lemma` | [Indep.subset_finite_isBasis_of_subset_of_isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/indep-subset-finite-isbasis-of-subset-of-isrkfinite--925dcca5848a6af93da2193f.md) | 106 | `result-track:925dcca5848a6af93da2193ff50259c4f185f73845afeb95e1fbd6b782c8d0d4` |
| 21 | `lemma` | [isRkFinite_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-singleton--0fa94f1e814d1796da023549.md) | 110 | `result-track:0fa94f1e814d1796da0235492a64a0db555138e3ed9f42a14be0f456878ba560` |
| 22 | `lemma` | [IsRkFinite.empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-empty--a75549e323efcbb1b78b4ca9.md) | 113 | `result-track:a75549e323efcbb1b78b4ca9aa73c9a5430a2e6ddb25214cda1f85896f35a3b8` |
| 23 | `lemma` | [IsRkFinite.finite_of_indep_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-finite-of-indep-subset--4d8ceef12049e540e4058974.md) | 116 | `result-track:4d8ceef12049e540e4058974771c20bcda5a03fae704175e23bd47908a18da44` |
| 24 | `lemma` | [isRkFinite_ground_iff_rankFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-ground-iff-rankfinite--706f0ddfa3b6b9e463083b07.md) | 121 | `result-track:706f0ddfa3b6b9e463083b0737ca5bace4c9283604dbbd0c873ad7da6ac7f77b` |
| 25 | `lemma` | [isRkFinite_ground](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-ground--7717a0d2d79b51dcc37d616c.md) | 124 | `result-track:7717a0d2d79b51dcc37d616ca08186be63da86ec2db03d1b94932b03b068b39c` |
| 26 | `lemma` | [Indep.finite_of_subset_isRkFinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/indep-finite-of-subset-isrkfinite--4abe16089341e2595c7520e2.md) | 127 | `result-track:4abe16089341e2595c7520e28ea7528253d08bcf634f2a79ef57efdcf10ba366` |
| 27 | `lemma` | [IsRkFinite.closure](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-closure--313509d6b7d70016745247d8.md) | 131 | `result-track:313509d6b7d70016745247d8ba37b9b49fb28b9b5b6b13e93d9397ab108ded65` |
| 28 | `lemma` | [isRkFinite_closure_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-closure-iff--989aaa9ef90f1872cf13d19d.md) | 136 | `result-track:989aaa9ef90f1872cf13d19d90b4bdb82c077608f9d860ce4729e6ed31daf6ea` |
| 29 | `lemma` | [IsRkFinite.union](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-union--b66b00cccb5b80e13a6a0987.md) | 140 | `result-track:b66b00cccb5b80e13a6a0987e9ae451cc5b3c1014d99f3dba52adaf964ba3fc9` |
| 30 | `lemma` | [IsRkFinite.isRkFinite_union_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-isrkfinite-union-iff--b4c2be9cfda6b78933c40bbe.md) | 149 | `result-track:b4c2be9cfda6b78933c40bbe1a42372560ce7603ebe1dea42ee8a2ac18580134` |
| 31 | `lemma` | [IsRkFinite.isRkFinite_diff_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-isrkfinite-diff-iff--105d849646b708bf0cc6fcf6.md) | 153 | `result-track:105d849646b708bf0cc6fcf68a73eaa12f77b60851ab0d319e4cc5dea54b52e5` |
| 32 | `lemma` | [IsRkFinite.inter_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-inter-right--e6add7a5451a4d731a496fb7.md) | 157 | `result-track:e6add7a5451a4d731a496fb740ce3c23d59d95886aca201a0b5ff6220409d1a0` |
| 33 | `lemma` | [IsRkFinite.inter_left](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-inter-left--4bc09801bc4768adbd96383d.md) | 160 | `result-track:4bc09801bc4768adbd96383d47cc4942004f3790d86ff8dde199a6bacdcbd3cd` |
| 34 | `lemma` | [IsRkFinite.diff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-diff--66903cc6d8d1bcef3eed34a9.md) | 163 | `result-track:66903cc6d8d1bcef3eed34a9a3d4cfb373027a40975051391a70970ce529d5d1` |
| 35 | `lemma` | [IsRkFinite.insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-insert--91f4be17eb15cbd738c06409.md) | 166 | `result-track:91f4be17eb15cbd738c06409341f2a7ca316cadf713517fc6f7e7e09cdf40eeb` |
| 36 | `lemma` | [isRkFinite_insert_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-insert-iff--8725a75e0a43b5ace41ad32d.md) | 171 | `result-track:8725a75e0a43b5ace41ad32d01d265f1cea7f8248ad2f88d4b71e819049ad70c` |
| 37 | `lemma` | [IsRkFinite.diff_singleton_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-diff-singleton-iff--d7417e91e34606621e7c9080.md) | 175 | `result-track:d7417e91e34606621e7c90808f179dd00ba0d068bd500f2731a568a10eab4760` |
| 38 | `lemma` | [isRkFinite_set](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-set--6dc9d87c8409ca84c0832b20.md) | 178 | `result-track:6dc9d87c8409ca84c0832b204dbf5ace3aeb0c205f58426a830d13eefa1fd75b` |
| 39 | `lemma` | [IsRkFinite.iUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Finite/Variant5e9904836bed642529c3d1bf90fc76efe0e545a20dde2314c453f1247762cb30.lean/declarations/isrkfinite-iunion--6c70e77a800bfa225b4f4da0.md) | 183 | `result-track:6c70e77a800bfa225b4f4da0e702c491c86c3d0bb990c3c4a1923f272da60e6c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
