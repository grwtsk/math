# Verification target: GRWTSK.Algebra.GroupTheory.Lemmas.Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "076a9e183e524f137de95d4aacdaeb41fa53189c",
  "lexical_observation_count": 59,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `076a9e183e524f137de95d4aacdaeb41fa53189c`.

Source path: `GRWTSK/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Int.Order.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Nat.Cast.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ofNatHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/ofnathom--bfa5ffff1447a7e39316d1e4.md) | 33 | `declaration-track:bfa5ffff1447a7e39316d1e49d4651b5dff32c319c9ac521328b10d6cfccbdc5` |
| 2 | `theorem` | [coe_nat_pos](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/coe-nat-pos--33dc3aa3a44565183989ae97.md) | 39 | `result-track:33dc3aa3a44565183989ae97c23ebe11a60816134d114b514e2460d22b9ff159` |
| 3 | `theorem` | [coe_nat_succ_pos](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/coe-nat-succ-pos--740cdb18e78c1a8d009ee6cd.md) | 43 | `result-track:740cdb18e78c1a8d009ee6cd2899a33da216a69493bcfa0a7d4f4f36f827f535` |
| 4 | `lemma` | [toNat_lt'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/tonat-lt--3e67c660cb9866dc23daed5b.md) | 47 | `result-track:3e67c660cb9866dc23daed5be04a801feb40961eb6467829d6eff797151d85b7` |
| 5 | `lemma` | [natMod_lt](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/natmod-lt--43828fb28f05454a87e897db.md) | 51 | `result-track:43828fb28f05454a87e897db05bf0bf7221c862b5e8424eaf6508d7a15d64498` |
| 6 | `theorem` | [cast_mul](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-mul--b402134b90a29068efedf2b7.md) | 58 | `result-track:b402134b90a29068efedf2b7de9f5392eac8d87c2c43963d586cd2a349870335` |
| 7 | `theorem` | [cast_ite](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-ite--78288114afc7595c5cce6320.md) | 64 | `result-track:78288114afc7595c5cce6320ff87ec7edf15310684cb1651152b2120ea0fce0f` |
| 8 | `def` | [castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/castaddhom--0fd44b34ae2db933671ae330.md) | 70 | `declaration-track:0fd44b34ae2db933671ae330bf85079931db6a6957793f24051fd49e038ec66b` |
| 9 | `theorem` | [coe_castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/coe-castaddhom--cde4beeab2d46f8321ace821.md) | 77 | `result-track:cde4beeab2d46f8321ace8213a497b6912b0b31758840545a28d66d9bd54d803` |
| 10 | `def` | [castRingHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/castringhom--335425c8943bce7dcae1ef35.md) | 82 | `declaration-track:335425c8943bce7dcae1ef35e2e12265c0784629eaecdf11822251c366f3b951` |
| 11 | `theorem` | [coe_castRingHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/coe-castringhom--fcc8a557e4f2957b6a714e35.md) | 91 | `result-track:fcc8a557e4f2957b6a714e35c0c4d23ac980d494a8b9e4ec5cd3916431435285` |
| 12 | `theorem` | [cast_commute](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-commute--8286937cde9a734ca28ad492.md) | 95 | `result-track:8286937cde9a734ca28ad492181da93e9f1365a3a8bf058832318e30b463ce81` |
| 13 | `theorem` | [cast_comm](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-comm--e4d80e119abc2a13f72ba0ae.md) | 102 | `result-track:e4d80e119abc2a13f72ba0ae9ee7d83b92220e74f8adf07d8e17488c2403ce99` |
| 14 | `theorem` | [commute_cast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/commute-cast--4b0d9e196b730db32fa01591.md) | 106 | `result-track:4b0d9e196b730db32fa01591c0fd4d35a6f9c369ba91b582d5a4706affff3da0` |
| 15 | `theorem` | [cast_mono](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-mono--37434590a4e9a6e49a8531db.md) | 110 | `result-track:37434590a4e9a6e49a8531db27d62cb42bc4bfb312944ca19835dd6b680c2a71` |
| 16 | `theorem` | [cast_nonneg](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-nonneg--b0480acb1c080bf855016443.md) | 119 | `result-track:b0480acb1c080bf855016443b408606db86921108c1d2c57a5c7e27e7ebb2454` |
| 17 | `theorem` | [cast_le](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-le--3f2b927be02e8ec73d652c2e.md) | 127 | `result-track:3f2b927be02e8ec73d652c2e20a9b99fb34f7cc012d7efbffc61817e01622916` |
| 18 | `theorem` | [cast_strictMono](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-strictmono--221caaee1b4174bbf154fa64.md) | 131 | `result-track:221caaee1b4174bbf154fa64fd975c42c0678cf7c876785e8365c7cf191df033` |
| 19 | `theorem` | [cast_lt](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-lt--f7b80b8b8f7649541fab0714.md) | 136 | `result-track:f7b80b8b8f7649541fab0714222dbd71e2fd61337da1b4e5393892926be814ee` |
| 20 | `theorem` | [cast_nonpos](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-nonpos--e235777ab4d65b57528678d5.md) | 141 | `result-track:e235777ab4d65b57528678d5920c4433b0e16061c95cfad8146af402d349b9fe` |
| 21 | `theorem` | [cast_pos](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-pos--ada7359389ed579df40968ff.md) | 146 | `result-track:ada7359389ed579df40968ff0d6e359a76b55e8a24d548c0b45dad566faa8f89` |
| 22 | `theorem` | [cast_lt_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-lt-zero--617902f8cf790265eb9b7d9b.md) | 151 | `result-track:617902f8cf790265eb9b7d9bb3766d54a2b47365630d3bd5d39bb617c53ca424` |
| 23 | `theorem` | [cast_min](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-min--181f3b315e2b2a4556e0afdd.md) | 160 | `result-track:181f3b315e2b2a4556e0afdddd7ddee6478c7504e9d981b061dd1c23b1531db2` |
| 24 | `theorem` | [cast_max](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-max--2df2a4ad8ec07e92cd9da23a.md) | 165 | `result-track:2df2a4ad8ec07e92cd9da23a0be18bd1770b80e6e0e02309db467d1c10c08789` |
| 25 | `theorem` | [cast_abs](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-abs--169252601c7bcf93b07d4f62.md) | 170 | `result-track:169252601c7bcf93b07d4f6239d3d3e283d2025063f2d5ad55a436248344374b` |
| 26 | `theorem` | [cast_one_le_of_pos](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-one-le-of-pos--f1416d704e1d8101240490a9.md) | 173 | `result-track:f1416d704e1d8101240490a98babd372caade88d0a5046525ae78c8409aa0295` |
| 27 | `theorem` | [cast_le_neg_one_of_neg](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-le-neg-one-of-neg--f038cd3f211d75ddf44dbddc.md) | 176 | `result-track:f038cd3f211d75ddf44dbddc1e0dd5d8cf5b45917579177fda60796d9dfb1a58` |
| 28 | `theorem` | [cast_le_neg_one_or_one_le_cast_of_ne_zero](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-le-neg-one-or-one-le-cast-of-ne-zero--382ad38a6bf08400746b855e.md) | 183 | `result-track:382ad38a6bf08400746b855edf975d53758159f257cdd33dc56d62972cb76306` |
| 29 | `theorem` | [nneg_mul_add_sq_of_abs_le_one](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/nneg-mul-add-sq-of-abs-le-one--0923249180789d3e57a6f843.md) | 189 | `result-track:0923249180789d3e57a6f8438d87741b62bf9c6ac21239dcc11cda65a4717cff` |
| 30 | `theorem` | [cast_natAbs](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/cast-natabs--9f37119480233d8503996ead.md) | 203 | `result-track:9f37119480233d8503996eadfc1f232e1ea354faee1e72d5e429dfca9148660e` |
| 31 | `theorem` | [coe_int_dvd](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/coe-int-dvd--c2fc2fbfd21d9ab8f6639984.md) | 211 | `result-track:c2fc2fbfd21d9ab8f66399846021dfb035c152f94575909a2307ff6694f3acf0` |
| 32 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/ext-int--2e2a150bad7d2f383bf82f54.md) | 228 | `result-track:2e2a150bad7d2f383bf82f5469a19ec7200f1f1a8c9a31f3d614e95a34c11506` |
| 33 | `theorem` | [eq_int_castAddHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/eq-int-castaddhom--614614aaaff4f49c5096c17e.md) | 238 | `result-track:614614aaaff4f49c5096c17e0dba492ca5cb440c33ccb533f873e1591daa8ad1` |
| 34 | `theorem` | [eq_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/eq-intcast--8ae68b9f65a7ca0951ce9d19.md) | 244 | `result-track:8ae68b9f65a7ca0951ce9d19fb99febd04c968d25cc525db2eca8f2b483e31c0` |
| 35 | `theorem` | [Int.castAddHom_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/int-castaddhom-int--64b4a98af8093b69b182ff1c.md) | 250 | `result-track:64b4a98af8093b69b182ff1c96a6dfac7c5605bb48dbf896053363ec96f36a15` |
| 36 | `theorem` | [ext_mint](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/ext-mint--e57d7afe5a546288ada2855b.md) | 261 | `result-track:e57d7afe5a546288ada2855b767448bd9f433c0cb3f2baefb6592086a3d99c48` |
| 37 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/ext-int--c053df82ecd5739197bc4ed8.md) | 267 | `result-track:c053df82ecd5739197bc4ed8b5c95dbfcfd3f8345426b75ece1f382d20d46f1e` |
| 38 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/ext-int--1d6cefd99f099d81928c1ae1.md) | 284 | `result-track:1d6cefd99f099d81928c1ae150845e6dc58e7f7bb0a7207e5ceb6cf72e0cb1cc` |
| 39 | `theorem` | [ext_int'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/ext-int--aef4428f7976c97c6575904a.md) | 294 | `result-track:aef4428f7976c97c6575904a5711bef93919b13b64978ea2bf72827c9b27c49e` |
| 40 | `theorem` | [eq_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/eq-intcast--6e1491ee91906b0de2168282.md) | 310 | `result-track:6e1491ee91906b0de21682825bcabea6e3d8b2856378f8db922b3f35e81026da` |
| 41 | `theorem` | [map_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/map-intcast--5631ab59cb53ad1c106381d3.md) | 315 | `result-track:5631ab59cb53ad1c106381d3aa84a8a9162769a15319a1b0035e1e25d6f58b52` |
| 42 | `theorem` | [eq_intCast'](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/eq-intcast--06dc6d309be42a50124bc51b.md) | 321 | `result-track:06dc6d309be42a50124bc51b672397535aafe81dd01c4692392530e95ff04a73` |
| 43 | `theorem` | [ext_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/ext-int--809424ea9ca8023c3fb0a732.md) | 325 | `result-track:809424ea9ca8023c3fb0a73269b2d09f64f825d99effa0f3d983808c1241cc42` |
| 44 | `instance` | [Int.subsingleton_ringHom](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/int-subsingleton-ringhom--f2fd2c7e49f05fa9da72a279.md) | 329 | `declaration-track:f2fd2c7e49f05fa9da72a279fe4d2175c0118194036fa9ed64272dd38bd1f7b4` |
| 45 | `theorem` | [Int.castRingHom_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/int-castringhom-int--97ddc58be5c55499ac8087f1.md) | 340 | `result-track:97ddc58be5c55499ac8087f146ab2660affe25dfcecee114680494a49201cce7` |
| 46 | `instance` | [intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/intcast--4005b8c33278ac8d33a6b56e.md) | 348 | `declaration-track:4005b8c33278ac8d33a6b56ea602c6733a95e5b6c8af846e6dfbb0c073b018f0` |
| 47 | `theorem` | [int_apply](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/int-apply--149a5c66987dadc31f8463d0.md) | 351 | `result-track:149a5c66987dadc31f8463d02ed12befc3f012e072e3740ac2f2a56d3cdef47c` |
| 48 | `theorem` | [coe_int](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/coe-int--74d4b722fba366457a9233dd.md) | 356 | `result-track:74d4b722fba366457a9233ddf8c81497fa6a64f27485efd2a7fb475c4cae9a3a` |
| 49 | `theorem` | [Sum.elim_intCast_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/sum-elim-intcast-intcast--e8fc148dd20adfc90f32b581.md) | 362 | `result-track:e8fc148dd20adfc90f32b5817a0635eafbd29dfcbca9a490dababad715a54cb2` |
| 50 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/instance--15f613b2f5aa3bbf29d9a126.md) | 372 | `declaration-track:15f613b2f5aa3bbf29d9a126871fc7201b6bf5469680433630c915986d923efc` |
| 51 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/instance--25d539af836addc61e843d93.md) | 375 | `declaration-track:25d539af836addc61e843d93fef48172adbafa37ef9c769bd29958fbf547f3b4` |
| 52 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/instance--0561119132bc1891b9343a60.md) | 378 | `declaration-track:0561119132bc1891b9343a607865c14337edc645bc1e857c3f08105f7e73f47f` |
| 53 | `theorem` | [toDual_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/todual-intcast--6426b72dc5dc2f8f9cd35e5c.md) | 382 | `result-track:6426b72dc5dc2f8f9cd35e5c3c1b1ae81728f29b6c520a5c7fc0b007b5ea8138` |
| 54 | `theorem` | [ofDual_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/ofdual-intcast--624eeb8dcbcc625a6592110b.md) | 387 | `result-track:624eeb8dcbcc625a6592110bdce7bdfd4f5e83913b382850e06ef3b55b84dbb5` |
| 55 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/instance--25b27b32064a5847b2fc7968.md) | 394 | `declaration-track:25b27b32064a5847b2fc796873261e51b16265bad2929a9922f5561225c2f188` |
| 56 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/instance--94db292ebdb6885b3233e032.md) | 397 | `declaration-track:94db292ebdb6885b3233e032db1bba082e58aab3387bad72872afa4624df2258` |
| 57 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/instance--300d2488777b34f845063f2f.md) | 400 | `declaration-track:300d2488777b34f845063f2f951de75ac2cc8d22d0e48138075c480f316c65a4` |
| 58 | `theorem` | [toLex_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/tolex-intcast--8bee11b414294e87a3800f85.md) | 404 | `result-track:8bee11b414294e87a3800f85b55a56b75378035d156f9b61ad3aeca14c5ab28d` |
| 59 | `theorem` | [ofLex_intCast](../../../../../mathematics/Algebra/GroupTheory/Lemmas/Variantbbc61183e0fced3b496355d4be9be109994b49d28358be2f8dda9e7abcabb23c.lean/declarations/oflex-intcast--4175a3fb3faa56e19513f976.md) | 409 | `result-track:4175a3fb3faa56e19513f976b72afae36020ac248618c4d8bdfa92bf9cb93235` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
