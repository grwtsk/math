# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Restrict.Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "cfd00f2d9dd9d793eac0096ee9fb98ae1230cd0a",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `cfd00f2d9dd9d793eac0096ee9fb98ae1230cd0a`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Set.Image` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict--8b3c7ce2ea9bef82a589a0ca.md) | 28 | `declaration-track:8b3c7ce2ea9bef82a589a0ca2c1728542e2578b63544fab0b3a2c65974cfc8d7` |
| 2 | `theorem` | [restrict_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-def--565d4b30dad9e4b99b49a443.md) | 30 | `result-track:565d4b30dad9e4b99b49a4433137bef127bac80b4a82fa059472c462a6c230fd` |
| 3 | `theorem` | [restrict_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-eq--e6e3a63f921c392c57826dd3.md) | 32 | `result-track:e6e3a63f921c392c57826dd3b1a9c026fed81e97440f67d461faff75721a6dfb` |
| 4 | `lemma` | [restrict_id](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-id--9f67fdeda0ade234b75d4e12.md) | 35 | `result-track:9f67fdeda0ade234b75d4e12170b42b60141a45a7b4edc274e7204516589a8aa` |
| 5 | `theorem` | [restrict_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-apply--cba2f2623f2d171a81b528f8.md) | 38 | `result-track:cba2f2623f2d171a81b528f8e1bedb7b52413aff31cd6bda3a694e6a8889052a` |
| 6 | `theorem` | [restrict_eq_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-eq-iff--a4a4fd8c19c9830e7ae7e596.md) | 41 | `result-track:a4a4fd8c19c9830e7ae7e59655111274fcf74ecb261c89353f15621006753e11` |
| 7 | `theorem` | [eq_restrict_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/eq-restrict-iff--e06f979faff13e6ad4db38aa.md) | 45 | `result-track:e06f979faff13e6ad4db38aa04bb586562d3cbeb8f61b13d5db1ef47b1773570` |
| 8 | `theorem` | [range_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/range-restrict--818e67dfdd0c104ad148e2b2.md) | 50 | `result-track:818e67dfdd0c104ad148e2b246c7100d9ede9c5cd7f3313febf67f976aea8699` |
| 9 | `theorem` | [image_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/image-restrict--294365733edc64e5e93cda7b.md) | 53 | `result-track:294365733edc64e5e93cda7b8fe96ae5b07ab53c1b9b2bb63ba630a408f17728` |
| 10 | `theorem` | [restrict_dite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-dite--6c71fab2fc07f0f0f9d0d5c1.md) | 58 | `result-track:6c71fab2fc07f0f0f9d0d5c1a6b3fd755ae3da805740f1ab9afd51f934eec524` |
| 11 | `theorem` | [restrict_dite_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-dite-compl--58a3b0e5e55bc6a0c716cc43.md) | 64 | `result-track:58a3b0e5e55bc6a0c716cc43b211bd09ec676b659392857fba6299b89d05d3b7` |
| 12 | `theorem` | [restrict_ite](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-ite--46e201b8b6fb85fe6336873e.md) | 70 | `result-track:46e201b8b6fb85fe6336873e778d2a40a0ffa61e401c4d4c8ae9562bf6d5cf1e` |
| 13 | `theorem` | [restrict_ite_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-ite-compl--475232cecc9021f591e37627.md) | 75 | `result-track:475232cecc9021f591e37627a2967eeaae6948e5fa39e447234e9089fafbb4e4` |
| 14 | `theorem` | [restrict_piecewise](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-piecewise--daedd5181cef0f4c237bb482.md) | 80 | `result-track:daedd5181cef0f4c237bb482b9461e782235da5141e59fb162568c92dce8e49a` |
| 15 | `theorem` | [restrict_piecewise_compl](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-piecewise-compl--f3e5c98dfe5a95f2aef1038e.md) | 85 | `result-track:f3e5c98dfe5a95f2aef1038e0647234e20cac2d99e9f6f1b28dcfa7072cf7e1e` |
| 16 | `theorem` | [restrict_extend_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-extend-range--7b43360a256a8fce06f15c2c.md) | 89 | `result-track:7b43360a256a8fce06f15c2cbb76f103e2a883f63bbfe68803c464b84ec72028` |
| 17 | `theorem` | [restrict_extend_compl_range](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-extend-compl-range--4a31d9cd43e03ee704887d40.md) | 95 | `result-track:4a31d9cd43e03ee704887d4007437eb747103a87457520f3e45ac8afdd79bc8c` |
| 18 | `def` | [restrict₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict--cb6fc11bd4e327c7749ffbe6.md) | 102 | `declaration-track:cb6fc11bd4e327c7749ffbe6c1cc60ac37039ab49893c427a0a4366416fb1895` |
| 19 | `theorem` | [restrict₂_def](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-def--5ee4d4f59ffdeaffa241a2df.md) | 105 | `result-track:5ee4d4f59ffdeaffa241a2dfa36695f8029979601b146edd655c5cafc0739a38` |
| 20 | `theorem` | [restrict₂_comp_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-comp-restrict--5b03f9f1730f4d701bdaf3f8.md) | 108 | `result-track:5b03f9f1730f4d701bdaf3f8aede3718ed3f4fcfa37585860d8b9a9dff18c406` |
| 21 | `theorem` | [restrict₂_comp_restrict₂](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-comp-restrict--ec8351addf7af30aa9e110ca.md) | 111 | `result-track:ec8351addf7af30aa9e110ca250a6447dac8a7c15e5bff832038fb2a67c80213` |
| 22 | `theorem` | [range_extend_subset](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/range-extend-subset--acd17da1c55fc819fef74449.md) | 114 | `result-track:acd17da1c55fc819fef7444915bde1b48bb70f9c76d25c36b77af329ee7bd5a7` |
| 23 | `theorem` | [range_extend](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/range-extend--ca5d6d2d0410961936a710af.md) | 122 | `result-track:ca5d6d2d0410961936a710af5f00a5b977f5a2c5991481339a4b9b69b017f1fb` |
| 24 | `def` | [codRestrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/codrestrict--3b9df3ccd99f7665906ccf09.md) | 130 | `declaration-track:3b9df3ccd99f7665906ccf09a7ae1c52bf8a1a3e00a897022d0ec049685721a9` |
| 25 | `theorem` | [val_codRestrict_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/val-codrestrict-apply--4e014034c51209d4a06fc563.md) | 133 | `result-track:4e014034c51209d4a06fc56353f38f660fe8ab5cfa2ebd569072ef7895facd4b` |
| 26 | `theorem` | [restrict_comp_codRestrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-comp-codrestrict--33470f9737644b01b05db1d6.md) | 138 | `result-track:33470f9737644b01b05db1d633b2da487544d42ff7cb1d705dc868456e20895d` |
| 27 | `theorem` | [injective_codRestrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/injective-codrestrict--19d007f426ceee8d7d3e612c.md) | 143 | `result-track:19d007f426ceee8d7d3e612ce16f31907f2af691f8c392c7609839f721903f70` |
| 28 | `theorem` | [restrict_eq_restrict_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrict-eq-restrict-iff--e1e60d7400be2e1097015e25.md) | 152 | `result-track:e1e60d7400be2e1097015e25c3558d5cb878f623647102821ce067d3e0f2171a` |
| 29 | `theorem` | [MapsTo.restrict_commutes](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/mapsto-restrict-commutes--d6c708c3ec165e94cca107c9.md) | 162 | `result-track:d6c708c3ec165e94cca107c949ed9c07595a9914db8452790aee57dce56692ec` |
| 30 | `theorem` | [MapsTo.val_restrict_apply](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/mapsto-val-restrict-apply--c7acf76df7964b5efbcca6be.md) | 167 | `result-track:c7acf76df7964b5efbcca6be0fa00a1b056cbeb2b567b1c9f18209446f7bf3d8` |
| 31 | `theorem` | [MapsTo.coe_iterate_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/mapsto-coe-iterate-restrict--d939383e264c118b8760a3ff.md) | 170 | `result-track:d939383e264c118b8760a3ffb96271b24b27532f6f3a3132d2d08eaf9ef7511e` |
| 32 | `theorem` | [codRestrict_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/codrestrict-restrict--f359d90ff0b33ffe01e0a365.md) | 178 | `result-track:f359d90ff0b33ffe01e0a3652b3b3da62e43cb30f912fa293a1bb2a151b1532a` |
| 33 | `theorem` | [MapsTo.restrict_eq_codRestrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/mapsto-restrict-eq-codrestrict--0b7c5f29b9842f0ab0ca5f31.md) | 183 | `result-track:0b7c5f29b9842f0ab0ca5f3171dbfb898566d1c55e8f7efdf130b45b3b070c17` |
| 34 | `theorem` | [MapsTo.coe_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/mapsto-coe-restrict--5c62e44b990a1568cfe97f66.md) | 187 | `result-track:5c62e44b990a1568cfe97f663197d007115ef84ec1e4533811d88f3464893ef5` |
| 35 | `theorem` | [MapsTo.range_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/mapsto-range-restrict--473b3e129cfbeb9f1cf28100.md) | 191 | `result-track:473b3e129cfbeb9f1cf281002c83f2e21f81dd2af4e53c4cfff63d4972eb20f1` |
| 36 | `theorem` | [mapsTo_iff_exists_map_subtype](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/mapsto-iff-exists-map-subtype--152a5961a282c44af2f98a64.md) | 195 | `result-track:152a5961a282c44af2f98a64bf5e73aebe5a87b5016bebac7a7f780770b62f60` |
| 37 | `theorem` | [surjective_mapsTo_image_restrict](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/surjective-mapsto-image-restrict--592cbb0ee98ac38381c052f6.md) | 200 | `result-track:592cbb0ee98ac38381c052f67f82956c665d9902b99b35ac327f7364d71dece9` |
| 38 | `theorem` | [image_restrictPreimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/image-restrictpreimage--b4d6ddd71638c01ec930cfdb.md) | 212 | `result-track:b4d6ddd71638c01ec930cfdb19ed11f7d6a2af55415185118e7b9ee1cceb5705` |
| 39 | `theorem` | [range_restrictPreimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/range-restrictpreimage--4570e7d51b9b9179e70ac953.md) | 219 | `result-track:4570e7d51b9b9179e70ac9535b75e39b34652f8443f0976d5555f0a0299a5f90` |
| 40 | `theorem` | [restrictPreimage_mk](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrictpreimage-mk--87eedcbf177954a5cecc1b14.md) | 223 | `result-track:87eedcbf177954a5cecc1b145ea58c70a33f6588fbbd8d45a38f94a9aa8e8913` |
| 41 | `theorem` | [image_val_preimage_restrictPreimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/image-val-preimage-restrictpreimage--5244bc99fa020e5e298ad7e0.md) | 225 | `result-track:5244bc99fa020e5e298ad7e004c198b1844a4233188bfcfefb659e5bad057d05` |
| 42 | `theorem` | [preimage_restrictPreimage](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/preimage-restrictpreimage--5d10a3cb3822c2542c09b1d2.md) | 230 | `result-track:5d10a3cb3822c2542c09b1d2cf23786b310060bbc9ce1e42ea3d43da80b38825` |
| 43 | `lemma` | [restrictPreimage_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrictpreimage-injective--f80a9cd69eaa60a462a92031.md) | 235 | `result-track:f80a9cd69eaa60a462a920319c4175dd4cb37021a198b8a2f795d195e9e6c080` |
| 44 | `lemma` | [restrictPreimage_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrictpreimage-surjective--26cc4345b444c36293069a27.md) | 238 | `result-track:26cc4345b444c36293069a2788cc01432c95590e84accd367dbec84d916b1ab2` |
| 45 | `lemma` | [restrictPreimage_bijective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/restrictpreimage-bijective--f818212e0606a0d777b15fbd.md) | 241 | `result-track:f818212e0606a0d777b15fbd602e4a0e1aea9ee97eb48ba845ee09541b798e47` |
| 46 | `theorem` | [injOn_iff_injective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/injon-iff-injective--62766fc432885ceb8ebba76b.md) | 253 | `result-track:62766fc432885ceb8ebba76b121e09a7b5a28d1d393580d329308f81bad70cea` |
| 47 | `theorem` | [MapsTo.restrict_inj](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/mapsto-restrict-inj--68696bab2b4a056a25e74346.md) | 259 | `result-track:68696bab2b4a056a25e74346550cc12ea13142aeecdb46107a0e9902ea173246` |
| 48 | `theorem` | [surjOn_iff_surjective](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/surjon-iff-surjective--2b6d82c5fe0643acfb6ba7ab.md) | 267 | `result-track:2b6d82c5fe0643acfb6ba7ab28375533a7f7f528087e1bf6b3f4a2f5aa013dba` |
| 49 | `theorem` | [MapsTo.restrict_surjective_iff](../../../../../mathematics/FoundationsLogicAndTypeTheory/MathematicalLogic/Restrict/Variant9d51de372ca99ceb2b106578565b34e999faef79de076ae38c13205a4692f40f.lean/declarations/mapsto-restrict-surjective-iff--d1934588ae23b6dda55f6403.md) | 276 | `result-track:d1934588ae23b6dda55f6403117ce06fc51c749a2a985f54d935596192a6d709` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
