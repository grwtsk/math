# Verification target: GRWTSK.NumberTheory.AdditiveNumberTheory.Behrend.Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "eba11409f746e83907ea713f3bf49fbd27f455b4",
  "lexical_observation_count": 49,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `eba11409f746e83907ea713f3bf49fbd27f455b4`.

Source path: `GRWTSK/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.InnerProductSpace.PiL2` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Additive.SalemSpencer` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Combinatorics.Pigeonhole` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Complex.ExponentialBounds` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/box--f1b251edc1d8922b95bd0ea1.md) | 78 | `declaration-track:f1b251edc1d8922b95bd0ea18fa5d238a957cd154577f0a8baeeb36922289336` |
| 2 | `theorem` | [mem_box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/mem-box--dcd803e693e184bb8200fef2.md) | 82 | `result-track:dcd803e693e184bb8200fef2eb28b310a06916f7e8ce6ec207649ca57b8f8a36` |
| 3 | `theorem` | [card_box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/card-box--9e6e6e93a85e5038b332c96a.md) | 86 | `result-track:9e6e6e93a85e5038b332c96a6f2edaea8e7b2cabe6e14566084ac2d67acffdfe` |
| 4 | `theorem` | [box_zero](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/box-zero--cfac128fbe832645cc0bb8c1.md) | 90 | `result-track:cfac128fbe832645cc0bb8c1b95283bd6c7feb659ed12d5a811abb3b9bda21df` |
| 5 | `def` | [sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/sphere--fdc2bbc8037a2044d113bad2.md) | 95 | `declaration-track:fdc2bbc8037a2044d113bad246f675cc8640750bb2354cdf9bae11dfc369495d` |
| 6 | `theorem` | [sphere_zero_subset](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/sphere-zero-subset--979085c99844c012377505f6.md) | 99 | `result-track:979085c99844c012377505f6b26368c78ec323be9f7fd6729e72df49478710a2` |
| 7 | `theorem` | [sphere_zero_right](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/sphere-zero-right--b56908cbb52eabcf1c490f07.md) | 103 | `result-track:b56908cbb52eabcf1c490f07a58d38014a55e85896f3394ed0eb7b7d5fd03a08` |
| 8 | `theorem` | [sphere_subset_box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/sphere-subset-box--83c5ffa1c3d6c1d5fb5adbbe.md) | 106 | `result-track:83c5ffa1c3d6c1d5fb5adbbe25a13aa4396f9d6ecec176fc68749bd5ce50c03c` |
| 9 | `theorem` | [norm_of_mem_sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/norm-of-mem-sphere--13c0d0905cf409eb3f9ffb0d.md) | 110 | `result-track:13c0d0905cf409eb3f9ffb0d98afe6f3bcd145d58c7e582aa2f8cf8d0428a5c2` |
| 10 | `theorem` | [sphere_subset_preimage_metric_sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/sphere-subset-preimage-metric-sphere--800bd8118b071686cb02030c.md) | 117 | `result-track:800bd8118b071686cb02030c32d3a824742e795d665263e39b3e4e83be5b5a29` |
| 11 | `def` | [map](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/map--0c0c22279514966b5aa95d2e.md) | 125 | `declaration-track:0c0c22279514966b5aa95d2ea25324111c2605a53bb84dc278bc48df0177bc3b` |
| 12 | `theorem` | [map_zero](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/map-zero--9cd000657dcb935d7d00b487.md) | 132 | `result-track:9cd000657dcb935d7d00b487f2c9bdbc7c9fdace2e9d5f3d6ed5bfb3d94acdac` |
| 13 | `theorem` | [map_succ](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/map-succ--8a942447de7b23745c60efd3.md) | 135 | `result-track:8a942447de7b23745c60efd3cced47e9fd6ad341804cc2af82e60ef3f8ff555b` |
| 14 | `theorem` | [map_succ'](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/map-succ--7a23b92285e61fe112ad183b.md) | 140 | `result-track:7a23b92285e61fe112ad183bca8b1aec1f8f0c3cefc23da596ccf779d8c9ad85` |
| 15 | `theorem` | [map_monotone](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/map-monotone--e4ae0a3b65a23e0f0fca5350.md) | 144 | `result-track:e4ae0a3b65a23e0f0fca535090982b1912c1fa52727569a3d9b4584b19759f1f` |
| 16 | `theorem` | [map_mod](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/map-mod--b34287713775a2b61d2ffab3.md) | 148 | `result-track:b34287713775a2b61d2ffab369e900c59660f988f23c21478904e20a57638eab` |
| 17 | `theorem` | [map_eq_iff](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/map-eq-iff--a458106e2ffc6c24fa19425b.md) | 152 | `result-track:a458106e2ffc6c24fa19425b59a01450d76d26e40225dd401ee2ceaccf417514` |
| 18 | `theorem` | [map_injOn](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/map-injon--8e16f2454279b420b7e5afcd.md) | 161 | `result-track:8e16f2454279b420b7e5afcdeea86b0e489b8fd3d6b29d48ce4dca43cb275950` |
| 19 | `theorem` | [map_le_of_mem_box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/map-le-of-mem-box--e3de087eef9ce394b3b737b6.md) | 173 | `result-track:e3de087eef9ce394b3b737b614da02eeb578548f621544638c87ebf02d4bb69b` |
| 20 | `theorem` | [addSalemSpencer_sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/addsalemspencer-sphere--a08442dd878ce2298474fef2.md) | 178 | `result-track:a08442dd878ce2298474fef239c6092cd2b444d249a6740a74920f17edf75c9a` |
| 21 | `theorem` | [addSalemSpencer_image_sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/addsalemspencer-image-sphere--24c9036cecc49682ab81e1b0.md) | 190 | `result-track:24c9036cecc49682ab81e1b0a97aa17b27136b77fe833297bf1ba34fcf4d49cf` |
| 22 | `theorem` | [sum_sq_le_of_mem_box](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/sum-sq-le-of-mem-box--43f9148af7012afaba7f3a48.md) | 204 | `result-track:43f9148af7012afaba7f3a48e9adf8ce34f8c8bdc3c38dcdffa8be835254fe82` |
| 23 | `theorem` | [sum_eq](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/sum-eq--c8d09ffcf468e9c351ee00b7.md) | 211 | `result-track:c8d09ffcf468e9c351ee00b7775c4e8313fa1dffdc8af95339ca03f1069f1ca5` |
| 24 | `theorem` | [sum_lt](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/sum-lt--15e0ed594848adbbb1c29ede.md) | 217 | `result-track:15e0ed594848adbbb1c29ede23e803c6ca2260bb41c2fc65c717979efa952f0f` |
| 25 | `theorem` | [card_sphere_le_rothNumberNat](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/card-sphere-le-rothnumbernat--4f9c7b2d241381e34e4fdd3d.md) | 221 | `result-track:4f9c7b2d241381e34e4fdd3d77365470e02ed3e8e0f314a19690eccaa987e6ce` |
| 26 | `theorem` | [exists_large_sphere_aux](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/exists-large-sphere-aux--60a5c452cf861c994e8aa41d.md) | 249 | `result-track:60a5c452cf861c994e8aa41dfb71daf3132e9afc8116bc752a5a415088f3300e` |
| 27 | `theorem` | [exists_large_sphere](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/exists-large-sphere--38f1460ea7fe397c70021c7f.md) | 259 | `result-track:38f1460ea7fe397c70021c7f6102718b1e819afb2710837e5eea81c94b114713` |
| 28 | `theorem` | [bound_aux'](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/bound-aux--ad8c02d9ee60f8fcd731652f.md) | 279 | `result-track:ad8c02d9ee60f8fcd731652f332a1180509d7f62e13ca057875eb5da93c7f819` |
| 29 | `theorem` | [bound_aux](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/bound-aux--8281241efa318714c30609e6.md) | 284 | `result-track:8281241efa318714c30609e653c1db6e1545e8a17d066ee12cfaa32c7e3184f7` |
| 30 | `theorem` | [log_two_mul_two_le_sqrt_log_eight](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/log-two-mul-two-le-sqrt-log-eight--9934a8f57e4f9208ed7064e5.md) | 297 | `result-track:9934a8f57e4f9208ed7064e51ad439f12e860d5ca07b421bb7f78449afce9bde` |
| 31 | `theorem` | [two_div_one_sub_two_div_e_le_eight](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/two-div-one-sub-two-div-e-le-eight--91318e8185118caf9b0b87ec.md) | 308 | `result-track:91318e8185118caf9b0b87ec51ad9669f0a099d1a4a96c5d9f42d24eb7bf7d83` |
| 32 | `theorem` | [le_sqrt_log](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/le-sqrt-log--25c61944e3e33307fe23314d.md) | 315 | `result-track:25c61944e3e33307fe23314d8dbdd459882cf180d08171783ab3a798133020da` |
| 33 | `theorem` | [exp_neg_two_mul_le](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/exp-neg-two-mul-le--9547027af67f037f76dd4d03.md) | 340 | `result-track:9547027af67f037f76dd4d035215472a26764f1b74e25690cb9671741965a989` |
| 34 | `theorem` | [div_lt_floor](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/div-lt-floor--603770778651d0088f49da7c.md) | 355 | `result-track:603770778651d0088f49da7cd06b729b43041e79a784ca0430c00550563f3aad` |
| 35 | `theorem` | [ceil_lt_mul](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/ceil-lt-mul--7cc64dea55369b4eb79bfc8d.md) | 366 | `result-track:7cc64dea55369b4eb79bfc8da36a3108cb032075a1421b97ac896d82b90af1ce` |
| 36 | `def` | [nValue](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/nvalue--63cbf1b90ad7677325e820a1.md) | 378 | `declaration-track:63cbf1b90ad7677325e820a14cb6437bcbb21a313b9dc6c766d075479ab41a58` |
| 37 | `def` | [dValue](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/dvalue--71cf2dd6fa205fa56296d4c4.md) | 383 | `declaration-track:71cf2dd6fa205fa56296d4c48caaca6981d22d9ab2f75722ad244efc823b9d2f` |
| 38 | `theorem` | [nValue_pos](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/nvalue-pos--b341dfd02f0080fe80155d02.md) | 387 | `result-track:b341dfd02f0080fe80155d02b9a31ec0f92513c3409ef6fa29c03b09bbc2ec2d` |
| 39 | `theorem` | [two_le_nValue](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/two-le-nvalue--3da4c902b4ac2507f4444e18.md) | 391 | `result-track:3da4c902b4ac2507f4444e182bd2dc4fcdd1c61a10132d17e89c75a3aae582c1` |
| 40 | `theorem` | [three_le_nValue](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/three-le-nvalue--6d2066979c643901df6c7af3.md) | 400 | `result-track:6d2066979c643901df6c7af3e714269999aab66a07f46d9e6da091569fda22d5` |
| 41 | `theorem` | [dValue_pos](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/dvalue-pos--0e7e714048c84844a140430d.md) | 414 | `result-track:0e7e714048c84844a140430d2fc8f1badc186ad39824ce51e970328eddf3c86d` |
| 42 | `theorem` | [le_N](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/le-n--a1e87445e81a2f5f32753f27.md) | 437 | `result-track:a1e87445e81a2f5f32753f27e6a462d8f49c5115cdc146bea563b63a97234e8f` |
| 43 | `theorem` | [bound](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/bound--019de4dec0668b6deb349e3e.md) | 453 | `result-track:019de4dec0668b6deb349e3e3fe21faed4de16dcf941e6a393792ef48d75cb03` |
| 44 | `theorem` | [roth_lower_bound_explicit](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/roth-lower-bound-explicit--b0d76c40990bc243ffd6e571.md) | 489 | `result-track:b0d76c40990bc243ffd6e57184bb2390aeecb8c0cf9fa1283fd40c320d777f41` |
| 45 | `theorem` | [exp_four_lt](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/exp-four-lt--34aef08eba689d18f0e4b98b.md) | 523 | `result-track:34aef08eba689d18f0e4b98b9547454d19f78984c171174dfc816cd0771da775` |
| 46 | `theorem` | [four_zero_nine_six_lt_exp_sixteen](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/four-zero-nine-six-lt-exp-sixteen--da3214b6924edc5a593e5165.md) | 530 | `result-track:da3214b6924edc5a593e51653fdb0873601b03fd667a96a81f2d633aa0393063` |
| 47 | `theorem` | [lower_bound_le_one'](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/lower-bound-le-one--8146fce3891dfa2d8b6c3578.md) | 537 | `result-track:8146fce3891dfa2d8b6c3578f3d4df61647d93a943ae1f9dce8ae112538f5c4d` |
| 48 | `theorem` | [lower_bound_le_one](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/lower-bound-le-one--d2951226e668f25980db8dac.md) | 549 | `result-track:d2951226e668f25980db8dacfd47e927dd33b2a076de6ff5970461ab4206a6cf` |
| 49 | `theorem` | [roth_lower_bound](../../../../../mathematics/NumberTheory/AdditiveNumberTheory/Behrend/Variant44eaf48c7a2d62515af148875424ee53977110babc80d2af8c5740ebe8fef683.lean/declarations/roth-lower-bound--39408850062863a378ccfd1d.md) | 556 | `result-track:39408850062863a378ccfd1d4d59b32b69c6d5509f29dd0a2468894e1d0ff3d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
