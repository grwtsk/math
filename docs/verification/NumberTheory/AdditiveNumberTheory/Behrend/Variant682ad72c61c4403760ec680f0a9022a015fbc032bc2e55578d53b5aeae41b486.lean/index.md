# Verification target: GRWTSK.NumberTheory.AdditiveNumberTheory.Behrend.Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c88d0cc6ea789f844c1965755e3aff73d42ed2f6",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c88d0cc6ea789f844c1965755e3aff73d42ed2f6`.

Source path: `GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.SalemSpencer` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.ExponentialBounds` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/box--a8810ef8560c37f4cdb838f5.md) | 70 | `declaration-track:a8810ef8560c37f4cdb838f5bb158ff6ec75a1c9644baf437b21bbf41d2d291a` |
| 2 | `theorem` | [mem_box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/mem-box--1892ca20deff5dbb50a26792.md) | 74 | `result-track:1892ca20deff5dbb50a267923aa5494e6115407e0c78845dd5e20138eab2cd77` |
| 3 | `theorem` | [card_box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/card-box--d11d078066ca08b04b02779c.md) | 78 | `result-track:d11d078066ca08b04b02779c7e54d60526b0e949866953a6fb3a7a9bc494a704` |
| 4 | `theorem` | [box_zero](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/box-zero--1d27ebb2ed53e2cb7a26d943.md) | 82 | `result-track:1d27ebb2ed53e2cb7a26d9434628d1a2abbaea7c0dea01765f26354301a9a42a` |
| 5 | `def` | [sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/sphere--5f82a8f9cf8ebd8797c5677b.md) | 87 | `declaration-track:5f82a8f9cf8ebd8797c5677bf3ef541ea9cefa4da2e1031973e48c13157c8734` |
| 6 | `theorem` | [sphere_zero_subset](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/sphere-zero-subset--e37b24d5b6837b98e5a53472.md) | 91 | `result-track:e37b24d5b6837b98e5a534720c5a98db72ee39f6052dd7051e7d154086163613` |
| 7 | `theorem` | [sphere_zero_right](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/sphere-zero-right--dedf2eb29b018a6fff0a5f89.md) | 95 | `result-track:dedf2eb29b018a6fff0a5f89ba5678e75cad89ce6e794b2ff4747eb95f1e7f17` |
| 8 | `theorem` | [sphere_subset_box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/sphere-subset-box--c59edb45e59b432a9f1a5da1.md) | 98 | `result-track:c59edb45e59b432a9f1a5da11d8f47e03d2af4d09b03b7cc5d6eca3174c8c31a` |
| 9 | `theorem` | [norm_of_mem_sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/norm-of-mem-sphere--c7416a156ea55960981f5702.md) | 102 | `result-track:c7416a156ea55960981f5702968cc0056eddaa56de93a334edb74addb77e64f1` |
| 10 | `theorem` | [sphere_subset_preimage_metric_sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/sphere-subset-preimage-metric-sphere--96caa47248669e9f5099fcba.md) | 109 | `result-track:96caa47248669e9f5099fcba9501bde82f64a81b2f52836462b75d89b7f6b691` |
| 11 | `def` | [map](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/map--fc7c30fe953f3ef0d0575067.md) | 117 | `declaration-track:fc7c30fe953f3ef0d05750673449831a6e2efe49c0d03596239e5c3359fb4675` |
| 12 | `theorem` | [map_zero](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/map-zero--94adf3bc6052ec0dda887f86.md) | 124 | `result-track:94adf3bc6052ec0dda887f862199c4b7de3cff59e9ca3c466680783d4c1c1a9a` |
| 13 | `theorem` | [map_succ](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/map-succ--e2c8ae6a72b6df12cc4f4e64.md) | 127 | `result-track:e2c8ae6a72b6df12cc4f4e6440e53a561c34dc9d930e330b129228b7ec9810c1` |
| 14 | `theorem` | [map_succ'](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/map-succ--8b779f6094c6565e0fd7d362.md) | 132 | `result-track:8b779f6094c6565e0fd7d362e37311ecca5298cdd0d936505bea437af77e030d` |
| 15 | `theorem` | [map_monotone](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/map-monotone--170b08e317ab85b7b6cc52dc.md) | 136 | `result-track:170b08e317ab85b7b6cc52dc10eaa68b0ecb491623db5fa2ccbcc0c57c680576` |
| 16 | `theorem` | [map_mod](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/map-mod--6a257ce784a502078de22062.md) | 140 | `result-track:6a257ce784a502078de22062cd353e0642fbeeb720804e1aa5e2b375ec57477b` |
| 17 | `theorem` | [map_eq_iff](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/map-eq-iff--e048b421b2b85c7079415505.md) | 144 | `result-track:e048b421b2b85c7079415505c57b90409e9dfa92495f65cd489fccc0b69d195d` |
| 18 | `theorem` | [map_injOn](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/map-injon--39b989d670daf2bc01331a54.md) | 153 | `result-track:39b989d670daf2bc01331a543bf0418cdc9906d159516f4c7d60af9f56d1dd86` |
| 19 | `theorem` | [map_le_of_mem_box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/map-le-of-mem-box--268bfa5bd388a458017e5192.md) | 165 | `result-track:268bfa5bd388a458017e5192346d1c5a8ec6f7be15899f9f660a8d30de3c22b3` |
| 20 | `theorem` | [addSalemSpencer_sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/addsalemspencer-sphere--375a53dacdf0e7ee6045e3d9.md) | 170 | `result-track:375a53dacdf0e7ee6045e3d9881f3847d6c320bc2b2bc25a21673d35c61ef1ae` |
| 21 | `theorem` | [addSalemSpencer_image_sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/addsalemspencer-image-sphere--6c71c99d9bb0a819da1a3a7b.md) | 182 | `result-track:6c71c99d9bb0a819da1a3a7b4a6f8f9571af3f7596dfddfa2c058a5b78c2c06f` |
| 22 | `theorem` | [sum_sq_le_of_mem_box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/sum-sq-le-of-mem-box--c4167ffeb58fa798e1f344a6.md) | 196 | `result-track:c4167ffeb58fa798e1f344a663b43422c095a30442bb95d1b3514b8ad8945dff` |
| 23 | `theorem` | [sum_eq](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/sum-eq--da3bff56a5b7d83d725fb9d8.md) | 203 | `result-track:da3bff56a5b7d83d725fb9d8f78640c94d6c101612fafeb3b1e308cf91801135` |
| 24 | `theorem` | [sum_lt](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/sum-lt--c91e742ee025afab08b953d1.md) | 209 | `result-track:c91e742ee025afab08b953d12eefe7f6c39b0540a5141f194e37edc294d7e15d` |
| 25 | `theorem` | [card_sphere_le_rothNumberNat](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/card-sphere-le-rothnumbernat--7f638faa00b64a3699f089ab.md) | 213 | `result-track:7f638faa00b64a3699f089abcfb40f92ef3f8182846b6a3cb781d17c01f4d344` |
| 26 | `theorem` | [exists_large_sphere_aux](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/exists-large-sphere-aux--6e661fecd6fcaff7450cc7bc.md) | 241 | `result-track:6e661fecd6fcaff7450cc7bc03c98db4dd1278c949ea6b8f39bdbca2a0e3a350` |
| 27 | `theorem` | [exists_large_sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/exists-large-sphere--40e260e348a5925b262b360e.md) | 251 | `result-track:40e260e348a5925b262b360ea1c1c70ec3d4182e2ae105ea3f343e70349a3ce2` |
| 28 | `theorem` | [bound_aux'](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/bound-aux--a21002d978133ecdec619a9e.md) | 271 | `result-track:a21002d978133ecdec619a9edb79b2298e3539f5738b642ce4a1fdfbfdb9082a` |
| 29 | `theorem` | [bound_aux](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/bound-aux--334c501bbe027c4b5d04f4b9.md) | 276 | `result-track:334c501bbe027c4b5d04f4b932b93fdfa8946237936ecea0e668e0058635e765` |
| 30 | `theorem` | [log_two_mul_two_le_sqrt_log_eight](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/log-two-mul-two-le-sqrt-log-eight--66afa3a22d494099c96ec3e4.md) | 289 | `result-track:66afa3a22d494099c96ec3e42266c2952f8d4725df72f8fd246487ae1e95c191` |
| 31 | `theorem` | [two_div_one_sub_two_div_e_le_eight](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/two-div-one-sub-two-div-e-le-eight--f2aabc1cda2b6801da8affde.md) | 300 | `result-track:f2aabc1cda2b6801da8affdeb808b79eeba88a26935e59d368d4588ae6259bb8` |
| 32 | `theorem` | [le_sqrt_log](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/le-sqrt-log--7041e67de204b43a5ebc2d45.md) | 307 | `result-track:7041e67de204b43a5ebc2d45c7c1fbea5a164e7d6feb2a7c7d14ca4cd3e2f127` |
| 33 | `theorem` | [exp_neg_two_mul_le](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/exp-neg-two-mul-le--63c41a88052cdfcd5052a5c4.md) | 332 | `result-track:63c41a88052cdfcd5052a5c4aa2921086419aa8d109decbeb74aa96c4f8f5371` |
| 34 | `theorem` | [div_lt_floor](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/div-lt-floor--3e9d92c41223d459fb811365.md) | 347 | `result-track:3e9d92c41223d459fb811365bfd4c486d893ddf38cc3b34417ef1ed7500494d6` |
| 35 | `theorem` | [ceil_lt_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/ceil-lt-mul--3d566bb51a9867053e29b2fe.md) | 358 | `result-track:3d566bb51a9867053e29b2fe9ac46e61006c8b3be34d9e4be3568f9f3682458a` |
| 36 | `def` | [nValue](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/nvalue--107f08a3bd49ca2b8b5f85e8.md) | 370 | `declaration-track:107f08a3bd49ca2b8b5f85e8919509dfec09b5c3fb294c0c1d55fccbf1f9136f` |
| 37 | `def` | [dValue](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/dvalue--5c54e54f99e2f25d2b90d806.md) | 375 | `declaration-track:5c54e54f99e2f25d2b90d8062848a61ec5e00ee3a12278a7cce59f4dc798ea30` |
| 38 | `theorem` | [nValue_pos](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/nvalue-pos--f317b41913ee60a969875c3e.md) | 379 | `result-track:f317b41913ee60a969875c3edf6b23141718ce19028a28f7ff76849715500caf` |
| 39 | `theorem` | [two_le_nValue](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/two-le-nvalue--7757075b45041552a0ba4d40.md) | 383 | `result-track:7757075b45041552a0ba4d4023d0ffd873920e6e920f75a53c559be98409c669` |
| 40 | `theorem` | [three_le_nValue](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/three-le-nvalue--58613a898a378980accf28c0.md) | 392 | `result-track:58613a898a378980accf28c0c9674870b1d852b077b145351675df88c1fb2a1a` |
| 41 | `theorem` | [dValue_pos](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/dvalue-pos--3355c74ef928dd2a8e15003d.md) | 406 | `result-track:3355c74ef928dd2a8e15003d92ccb490c4c55717af0a1d502ad0bd90c0c5cf22` |
| 42 | `theorem` | [le_N](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/le-n--b864e32466fb9263f8a79dbc.md) | 429 | `result-track:b864e32466fb9263f8a79dbc5b0455b1cdef0be16609a10ef380c626d424529b` |
| 43 | `theorem` | [bound](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/bound--9d9f0902844e4ddc18ea9571.md) | 445 | `result-track:9d9f0902844e4ddc18ea957139ed952707dea07055961d3185909cc1ceec9dd9` |
| 44 | `theorem` | [roth_lower_bound_explicit](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/roth-lower-bound-explicit--eb4e9faf360cb4c3ab9143a2.md) | 481 | `result-track:eb4e9faf360cb4c3ab9143a2ffc242d69a2467294a7f570251a678de6a89a3d4` |
| 45 | `theorem` | [exp_four_lt](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/exp-four-lt--f2b6738654356cb51643398e.md) | 515 | `result-track:f2b6738654356cb51643398e1748183389424e34c1859a05113a8551f250ca4b` |
| 46 | `theorem` | [four_zero_nine_six_lt_exp_sixteen](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/four-zero-nine-six-lt-exp-sixteen--e7c6b383b68bb3bdef645489.md) | 522 | `result-track:e7c6b383b68bb3bdef645489019b3d60405de102644c545ae872f42d9fc1d908` |
| 47 | `theorem` | [lower_bound_le_one'](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/lower-bound-le-one--42fa1059c6a6910df82d296a.md) | 529 | `result-track:42fa1059c6a6910df82d296aba79ede23dd0c506fd834c97f239d9e16ba76eee` |
| 48 | `theorem` | [lower_bound_le_one](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/lower-bound-le-one--12e8665eea8547cc7f0830b7.md) | 541 | `result-track:12e8665eea8547cc7f0830b73ce40fa25298bc6426ba6772cc20dc4ede17c985` |
| 49 | `theorem` | [roth_lower_bound](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant682ad72c61c4403760ec680f0a9022a015fbc032bc2e55578d53b5aeae41b486.lean/declarations/roth-lower-bound--118026495f6a2c24c0550e20.md) | 548 | `result-track:118026495f6a2c24c0550e20026532647b051e59e30cffd756f4aa0f3ced88c7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
