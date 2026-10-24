# Verification target: GRWTSK.CategoriesAndHomologicalAlgebra.CategoryTheory.FullyFaithful.Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "567ff9766655bc1977b53f915fa2a5c1aa34c978",
  "lexical_observation_count": 40,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/index.md) · [Full source](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `567ff9766655bc1977b53f915fa2a5c1aa34c978`.

Source path: `GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Adjunction.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.MorphismProperty.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.EpiMono` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [unit_mono_of_L_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/unit-mono-of-l-faithful--00e4cfda388386c921897c85.md) | 52 | `declaration-track:00e4cfda388386c921897c859c02f26aa688212f2f5efadef728c55352bda388` |
| 2 | `def` | [unitSplitEpiOfLFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/unitsplitepioflfull--9c41d557e6c48c43bc8c2036.md) | 57 | `declaration-track:9c41d557e6c48c43bc8c20360cea0102424a9a97756de77555c38f80220b8b09` |
| 3 | `instance` | [unit_isSplitEpi_of_L_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/unit-issplitepi-of-l-full--228ec5d32d7e2ec546c3099c.md) | 62 | `declaration-track:228ec5d32d7e2ec546c3099c557ea6df61b7c28bd231d22325cc1ca24600f896` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/instance--aebac9bb5d601f0b2538f48b.md) | 65 | `declaration-track:aebac9bb5d601f0b2538f48bc31e0f8f73feac01e0f935a857605d876b6ed022` |
| 5 | `instance` | [unit_isIso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/unit-isiso-of-l-fully-faithful--4093c4ca9f09756a0a407455.md) | 69 | `declaration-track:4093c4ca9f09756a0a407455334e9fd26aa083857062e380f4b7f4ece2394e4e` |
| 6 | `instance` | [counit_epi_of_R_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/counit-epi-of-r-faithful--fcc5a0a9f30574603ed9b6f0.md) | 73 | `declaration-track:fcc5a0a9f30574603ed9b6f0cd393419735f3d4dac9468cfe910fdcb5029850c` |
| 7 | `def` | [counitSplitMonoOfRFull](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/counitsplitmonoofrfull--dcb394716acc35195f501fbd.md) | 78 | `declaration-track:dcb394716acc35195f501fbd8371e7a8f7ae247fd53c2f09c54e19bcc9e8573a` |
| 8 | `instance` | [counit_isSplitMono_of_R_full](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/counit-issplitmono-of-r-full--34059b362a70faa6f1ea028a.md) | 83 | `declaration-track:34059b362a70faa6f1ea028a2672fcc36125b19121a9682e7eb2022d414b8e5d` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/instance--65b6e18b755e00e5c7ca3452.md) | 86 | `declaration-track:65b6e18b755e00e5c7ca345217499033f47dd7f1bfe72c032be3627d5f838453` |
| 10 | `instance` | [counit_isIso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/counit-isiso-of-r-fully-faithful--555a83e5c50c49dec654b412.md) | 90 | `declaration-track:555a83e5c50c49dec654b412ddc39f36cb56caba1d4c83046fcf3f322e9613fe` |
| 11 | `theorem` | [inv_map_unit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/inv-map-unit--48ac42e4b1946eebdc54095d.md) | 96 | `result-track:48ac42e4b1946eebdc54095dd89886892ee19c9879312ea1bd254eb96e3c85e7` |
| 12 | `def` | [whiskerLeftLCounitIsoOfIsIsoUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/whiskerleftlcounitisoofisisounit--d2cdaedbe3fa8605e9f9dd9c.md) | 102 | `declaration-track:d2cdaedbe3fa8605e9f9dd9c4dec0d1fbe8eadfc7368da357bdf92e7c188e746` |
| 13 | `theorem` | [inv_counit_map](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/inv-counit-map--cbbcde73211f34da06924779.md) | 108 | `result-track:cbbcde73211f34da06924779a82834aba05301d9047011800f22fb4c378673fe` |
| 14 | `def` | [whiskerLeftRUnitIsoOfIsIsoCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/whiskerleftrunitisoofisisocounit--33e9e5df4a9009156896b536.md) | 114 | `declaration-track:33e9e5df4a9009156896b5368b2d4c44ac8ac2ecf04609c4540115ec048b426b` |
| 15 | `lemma` | [faithful_L_of_mono_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/faithful-l-of-mono-unit-app--ed48e1f4b5c8b7f607e174e0.md) | 118 | `result-track:ed48e1f4b5c8b7f607e174e0d690b90fd64c1a2cb1466aaa018e56df2a38a673` |
| 16 | `lemma` | [full_L_of_isSplitEpi_unit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/full-l-of-issplitepi-unit-app--39a4d6525a4030f145a4599c.md) | 125 | `result-track:39a4d6525a4030f145a4599c9bdc41fb283387baf5f1ff94d5572fefce7b2703` |
| 17 | `def` | [fullyFaithfulLOfIsIsoUnit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/fullyfaithfullofisisounit--91a4c6a2d6fd673211eb1d82.md) | 134 | `declaration-track:91a4c6a2d6fd673211eb1d8294f382fb1fde12ff252223174c9ee6f7c8afc657` |
| 18 | `lemma` | [faithful_R_of_epi_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/faithful-r-of-epi-counit-app--c74a412ac2fb74f0a12d7236.md) | 138 | `result-track:c74a412ac2fb74f0a12d72361d1b37c3b3b944c4fb939749b39eed145199a22c` |
| 19 | `lemma` | [full_R_of_isSplitMono_counit_app](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/full-r-of-issplitmono-counit-app--d7bab4477abadebf6848ddbf.md) | 145 | `result-track:d7bab4477abadebf6848ddbfea829b7a35aac49a3a19ae20435552450c534562` |
| 20 | `def` | [fullyFaithfulROfIsIsoCounit](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/fullyfaithfulrofisisocounit--8ae46d8af3ea8bbecf58a25d.md) | 154 | `declaration-track:8ae46d8af3ea8bbecf58a25d52d06c8e3e4403b1be973c887aaf10d0f2957ea0` |
| 21 | `instance` | [whiskerLeft_counit_iso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/whiskerleft-counit-iso-of-l-fully-faithful--73134fbe8b14c979e587ef24.md) | 157 | `declaration-track:73134fbe8b14c979e587ef24aabe7aeb3e18afdd8dc30d165a53fca66525aac4` |
| 22 | `instance` | [whiskerRight_counit_iso_of_L_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/whiskerright-counit-iso-of-l-fully-faithful--2b160c28b00f86f6702aad23.md) | 164 | `declaration-track:2b160c28b00f86f6702aad232ed95bfe54736bf29d465aff16e06fdfc43dbada` |
| 23 | `instance` | [whiskerLeft_unit_iso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/whiskerleft-unit-iso-of-r-fully-faithful--e3f29a9acdb42b41d2ce7e70.md) | 171 | `declaration-track:e3f29a9acdb42b41d2ce7e70798a8e13c126b7eb6eb693b4efb76176961e0521` |
| 24 | `instance` | [whiskerRight_unit_iso_of_R_fully_faithful](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/whiskerright-unit-iso-of-r-fully-faithful--21c2909e6704e742e918b3d6.md) | 178 | `declaration-track:21c2909e6704e742e918b3d6e6a9ec9605fecabef069c1a929ff1422d11fb4b8` |
| 25 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/instance--4cdceee30530d749eb50a641.md) | 185 | `declaration-track:4cdceee30530d749eb50a641314de0140ba382c59fd9ac22fddf721926e15a47` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/instance--fc8a584a6d7dbe5090375031.md) | 188 | `declaration-track:fc8a584a6d7dbe5090375031579150849d9cbc9c85ed2a7757f0c7e3e3baa477` |
| 27 | `lemma` | [isIso_counit_app_iff_mem_essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/isiso-counit-app-iff-mem-essimage--0ff7387e9a8186cd87580636.md) | 191 | `result-track:0ff7387e9a8186cd8758063614f017d401e05dd3d5575fb9f0b8b379e0a86774` |
| 28 | `lemma` | [mem_essImage_of_counit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/mem-essimage-of-counit-isiso--34fd5664ad36708b1dbd7a04.md) | 200 | `result-track:34fd5664ad36708b1dbd7a04163a8e8a331d8c1c4d31fd5ac9268ec915ceb248` |
| 29 | `lemma` | [isIso_counit_app_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/isiso-counit-app-of-iso--6061255bdc455c13c4369db8.md) | 204 | `result-track:6061255bdc455c13c4369db8f886089325146f8da87430210f83cedc1ea340cd` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/instance--6c6ff89f223ea83d38da8842.md) | 208 | `declaration-track:6c6ff89f223ea83d38da8842eee08c1c90e8385d76c404fe8fe81e86969a383f` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/instance--d4f094ed93c44251afd87bb0.md) | 211 | `declaration-track:d4f094ed93c44251afd87bb06152141c381a597ea09f953e66fdf330363a1923` |
| 32 | `lemma` | [isIso_unit_app_iff_mem_essImage](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/isiso-unit-app-iff-mem-essimage--39110f16791b6f5ad6907aac.md) | 214 | `result-track:39110f16791b6f5ad6907aac241be56614b09be0f195b75ce3d45762e56dcec5` |
| 33 | `theorem` | [mem_essImage_of_unit_isIso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/mem-essimage-of-unit-isiso--193a89c80d93d2349cba470c.md) | 224 | `result-track:193a89c80d93d2349cba470ca999c70254109842f69fa26bbde73182240bcd8e` |
| 34 | `lemma` | [isIso_unit_app_of_iso](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/isiso-unit-app-of-iso--cec8724cf11eb26240d3eea9.md) | 228 | `result-track:cec8724cf11eb26240d3eea9457ed91bbb55f433cbdf4e8be44ce1c16312bc3d` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/instance--0124007f31f19b3fc1203fba.md) | 232 | `declaration-track:0124007f31f19b3fc1203fba80d79f86d37523155af80acffccf0ff2911b5e06` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/instance--1246b44f86b7531bbd8037d5.md) | 236 | `declaration-track:1246b44f86b7531bbd8037d58c31dfdd2bd30e674f17317e71bba11b58fa7aa7` |
| 37 | `lemma` | [isEquivalence_left_of_isEquivalence_right](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/isequivalence-left-of-isequivalence-right--7ec838a1f8a1e5fc4596f095.md) | 240 | `result-track:7ec838a1f8a1e5fc4596f09589d3da6f1fd8eb498a109d633663bbef79f9a5bd` |
| 38 | `lemma` | [isEquivalence_right_of_isEquivalence_left](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/isequivalence-right-of-isequivalence-left--817a8d0fb658cbc4fb5c3b51.md) | 243 | `result-track:817a8d0fb658cbc4fb5c3b51e04535b551313fe785cf4e3ba0c8c062fbc128a4` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/instance--166fed0f40288f79a3586a8b.md) | 246 | `declaration-track:166fed0f40288f79a3586a8bec7013c252a71b2893d50696f77a0eff916c5d6f` |
| 40 | `instance` | [(anonymous)](../../../../../mathematics/CategoriesAndHomologicalAlgebra/CategoryTheory/FullyFaithful/Variant5f71895ab05e51db28f838fa9220cd3afb6e6c5b15c343d3added0db08392346.lean/declarations/instance--45f572fe7ca57bc46ef4e078.md) | 250 | `declaration-track:45f572fe7ca57bc46ef4e078d5d358df6750bd0ffc05bd468c21a47c8cca8aba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
