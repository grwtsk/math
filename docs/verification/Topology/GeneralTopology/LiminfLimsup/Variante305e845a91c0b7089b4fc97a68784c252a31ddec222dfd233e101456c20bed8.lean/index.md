# Verification target: GRWTSK.Topology.GeneralTopology.LiminfLimsup.Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6bb6f68696a7a7b28e6d53db60694dffcc5045f9",
  "lexical_observation_count": 56,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6bb6f68696a7a7b28e6d53db60694dffcc5045f9`.

Source path: `GRWTSK/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.BigOperators.Intervals` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.BigOperators.Order` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.IndicatorFunction` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Order.LiminfLimsup` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Archimedean` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.CountableInter` — import line 17; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Order.Basic` — import line 18; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [isBounded_le_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/isbounded-le-nhds--01982e5eaec8860b3cb7b1fd.md) | 44 | `result-track:01982e5eaec8860b3cb7b1fd7d64b9724444f87899b54e1b753c0b2f3f238967` |
| 2 | `theorem` | [Filter.Tendsto.isBoundedUnder_le](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-isboundedunder-le--90358c2befb43a67b6b9d391.md) | 49 | `result-track:90358c2befb43a67b6b9d39166ecc26e59e9b7ef6bbf34a7c24dd0b19e193682` |
| 3 | `theorem` | [Filter.Tendsto.bddAbove_range_of_cofinite](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-bddabove-range-of-cofinite--88d99d38e9453b91fe57a8e2.md) | 54 | `result-track:88d99d38e9453b91fe57a8e228e61708c1dc47f4c9d2e2b53932c45680567dc0` |
| 4 | `theorem` | [Filter.Tendsto.bddAbove_range](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-bddabove-range--1824ba66f97799b7b96826fc.md) | 59 | `result-track:1824ba66f97799b7b96826fc556c040953435a238d395acbe1ca730dce5cef46` |
| 5 | `theorem` | [isCobounded_ge_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/iscobounded-ge-nhds--f81c95c464db119d272adef5.md) | 64 | `result-track:f81c95c464db119d272adef5f22437baae3ac5b03e1108974c49ad8139c47ed4` |
| 6 | `theorem` | [Filter.Tendsto.isCoboundedUnder_ge](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-iscoboundedunder-ge--cb8e2068706e96dc48304945.md) | 68 | `result-track:cb8e2068706e96dc48304945c91f6113c8d70eeb894a51038aa5a8b10844c389` |
| 7 | `theorem` | [isBounded_le_atBot](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/isbounded-le-atbot--df602477e6fc84813779b85f.md) | 73 | `result-track:df602477e6fc84813779b85f7aecb5260c757a1ad3423a00b7078dc060d97017` |
| 8 | `theorem` | [Filter.Tendsto.isBoundedUnder_le_atBot](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-isboundedunder-le-atbot--40b5dd616eb75cbfbf1affa2.md) | 78 | `result-track:40b5dd616eb75cbfbf1affa244973afdaff20373e660863cf6259d031dd166d0` |
| 9 | `theorem` | [bddAbove_range_of_tendsto_atTop_atBot](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/bddabove-range-of-tendsto-attop-atbot--b0ee30a0dbd02abd84287b6e.md) | 83 | `result-track:b0ee30a0dbd02abd84287b6e1640e321b912b6e847e6f2594da429d1ad02246c` |
| 10 | `theorem` | [isBounded_ge_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/isbounded-ge-nhds--3ebdded57fd2ebe510c612e9.md) | 94 | `result-track:3ebdded57fd2ebe510c612e9e61ba8b89ff3be8c71b138bea52fb993ecbb2a6e` |
| 11 | `theorem` | [Filter.Tendsto.isBoundedUnder_ge](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-isboundedunder-ge--21ff9f7cdb3b94aa519e6042.md) | 98 | `result-track:21ff9f7cdb3b94aa519e60424ef30ec10402ce9b8634540cfbca823208a4ccb2` |
| 12 | `theorem` | [Filter.Tendsto.bddBelow_range_of_cofinite](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-bddbelow-range-of-cofinite--b69885409db43163216bc428.md) | 103 | `result-track:b69885409db43163216bc428a87700d3a1ac47ebce9c5b7aa6165fc09509c6be` |
| 13 | `theorem` | [Filter.Tendsto.bddBelow_range](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-bddbelow-range--f903ed6404b942c9e354f7cf.md) | 108 | `result-track:f903ed6404b942c9e354f7cf5eda265417d49d0ac7771b6f896878b3c266aea3` |
| 14 | `theorem` | [isCobounded_le_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/iscobounded-le-nhds--387e449944078b0d0442f0d1.md) | 113 | `result-track:387e449944078b0d0442f0d1c9b62d6bc28a2bac18d31a932f280604335eb724` |
| 15 | `theorem` | [Filter.Tendsto.isCoboundedUnder_le](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-iscoboundedunder-le--d8975aac8df2262ea12a505b.md) | 117 | `result-track:d8975aac8df2262ea12a505b1eef1bcfef2178222e5fe8276acf8a30c6306779` |
| 16 | `theorem` | [isBounded_ge_atTop](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/isbounded-ge-attop--3dd57346a7bc5e8023335ac5.md) | 122 | `result-track:3dd57346a7bc5e8023335ac5722b265c72445675f4327f5bc7fe1783f63380f3` |
| 17 | `theorem` | [Filter.Tendsto.isBoundedUnder_ge_atTop](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-isboundedunder-ge-attop--69da33d2ab38e56386e4d072.md) | 127 | `result-track:69da33d2ab38e56386e4d07207ce1e2cae3f353235d99e3919824888a7a0fb70` |
| 18 | `theorem` | [bddBelow_range_of_tendsto_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/bddbelow-range-of-tendsto-attop-attop--0543b5eb71440bd776fc2a9d.md) | 132 | `result-track:0543b5eb71440bd776fc2a9d1c9598c0bf3d57081dc7016355dc655a87f4dbdb` |
| 19 | `theorem` | [lt_mem_sets_of_limsSup_lt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/lt-mem-sets-of-limssup-lt--0a958eac145f3c5e9d0240dc.md) | 143 | `result-track:0a958eac145f3c5e9d0240dc1f7fc4a7f25d0e416c4dbc898b4bbff7b7101a64` |
| 20 | `theorem` | [gt_mem_sets_of_limsInf_gt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/gt-mem-sets-of-limsinf-gt--32649585c118409b3a69895a.md) | 150 | `result-track:32649585c118409b3a69895a893118460134f09332a293743b54fe3470a043e0` |
| 21 | `theorem` | [le_nhds_of_limsSup_eq_limsInf](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/le-nhds-of-limssup-eq-limsinf--04fc8f71ae5f0cf85e1102a9.md) | 160 | `result-track:04fc8f71ae5f0cf85e1102a9ea16be42c9064d82cbb258908696c8d8d619f73a` |
| 22 | `theorem` | [limsSup_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/limssup-nhds--d61089591eda56655ff910be.md) | 167 | `result-track:d61089591eda56655ff910bef99d2dc4ba8e94a014e225b4d24feb7304ddea27` |
| 23 | `theorem` | [limsInf_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/limsinf-nhds--d4c3bc1e3a1287c00b941e9c.md) | 178 | `result-track:d4c3bc1e3a1287c00b941e9c8c17e3ba0747c13f2f800aaec80126863471d1ac` |
| 24 | `theorem` | [limsInf_eq_of_le_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/limsinf-eq-of-le-nhds--fc2e458760e5efab9d140f25.md) | 184 | `result-track:fc2e458760e5efab9d140f257ad8ece90f0cb2bfe61e4b122f9c78cf729aabe1` |
| 25 | `theorem` | [limsSup_eq_of_le_nhds](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/limssup-eq-of-le-nhds--556882e1771d585b1c51f1b9.md) | 199 | `result-track:556882e1771d585b1c51f1b93a7d28e48ab2c52b1272fc93b0ecac4a1bcd1205` |
| 26 | `theorem` | [Filter.Tendsto.limsup_eq](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-limsup-eq--8a7478cf011a9979f8845592.md) | 205 | `result-track:8a7478cf011a9979f8845592c2ba3895b71f5c5faa4adcbae4c9b7fe6a828ac0` |
| 27 | `theorem` | [Filter.Tendsto.liminf_eq](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/filter-tendsto-liminf-eq--09f41e90c3fa061edb6386ef.md) | 211 | `result-track:09f41e90c3fa061edb6386efdc47f9867025a6dea70418ba65d90fd2733feb0e` |
| 28 | `theorem` | [tendsto_of_liminf_eq_limsup](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/tendsto-of-liminf-eq-limsup--81c3cbe2c386619d33b993ec.md) | 218 | `result-track:81c3cbe2c386619d33b993ec7e72d61474db1e324ed2a0d5abaebfc193dc2355` |
| 29 | `theorem` | [tendsto_of_le_liminf_of_limsup_le](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/tendsto-of-le-liminf-of-limsup-le--e072bc9c1853d3768fff49c1.md) | 226 | `result-track:e072bc9c1853d3768fff49c17b1be16aae679ca80008a9f5db52229f29446002` |
| 30 | `theorem` | [tendsto_of_no_upcrossings](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/tendsto-of-no-upcrossings--dc6cc1f898a27a2367d281e2.md) | 240 | `result-track:dc6cc1f898a27a2367d281e2624653785c8c033d4fdace7eba03e330c44838ae` |
| 31 | `theorem` | [eventually_le_limsup](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/eventually-le-limsup--5b717e985c33074923c05d7a.md) | 262 | `result-track:5b717e985c33074923c05d7a7ea3bc0d7d49b538aad359e5bf8a1356904144dd` |
| 32 | `theorem` | [eventually_liminf_le](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/eventually-liminf-le--24fa2e1946a71ed1d8427822.md) | 281 | `result-track:24fa2e1946a71ed1d8427822a7d622b33cfba4c21f972d6839a5e7ea3a427298` |
| 33 | `theorem` | [limsup_eq_bot](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/limsup-eq-bot--3f188cdd03a074d5c86d631f.md) | 294 | `result-track:3f188cdd03a074d5c86d631fbeac13b6e01004c0a652b02fd01d75a0ffc76d72` |
| 34 | `theorem` | [liminf_eq_top](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/liminf-eq-top--c81366265151c0cda8da2c51.md) | 304 | `result-track:c81366265151c0cda8da2c518c3b4b052bcaaeb4ec9a1d7b01075d138e9a6a8c` |
| 35 | `theorem` | [Antitone.map_limsSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/antitone-map-limssup-of-continuousat--ed06113a547b2d105e8e0c95.md) | 321 | `result-track:ed06113a547b2d105e8e0c9506787b7f8d910ac1f5fef553400e2edd2b026a38` |
| 36 | `theorem` | [Antitone.map_limsup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/antitone-map-limsup-of-continuousat--363efe786d1b6b70ed70d71e.md) | 373 | `result-track:363efe786d1b6b70ed70d71e23dfb629659073c3b0ce54660e4b3db3f365269c` |
| 37 | `theorem` | [Antitone.map_limsInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/antitone-map-limsinf-of-continuousat--88ad979dd282dd6f535c25d0.md) | 384 | `result-track:88ad979dd282dd6f535c25d0e825dd259fa6fa3fe0a3451d91905bf705b5745a` |
| 38 | `theorem` | [Antitone.map_liminf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/antitone-map-liminf-of-continuousat--b25ba6f8d111a497c946f9a7.md) | 395 | `result-track:b25ba6f8d111a497c946f9a722d806d51d9e8663c463a3dc7697fce9b1e6e9a1` |
| 39 | `theorem` | [Monotone.map_limsSup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/monotone-map-limssup-of-continuousat--26a734bb74d50a994bb6f1c3.md) | 406 | `result-track:26a734bb74d50a994bb6f1c3b23d253024468152efcd6c7d8b816c35117b407f` |
| 40 | `theorem` | [Monotone.map_limsup_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/monotone-map-limsup-of-continuousat--4ef56903111b0dc69b2b8219.md) | 417 | `result-track:4ef56903111b0dc69b2b8219643758bc314cbe41d233b929f8515d599bb7ee7e` |
| 41 | `theorem` | [Monotone.map_limsInf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/monotone-map-limsinf-of-continuousat--7964d95378e7d13ed12d3a21.md) | 428 | `result-track:7964d95378e7d13ed12d3a21fa0411c63246eed480cba884e8ec1d4769b744cc` |
| 42 | `theorem` | [Monotone.map_liminf_of_continuousAt](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/monotone-map-liminf-of-continuousat--566fe91d4a8ac9891aac4136.md) | 439 | `result-track:566fe91d4a8ac9891aac4136fb0a04618022742338a5cdbbf59fba37ec45e792` |
| 43 | `theorem` | [iInf_eq_of_forall_le_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/iinf-eq-of-forall-le-of-tendsto--bdd38326c332f2a45deee0b3.md) | 457 | `result-track:bdd38326c332f2a45deee0b343e90571eedf5f6e6cea77d362b730737cb612b7` |
| 44 | `theorem` | [iSup_eq_of_forall_le_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/isup-eq-of-forall-le-of-tendsto--1665e819e99ae3fcd54fb033.md) | 463 | `result-track:1665e819e99ae3fcd54fb033cd576dc32f6e26a2e63de1c1b4edfb951832c7b9` |
| 45 | `theorem` | [iUnion_Ici_eq_Ioi_of_lt_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/iunion-ici-eq-ioi-of-lt-of-tendsto--d3a4a00364d887ceb7e58cb0.md) | 468 | `result-track:d3a4a00364d887ceb7e58cb04391022fb3bf57d0b236b30a2e3d1954f303daf2` |
| 46 | `theorem` | [iUnion_Iic_eq_Iio_of_lt_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/iunion-iic-eq-iio-of-lt-of-tendsto--9f5c5fe8e1067ceb060e12be.md) | 482 | `result-track:9f5c5fe8e1067ceb060e12be2aa8daef69544a3c5c09def6f25fb4ae76ec4ebc` |
| 47 | `theorem` | [limsup_eq_tendsto_sum_indicator_nat_atTop](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/limsup-eq-tendsto-sum-indicator-nat-attop--bfc1a67cd94ed42873f103ff.md) | 494 | `result-track:bfc1a67cd94ed42873f103fffa2d516f788b7985765f77803cb7f3c3b125e2f0` |
| 48 | `theorem` | [limsup_eq_tendsto_sum_indicator_atTop](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/limsup-eq-tendsto-sum-indicator-attop--075d357725d437cc5207330b.md) | 552 | `result-track:075d357725d437cc5207330bff47fd4c7ef74c66f3baab90f9cf5dd25b9dc86d` |
| 49 | `lemma` | [limsup_const_add](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/limsup-const-add--f1aea6ce37f06a46f8c47890.md) | 574 | `result-track:f1aea6ce37f06a46f8c478903c767b87f77ffa721adfe0fec755bba30383c9e0` |
| 50 | `lemma` | [limsup_add_const](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/limsup-add-const--20bc072785d892f54d5b6797.md) | 582 | `result-track:20bc072785d892f54d5b679781a818480a60080be69a09c17a0ee9d6dfdb1223` |
| 51 | `lemma` | [liminf_const_add](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/liminf-const-add--df8eea1d5d92deee0c5dc0ec.md) | 591 | `result-track:df8eea1d5d92deee0c5dc0ec850cb4a78d551b01b26161b95010b24594533aa5` |
| 52 | `lemma` | [liminf_add_const](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/liminf-add-const--943a7b44e49822fdec5272ff.md) | 599 | `result-track:943a7b44e49822fdec5272ff12c58f95c65f9e8c8e6ba54bd1dcd9b1321fef43` |
| 53 | `lemma` | [limsup_const_sub](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/limsup-const-sub--507fa2096d8885c739fb6492.md) | 608 | `result-track:507fa2096d8885c739fb6492ae48fd3253cb3e8813ec18160036e4d8f5bc2a62` |
| 54 | `lemma` | [limsup_sub_const](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/limsup-sub-const--54dbb9a9c5e546f2f85b82bb.md) | 617 | `result-track:54dbb9a9c5e546f2f85b82bb8fa05dc0d994acf9fbbc1654d36f6f9584587080` |
| 55 | `lemma` | [liminf_const_sub](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/liminf-const-sub--f6c7b6fb8b1873c73351603d.md) | 626 | `result-track:f6c7b6fb8b1873c73351603d27f024110183676f9d86bf60bf075d30489d9d0c` |
| 56 | `lemma` | [liminf_sub_const](../../../../../mathematics/Topology/GeneralTopology/LiminfLimsup/Variante305e845a91c0b7089b4fc97a68784c252a31ddec222dfd233e101456c20bed8.lean/declarations/liminf-sub-const--540a1201069f4e992659e258.md) | 635 | `result-track:540a1201069f4e992659e258b51b53737075ae44f03bc5512c394d254390685a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
