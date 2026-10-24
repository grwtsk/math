# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Dvd.Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1b098bc35de94eb066a1d23d707de14184f5cf7",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1b098bc35de94eb066a1d23d707de14184f5cf7`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Init.Data.List.Notation` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Nat.Basic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [dvd_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-refl--51b4ae5a990c0cb96a773a49.md) | 27 | `result-track:51b4ae5a990c0cb96a773a4903ff4f14e8bb689476c7eed01076ec4d2f829174` |
| 2 | `theorem` | [dvd_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-zero--0778626a1de76bf9d6ab17b3.md) | 29 | `result-track:0778626a1de76bf9d6ab17b3bf6bccbfd38bd9a9494859c1d9fecf4cdc278b5f` |
| 3 | `theorem` | [dvd_mul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-mul-left--fee08c4396db22f966cbb3d4.md) | 31 | `result-track:fee08c4396db22f966cbb3d4fa8fd898ef030b0d1f22474b03ebe0b64d1f740b` |
| 4 | `theorem` | [dvd_mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-mul-right--101b675223e4664048c93176.md) | 32 | `result-track:101b675223e4664048c93176a8826568a1d6d8573aa9ddb2c28ce997d97c1806` |
| 5 | `theorem` | [dvd_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-trans--a197667b48ed249d0fba8641.md) | 34 | `result-track:a197667b48ed249d0fba86415d9fdc345bd83b3532af3cbadbf6015983be20df` |
| 6 | `theorem` | [dvd_mul_left_of_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-mul-left-of-dvd--edc7219941ae91ce4ae9c64b.md) | 39 | `result-track:edc7219941ae91ce4ae9c64bc93c685b1707d315a49b26cec20a055e2f9f4338` |
| 7 | `theorem` | [dvd_mul_right_of_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-mul-right-of-dvd--0441f644c85f4f60f0d0975d.md) | 45 | `result-track:0441f644c85f4f60f0d0975defb7b0a47c84d061e38352b66b13ad80d6f29cad` |
| 8 | `theorem` | [eq_zero_of_zero_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/eq-zero-of-zero-dvd--ab32f9c8d2c73d59a9344fed.md) | 51 | `result-track:ab32f9c8d2c73d59a9344fed9f45144771d972b0c3b8173fc6da2b261179c3b0` |
| 9 | `theorem` | [zero_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/zero-dvd--e884a7b7aff31aa8ed8fbaa2.md) | 54 | `result-track:e884a7b7aff31aa8ed8fbaa280a96e3ae7e1b72d817c6889434612f00a4e6ce5` |
| 10 | `theorem` | [dvd_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-add--ea2829c353a6472b278b94d6.md) | 57 | `result-track:ea2829c353a6472b278b94d6b7b37d48eb0d275f0b64e4eff70e178aed68e354` |
| 11 | `theorem` | [dvd_add_iff_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-add-iff-right--b650becb6f784f5cdc6ae322.md) | 60 | `result-track:b650becb6f784f5cdc6ae322c8761c14588c0071a0a8bd78c6e39cfa9994610e` |
| 12 | `theorem` | [dvd_add_iff_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-add-iff-left--c1a303713adf8976f06aae75.md) | 66 | `result-track:c1a303713adf8976f06aae7597634432a35bde937701cffce068c8843cd4cc47` |
| 13 | `theorem` | [dvd_mod_iff](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-mod-iff--c219b9c736a50ae408f65e41.md) | 69 | `result-track:c219b9c736a50ae408f65e41414affccb5f3e618189233aa5fb03f185689cf66` |
| 14 | `theorem` | [le_of_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/le-of-dvd--25aebc16bc690b2d839ab2d2.md) | 73 | `result-track:25aebc16bc690b2d839ab2d2fe3c55b0e2eae2b29d1124ddb409aa7c87495304` |
| 15 | `theorem` | [dvd_antisymm](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-antisymm--59f4132b3e0754cdb5f4af06.md) | 84 | `result-track:59f4132b3e0754cdb5f4af0663ea4cfd009c5179e4e1ce6466b4f9eb0253e9cb` |
| 16 | `theorem` | [pos_of_dvd_of_pos](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/pos-of-dvd-of-pos--d0e3bb75212ad02fc49feed2.md) | 89 | `result-track:d0e3bb75212ad02fc49feed2f3d98f754bf44079a98548ddfe1c2ed6e4b98b64` |
| 17 | `theorem` | [one_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/one-dvd--fb209a8e768f19fbbd1c580f.md) | 92 | `result-track:fb209a8e768f19fbbd1c580fa47512cb1b1785dbb97c6a18dc615ae9319e37c8` |
| 18 | `theorem` | [eq_one_of_dvd_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/eq-one-of-dvd-one--2478de6b8d26cc61216086c0.md) | 94 | `result-track:2478de6b8d26cc61216086c09dff2ad055b52629ce0d676f3ac72f56aff8d5ea` |
| 19 | `theorem` | [mod_eq_zero_of_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/mod-eq-zero-of-dvd--0edeaa42c64dd2f0b564c4d9.md) | 96 | `result-track:0edeaa42c64dd2f0b564c4d95934a33c3a2162b37f1cb9f078f7a81d6fc5c974` |
| 20 | `theorem` | [dvd_of_mod_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-of-mod-eq-zero--f7a2192df5af625bfc29c95f.md) | 99 | `result-track:f7a2192df5af625bfc29c95f585e893f94e509b93ab521f88589614e99befed3` |
| 21 | `theorem` | [dvd_iff_mod_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-iff-mod-eq-zero--3d9f64a5e90f623ec5aae74b.md) | 104 | `result-track:3d9f64a5e90f623ec5aae74b56f503d96ca42f5efdd9e4f039d836072309ce50` |
| 22 | `instance` | [decidable_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/decidable-dvd--f09924b1be221c856232944e.md) | 107 | `declaration-track:f09924b1be221c856232944e1668060d3632bab9ea0d601f01e61140e28e864e` |
| 23 | `theorem` | [emod_pos_of_not_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/emod-pos-of-not-dvd--b84b830ff32b21639e935173.md) | 110 | `result-track:b84b830ff32b21639e935173221a4bc247bee6ced82a6fc16e304144d00b1e5e` |
| 24 | `theorem` | [mul_div_cancel'](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/mul-div-cancel--864120aa32ecd0da30a805c9.md) | 114 | `result-track:864120aa32ecd0da30a805c9d58663d473b0cbe6b4f06beb4c807264533b8a31` |
| 25 | `theorem` | [div_mul_cancel](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/div-mul-cancel--5c92a888b7bc3271eb059ae9.md) | 118 | `result-track:5c92a888b7bc3271eb059ae96eb297b6ab47e4d17eaa805a00640c3c67b57a04` |
| 26 | `theorem` | [mod_mod_of_dvd](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/mod-mod-of-dvd--00c437fd7d7eedf74c8d26e8.md) | 121 | `result-track:00c437fd7d7eedf74c8d26e87f2caac8f6a57cf7ae1d55513bb91386e285069a` |
| 27 | `theorem` | [dvd_of_mul_dvd_mul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-of-mul-dvd-mul-left--44e52c96bacdefc14793e438.md) | 127 | `result-track:44e52c96bacdefc14793e438221a3666098e1caa88c1d020a88daba24bc06a76` |
| 28 | `theorem` | [dvd_of_mul_dvd_mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-of-mul-dvd-mul-right--cf17a6017191a3b6c16cf856.md) | 133 | `result-track:cf17a6017191a3b6c16cf8563ae16ff2f56ff38276c8a6c1c6b6acd2abb73494` |
| 29 | `theorem` | [dvd_sub](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-sub--3c89eab5cf95327f8a89780e.md) | 136 | `result-track:3c89eab5cf95327f8a89780ec9f0f4910faf29c0d53cc9478a6fff5e4735ff07` |
| 30 | `theorem` | [dvd_sub_iff_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-sub-iff-right--fc9fb2e509955b93b1136515.md) | 142 | `result-track:fc9fb2e509955b93b11365150a70a94c315af7131511f474f51e13cfec9faaee` |
| 31 | `theorem` | [dvd_sub_iff_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-sub-iff-left--fffe3c94081ef09b9f186063.md) | 153 | `result-track:fffe3c94081ef09b9f1860632a137dd42fe6b097b350af30a21ad6da71b697a5` |
| 32 | `theorem` | [mul_dvd_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/mul-dvd-mul--58d9021d4158c92d1bc06f9d.md) | 157 | `result-track:58d9021d4158c92d1bc06f9da702b410d4a90f9c8f10cea78a89c2254f385e2a` |
| 33 | `theorem` | [mul_dvd_mul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/mul-dvd-mul-left--abe5c6c414e9b51eb1635d1b.md) | 161 | `result-track:abe5c6c414e9b51eb1635d1b242e294d05e50841dca7a7f8f19702d09f56dbc1` |
| 34 | `theorem` | [mul_dvd_mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/mul-dvd-mul-right--94a7ceae1e876fa7fda85fc4.md) | 164 | `result-track:94a7ceae1e876fa7fda85fc4f235e60630323e213f2320971f87dd4163f5b538` |
| 35 | `theorem` | [dvd_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-one--ca58251e283252c9cff29287.md) | 167 | `result-track:ca58251e283252c9cff2928767c8046d01f48eb614b4a28ffa23ff0d5210e9ca` |
| 36 | `theorem` | [mul_div_assoc](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/mul-div-assoc--d13092dd7138abcd330daa3a.md) | 170 | `result-track:d13092dd7138abcd330daa3a89b28efae8871a46c3c3039bcd2c58a2a8f66119` |
| 37 | `theorem` | [dvd_eq_true_of_mod_eq_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-eq-true-of-mod-eq-zero--9f7415e3784954e68ac2103f.md) | 179 | `result-track:9f7415e3784954e68ac2103fed397f856305fc04277ffc0bea6e384442a9c6c9` |
| 38 | `theorem` | [dvd_eq_false_of_mod_ne_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Dvd/Variant0e1a32ede4128aa8ed48de4a06e896763d8d4d9ae6a4974ccb6656ce7631911f.lean/declarations/dvd-eq-false-of-mod-ne-zero--429e87e7903fedbbe422dfb4.md) | 182 | `result-track:429e87e7903fedbbe422dfb46a18f2052982c9ec3183d7b065bbe1becc47f6e4` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
