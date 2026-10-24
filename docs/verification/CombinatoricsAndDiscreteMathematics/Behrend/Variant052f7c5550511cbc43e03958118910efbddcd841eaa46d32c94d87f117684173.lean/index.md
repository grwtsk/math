# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Behrend.Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3b152982f972ac8125d780b5fec3c1d428682dc",
  "lexical_observation_count": 50,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3b152982f972ac8125d780b5fec3c1d428682dc`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.Convex` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.AP.Three.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.ExponentialBounds` — import line 15; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [threeAPFree_frontier](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/threeapfree-frontier--d1e7446498db24186223b9a2.md) | 63 | `result-track:d1e7446498db24186223b9a2b1488c76d8f61e14da8267ac5862e1268ed0beaf` |
| 2 | `lemma` | [threeAPFree_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/threeapfree-sphere--cf49d2a35c8f148af715fabb.md) | 77 | `result-track:cf49d2a35c8f148af715fabbee9dfdfd7f5917d3838c301722db332c297c0803` |
| 3 | `def` | [box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/box--dd28f418315412d2dfcbcd0e.md) | 101 | `declaration-track:dd28f418315412d2dfcbcd0e3ec180690a435909965b884eace616693707a112` |
| 4 | `theorem` | [mem_box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/mem-box--03130775e628b68ff95dcae3.md) | 104 | `result-track:03130775e628b68ff95dcae30b344d8402a83d10d670cf5ff66a4b361cc5456c` |
| 5 | `theorem` | [card_box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/card-box--5fed96aeaf75e624baa8b27e.md) | 107 | `result-track:5fed96aeaf75e624baa8b27e7ef6ec58721112fc87c0135b2efff3a459b7109b` |
| 6 | `theorem` | [box_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/box-zero--05e085e6966825b78895bfdc.md) | 110 | `result-track:05e085e6966825b78895bfdc11a570710a5e4d2136321ce9cb42776e71679ef6` |
| 7 | `def` | [sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/sphere--9f258806682f0ce494290b8c.md) | 114 | `declaration-track:9f258806682f0ce494290b8c57d1ff28ec5f7e76515b26452d83ef4290bab3f0` |
| 8 | `theorem` | [sphere_zero_subset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/sphere-zero-subset--41f498a432f8c24346781abf.md) | 116 | `result-track:41f498a432f8c24346781abf86b91588168678cee55197c3c16c405a74dbc065` |
| 9 | `theorem` | [sphere_zero_right](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/sphere-zero-right--463efa3d28fe156a9158ba73.md) | 119 | `result-track:463efa3d28fe156a9158ba730af28898c0356c64101b57d138bddf52cb3def29` |
| 10 | `theorem` | [sphere_subset_box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/sphere-subset-box--f992c0d68b4fbfe5d8eae89e.md) | 121 | `result-track:f992c0d68b4fbfe5d8eae89e0e19a04068dcbc4384f44d06868294337e0f803a` |
| 11 | `theorem` | [norm_of_mem_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/norm-of-mem-sphere--c139c87ff45db23dcc226ee5.md) | 124 | `result-track:c139c87ff45db23dcc226ee5767c8a7fa21abd754d5d92ca6f6eac7e6386ae60` |
| 12 | `theorem` | [sphere_subset_preimage_metric_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/sphere-subset-preimage-metric-sphere--734e9e979939fbec1fe7bfd0.md) | 130 | `result-track:734e9e979939fbec1fe7bfd015d2a4f00d9a5cbd38a0686d72e02ac8ec74da11` |
| 13 | `def` | [map](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/map--6b2d256911025cc2456692fc.md) | 137 | `declaration-track:6b2d256911025cc2456692fcdca9a98befc782d1d33ad4d4dc931a3ddb7a3192` |
| 14 | `theorem` | [map_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/map-zero--b4826d9b94473b82d0d45ce2.md) | 142 | `result-track:b4826d9b94473b82d0d45ce28af0db1f7e6d0576a49a488750f84ee9d7e05923` |
| 15 | `theorem` | [map_succ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/map-succ--181fe04e4506d26fa1f26b84.md) | 144 | `result-track:181fe04e4506d26fa1f26b84e0ba5dd33b85a090e44be4cb18bf9dcb5394691c` |
| 16 | `theorem` | [map_succ'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/map-succ--1c77e5286f988e8cb01ce8d2.md) | 148 | `result-track:1c77e5286f988e8cb01ce8d26b34f737c46a97813c15bbe809265cad23c03103` |
| 17 | `theorem` | [map_monotone](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/map-monotone--c08fcecc9cd8755f47763bf0.md) | 151 | `result-track:c08fcecc9cd8755f47763bf0b222a0fb8d45e9219d69f5e9865f511d65857098` |
| 18 | `theorem` | [map_mod](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/map-mod--7bbf44bfa7ad058e5bc5fdc0.md) | 154 | `result-track:7bbf44bfa7ad058e5bc5fdc0748014eaccd386839d7c3625b1265d072fe5b673` |
| 19 | `theorem` | [map_eq_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/map-eq-iff--7762d0eb2d59aa838ad659a9.md) | 157 | `result-track:7762d0eb2d59aa838ad659a9f8dc426f8d47068865e840cfa0903f9b9d9e8102` |
| 20 | `theorem` | [map_injOn](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/map-injon--1c857e869dacf4d4a4c463d4.md) | 165 | `result-track:1c857e869dacf4d4a4c463d42040540feef86454364356e5b28cee5a3ef4be12` |
| 21 | `theorem` | [map_le_of_mem_box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/map-le-of-mem-box--77e1db94da268cfc8503fd92.md) | 174 | `result-track:77e1db94da268cfc8503fd921365419f74ef626ca6334c9dcb897eeb6fa471a8` |
| 22 | `theorem` | [threeAPFree_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/threeapfree-sphere--ae7da0b9fed4f6ace086e703.md) | 178 | `result-track:ae7da0b9fed4f6ace086e703419ad2e1748d0475b726ffb674721b090acfa1e5` |
| 23 | `theorem` | [threeAPFree_image_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/threeapfree-image-sphere--e70b4c431e9cbf3978a32ea8.md) | 189 | `result-track:e70b4c431e9cbf3978a32ea88486d0135346be0cad4814c6d422941833a10b64` |
| 24 | `theorem` | [sum_sq_le_of_mem_box](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/sum-sq-le-of-mem-box--953f0d383f78439c8ac2f6f0.md) | 201 | `result-track:953f0d383f78439c8ac2f6f0c6e50be579605b8c8b0460bfa39fe0f52c655de4` |
| 25 | `theorem` | [sum_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/sum-eq--0218296b2b02673e20f24d18.md) | 207 | `result-track:0218296b2b02673e20f24d18a1efbfeddc8a60f5a2523758eea0ca72fbba50be` |
| 26 | `theorem` | [sum_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/sum-lt--dc7d2eec5825ccbd72994815.md) | 212 | `result-track:dc7d2eec5825ccbd729948159cb788d46269cea71899f785002cd74ba19f7224` |
| 27 | `theorem` | [card_sphere_le_rothNumberNat](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/card-sphere-le-rothnumbernat--970622ecdbf3d415afaa2c47.md) | 215 | `result-track:970622ecdbf3d415afaa2c47291a9fd02fa7e754273917341d98ce1e9811e809` |
| 28 | `theorem` | [exists_large_sphere_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/exists-large-sphere-aux--ccc431c30371269d71c4a499.md) | 240 | `result-track:ccc431c30371269d71c4a499d652edcea9bf33e9a12fd6881094aaea14d0fb49` |
| 29 | `theorem` | [exists_large_sphere](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/exists-large-sphere--c3cff88d410462ab8eca50a9.md) | 248 | `result-track:c3cff88d410462ab8eca50a9c71d01b9597bc23e01833c8f832b319966dd5dbe` |
| 30 | `theorem` | [bound_aux'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/bound-aux--501eefe17eebfc1979a9540d.md) | 267 | `result-track:501eefe17eebfc1979a9540d61f7b4b3abcef6a7adbbd4c7c6f495807855e690` |
| 31 | `theorem` | [bound_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/bound-aux--b719988675dfb0fabff01bab.md) | 271 | `result-track:b719988675dfb0fabff01bab2dd35568508ecb5a2af4265f12de247b57f8c374` |
| 32 | `theorem` | [log_two_mul_two_le_sqrt_log_eight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/log-two-mul-two-le-sqrt-log-eight--c9e80645de46ac32d11b4cf9.md) | 283 | `result-track:c9e80645de46ac32d11b4cf90f250586a1e3c242a6a27934ea981e6061fb3381` |
| 33 | `theorem` | [two_div_one_sub_two_div_e_le_eight](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/two-div-one-sub-two-div-e-le-eight--9503d8e4605ffe67b728e7bc.md) | 290 | `result-track:9503d8e4605ffe67b728e7bc2510a5603ce69d39a02a1b79028185ee6aac1d55` |
| 34 | `theorem` | [le_sqrt_log](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/le-sqrt-log--150bcfa40d0a5cb9432b17cd.md) | 295 | `result-track:150bcfa40d0a5cb9432b17cd1bc0016ec31285ff91a7353596e47429d8b03d52` |
| 35 | `theorem` | [exp_neg_two_mul_le](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/exp-neg-two-mul-le--61de7026c99accc6875832d7.md) | 310 | `result-track:61de7026c99accc6875832d73fdba8e5415a22702043cc5834261a24d10a6b2d` |
| 36 | `theorem` | [div_lt_floor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/div-lt-floor--c4a5d59942dff0527883007f.md) | 321 | `result-track:c4a5d59942dff0527883007f18ed20aef76c888e5da528e543be8ac7d9b596c1` |
| 37 | `theorem` | [ceil_lt_mul](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/ceil-lt-mul--7415cddc2ba081443d343c04.md) | 331 | `result-track:7415cddc2ba081443d343c04ae51352c203e033a12b37fccf8fa75686f284b7f` |
| 38 | `def` | [nValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/nvalue--818e3548ce98f05f517babec.md) | 342 | `declaration-track:818e3548ce98f05f517babecd0c7c432392f80cb14bbf2c29e59561797da7d6b` |
| 39 | `def` | [dValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/dvalue--7dee429e28e4b0bdf08f3868.md) | 346 | `declaration-track:7dee429e28e4b0bdf08f38684a3898fc9617975da2db7787d019075f869249ff` |
| 40 | `theorem` | [nValue_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/nvalue-pos--417e709f3c1b848106daa2af.md) | 348 | `result-track:417e709f3c1b848106daa2af79fb4a5144532c98d4954b59f0dad2306df44068` |
| 41 | `theorem` | [three_le_nValue](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/three-le-nvalue--cffa6b4a8af1f73531258413.md) | 351 | `result-track:cffa6b4a8af1f73531258413f1d1f638a5107982249b70d5cc7cf2770fe66adc` |
| 42 | `theorem` | [dValue_pos](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/dvalue-pos--1e31a238ec03cd600382166f.md) | 362 | `result-track:1e31a238ec03cd600382166f3648b812d96e47804c4ad8a78a51d017d7ba3a80` |
| 43 | `theorem` | [le_N](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/le-n--199378517d52a33ea335c471.md) | 382 | `result-track:199378517d52a33ea335c471fc01be32f015bf34d25df99993b07715ec386cbc` |
| 44 | `theorem` | [bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/bound--4ab3cbf0dd3535dd677b28ed.md) | 397 | `result-track:4ab3cbf0dd3535dd677b28ed302a5a42595cc947c5c40484ea4ebfd3a0c7bbf2` |
| 45 | `theorem` | [roth_lower_bound_explicit](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/roth-lower-bound-explicit--d0622d2a60827468b4165688.md) | 426 | `result-track:d0622d2a60827468b4165688f25b35515aa16b61564be3bbc9d50a8fd9c73b78` |
| 46 | `theorem` | [exp_four_lt](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/exp-four-lt--e5227b790cc1a4b0651d63a9.md) | 460 | `result-track:e5227b790cc1a4b0651d63a919a1f7bb6f3b3fbcc1dc991057727dc78141b0aa` |
| 47 | `theorem` | [four_zero_nine_six_lt_exp_sixteen](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/four-zero-nine-six-lt-exp-sixteen--a59280061e826457e8d2ef6d.md) | 466 | `result-track:a59280061e826457e8d2ef6d246f6055ada750c503b1af3b90f57e09e2b571f5` |
| 48 | `theorem` | [lower_bound_le_one'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/lower-bound-le-one--59f702afb31af6dfcd8ac289.md) | 471 | `result-track:59f702afb31af6dfcd8ac2891abfb75068df9e2bb656bd8bbe1b8618d6990656` |
| 49 | `theorem` | [lower_bound_le_one](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/lower-bound-le-one--304f1b8048fa6070bb8a8568.md) | 482 | `result-track:304f1b8048fa6070bb8a8568d09e587654ecadc0711568bb40d24bd4845b9dc1` |
| 50 | `theorem` | [roth_lower_bound](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Behrend/Variant052f7c5550511cbc43e03958118910efbddcd841eaa46d32c94d87f117684173.lean/declarations/roth-lower-bound--6f9660c28143be445aed4de5.md) | 488 | `result-track:6f9660c28143be445aed4de5ce97ff27917d6e35953dc15a301bc4240a0799fc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
