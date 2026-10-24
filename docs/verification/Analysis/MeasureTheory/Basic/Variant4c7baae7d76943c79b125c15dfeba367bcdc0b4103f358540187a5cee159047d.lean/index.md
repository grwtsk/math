# Verification target: GRWTSK.Analysis.MeasureTheory.Basic.Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a6c766545a214276fa64016ab4e945b8993605d3",
  "lexical_observation_count": 63,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a6c766545a214276fa64016ab4e945b8993605d3`.

Source path: `GRWTSK/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/map--318905b928bb22a920393474.md) | 73 | `declaration-track:318905b928bb22a92039347496050912ed6a4041bb9ba68622b36036cf72be91` |
| 2 | `lemma` | [map_def](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/map-def--a6593cb667d2dd47b42dfafc.md) | 79 | `result-track:a6593cb667d2dd47b42dfafcd41e22e5a5cac3d7312b4bd62e9b801a731ddacc` |
| 3 | `theorem` | [map_id](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/map-id--78b5ba0e7e9dd5e584930517.md) | 82 | `result-track:78b5ba0e7e9dd5e58493051727f2d1e4f7d60376b5ef00d914193eafc0f7fc0c` |
| 4 | `theorem` | [map_comp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/map-comp--5271472bf6ad2a408fd5e9a0.md) | 86 | `result-track:5271472bf6ad2a408fd5e9a0d4454624758103131136e1debb7daa6ca6397b4d` |
| 5 | `def` | [comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap--6ebc5e6547cf5d17a9b7f9d8.md) | 92 | `declaration-track:6ebc5e6547cf5d17a9b7f9d8033fe80f401ac61f81621f2ee3048f86bffda22d` |
| 6 | `lemma` | [measurableSet_comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurableset-comap--70170746954f9e9eddf217b1.md) | 100 | `result-track:70170746954f9e9eddf217b1c03ae0b822e01aa8ce86c69e9ad22bcd54667232` |
| 7 | `theorem` | [comap_eq_generateFrom](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-eq-generatefrom--66e1a3ace5a3df98ef38c355.md) | 103 | `result-track:66e1a3ace5a3df98ef38c355fc9b7f8d7a16fd089a69fa2e2b5c9dc8fc1261b8` |
| 8 | `theorem` | [comap_id](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-id--137383f70907c10bc5cd1bb3.md) | 108 | `result-track:137383f70907c10bc5cd1bb370a6520644c3e609e4504fbf87aa8f0f903ec84d` |
| 9 | `theorem` | [comap_comp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-comp--0c43cbb89b8f171bace9a952.md) | 112 | `result-track:0c43cbb89b8f171bace9a9524cf909a992a16ec54c1443a468e967f7b2dba09a` |
| 10 | `theorem` | [comap_le_iff_le_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-le-iff-le-map--8a64df6409981e262802098d.md) | 116 | `result-track:8a64df6409981e262802098daf294e5fa69f1aa689a2278ade5e828b8639597d` |
| 11 | `theorem` | [gc_comap_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/gc-comap-map--d241f8303c01a1f405eacc68.md) | 119 | `result-track:d241f8303c01a1f405eacc685d9dcd81d1c8e4a6f7b75fbb1490ad0765c69031` |
| 12 | `theorem` | [map_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/map-mono--6f67ba9f6ca9c2d51f4077fa.md) | 123 | `result-track:6f67ba9f6ca9c2d51f4077fa8e3042bb19c89ec81c9ba5f4ea9d35777afc1565` |
| 13 | `theorem` | [monotone_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/monotone-map--c8f0221d9ee41c4a37162362.md) | 127 | `result-track:c8f0221d9ee41c4a37162362419c7a2ed4eb8254095b030b0bed31b62f3dfb81` |
| 14 | `theorem` | [comap_mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-mono--ab704613bc19cbc33a7b6009.md) | 129 | `result-track:ab704613bc19cbc33a7b6009d09891a10809238839999cd589cebda1f7b13674` |
| 15 | `theorem` | [monotone_comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/monotone-comap--e1e6d6ffdf361b0ad4710b2e.md) | 133 | `result-track:e1e6d6ffdf361b0ad4710b2e5a14bd71b844bc422d7119a37f28380c57493d90` |
| 16 | `theorem` | [comap_bot](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-bot--c32d0f5e2a729d27f647c335.md) | 136 | `result-track:c32d0f5e2a729d27f647c335bd53fab524fb78e6e6d6e3d5c0d4bec06272af3d` |
| 17 | `theorem` | [comap_sup](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-sup--e809073eb3f066314b91e712.md) | 140 | `result-track:e809073eb3f066314b91e71209423881a2de04d9ae8bd840f5ba8939a4be759f` |
| 18 | `theorem` | [comap_iSup](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-isup--72b3b8c013df504bde59c82d.md) | 144 | `result-track:72b3b8c013df504bde59c82daf935c0fa923f0d56a021399ca13dd5fc9b8264d` |
| 19 | `theorem` | [map_top](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/map-top--3ef79ba5ee781803881d6646.md) | 148 | `result-track:3ef79ba5ee781803881d66463740b375d301b30d09b13061296db513bd9aba83` |
| 20 | `theorem` | [map_inf](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/map-inf--9c88b62e80bc4744efa84dfc.md) | 152 | `result-track:9c88b62e80bc4744efa84dfc36f76115d3cc813fc982fe41406bdd31ab66aa88` |
| 21 | `theorem` | [map_iInf](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/map-iinf--5463944be12645242fc63274.md) | 156 | `result-track:5463944be12645242fc63274527ebcc6002dd4dd60fd6b3ef6c9fcee6d81f1a7` |
| 22 | `theorem` | [comap_map_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-map-le--b1d6b5e6cef42f245ab6dffe.md) | 159 | `result-track:b1d6b5e6cef42f245ab6dffe8cc5b0a5088c436296fae4bcaf95945fbfcbc421` |
| 23 | `theorem` | [le_map_comap](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/le-map-comap--327f039a49d6d85a26c1f6a9.md) | 162 | `result-track:327f039a49d6d85a26c1f6a9b6634f91b95f987a85c78d0393ff62762d3fc729` |
| 24 | `theorem` | [map_comap_eq_of_surjective](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/map-comap-eq-of-surjective--adecec81b2742f80d1730bc7.md) | 165 | `result-track:adecec81b2742f80d1730bc7da8bf12b9f64cf20ca141a42b5cc0381ab92ed1c` |
| 25 | `theorem` | [map_const](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/map-const--695ed02f0bb68d646880efcb.md) | 172 | `result-track:695ed02f0bb68d646880efcb6d4640734a4ca41b70436fc05ee0de5d3d1e20bb` |
| 26 | `theorem` | [comap_const](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-const--920223144a41d2f0f93dd32f.md) | 175 | `result-track:920223144a41d2f0f93dd32f2777fb344846edea70f1bee9249d0bb2526ef7b0` |
| 27 | `theorem` | [comap_generateFrom](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-generatefrom--e17dd0612a58d6c72cce8352.md) | 178 | `result-track:e17dd0612a58d6c72cce8352df1068160085ca930aeb7840cfc90b2e7dcdbbe3` |
| 28 | `theorem` | [measurable_iff_le_map](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-iff-le-map--adc58e3100f81c27141ca887.md) | 191 | `result-track:adc58e3100f81c27141ca887df9f8b6187a4e813be1a2cbc11654ba2c6a084b1` |
| 29 | `theorem` | [measurable_iff_comap_le](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-iff-comap-le--8a1b141fe9a72d71d4514c20.md) | 197 | `result-track:8a1b141fe9a72d71d4514c2087f3017b5f16094d964b69759e60c7847453c17f` |
| 30 | `lemma` | [MeasurableSpace.comap_le_comap_of_eq_comp](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurablespace-comap-le-comap-of-eq-comp--2b0da663d500f6646b833aa0.md) | 205 | `result-track:2b0da663d500f6646b833aa0f431b70dfcab3fbf9893f056c43f2e0acaaeedf1` |
| 31 | `theorem` | [comap_measurable](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/comap-measurable--85fca96860e29ffef61d8549.md) | 211 | `result-track:85fca96860e29ffef61d8549999527caad7a89e7582492beb2fc0ad8978a5a89` |
| 32 | `lemma` | [measurable_comap_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-comap-iff--2b076866be476e526dc29a2c.md) | 214 | `result-track:2b076866be476e526dc29a2cbe06d5eb4806f65fad7678692a2ee2b702dac35a` |
| 33 | `lemma` | [measurable_comap_iff_right](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-comap-iff-right--f965f7ac8fcc464f99707186.md) | 218 | `result-track:f965f7ac8fcc464f9970718666133ed8c8c891573d96979c7858c808cdb70112` |
| 34 | `theorem` | [Measurable.mono](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-mono--43fc961360ee7411e2feb68c.md) | 222 | `result-track:43fc961360ee7411e2feb68c94f4ea6b846cfac5f9330798bc45599aa4b48b24` |
| 35 | `lemma` | [Measurable.iSup'](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-isup--b30d24e8e1590b480a9e525d.md) | 226 | `result-track:b30d24e8e1590b480a9e525d949f7754190ad479cf47248042a3114ae87a8578` |
| 36 | `lemma` | [Measurable.sup_of_left](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-sup-of-left--3068e7f6e46721964cea0c51.md) | 231 | `result-track:3068e7f6e46721964cea0c51180600847b1bb4990b41a0ce23cb9fcc883fd09e` |
| 37 | `lemma` | [Measurable.sup_of_right](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-sup-of-right--b7a86c9a8aaa2d3a9af75081.md) | 236 | `result-track:b7a86c9a8aaa2d3a9af750817f91afea73d270681f55bb97b9f3521318cb1707` |
| 38 | `theorem` | [measurable_id''](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-id--2ecea5c7eb190ed0b64a88a7.md) | 241 | `result-track:2ecea5c7eb190ed0b64a88a7a6470a538d5f89b809c4cd34cf23980e76e2bf81` |
| 39 | `theorem` | [measurable_from_top](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-from-top--cc7feb75c78701ffcf8117ae.md) | 244 | `result-track:cc7feb75c78701ffcf8117ae55890ebb16659adf926143b1a0b42ea36106012a` |
| 40 | `theorem` | [measurable_generateFrom](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-generatefrom--30b743461609b1865666c28c.md) | 246 | `result-track:30b743461609b1865666c28c0b296226cacc7691872bd3e82c17edc945d4c1fa` |
| 41 | `theorem` | [measurableSet_generateFrom_of_mem_supClosure](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurableset-generatefrom-of-mem-supclosure--49d788ca3bf162dc1dd7ebb4.md) | 250 | `result-track:49d788ca3bf162dc1dd7ebb4d5ed73cc3c3d189bebf50493ab1e90500728bc77` |
| 42 | `theorem` | [Subsingleton.measurable](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/subsingleton-measurable--f8ff64ba6ed2d760596d05c5.md) | 264 | `result-track:f8ff64ba6ed2d760596d05c57b519282b8cbc67c4ad63306dbde90a226310092` |
| 43 | `theorem` | [measurable_of_subsingleton_codomain](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-of-subsingleton-codomain--45367f741b432ed905d00326.md) | 268 | `result-track:45367f741b432ed905d003261b972b142c6715f0140a62e83b4ed2afd0b744af` |
| 44 | `theorem` | [measurable_one](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-one--771971263ba6be543cd07a2f.md) | 272 | `result-track:771971263ba6be543cd07a2f42d651b270085300194bf4dd91b5e454b705caa4` |
| 45 | `theorem` | [measurable_of_empty](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-of-empty--b4c1610d12e21faa8f3bc867.md) | 275 | `result-track:b4c1610d12e21faa8f3bc867975988c91ef3a36817053ecfa24b7b95d8fb15ad` |
| 46 | `theorem` | [measurable_of_empty_codomain](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-of-empty-codomain--41386f8a934df6a299c44c89.md) | 278 | `result-track:41386f8a934df6a299c44c89890a63edcc7fa4a5ee6006870c57bb09c91a2547` |
| 47 | `theorem` | [measurable_const'](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-const--ccc53948ce18a46233bdf331.md) | 283 | `result-track:ccc53948ce18a46233bdf33103e30544001c38e30924ecf7141c5792ffbf85fb` |
| 48 | `theorem` | [measurable_natCast](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-natcast--d6d933c7925efb1ee8115e90.md) | 290 | `result-track:d6d933c7925efb1ee8115e907951bb0ef670e3af3fbfa056d9580790612df796` |
| 49 | `theorem` | [measurable_intCast](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-intcast--d62bc8c5dd5b84d5890a9bc4.md) | 294 | `result-track:d62bc8c5dd5b84d5890a9bc452919387a3c2a051cb3c201802364b9b7e27a08c` |
| 50 | `theorem` | [measurable_of_countable](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-of-countable--6dfda44def30482f3932af92.md) | 297 | `result-track:6dfda44def30482f3932af92c3553d4d01f289af87f2d3d2036e2532c4762cf4` |
| 51 | `theorem` | [measurable_of_finite](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-of-finite--92634739ac99de8bfc1fa67f.md) | 301 | `result-track:92634739ac99de8bfc1fa67f0f04412a3de428c7f1c6e8b387fc6ce0bd133cb6` |
| 52 | `theorem` | [Measurable.iterate](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-iterate--5bfd8fa7ae4db1b0397fcbb6.md) | 309 | `result-track:5bfd8fa7ae4db1b0397fcbb66880187c9fb4be453125a46d5b44bbd56d6c8d50` |
| 53 | `theorem` | [measurableSet_preimage](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurableset-preimage--953607a47797cb2ddbe4b2b6.md) | 316 | `result-track:953607a47797cb2ddbe4b2b60461afa52e7db2c84af1dd862d39be1dd99b7128` |
| 54 | `theorem` | [MeasurableSet.preimage](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurableset-preimage--96283c558579d6ea28db81d7.md) | 320 | `result-track:96283c558579d6ea28db81d7936123534ce41b011adcf156816e5fd9ce0a82e9` |
| 55 | `theorem` | [Measurable.piecewise](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-piecewise--0df158d52d4e52105ac44147.md) | 325 | `result-track:0df158d52d4e52105ac44147464cf96790096bb7beec43dee16abd82e1fc8c76` |
| 56 | `theorem` | [Measurable.ite](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-ite--8bc5529cdd6ff59358bd85dd.md) | 333 | `result-track:8bc5529cdd6ff59358bd85dda6ddfd0679fe46a9c149c5841fdd8bcaababe49f` |
| 57 | `theorem` | [Measurable.indicator](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-indicator--30dec582121aff862d314d8d.md) | 338 | `result-track:30dec582121aff862d314d8daa823a7340cdac837f96cc3e9600d19f21b2f330` |
| 58 | `lemma` | [measurable_indicator_const_iff](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-indicator-const-iff--b0e766adc809ff2e2d2bdf6d.md) | 344 | `result-track:b0e766adc809ff2e2d2bdf6dd440e65e05ce0b52eb34da909397c7171bd54c33` |
| 59 | `theorem` | [measurableSet_mulSupport](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurableset-mulsupport--d72b9f87cdd2cdbeb21ddbd1.md) | 353 | `result-track:d72b9f87cdd2cdbeb21ddbd1471033696364fde2702cc420a86f74d8ca4268a4` |
| 60 | `theorem` | [Measurable.measurable_of_countable_ne](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/measurable-measurable-of-countable-ne--d8a0f25d2d1df0a7968b468f.md) | 359 | `result-track:d8a0f25d2d1df0a7968b468f368abd3fcef773993113ec4bd21628af8ea867eb` |
| 61 | `def` | [IsCountablySpanning](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/iscountablyspanning--07ba52e8526aaf5df34977e8.md) | 378 | `declaration-track:07ba52e8526aaf5df34977e87642e838ec3369da800a4898782e9004ab8c2260` |
| 62 | `theorem` | [isCountablySpanning_measurableSet](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/iscountablyspanning-measurableset--bee8da44c951ca58a9248dbc.md) | 381 | `result-track:bee8da44c951ca58a9248dbcb26c62166367e1309956cbc74f02feb984a337f4` |
| 63 | `lemma` | [IsCountablySpanning.prod](../../../../../mathematics/Analysis/MeasureTheory/Basic/Variant4c7baae7d76943c79b125c15dfeba367bcdc0b4103f358540187a5cee159047d.lean/declarations/iscountablyspanning-prod--a1818a1be354baa3e34f22d3.md) | 386 | `result-track:a1818a1be354baa3e34f22d317bdff986bd7ac68ff67000f8ea6010ac895831b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
