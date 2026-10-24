# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a01dc445830e58bbd825bdbe73e8ade66c19a8e7",
  "lexical_observation_count": 42,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a01dc445830e58bbd825bdbe73e8ade66c19a8e7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Lattice` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Powerset` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powerset--23ecc12882c9845f6e56217b.md) | 28 | `declaration-track:23ecc12882c9845f6e56217b6b01d3423d61b593371e38f2b52536ad9a2a5d1c` |
| 2 | `theorem` | [mem_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/mem-powerset--7d4f175da758534f4c873385.md) | 34 | `result-track:7d4f175da758534f4c87338559b6123b5f1f1420647c535af06e018a0dd482ea` |
| 3 | `theorem` | [coe_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/coe-powerset--9019be007b808a27c1244ac1.md) | 41 | `result-track:9019be007b808a27c1244ac1c1ca7f14c23a7f425df5cc1f5483a87ff2a91936` |
| 4 | `theorem` | [empty_mem_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/empty-mem-powerset--8df77c6f84760af4a388b417.md) | 48 | `result-track:8df77c6f84760af4a388b4177d3112c10cb44072d176a2caf43a22640b9aedb6` |
| 5 | `theorem` | [mem_powerset_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/mem-powerset-self--779e0317a2c35a729b583e89.md) | 53 | `result-track:779e0317a2c35a729b583e89a59f9f511bb83d654632f2180e136861143f3990` |
| 6 | `theorem` | [powerset_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powerset-nonempty--e13c9fb39882f0bc213c283b.md) | 57 | `result-track:e13c9fb39882f0bc213c283b15cd4be41d28b53e2a7e580ecbdb5602aba6454f` |
| 7 | `theorem` | [powerset_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powerset-mono--f454ef70c9d9ea6e7b14d408.md) | 62 | `result-track:f454ef70c9d9ea6e7b14d4080574b5a048f7053ef16e7c91f8f442fb4c2cf150` |
| 8 | `theorem` | [powerset_injective](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powerset-injective--f9e8c926c4a26aa5400bcc3d.md) | 67 | `result-track:f9e8c926c4a26aa5400bcc3d06df0f143d1e505d58f393cf22c875f167f9a445` |
| 9 | `theorem` | [powerset_inj](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powerset-inj--5de74e110ba2dacbb6598f32.md) | 72 | `result-track:5de74e110ba2dacbb6598f325b53c81c8c9f7d7f28f8e7b45ecc997a808c1672` |
| 10 | `theorem` | [powerset_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powerset-empty--9ee3707602d15c53c0ccc2d3.md) | 77 | `result-track:9ee3707602d15c53c0ccc2d3fc905764573f02d091f7ae42beb701a5f95e8d9e` |
| 11 | `theorem` | [powerset_eq_singleton_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powerset-eq-singleton-empty--434e22858972506eea77b01b.md) | 82 | `result-track:434e22858972506eea77b01b75ea77374f184fbcecf76ac5fe46f048858083ae` |
| 12 | `theorem` | [card_powerset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/card-powerset--6e35a0101d1d99b6721d3820.md) | 88 | `result-track:6e35a0101d1d99b6721d3820dd0d68b1d03f8f2bad5da6f9bd6c9d7367ba73e7` |
| 13 | `theorem` | [not_mem_of_mem_powerset_of_not_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/not-mem-of-mem-powerset-of-not-mem--1e96778e86c41d0ceb7f374b.md) | 92 | `result-track:1e96778e86c41d0ceb7f374b9490ad61ac0f8671a6cf74d20fdc9c6dc17b198d` |
| 14 | `theorem` | [powerset_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powerset-insert--c7c5a0a21e55226d396d4382.md) | 98 | `result-track:c7c5a0a21e55226d396d4382668331d28e9c19d7ef91dc8ed6cb063b60655a17` |
| 15 | `instance` | [decidableExistsOfDecidableSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/decidableexistsofdecidablesubsets--5fb5c70abc4c8671751d1f82.md) | 116 | `declaration-track:5fb5c70abc4c8671751d1f8205c43be8448460af63171384af79351434248495` |
| 16 | `instance` | [decidableForallOfDecidableSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/decidableforallofdecidablesubsets--408178455ecf31e2449a7b85.md) | 123 | `declaration-track:408178455ecf31e2449a7b85212cd6ab17f01b773c36364aca6460a6e7f9bae4` |
| 17 | `def` | [decidableExistsOfDecidableSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/decidableexistsofdecidablesubsets--a5cee990c8b10ca6691f76e7.md) | 131 | `declaration-track:a5cee990c8b10ca6691f76e72524e16dd6f7fce84782082f06dfd84e9882a31d` |
| 18 | `def` | [decidableForallOfDecidableSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/decidableforallofdecidablesubsets--75040e31eee8816dfd7219b0.md) | 138 | `declaration-track:75040e31eee8816dfd7219b0323ef390a4483b08aa25ac0fb06f9cfc84070a2f` |
| 19 | `def` | [ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/ssubsets--e07a847eaa270b1f169dac44.md) | 150 | `declaration-track:e07a847eaa270b1f169dac44136b3709afa871f821d361c2306f1f10653e0d23` |
| 20 | `theorem` | [mem_ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/mem-ssubsets--526066b13bf71563ba3a2af7.md) | 155 | `result-track:526066b13bf71563ba3a2af7aa2d4022fcce99a69d987cb415328060c925cd63` |
| 21 | `theorem` | [empty_mem_ssubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/empty-mem-ssubsets--51ec56258d55009ac8c1dc75.md) | 159 | `result-track:51ec56258d55009ac8c1dc75b0c0fab33c9b0f85de0fbe98c6027cb26121193b` |
| 22 | `instance` | [decidableExistsOfDecidableSSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/decidableexistsofdecidablessubsets--edf6c9b70da7d7757001d645.md) | 164 | `declaration-track:edf6c9b70da7d7757001d645e02cff063c93f9a86220cfafb1b91936a6229a2c` |
| 23 | `instance` | [decidableForallOfDecidableSSubsets](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/decidableforallofdecidablessubsets--74892a0afb1d230cd000a800.md) | 171 | `declaration-track:74892a0afb1d230cd000a80049d5cef612f565c4b0a14189def7cf736a14d815` |
| 24 | `def` | [decidableExistsOfDecidableSSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/decidableexistsofdecidablessubsets--40cee01f6b02405985c6e893.md) | 179 | `declaration-track:40cee01f6b02405985c6e893dad262ebdd70dfd53f34d73979c69c081bc18e22` |
| 25 | `def` | [decidableForallOfDecidableSSubsets'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/decidableforallofdecidablessubsets--d6d03834563525198b4efe74.md) | 186 | `declaration-track:d6d03834563525198b4efe74d631d0c52d25872d26adc9cc30ba621d201f6d49` |
| 26 | `def` | [powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powersetlen--c651759b91a52543ba4e0dab.md) | 197 | `declaration-track:c651759b91a52543ba4e0dabb2077bf5f6be6a4049a3d9fc37cc973c777cc3b8` |
| 27 | `theorem` | [mem_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/mem-powersetlen--496cf5bb247c2fa51ffbf2d9.md) | 203 | `result-track:496cf5bb247c2fa51ffbf2d99093924363fe7b1c82378fa5c0669cdc95a784c3` |
| 28 | `theorem` | [powersetLen_mono](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powersetlen-mono--f04ac3f2c021172536e4bebc.md) | 208 | `result-track:f04ac3f2c021172536e4bebc8359f328a367434e964b9934840d30bfad5fd71d` |
| 29 | `theorem` | [card_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/card-powersetlen--6fbb04e267f268abb4c54299.md) | 214 | `result-track:6fbb04e267f268abb4c54299a2626ba61f3a9d9d188c77a767f97b205bfac7da` |
| 30 | `theorem` | [powersetLen_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powersetlen-zero--6860b309225d31a45061fccd.md) | 219 | `result-track:6860b309225d31a45061fccdc21820262306e619035574e072bcdb389b370c6c` |
| 31 | `theorem` | [powersetLen_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powersetlen-empty--8f716a17251f6e3a0088175c.md) | 228 | `result-track:8f716a17251f6e3a0088175c22209fefe6692ea6230994d4db699d14cbfbc10c` |
| 32 | `theorem` | [powersetLen_eq_filter](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powersetlen-eq-filter--600de6c41c9fac5f2fffeb48.md) | 232 | `result-track:600de6c41c9fac5f2fffeb48f05084f53e9430f85343289e247ba98a33b92909` |
| 33 | `theorem` | [powersetLen_succ_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powersetlen-succ-insert--1f423633c57fd1e476ff9617.md) | 238 | `result-track:1f423633c57fd1e476ff9617f68f9c0b559a61cdb23417adee46ecc9d92a4ff5` |
| 34 | `theorem` | [powersetLen_nonempty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powersetlen-nonempty--85f3fd207415605e6e57d16a.md) | 252 | `result-track:85f3fd207415605e6e57d16aaacd5fdbd12b612c98bd89bad14705528b34d693` |
| 35 | `theorem` | [powersetLen_self](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powersetlen-self--8bc9046132da89890cdd48b0.md) | 268 | `result-track:8bc9046132da89890cdd48b0784c7b0eecd85b3c6c77f3d4cbf9de47d30a980c` |
| 36 | `theorem` | [pairwise_disjoint_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/pairwise-disjoint-powersetlen--b7c1b918bf018b3106ae01f7.md) | 277 | `result-track:b7c1b918bf018b3106ae01f76333e4efbe485c3c5bae218781dd9692460c538b` |
| 37 | `theorem` | [powerset_card_disjiUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powerset-card-disjiunion--e51d0d7788d8d938f37ebe55.md) | 283 | `result-track:e51d0d7788d8d938f37ebe5574c7f49ce186de4f18a3515bc53b2323f9cc9b19` |
| 38 | `theorem` | [powerset_card_biUnion](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powerset-card-biunion--4be70d342edda54c4cc7c26c.md) | 296 | `result-track:4be70d342edda54c4cc7c26c0d6c83c3b89849d7b3ba320d65b48275dbb14804` |
| 39 | `theorem` | [powersetLen_sup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powersetlen-sup--9a952b2037c892b892197386.md) | 301 | `result-track:9a952b2037c892b89219738685ce26bf097d7fa6291b7f583c70a218e8db9f6f` |
| 40 | `theorem` | [powersetLen_card_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powersetlen-card-add--6526aa870ff37fb9ad4849f8.md) | 320 | `result-track:6526aa870ff37fb9ad4849f8879c2528b80d0dd0497f33380bf7d67c9f3e28ba` |
| 41 | `theorem` | [map_val_val_powersetLen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/map-val-val-powersetlen--d1e32b04082d830fd79a85df.md) | 326 | `result-track:d1e32b04082d830fd79a85df5dda48b33fa101f3f6837055f662a6771e76d700` |
| 42 | `theorem` | [powersetLen_map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Powerset/Variantdbbb3c20266e3f8840b5c5f0fbf7bd0b0f812219dd37bc28dcaddb40cbcb958a.lean/declarations/powersetlen-map--b54741013cf9ebec6814de81.md) | 331 | `result-track:b54741013cf9ebec6814de81655f03465c4d42b48047f0a79fc657575a7546cb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
