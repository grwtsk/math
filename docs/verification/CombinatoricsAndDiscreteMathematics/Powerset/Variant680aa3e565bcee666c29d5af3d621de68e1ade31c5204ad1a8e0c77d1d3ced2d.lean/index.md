# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "331a456b907a692ecc21ab6a0aeae1a050fc1bd1",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `331a456b907a692ecc21ab6a0aeae1a050fc1bd1`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Powerset` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powerset--85bcbafeed52d4244e520222.md) | 36 | `declaration-track:85bcbafeed52d4244e520222885f251a0d385afb8d52e9150a6b9bbc8c2ca3dc` |
| 2 | `theorem` | [mem_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/mem-powerset--a3666a645c985a91a642c368.md) | 42 | `result-track:a3666a645c985a91a642c368df669e0dc532452da0b58a7e503a17c446527412` |
| 3 | `theorem` | [coe_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/coe-powerset--095da0b90c77a73c8db3175c.md) | 49 | `result-track:095da0b90c77a73c8db3175cec49828f5872a3b408d1bd460eb6c21b703546cf` |
| 4 | `theorem` | [empty_mem_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/empty-mem-powerset--10ecf9c7eace92c0f4c20e69.md) | 56 | `result-track:10ecf9c7eace92c0f4c20e696705ad6d5371a1e0b18f49c347966eeaf0b8830b` |
| 5 | `theorem` | [mem_powerset_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/mem-powerset-self--775bab2fdcaf4b1f805073d3.md) | 61 | `result-track:775bab2fdcaf4b1f805073d30c77b8fd73042b3e455fdf6515844cba7e2b6028` |
| 6 | `theorem` | [powerset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powerset-nonempty--bc25a16d74a8142c0e1889d1.md) | 65 | `result-track:bc25a16d74a8142c0e1889d1a4e42a1ec73c3ddd66c3c787c1c76c3308951221` |
| 7 | `theorem` | [powerset_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powerset-mono--4f06c6680871f052ecda5458.md) | 70 | `result-track:4f06c6680871f052ecda54581fe66e5d0511033ead254266f363cdd03b0019a9` |
| 8 | `theorem` | [powerset_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powerset-injective--90a3e66de4ae0edeba34e411.md) | 75 | `result-track:90a3e66de4ae0edeba34e4117e8ad2b294a5221e3c60fe03aeae92b90a7745c5` |
| 9 | `theorem` | [powerset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powerset-inj--60b4f343413296fd60cfde20.md) | 80 | `result-track:60b4f343413296fd60cfde20ae629adbba501ad588122dca028e00967442e7a6` |
| 10 | `theorem` | [powerset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powerset-empty--4d81a65afdaabb7568edab6b.md) | 85 | `result-track:4d81a65afdaabb7568edab6bb1e0325225484db28dee0ef51927a9eee7ecf2fd` |
| 11 | `theorem` | [powerset_eq_singleton_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powerset-eq-singleton-empty--f8104fde6e744e5c9b42ae97.md) | 90 | `result-track:f8104fde6e744e5c9b42ae97beadd3a218c53d9bd6e11a1dc214e8ff6aedf9d5` |
| 12 | `theorem` | [card_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/card-powerset--9c707fac627a611019d59f4b.md) | 96 | `result-track:9c707fac627a611019d59f4b4dfacfdf81998163cc352d077257d714b0e8b4f5` |
| 13 | `theorem` | [not_mem_of_mem_powerset_of_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/not-mem-of-mem-powerset-of-not-mem--ac2e6c3f9f8e103fd325e345.md) | 100 | `result-track:ac2e6c3f9f8e103fd325e345b9926feca5636be5e1b3c4392022e7ed458941b3` |
| 14 | `theorem` | [powerset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powerset-insert--91e596bbaa5789708126acd4.md) | 106 | `result-track:91e596bbaa5789708126acd4d086c3072146c09a5e388dd7373f0920f97e5e12` |
| 15 | `instance` | [decidableExistsOfDecidableSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/decidableexistsofdecidablesubsets--8b36f45418a2cb0aa2eb2bea.md) | 124 | `declaration-track:8b36f45418a2cb0aa2eb2bead3797036620b7640a64a46486f0eff7e9328b967` |
| 16 | `instance` | [decidableForallOfDecidableSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/decidableforallofdecidablesubsets--1eb2b57ee07a0e2ea2cdf3c9.md) | 131 | `declaration-track:1eb2b57ee07a0e2ea2cdf3c95f631db75d25feef4c5ab98991ae164561d285d9` |
| 17 | `def` | [decidableExistsOfDecidableSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/decidableexistsofdecidablesubsets--869e596e11e5cab620fc3304.md) | 139 | `declaration-track:869e596e11e5cab620fc33044cfd4dadc6de20f05192c49bd4b43e8f483ee2ac` |
| 18 | `def` | [decidableForallOfDecidableSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/decidableforallofdecidablesubsets--6fe7644b8bdef37b72fd0b40.md) | 146 | `declaration-track:6fe7644b8bdef37b72fd0b403fceca69c271fff3da86840ecb3412c2b1bb604a` |
| 19 | `def` | [ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/ssubsets--370fc8ac524a119d6a670bb2.md) | 158 | `declaration-track:370fc8ac524a119d6a670bb28e29f060d82c346a48436b991db5292505da54f6` |
| 20 | `theorem` | [mem_ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/mem-ssubsets--3550d082e6cf2dcfc0987e7f.md) | 163 | `result-track:3550d082e6cf2dcfc0987e7f9011d14728fd5c269e4712bf7d81522239fe88f8` |
| 21 | `theorem` | [empty_mem_ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/empty-mem-ssubsets--064f211ab3afc783426a6fe4.md) | 167 | `result-track:064f211ab3afc783426a6fe4cd3c765390393d1ecb76374f9cf72896dec384c9` |
| 22 | `instance` | [decidableExistsOfDecidableSSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/decidableexistsofdecidablessubsets--728b25935772bc5be53a417e.md) | 172 | `declaration-track:728b25935772bc5be53a417e7a2b6e8ad7c4f67ac030a2d6eb068ee9ed585993` |
| 23 | `instance` | [decidableForallOfDecidableSSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/decidableforallofdecidablessubsets--b3f394ec0a71ab82a8773510.md) | 179 | `declaration-track:b3f394ec0a71ab82a8773510167b99848d5176fa0a87ddf8408554c4a7f1b0d4` |
| 24 | `def` | [decidableExistsOfDecidableSSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/decidableexistsofdecidablessubsets--159e67a25c67cf189ce98e76.md) | 187 | `declaration-track:159e67a25c67cf189ce98e7669fe6f556ca8736598fbfd3e87102acf4436735a` |
| 25 | `def` | [decidableForallOfDecidableSSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/decidableforallofdecidablessubsets--95117ee003fbf96305e47e45.md) | 194 | `declaration-track:95117ee003fbf96305e47e45c69e755b5f5550577d94dfaa6b685154ac598a9a` |
| 26 | `def` | [powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powersetlen--478d98c3a9d8307d33b98f63.md) | 205 | `declaration-track:478d98c3a9d8307d33b98f630dec2bde1e9a174e935128aa31e1f6d2819a8673` |
| 27 | `theorem` | [mem_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/mem-powersetlen--3122f882be5e98cd168aa97b.md) | 211 | `result-track:3122f882be5e98cd168aa97b8e1c9191da998ecc7ed826c3ff2768cfbc97b071` |
| 28 | `theorem` | [powersetLen_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powersetlen-mono--a92b7e2baf29b002caf091cb.md) | 216 | `result-track:a92b7e2baf29b002caf091cb10f31797a5ea38caf6a32d2c19cfd501d8bf03a1` |
| 29 | `theorem` | [card_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/card-powersetlen--66f6104253a26830550141d7.md) | 222 | `result-track:66f6104253a26830550141d7ece6bc9aba6af62c3ec7267347fb029c6889af88` |
| 30 | `theorem` | [powersetLen_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powersetlen-zero--51bb90eec5f390192c41d1bd.md) | 227 | `result-track:51bb90eec5f390192c41d1bd5eccd4de038f0933882979a3776ffdb9ec571cfd` |
| 31 | `theorem` | [powersetLen_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powersetlen-empty--e6affd4baf67730e55be7d18.md) | 236 | `result-track:e6affd4baf67730e55be7d185cdb627e1a882dc34ca1afaecca25f599616a8fc` |
| 32 | `theorem` | [powersetLen_eq_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powersetlen-eq-filter--2941a6a76bd839f1a6675cc9.md) | 240 | `result-track:2941a6a76bd839f1a6675cc9d7379b0447bf788e8bb724d32e09944fd5696cd8` |
| 33 | `theorem` | [powersetLen_succ_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powersetlen-succ-insert--14a8d4cb99d0b404d0455468.md) | 246 | `result-track:14a8d4cb99d0b404d04554681237e4875f21cad3783611047e2fdd0cba3555ca` |
| 34 | `theorem` | [powersetLen_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powersetlen-nonempty--33ad2c782f60ca910cb40f3f.md) | 260 | `result-track:33ad2c782f60ca910cb40f3fb8eda807d3a119378935656e0449b58957cf4491` |
| 35 | `theorem` | [powersetLen_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powersetlen-self--3edf9a64ded1802a72c68743.md) | 276 | `result-track:3edf9a64ded1802a72c687437e033ef5ab6d0fa6c9e9b634752970e7359518f8` |
| 36 | `theorem` | [pairwise_disjoint_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/pairwise-disjoint-powersetlen--65d34df257b781239e29c056.md) | 285 | `result-track:65d34df257b781239e29c0561d76f22d836599c2ca0683e88a71b8a2a1e25284` |
| 37 | `theorem` | [powerset_card_disjiUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powerset-card-disjiunion--bbb4bb0c6b09201c6fa37c9d.md) | 291 | `result-track:bbb4bb0c6b09201c6fa37c9d41a2dc45cdc972a5dfcd7ad2dd1a6581129f3fe1` |
| 38 | `theorem` | [powerset_card_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powerset-card-biunion--129dabd75515a90de97c2553.md) | 304 | `result-track:129dabd75515a90de97c25538e50f18f1f1ab51f91a4399e913b5749020b519c` |
| 39 | `theorem` | [powersetLen_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powersetlen-sup--2056819e1d3dd021b3ed4a8a.md) | 309 | `result-track:2056819e1d3dd021b3ed4a8a1b23e3a4bac9fb3ebe3ff0a323b3769c9dae6d56` |
| 40 | `theorem` | [powersetLen_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powersetlen-card-add--2316b85bc2fa958f4094c3bb.md) | 328 | `result-track:2316b85bc2fa958f4094c3bb4f27601d7b82b2f43b43f9d6dc6bd2918fcb19bf` |
| 41 | `theorem` | [map_val_val_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/map-val-val-powersetlen--e298d256b33806d238267a85.md) | 334 | `result-track:e298d256b33806d238267a85c1eb3a54addab85aeb0f1e1a34435829d4a77a9a` |
| 42 | `theorem` | [powersetLen_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variant680aa3e565bcee666c29d5af3d621de68e1ade31c5204ad1a8e0c77d1d3ced2d.lean/declarations/powersetlen-map--16cb28646588d3fcaecff715.md) | 339 | `result-track:16cb28646588d3fcaecff7152913fb8815b0dc221e0cb76563277dcd8b9abc7e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
