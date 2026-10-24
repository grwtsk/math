# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Nodup.Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b87a513d25d7457617e3e6b24e611948c27a0b41",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b87a513d25d7457617e3e6b24e611948c27a0b41`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.List.Nodup` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Bind` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Range` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup--95c4bbc154716f283ce16be7.md) | 34 | `declaration-track:95c4bbc154716f283ce16be7a468e20d16a67af4efc9ce6c0dd24c6ded3a8e6a` |
| 2 | `theorem` | [coe_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/coe-nodup--4c17bcadf7c3520138e5f6dc.md) | 39 | `result-track:4c17bcadf7c3520138e5f6dca7351df90af60392e26a27606510190d793ff3a8` |
| 3 | `theorem` | [nodup_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-zero--4352c68ee46e479c2e065774.md) | 44 | `result-track:4352c68ee46e479c2e0657742b805d4cf4180126927dd6c3df5905f10980f196` |
| 4 | `theorem` | [nodup_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-cons--8edfb8a60947dc2ede346882.md) | 49 | `result-track:8edfb8a60947dc2ede34688284273fa41fc6ccbcc5a9b51ff159b8a2d0161ba4` |
| 5 | `theorem` | [Nodup.cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-cons--a311464b5f7c5d3361b09900.md) | 53 | `result-track:a311464b5f7c5d3361b09900151c1a6fc8f5967c854cff73ba3be7a951e6c62c` |
| 6 | `theorem` | [nodup_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-singleton--aa8adaf956db310e3a56bb60.md) | 58 | `result-track:aa8adaf956db310e3a56bb60f21e6bd20dc3967ae4b91f2a99c79291ca0b6894` |
| 7 | `theorem` | [Nodup.of_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-of-cons--dd0dedc20374e8bf30ec76de.md) | 62 | `result-track:dd0dedc20374e8bf30ec76dec1ade295357d62d2d615c1ba7f4932125da487b5` |
| 8 | `theorem` | [Nodup.not_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-not-mem--5b8899ef529eca83c41d3c44.md) | 66 | `result-track:5b8899ef529eca83c41d3c4400a50c9ea8077f94d10716f45b0aaddc282f63d5` |
| 9 | `theorem` | [nodup_of_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-of-le--a84ca22e27f5d604fbc0a67c.md) | 70 | `result-track:a84ca22e27f5d604fbc0a67ce07fff383a2b00d62b7d52cceaef5361b841837c` |
| 10 | `theorem` | [not_nodup_pair](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/not-nodup-pair--97f23950b5332b44c5216b98.md) | 74 | `result-track:97f23950b5332b44c5216b98e58f2bcfaaed06e996c8f5e3170830bfc8fbb1fc` |
| 11 | `theorem` | [nodup_iff_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-iff-le--88f50cffc356bd59d80f2c40.md) | 78 | `result-track:88f50cffc356bd59d80f2c401aa900d5967a3a5418d08feed7deca76e0bf6c69` |
| 12 | `theorem` | [nodup_iff_ne_cons_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-iff-ne-cons-cons--f02f29b43261fcfcd014eca0.md) | 83 | `result-track:f02f29b43261fcfcd014eca07e073563612a6cced962fc56bb10c742f58689c7` |
| 13 | `theorem` | [nodup_iff_count_le_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-iff-count-le-one--511646c2cc1aada89df84938.md) | 90 | `result-track:511646c2cc1aada89df84938a20f62c375f5b277a9af0805cc41478c17312462` |
| 14 | `theorem` | [count_eq_one_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/count-eq-one-of-mem--b4e430889f9a17755379454a.md) | 97 | `result-track:b4e430889f9a17755379454a1d6d32798043a69d0d016e2ce96bc078a05d2851` |
| 15 | `theorem` | [count_eq_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/count-eq-of-nodup--6a62dd4ffb926302ab4e4209.md) | 102 | `result-track:6a62dd4ffb926302ab4e42090da44e187a68c7bde50084ff0069668582780e54` |
| 16 | `theorem` | [nodup_iff_pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-iff-pairwise--3e2be779d0c97d0bb2f2e340.md) | 109 | `result-track:3e2be779d0c97d0bb2f2e340049e64155b34ad24b3b99287cf5bbb46ba62f8af` |
| 17 | `theorem` | [Nodup.pairwise](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-pairwise--ce73c15cdde90bc93282d352.md) | 113 | `result-track:ce73c15cdde90bc93282d3524a75d1b00c7cb0e37cdb518d03ab2008c56cc619` |
| 18 | `theorem` | [Pairwise.forall](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/pairwise-forall--3ecd5f85033fde0fbc5e5b1a.md) | 117 | `result-track:3ecd5f85033fde0fbc5e5b1ab9753629cb0cd6d3b3967e262203616e876e32d6` |
| 19 | `theorem` | [nodup_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-add--33ab85816b8c4961ceda3fe2.md) | 123 | `result-track:33ab85816b8c4961ceda3fe2b3872e6486f7fba5096ba513b1f20316060dfb59` |
| 20 | `theorem` | [disjoint_of_nodup_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/disjoint-of-nodup-add--9799278c071f0b9c600607ec.md) | 127 | `result-track:9799278c071f0b9c600607ecbd546b0e193d669d84db6b69328d4413b525a0c7` |
| 21 | `theorem` | [Nodup.add_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-add-iff--5ff955ea3d54db21da18cacc.md) | 131 | `result-track:5ff955ea3d54db21da18cacc35a96217e3433a0b03e14815548cf10258e74dfa` |
| 22 | `theorem` | [Nodup.of_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-of-map--bdbb4bf9167133bc5f4a1d6a.md) | 135 | `result-track:bdbb4bf9167133bc5f4a1d6ac96548738f5436cea8e8156509884117c3c4abc2` |
| 23 | `theorem` | [Nodup.map_on](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-map-on--0582f05d0f9d017b0369b74c.md) | 139 | `result-track:0582f05d0f9d017b0369b74c85ede49ec594e4efdc637f6268595f808fec7c31` |
| 24 | `theorem` | [Nodup.map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-map--c72864ef766e420e4f8d665c.md) | 144 | `result-track:c72864ef766e420e4f8d665c37399c9e4c9f081a788c71f2a14fce8e90cffc3c` |
| 25 | `theorem` | [inj_on_of_nodup_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/inj-on-of-nodup-map--19551ac877a2bf9497e8eefd.md) | 148 | `result-track:19551ac877a2bf9497e8eefd957f11063124e84229c2c9576cca607a7f9cee9a` |
| 26 | `theorem` | [nodup_map_iff_inj_on](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-map-iff-inj-on--5938524a279b593e3eca4afb.md) | 153 | `result-track:5938524a279b593e3eca4afb5c1b565da96bbff3ae45e847a5b878e90a2b831b` |
| 27 | `theorem` | [Nodup.filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-filter--2eb9726ce19d4bf703a8c7bf.md) | 158 | `result-track:2eb9726ce19d4bf703a8c7bf514d9795c8cbf295a44751641ab263067e853a54` |
| 28 | `theorem` | [nodup_attach](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-attach--059d65c8307aa03a80ead695.md) | 163 | `result-track:059d65c8307aa03a80ead695bb59bf117477ec29810984351677ddb6fea04602` |
| 29 | `theorem` | [Nodup.pmap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-pmap--35b1fc62c05232a4d021fa2a.md) | 167 | `result-track:35b1fc62c05232a4d021fa2a66914748a6be22f487d91a58e185523cddf4b1dd` |
| 30 | `instance` | [nodupDecidable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodupdecidable--1dc3ca367be83d8b21c9a6d4.md) | 172 | `declaration-track:1dc3ca367be83d8b21c9a6d4f8ff08de7d175bceb496c2ce8297164d3b333417` |
| 31 | `theorem` | [Nodup.erase_eq_filter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-erase-eq-filter--43d038eb9739d1defca493f6.md) | 176 | `result-track:43d038eb9739d1defca493f6b36b97235cb2d673901f92a69ba30f3b09c4a026` |
| 32 | `theorem` | [Nodup.erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-erase--f0a7daee4069e349ae5863c7.md) | 182 | `result-track:f0a7daee4069e349ae5863c7dfb61163217f27c1a09cd906d350488a42a9609c` |
| 33 | `theorem` | [Nodup.mem_erase_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-mem-erase-iff--205446d92b4615057953dfc5.md) | 186 | `result-track:205446d92b4615057953dfc5f043175ac906d65ae1475e063e38106ff7f382be` |
| 34 | `theorem` | [Nodup.not_mem_erase](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-not-mem-erase--eea6846dc6a931c615029679.md) | 191 | `result-track:eea6846dc6a931c6150296794493440d2c736a3dd6b341f35d860470b3380ad8` |
| 35 | `theorem` | [Nodup.product](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-product--b4fa087572bafe10e064303c.md) | 195 | `result-track:b4fa087572bafe10e064303cc99712b0cf9a0bf15eca6a5151478497cf085932` |
| 36 | `theorem` | [Nodup.sigma](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-sigma--55441a3133606d2a49310d30.md) | 199 | `result-track:55441a3133606d2a49310d30d3d98b0fa7a77994ac7cc0f9cff858b545105f0c` |
| 37 | `theorem` | [Nodup.filterMap](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-filtermap--c034553821ac823b49e436a6.md) | 206 | `result-track:c034553821ac823b49e436a6f260154811f77734f23eaefa6c3e5c8a51fe0a28` |
| 38 | `theorem` | [nodup_range](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-range--696c1d755267d85a326c3565.md) | 211 | `result-track:696c1d755267d85a326c3565e3045d5d739b08a4866fd87d23a0a762fdb5a54f` |
| 39 | `theorem` | [Nodup.inter_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-inter-left--9247f79f94af3726e2813a62.md) | 215 | `result-track:9247f79f94af3726e2813a62369188e98ca327d294a42265ec55f1c06cfc2560` |
| 40 | `theorem` | [Nodup.inter_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-inter-right--9aa31f8da26e53f7038f7a20.md) | 219 | `result-track:9aa31f8da26e53f7038f7a20c88b9dd04263e8a07a8a144c6cc4ba3eb31ec97b` |
| 41 | `theorem` | [nodup_union](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-union--1b79521ae52b0d6505026e47.md) | 224 | `result-track:1b79521ae52b0d6505026e474f68fa936e6008d3a44e03b7d4860f03d3ab5289` |
| 42 | `theorem` | [nodup_bind](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-bind--8cf879ba4dd6158ae897cebd.md) | 232 | `result-track:8cf879ba4dd6158ae897cebdfaa5bdeebb543a93ae2e9f423952fd0815d124a4` |
| 43 | `theorem` | [Nodup.ext](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/nodup-ext--5264c1800a076b6ddc0898dc.md) | 241 | `result-track:5264c1800a076b6ddc0898dcde6918fb2b4a0abcfb66ae7cd410241891ba8dd6` |
| 44 | `theorem` | [le_iff_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/le-iff-subset--70debc308b61110ec5f398cb.md) | 245 | `result-track:70debc308b61110ec5f398cbe8602de940e1c83fd60e3525f020cd11bd2d44bd` |
| 45 | `theorem` | [range_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/range-le--928d24d18d32f9f9d6eda270.md) | 249 | `result-track:928d24d18d32f9f9d6eda27067dc68b0d68114a244218f1fad4e929446f33328` |
| 46 | `theorem` | [mem_sub_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/mem-sub-of-nodup--3bef9c9b025acbcf22943337.md) | 253 | `result-track:3bef9c9b025acbcf2294333755003cad604d8150a32c290feb4ce4f660c2a33f` |
| 47 | `theorem` | [map_eq_map_of_bij_of_nodup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Nodup/Variant6215f503d4ad3dbe9165a1521d423e569199642f17beaa5978e80be8537278cd.lean/declarations/map-eq-map-of-bij-of-nodup--73ee7e8228d46b0ac552b74b.md) | 263 | `result-track:73ee7e8228d46b0ac552b74b800b7a169a4c7ef77fa78036607e43e56d024e65` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
