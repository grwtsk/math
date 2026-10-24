# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.String.Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "430d9924e4805e9fca8469b87a25a73fa9bd5587",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `430d9924e4805e9fca8469b87a25a73fa9bd5587`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.String.Lemmas.Pattern.TakeDrop.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Pattern.String` — import line 13; external provider; requires a separately pinned dependency.
- `Init.Data.List.Sublist` — import line 14; external provider; requires a separately pinned dependency.
- `Init.Data.Option.Lemmas` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Lemmas.Basic` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [skipPrefix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipprefix-slice-of-isempty--2b55ed32959705a70153a3e0.md) | 26 | `result-track:2b55ed32959705a70153a3e0dc0fa478c3c97119f4b8ed709e41f9fa40cc75b8` |
| 2 | `theorem` | [skipPrefix?_slice_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipprefix-slice-eq-some-iff--3aa91e837663a1389b3c9894.md) | 31 | `result-track:3aa91e837663a1389b3c98940f39aabf92caee884a6b1d2c4f7ae4f06b6ea16a` |
| 3 | `theorem` | [startsWith_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-slice-of-isempty--f0576e269934d9a906c720a6.md) | 35 | `result-track:f0576e269934d9a906c720a6e414fdc36f017c6ca686c9fdd2e3e7cc66367d4d` |
| 4 | `theorem` | [startsWith_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-slice-iff--fa49f2b0d011ce9e0ea4ee61.md) | 40 | `result-track:fa49f2b0d011ce9e0ea4ee61bdf59b15463baccc76ea465304cd206cf3fbe44f` |
| 5 | `theorem` | [startsWith_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-slice-eq-false-iff--8aa893962b618a823c9758e0.md) | 48 | `result-track:8aa893962b618a823c9758e03495cfe8587a3a9542c30a008f9aee0718af61a0` |
| 6 | `theorem` | [dropPrefix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/dropprefix-slice-of-isempty--a924f04bade62c686da44b1b.md) | 52 | `result-track:a924f04bade62c686da44b1b5f65249512033b23a92853f061cf90bf7f4ed960` |
| 7 | `theorem` | [eq_append_of_dropPrefix?_slice_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/eq-append-of-dropprefix-slice-eq-some--6d986e217686f2f9499a4a4a.md) | 56 | `result-track:6d986e217686f2f9499a4a4a278a6f3cee087898322124a051266eb1ee377f95` |
| 8 | `theorem` | [all_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/all-slice-iff--c57c4ebc9bcbd1b04ba9e37f.md) | 64 | `result-track:c57c4ebc9bcbd1b04ba9e37fee8c03742eced4aa593f3882d46a6d70f666e408` |
| 9 | `theorem` | [revAll_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/revall-slice-iff--a0bed36a3c682ae96063760c.md) | 68 | `result-track:a0bed36a3c682ae96063760c783d9fe1e2f7aec58c10195f431c9613d88a9dbb` |
| 10 | `theorem` | [skipPrefix?_string_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipprefix-string-eq-some-iff--d8e38fa8c66f13293d7fbfe9.md) | 72 | `result-track:d8e38fa8c66f13293d7fbfe9a701c532e1437b2a5a590040072f29874eaf1211` |
| 11 | `theorem` | [skipPrefix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipprefix-string-empty--7bb547eff9404e4dd2050581.md) | 77 | `result-track:7bb547eff9404e4dd20505814a5628aaef424515f522d1a000f275a18bb8a42f` |
| 12 | `theorem` | [startsWith_string_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-string-iff--46b1e66c154662fb0238f4c3.md) | 81 | `result-track:46b1e66c154662fb0238f4c30ebb8f81a396136bb0ae96a89d4823cb54d0568f` |
| 13 | `theorem` | [startsWith_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-string-empty--62312b806aed9de2c510c6d8.md) | 86 | `result-track:62312b806aed9de2c510c6d8ea5366841f1e8ed0006d2c2b200f316a65ceb43e` |
| 14 | `theorem` | [startsWith_string_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-string-eq-false-iff--22660bcde3036834b39a5380.md) | 90 | `result-track:22660bcde3036834b39a53800a54d548d3ebd33e26a5e3677e000668378bf87c` |
| 15 | `theorem` | [dropPrefix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/dropprefix-string-empty--93501e94c104bd6f8fd7fb9e.md) | 95 | `result-track:93501e94c104bd6f8fd7fb9ef236857f8da09a782e9bf24e796dbbbe23f49dd9` |
| 16 | `theorem` | [eq_append_of_dropPrefix?_string_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/eq-append-of-dropprefix-string-eq-some--9a79ddcf50f06076a4b8595f.md) | 98 | `result-track:9a79ddcf50f06076a4b8595fe9423704851aa821434c494a0395f40474ae6897` |
| 17 | `theorem` | [skipSuffix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipsuffix-slice-of-isempty--4259a896bbed24b1c6427a84.md) | 104 | `result-track:4259a896bbed24b1c6427a84aaf6f612121e67c2fe6cffbd7aee303d7d381498` |
| 18 | `theorem` | [skipSuffix?_slice_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipsuffix-slice-eq-some-iff--ac30664c6f99389f37c73ee4.md) | 109 | `result-track:ac30664c6f99389f37c73ee4b7f37d7d4f5e43b7dc58d54152504234684fe570` |
| 19 | `theorem` | [endsWith_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/endswith-slice-of-isempty--6995b18e13883f79b87929dc.md) | 113 | `result-track:6995b18e13883f79b87929dc46ee1fd97482a066573f01b1b60656d223e47089` |
| 20 | `theorem` | [endsWith_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/endswith-slice-iff--5e6f1eca00a408fc096e5020.md) | 118 | `result-track:5e6f1eca00a408fc096e5020d7b5053ff655f36b783a0cd563b57c29b831b5af` |
| 21 | `theorem` | [endsWith_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/endswith-slice-eq-false-iff--18a6dd258b23b38549219319.md) | 126 | `result-track:18a6dd258b23b38549219319641fc1a90a02d9cf5a1c84aa746bfe69b22c577b` |
| 22 | `theorem` | [dropSuffix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/dropsuffix-slice-of-isempty--4636b4273b5cd3e23a2ce7d3.md) | 130 | `result-track:4636b4273b5cd3e23a2ce7d378a4b9e043b7cdad874174abf75d1a7a5d876e71` |
| 23 | `theorem` | [eq_append_of_dropSuffix?_slice_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/eq-append-of-dropsuffix-slice-eq-some--7f27a8e7b8989b17ed479a8a.md) | 134 | `result-track:7f27a8e7b8989b17ed479a8a16309ec06f62f76d59a15f31831fcb11bb7ba6db` |
| 24 | `theorem` | [skipSuffix?_string_eq_some_iff'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipsuffix-string-eq-some-iff--24eea24009220d12bc65f781.md) | 142 | `result-track:24eea24009220d12bc65f781816ec0557e62bcec4c51f866815fb4c79dac684d` |
| 25 | `theorem` | [skipSuffix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipsuffix-string-empty--73b6c18c0b0d24b1c96de0f7.md) | 147 | `result-track:73b6c18c0b0d24b1c96de0f756891321e7b155f629a2ff2ae47d1f5af769c43c` |
| 26 | `theorem` | [endsWith_string_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/endswith-string-iff--f7121597c88bb729eb8efda6.md) | 151 | `result-track:f7121597c88bb729eb8efda61af628991fba84b70b5f58cacf1c4ea8e1cd9ab7` |
| 27 | `theorem` | [endsWith_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/endswith-string-empty--7812ba462aefa201128ac075.md) | 156 | `result-track:7812ba462aefa201128ac075513febea6b09ddcaac3b2ea4f847cefd03fcdb13` |
| 28 | `theorem` | [endsWith_string_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/endswith-string-eq-false-iff--327d8dd34fd83c92e747dad4.md) | 160 | `result-track:327d8dd34fd83c92e747dad4522e3c87ce347b81388666b65565c8b016b95ed9` |
| 29 | `theorem` | [dropSuffix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/dropsuffix-string-empty--74509d93caff5cee9915294d.md) | 165 | `result-track:74509d93caff5cee9915294ddab9469f6bd0325a5eadd0a096a4bee529608bff` |
| 30 | `theorem` | [eq_append_of_dropSuffix?_string_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/eq-append-of-dropsuffix-string-eq-some--aad89deacfe10ae74d527667.md) | 168 | `result-track:aad89deacfe10ae74d5276677aefbd2fe75135be44f203a060015e5db5dc61c5` |
| 31 | `theorem` | [skipPrefix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipprefix-slice-of-isempty--68f5a2d1af1405c11b0678ba.md) | 175 | `result-track:68f5a2d1af1405c11b0678ba386ffe0de9c6fc57c82565d7f452a608598e6e2c` |
| 32 | `theorem` | [skipPrefix?_slice_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipprefix-slice-eq-some-iff--fb3a6e42caa3f919ad600c9c.md) | 181 | `result-track:fb3a6e42caa3f919ad600c9cf0d12aff673a8c26073e81bf1993321ea2ac7aee` |
| 33 | `theorem` | [startsWith_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-slice-of-isempty--9dea15d844dbc63f466bde30.md) | 189 | `result-track:9dea15d844dbc63f466bde302b180cfbf0bd4fec356eddb06a05201ce5aeba5d` |
| 34 | `theorem` | [startsWith_slice_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-slice-iff--0fb747c1db90d75906fded14.md) | 194 | `result-track:0fb747c1db90d75906fded1491736e30493df9cb66f60811cc21df174f5405eb` |
| 35 | `theorem` | [startsWith_slice_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-slice-eq-false-iff--ca8bd09d275527443ad59ae0.md) | 199 | `result-track:ca8bd09d275527443ad59ae0a8af307a07ea61f71463276ed4ec6a01bb15d7d5` |
| 36 | `theorem` | [dropPrefix?_slice_of_isEmpty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/dropprefix-slice-of-isempty--b133694a71e6a6b37632e4fa.md) | 203 | `result-track:b133694a71e6a6b37632e4fa8d7deb207d3e286b0b3cfffd0e393219b8715db8` |
| 37 | `theorem` | [eq_append_of_dropPrefix?_slice_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/eq-append-of-dropprefix-slice-eq-some--db49bf44a0bd35638200e064.md) | 207 | `result-track:db49bf44a0bd35638200e0640cc8712a7e306f4c6a512b778b4e4302f6ae3f55` |
| 38 | `theorem` | [skipPrefix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipprefix-string-empty--33a8d046ed50cda5245b8dbc.md) | 213 | `result-track:33a8d046ed50cda5245b8dbc53c942d0df7536c5880dae8a30a6b02a2941f64c` |
| 39 | `theorem` | [skipPrefix?_string_eq_some_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/skipprefix-string-eq-some-iff--2a95df33b613a998255f2d64.md) | 217 | `result-track:2a95df33b613a998255f2d6456cd2098647ad5105c6c279720a58ce5693691c3` |
| 40 | `theorem` | [startsWith_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-string-empty--0eec34f3bd012d696ef8e5f0.md) | 226 | `result-track:0eec34f3bd012d696ef8e5f0610ccd8b85c5fe75a0ae73ad198773cb2cd29fc4` |
| 41 | `theorem` | [startsWith_string_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-string-iff--6b78e8e374612bdfc6c81364.md) | 230 | `result-track:6b78e8e374612bdfc6c813647724c26b01031e9a61e0f3a2a98d33deeb5498f8` |
| 42 | `theorem` | [startsWith_string_eq_false_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/startswith-string-eq-false-iff--512abe43edc08f96c3474c73.md) | 235 | `result-track:512abe43edc08f96c3474c731aa14a5119e31c26af002b0ac4857204d48732a1` |
| 43 | `theorem` | [dropPrefix?_string_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/dropprefix-string-empty--14621c429d04281378774069.md) | 240 | `result-track:14621c429d04281378774069f7ed6aafb4b7c44e7ef12dfb352c95b0d70f2935` |
| 44 | `theorem` | [eq_append_of_dropPrefix?_string_eq_some](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/String/Variant14fd870a1fd63752c28aa8bda429acf65466dc98070f773314006c8f412a91be.lean/declarations/eq-append-of-dropprefix-string-eq-some--143c184de31a3f63849b3345.md) | 243 | `result-track:143c184de31a3f63849b3345fa5e1e2db6002d6e9c9e081e45f75da7722acaef` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
