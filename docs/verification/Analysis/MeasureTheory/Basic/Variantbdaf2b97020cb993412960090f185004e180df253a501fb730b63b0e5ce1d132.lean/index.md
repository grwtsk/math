# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "45ee37111aa5e834a18dc2e07d67763f84871e4a",
  "lexical_observation_count": 58,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `45ee37111aa5e834a18dc2e07d67763f84871e4a`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Indicator` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Int.Cast.Pi` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.MeasurableSpace.Defs` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/map--e296c8006f5d586d9ef27fdd.md) | 57 | `declaration-track:e296c8006f5d586d9ef27fddd7c544cd12e168e8f5a045d28924dfe15a48be69` |
| 2 | `lemma` | [map_def](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/map-def--f5f8ff04a285641dcb6b83d3.md) | 63 | `result-track:f5f8ff04a285641dcb6b83d36bce338fc5234f8f9769ae65b568f0a20bbce328` |
| 3 | `theorem` | [map_id](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/map-id--3bd058e2c0ca6e5710ee54fa.md) | 66 | `result-track:3bd058e2c0ca6e5710ee54fae1c87b66c6c352d7cb9b303d10b2c052bb4dfc44` |
| 4 | `theorem` | [map_comp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/map-comp--1610931612bb2d993eb0a0ea.md) | 70 | `result-track:1610931612bb2d993eb0a0ea53b04e70e64db49a59104c64a2b2356f000b55fb` |
| 5 | `def` | [comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap--a769615bb4235d38e83f8f6e.md) | 75 | `declaration-track:a769615bb4235d38e83f8f6e8762b9bca8fb226b786b8a6c8d6b878204679426` |
| 6 | `lemma` | [measurableSet_comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurableset-comap--93786663d0fe9bc4ad2fef8b.md) | 83 | `result-track:93786663d0fe9bc4ad2fef8beffb6c49685ca36ec964d3f1d6c2109c5ce2008b` |
| 7 | `theorem` | [comap_eq_generateFrom](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-eq-generatefrom--860f89c008a980e0dac13654.md) | 86 | `result-track:860f89c008a980e0dac13654258493561c56a2edd36d0fda57fbcecc002d759e` |
| 8 | `theorem` | [comap_id](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-id--475d19af6ae380931dea8775.md) | 91 | `result-track:475d19af6ae380931dea87755b100da05903baa38b4801c9de325ffeb1099a65` |
| 9 | `theorem` | [comap_comp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-comp--9f7717886974dd097977b208.md) | 95 | `result-track:9f7717886974dd097977b2086d81dcea908895dd27ce311c105057e4cebec02e` |
| 10 | `theorem` | [comap_le_iff_le_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-le-iff-le-map--0906de84b1e13ffef97c20d5.md) | 99 | `result-track:0906de84b1e13ffef97c20d5f942c925319f5eb24f9787bf0c2b3ddf1cf44927` |
| 11 | `theorem` | [gc_comap_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/gc-comap-map--2329e67eb99ce84144e0c40d.md) | 102 | `result-track:2329e67eb99ce84144e0c40db22a3e064533cbe8778d42bf5ad02df91ae7328f` |
| 12 | `theorem` | [map_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/map-mono--e6e108dedbf317f1a96c717d.md) | 106 | `result-track:e6e108dedbf317f1a96c717d62a3781e8c48ea3532ecd5d07fd25a5258fe0d0b` |
| 13 | `theorem` | [monotone_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/monotone-map--f6c935ba813b62142a7daa9f.md) | 109 | `result-track:f6c935ba813b62142a7daa9fa540048f398955a206e7e9d49b43e5d5970369f9` |
| 14 | `theorem` | [comap_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-mono--b5d8518a38328c64eacddded.md) | 111 | `result-track:b5d8518a38328c64eacddded9ed29c44c74584e1e962ce7d27e8e44899a3d5d7` |
| 15 | `theorem` | [monotone_comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/monotone-comap--7f5b0aa38313663ae448065e.md) | 114 | `result-track:7f5b0aa38313663ae448065ee1bba9017088e870b936fa699308bb97cec38475` |
| 16 | `theorem` | [comap_bot](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-bot--985b0e5ac0c10d52264ae940.md) | 117 | `result-track:985b0e5ac0c10d52264ae940346f93783dc4eec8a101a5f55656a100b5909f2a` |
| 17 | `theorem` | [comap_sup](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-sup--c65c415d6c771f121b8fe53a.md) | 121 | `result-track:c65c415d6c771f121b8fe53af8fb973b80dfa6838a903c05e110e7e85951d359` |
| 18 | `theorem` | [comap_iSup](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-isup--79688cd0e39a82c9385d59a3.md) | 125 | `result-track:79688cd0e39a82c9385d59a35f0d8eeaa4f427b256447e24e383e6dbf52da402` |
| 19 | `theorem` | [map_top](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/map-top--6f9d3d0f37a0ac6a23062831.md) | 129 | `result-track:6f9d3d0f37a0ac6a2306283162bd2e35ae961c634fb9a72b4cc111657a0b6426` |
| 20 | `theorem` | [map_inf](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/map-inf--db3023f2b3c4c0dd96471e30.md) | 133 | `result-track:db3023f2b3c4c0dd96471e30abc77b2628afbb7ca4521cefbd4ebc9718b50c91` |
| 21 | `theorem` | [map_iInf](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/map-iinf--29651bb50d85ff7774bff6c0.md) | 137 | `result-track:29651bb50d85ff7774bff6c0610da0d4d2c624212be9c65e86644314c9161775` |
| 22 | `theorem` | [comap_map_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-map-le--35bfbbffe50534b9e521c85f.md) | 140 | `result-track:35bfbbffe50534b9e521c85fbf2c76dc6afa87c39e71de0b2f49f92fa8b3d92d` |
| 23 | `theorem` | [le_map_comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/le-map-comap--7e3139032f0589f439b40c3c.md) | 143 | `result-track:7e3139032f0589f439b40c3cad7c923071cb8b971edddb6ae2c26236d0f55d24` |
| 24 | `theorem` | [map_const](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/map-const--191b33dba99c34fc5b04cfe0.md) | 148 | `result-track:191b33dba99c34fc5b04cfe0413dbea6afd2d71bb161278e297adf7e684d05d7` |
| 25 | `theorem` | [comap_const](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-const--3fe8de9aed62b1750eb897f4.md) | 151 | `result-track:3fe8de9aed62b1750eb897f4d9979fb000de664e6cb45274e00d014d17944a3c` |
| 26 | `theorem` | [comap_generateFrom](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-generatefrom--12d51c4563fb21df1ff3fab5.md) | 154 | `result-track:12d51c4563fb21df1ff3fab5246fc04777b23a0328bca2a591dd244bec75ba6b` |
| 27 | `theorem` | [measurable_iff_le_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-iff-le-map--89c69285dc8671bd877a33b2.md) | 167 | `result-track:89c69285dc8671bd877a33b255faaf622444e2704eb8acfb98dcaccaae21ebc6` |
| 28 | `theorem` | [measurable_iff_comap_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-iff-comap-le--4ac8befbc49cd6822c2cded8.md) | 173 | `result-track:4ac8befbc49cd6822c2cded8bd476bed14dbdeada45e2a9c24deec002c3ad8ca` |
| 29 | `theorem` | [comap_measurable](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/comap-measurable--9bf932e5415df81b5cd2780f.md) | 179 | `result-track:9bf932e5415df81b5cd2780f4114b0af37162f8eb8fdeb9d95a314a1b3338286` |
| 30 | `theorem` | [Measurable.mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-mono--69fbd2f496fed04bc0bf3f01.md) | 182 | `result-track:69fbd2f496fed04bc0bf3f01e0590a2873962acc01321f63885938ead042909a` |
| 31 | `lemma` | [Measurable.iSup'](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-isup--2d78ed2c57208875bae0c08a.md) | 186 | `result-track:2d78ed2c57208875bae0c08a17354436948955e96ab292bf64da964dab31d08f` |
| 32 | `lemma` | [Measurable.sup_of_left](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-sup-of-left--eb8294c94fc6944a505ae09b.md) | 191 | `result-track:eb8294c94fc6944a505ae09bbb19d9adf51b240935003a0fd68a32815bc9235e` |
| 33 | `lemma` | [Measurable.sup_of_right](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-sup-of-right--e1bcd747008190f52836d8e9.md) | 196 | `result-track:e1bcd747008190f52836d8e9d0b5c9f6e345aec799d0b36e1a394b491ebb4d3f` |
| 34 | `theorem` | [measurable_id''](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-id--b811cad33bd4f36eb5be72fb.md) | 201 | `result-track:b811cad33bd4f36eb5be72fb0ee327ec0bae020e73480dc33c995ae159d00c56` |
| 35 | `theorem` | [measurable_from_top](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-from-top--a7bb9dcb250dcc35ee231536.md) | 205 | `result-track:a7bb9dcb250dcc35ee2315367e39a2dd35a6c8bd798ff3d502bb949d005204d8` |
| 36 | `theorem` | [measurable_generateFrom](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-generatefrom--311160bf05818b56e3a68a85.md) | 207 | `result-track:311160bf05818b56e3a68a8531b8ecfc506cec943dec3cbaca19cb488f05f3a2` |
| 37 | `theorem` | [Subsingleton.measurable](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/subsingleton-measurable--5e80fe101acb18f884d3ff5b.md) | 218 | `result-track:5e80fe101acb18f884d3ff5b8a3ec9a4536b746c1920d72307744481171a6d58` |
| 38 | `theorem` | [measurable_of_subsingleton_codomain](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-of-subsingleton-codomain--8fdaa1e5f272a883b0ccac13.md) | 222 | `result-track:8fdaa1e5f272a883b0ccac131f3832691cac8f2afe96d8023be9fa067242c76a` |
| 39 | `theorem` | [measurable_one](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-one--15237fd12d2c4929098ccd22.md) | 226 | `result-track:15237fd12d2c4929098ccd22e2c1411db855cb7300fe1618b9e9e14d8cf92ee3` |
| 40 | `theorem` | [measurable_of_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-of-empty--aa860d0bc5bbb1bfa48700e2.md) | 229 | `result-track:aa860d0bc5bbb1bfa48700e29db732ece3d114e4d9932f06346489915211af89` |
| 41 | `theorem` | [measurable_of_empty_codomain](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-of-empty-codomain--cf67daa42b3f6a3e5b7a1d2b.md) | 232 | `result-track:cf67daa42b3f6a3e5b7a1d2be28ce7b234b9b38b6c8ea931963ab156355c0538` |
| 42 | `theorem` | [measurable_const'](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-const--b3e0442afdf909fd35de56a7.md) | 237 | `result-track:b3e0442afdf909fd35de56a7152e89963186905c3d62b209853a798364947c32` |
| 43 | `theorem` | [measurable_natCast](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-natcast--11b055a9c637dcbb91b5c3c4.md) | 244 | `result-track:11b055a9c637dcbb91b5c3c4efcc154ddd5fd64b6e44158fa20daa617d0dc985` |
| 44 | `theorem` | [measurable_intCast](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-intcast--21446fb6418fe447ac54f6f5.md) | 248 | `result-track:21446fb6418fe447ac54f6f5fbe4086ac64be4463f31924fb7986707c017eee1` |
| 45 | `theorem` | [measurable_of_countable](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-of-countable--059e1970ffd67b1a8a102ee4.md) | 251 | `result-track:059e1970ffd67b1a8a102ee4eaafce8cb3e0b81c0b11dc059f94357bc370067c` |
| 46 | `theorem` | [measurable_of_finite](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-of-finite--eafc205e45dde9cf39c6d95b.md) | 255 | `result-track:eafc205e45dde9cf39c6d95b3348be8418e63192554f42af67cc2ca8f409c49e` |
| 47 | `theorem` | [Measurable.iterate](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-iterate--8ba04f866d255e56979576e3.md) | 263 | `result-track:8ba04f866d255e56979576e3f20a560f7eb3347444228fa45fc41e91971af6d4` |
| 48 | `theorem` | [measurableSet_preimage](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurableset-preimage--8bf4f9a28e3eb6485f235fcc.md) | 270 | `result-track:8bf4f9a28e3eb6485f235fcce3d9b4630c0030be2dd65ccfaab1301938fefce0` |
| 49 | `theorem` | [MeasurableSet.preimage](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurableset-preimage--c6f157f7185e250a7a0f5676.md) | 274 | `result-track:c6f157f7185e250a7a0f56762b80b376d47d8df8a6d9efbbaf68b735063e152c` |
| 50 | `theorem` | [Measurable.piecewise](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-piecewise--8ef6d36b355fc84b7687972f.md) | 279 | `result-track:8ef6d36b355fc84b7687972f2c956d0bcc52defdb5ac9a0b3f9c16cc21a79822` |
| 51 | `theorem` | [Measurable.ite](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-ite--fb0fc55c260c6590355c15ea.md) | 289 | `result-track:fb0fc55c260c6590355c15ea94e0c5339731fb1aee1c87e2b2842fb6a433fa60` |
| 52 | `theorem` | [Measurable.indicator](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-indicator--9e1edfc798214cbc92759811.md) | 294 | `result-track:9e1edfc798214cbc92759811a020905ab45b0089c32726caef450d00d6d9256c` |
| 53 | `lemma` | [measurable_indicator_const_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-indicator-const-iff--4ed9130252552b92c697d730.md) | 300 | `result-track:4ed9130252552b92c697d730825c7058e84026468a1d5f9cc2813e779cb0850a` |
| 54 | `theorem` | [measurableSet_mulSupport](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurableset-mulsupport--c4a419d3f9d3099e8e4265a6.md) | 309 | `result-track:c4a419d3f9d3099e8e4265a66addb9e12b41939ef158a39fa2d9fd6e1f5d8bfd` |
| 55 | `theorem` | [Measurable.measurable_of_countable_ne](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/measurable-measurable-of-countable-ne--b4b4c0b2758964a909dc4869.md) | 315 | `result-track:b4b4c0b2758964a909dc4869fd6c234954d3f05f5a519092e6e90fdcf0ff8171` |
| 56 | `def` | [IsCountablySpanning](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/iscountablyspanning--2ea8889bc4c14953cb8eb77b.md) | 334 | `declaration-track:2ea8889bc4c14953cb8eb77b84374b44ec4ee4c18a2f07863ca616111830d5fb` |
| 57 | `theorem` | [isCountablySpanning_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/iscountablyspanning-measurableset--a0885c26e8f4d4ffb9dd1832.md) | 337 | `result-track:a0885c26e8f4d4ffb9dd1832012eb482cc53863f827baa51ffe498434031fece` |
| 58 | `lemma` | [IsCountablySpanning.prod](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variantbdaf2b97020cb993412960090f185004e180df253a501fb730b63b0e5ce1d132.lean/declarations/iscountablyspanning-prod--cf84cefa3153ecdd7c4324d6.md) | 342 | `result-track:cf84cefa3153ecdd7c4324d6cdae8f5360a9b9e5fdfec961f4c4bce02c5c4e7c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
