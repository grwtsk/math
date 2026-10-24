# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Sort.Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7b0a4c48f708fe480d641bb9df04e8861bca3c39",
  "lexical_observation_count": 51,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7b0a4c48f708fe480d641bb9df04e8861bca3c39`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort--e3e3e01a73363f693995c2b0.md) | 33 | `declaration-track:e3e3e01a73363f693995c2b0f119666522aee3cd6f473b17d151c1fec405f9a4` |
| 2 | `theorem` | [sort_val](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-val--32bbd3530eee0fdaacc1ec8c.md) | 44 | `result-track:32bbd3530eee0fdaacc1ec8c5c440f972cc453006cdb77c8074a3d71396e3d2a` |
| 3 | `theorem` | [pairwise_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/pairwise-sort--8219a3db54196d2f1aa3894b.md) | 48 | `result-track:8219a3db54196d2f1aa3894b7f04973d963e93e1175cb5372f4d22297735adda` |
| 4 | `theorem` | [sort_eq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-eq--c56349665186026bdccee45e.md) | 52 | `result-track:c56349665186026bdccee45e39fd485271e262531d8a13b37e70c70fc84d6fc3` |
| 5 | `theorem` | [sort_nodup](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-nodup--5f97436b9e5b1cfeb2a7aa80.md) | 56 | `result-track:5f97436b9e5b1cfeb2a7aa80c94b329c8430ca74989b5fc850002053fd6ddc56` |
| 6 | `theorem` | [sort_toFinset](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-tofinset--e34bf99e14418b630867d82c.md) | 60 | `result-track:e34bf99e14418b630867d82ce8ef9055a10f3529c69b28aa589c4ac007915789` |
| 7 | `theorem` | [sort_empty](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-empty--39db9373a280dfcb9dc6b819.md) | 64 | `result-track:39db9373a280dfcb9dc6b819e918281712338a81d2d14ad6c4383d712ea7dcb7` |
| 8 | `theorem` | [sort_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-singleton--f560bce07e98e7fe1d34b34c.md) | 68 | `result-track:f560bce07e98e7fe1d34b34c22ddf8c9eb8bbc44a03576d15223c0e807a1ac56` |
| 9 | `theorem` | [map_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/map-sort--619ac0ce1f7ace41f42df9dd.md) | 71 | `result-track:619ac0ce1f7ace41f42df9ddf36393f10eeddaebadf2b14d6bbe3de86d2daac9` |
| 10 | `theorem` | [_root_.StrictMonoOn.map_finsetSort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/root-strictmonoon-map-finsetsort--708711a2c942d8ca62b69f98.md) | 76 | `result-track:708711a2c942d8ca62b69f98ebd68e9f644d6275c05dcb8efa2190addd3465a2` |
| 11 | `theorem` | [sort_range](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-range--67037d3e309264b51e44c1e6.md) | 82 | `result-track:67037d3e309264b51e44c1e6ac549c3251efd27b5df120b00a5523d75f2d2ee8` |
| 12 | `theorem` | [sort_perm_toList](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-perm-tolist--0c1bcb4b2b60467d4b1b704b.md) | 86 | `result-track:0c1bcb4b2b60467d4b1b704b23d73557982e0142cc3941b48d0e9693aa1d9b7b` |
| 13 | `theorem` | [_root_.List.toFinset_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/root-list-tofinset-sort--d8587d41a71f4dc64fd8eeca.md) | 90 | `result-track:d8587d41a71f4dc64fd8eeca23d5fc506b60a2fc3448ad0900d454c55228ce38` |
| 14 | `theorem` | [sort_mk](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-mk--def20b34d080386f47537164.md) | 106 | `result-track:def20b34d080386f47537164a11d3d73b50a1b4596fb8daa06975806ac1da507` |
| 15 | `theorem` | [mem_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/mem-sort--a3e0133a16d38cc732cb66b6.md) | 109 | `result-track:a3e0133a16d38cc732cb66b671ee7c29717f7876c912458c4ad657f379499ec3` |
| 16 | `theorem` | [length_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/length-sort--281e5ffec856ab89356e1782.md) | 113 | `result-track:281e5ffec856ab89356e178295074fc54e198c5a881b920fe091b5669b21ca29` |
| 17 | `theorem` | [sort_cons](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-cons--ea2be5000ec03fbf9075bd0b.md) | 116 | `result-track:ea2be5000ec03fbf9075bd0b82c3c8bd7dfbac0161cc315123b3ed07eaf4b2f9` |
| 18 | `theorem` | [sort_insert](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-insert--2842dcb8a4c1cdfb705ff553.md) | 120 | `result-track:2842dcb8a4c1cdfb705ff553798e9f04c88434c621da9bea5a4c7f2d54ab2b34` |
| 19 | `theorem` | [sortedLT_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sortedlt-sort--668dd0e653bdaae2cafb6f15.md) | 132 | `result-track:668dd0e653bdaae2cafb6f1586aab01725a8b906a7b56c1d3216b9dd042ff15f` |
| 20 | `theorem` | [sortedGT_sort](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sortedgt-sort--56ba0b294bb2b5e70b6e74c0.md) | 135 | `result-track:56ba0b294bb2b5e70b6e74c04019897b39a0768f5edb353e87d9b988648f3a16` |
| 21 | `theorem` | [sorted_zero_eq_min'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sorted-zero-eq-min-aux--766d4662efdd85c0c3c448d4.md) | 138 | `result-track:766d4662efdd85c0c3c448d4f0bded1c2f0feb50e3f127ee4e846c90e0c06de0` |
| 22 | `theorem` | [sorted_zero_eq_min'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sorted-zero-eq-min--acde70a8315ec8663c6119c3.md) | 149 | `result-track:acde70a8315ec8663c6119c3494a4b7a711e7892832a27168a91d8a2f62f44eb` |
| 23 | `theorem` | [min'_eq_sorted_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/min-eq-sorted-zero--6b97597211f0b266e9e3cb22.md) | 153 | `result-track:6b97597211f0b266e9e3cb22b16138ede3fd85f59bb4393e0b27574865881cd8` |
| 24 | `theorem` | [sorted_last_eq_max'_aux](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sorted-last-eq-max-aux--5a8214528c7e98440c66ad87.md) | 157 | `result-track:5a8214528c7e98440c66ad876f020de74ea1469b1fc311312d0c6dff91e574cd` |
| 25 | `theorem` | [sorted_last_eq_max'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sorted-last-eq-max--c55666064779d809f93c89d8.md) | 170 | `result-track:c55666064779d809f93c89d8211fc93f1b4d78ab6bc22cbeab86dfc9af1ccb32` |
| 26 | `theorem` | [max'_eq_sorted_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/max-eq-sorted-last--4bec9d9cd29446be1092e1a9.md) | 176 | `result-track:4bec9d9cd29446be1092e1a90e5096579f4af8be4cb51550a17fd3ccd4435c92` |
| 27 | `def` | [orderIsoOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderisooffin--49c596f643fde10eee371d7d.md) | 186 | `declaration-track:49c596f643fde10eee371d7db76a3461e878c459ab44a530545002be3ea169ac` |
| 28 | `def` | [orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin--ec6cb5fd55023d16b81b5818.md) | 194 | `declaration-track:ec6cb5fd55023d16b81b5818d5b15d4af27f269cef4b5c719c05d1a08af9114e` |
| 29 | `theorem` | [coe_orderIsoOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/coe-orderisooffin-apply--f937803c320479fd5ac54fa5.md) | 198 | `result-track:f937803c320479fd5ac54fa51fd609ceaa6aa04dc39c8de732633888480c3ab6` |
| 30 | `theorem` | [orderIsoOfFin_symm_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderisooffin-symm-apply--e24114c9e335de05dd00d661.md) | 202 | `result-track:e24114c9e335de05dd00d661b7e9b5da9f3b33b653f52237872a76262b7f2108` |
| 31 | `theorem` | [orderEmbOfFin_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin-apply--260575794c0b1588d618c629.md) | 206 | `result-track:260575794c0b1588d618c62996dc5d237a399713b6e82b3aee768093f54efb6c` |
| 32 | `theorem` | [orderEmbOfFin_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin-mem--64ff0c882323078288c4d8dc.md) | 211 | `result-track:64ff0c882323078288c4d8dcdd4aecb7d13e7946c2ffebdb99c84a72fbcaefaf` |
| 33 | `theorem` | [range_orderEmbOfFin](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/range-orderemboffin--7e79639551f3026e9148ae36.md) | 216 | `result-track:7e79639551f3026e9148ae36abf7e061b179b59f1ccf573dec0eb1fa01ef0437` |
| 34 | `theorem` | [image_orderEmbOfFin_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/image-orderemboffin-univ--e27651ac1a72f8fb1675fae8.md) | 224 | `result-track:e27651ac1a72f8fb1675fae8d3ba9aff2f70cb847a3918f21ca192afaa64a4c4` |
| 35 | `theorem` | [map_orderEmbOfFin_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/map-orderemboffin-univ--de08494eefac916d33910c75.md) | 230 | `result-track:de08494eefac916d33910c7547f96d74c2e7232bf56372bb785e7ece20292162` |
| 36 | `theorem` | [listMap_orderEmbOfFin_finRange](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/listmap-orderemboffin-finrange--aabd50263c6eb37e2ce8a390.md) | 235 | `result-track:aabd50263c6eb37e2ce8a390ab7b2427cbea99c97ffac6f61d0ea20343bd97b8` |
| 37 | `theorem` | [orderEmbOfFin_zero](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin-zero--95c1bc47c47bc5d047496b2b.md) | 241 | `result-track:95c1bc47c47bc5d047496b2ba8548e1cc6cd644ed15b69a22ba572994eb42165` |
| 38 | `theorem` | [orderEmbOfFin_last](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin-last--4e2075e5cebfd2446e232351.md) | 246 | `result-track:4e2075e5cebfd2446e23235121950cae4d668df05ca9c074a51240009d428a4a` |
| 39 | `theorem` | [orderEmbOfFin_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin-singleton--8304fe21a68b62785e873619.md) | 253 | `result-track:8304fe21a68b62785e873619af57be426fd62dc43a258ea7eecb7498e31a3725` |
| 40 | `theorem` | [orderEmbOfFin_unique](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin-unique--cf9f3fa4ca92c0410687c631.md) | 260 | `result-track:cf9f3fa4ca92c0410687c631eabec04bc6af0a9992e663fc1a864aab97b6ab2b` |
| 41 | `theorem` | [orderEmbOfFin_unique'](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin-unique--8ba6413f2618aed1b9d900f2.md) | 271 | `result-track:8ba6413f2618aed1b9d900f2e0cc060facdf8af52e0a312cc6550a531cff6fb7` |
| 42 | `theorem` | [orderEmbOfFin_eq_orderEmbOfFin_iff](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin-eq-orderemboffin-iff--a939f9fe50447d9773ca1d2b.md) | 279 | `result-track:a939f9fe50447d9773ca1d2b32cb8b6505960678ee95f5710b3794ab1c3a0120` |
| 43 | `def` | [orderEmbOfCardLe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderembofcardle--5264cff8d5809b521cec535c.md) | 288 | `declaration-track:5264cff8d5809b521cec535c47a37e24987afd7d91e9f6e3808e1574418cbdc3` |
| 44 | `theorem` | [orderEmbOfCardLe_mem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderembofcardle-mem--325a8709cb05e02fb3191bb2.md) | 291 | `result-track:325a8709cb05e02fb3191bb2dbad0c5020e1e8020bf9f5fe48ab1107ad6ad225` |
| 45 | `lemma` | [orderEmbOfFin_compl_singleton](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin-compl-singleton--ea25e95bbfd81fa2223f37a1.md) | 296 | `result-track:ea25e95bbfd81fa2223f37a1d784b6d5642074b955584dba2b0c31ab6fae86e8` |
| 46 | `lemma` | [orderEmbOfFin_compl_singleton_eq_succAboveOrderEmb](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin-compl-singleton-eq-succaboveorderemb--0c5fd4f9c70845270ed87d76.md) | 309 | `result-track:0c5fd4f9c70845270ed87d767114ff0fb10058935307e424f227eb43b8871e79` |
| 47 | `lemma` | [orderEmbOfFin_compl_singleton_apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/orderemboffin-compl-singleton-apply--e03f962cdc30ee665652e6af.md) | 313 | `result-track:e03f962cdc30ee665652e6afcea7a297228cbb077e2d133ee027a44695686495` |
| 48 | `instance` | [(anonymous)](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/instance--d5fb3abf2faf131970e26967.md) | 321 | `declaration-track:d5fb3abf2faf131970e26967849e2c42b945fe45797868768b0bdcc5e077293a` |
| 49 | `theorem` | [sort_univ](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/sort-univ--8887bfdfab007fa87dbf2431.md) | 330 | `result-track:8887bfdfab007fa87dbf243157611c82e0266e683ec79bbf73cdbfec7c9d409f` |
| 50 | `def` | [Fintype.orderIsoFinOfCardEq](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/fintype-orderisofinofcardeq--11b129387478748dc1fef073.md) | 339 | `declaration-track:11b129387478748dc1fef073a33a2eefd8ab8a1d92630ecf23a23015bbbae197` |
| 51 | `lemma` | [nonempty_orderEmbedding_of_finite_infinite](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Sort/Variant2fd791b340659c85aea7c548aa01c61e9b73f02bc68346e2eb22b53cc9a1ec4d.lean/declarations/nonempty-orderembedding-of-finite-infinite--186503db0ab5e1eb977a8710.md) | 346 | `result-track:186503db0ab5e1eb977a8710043da4cae60681673879a04f6bc61eea583cdc68` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
