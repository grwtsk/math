# Verification target: GRWTSK.Topology.GeneralTopology.Content.Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "55efcd8ac84c6053e3b9188d54f86455d729498f",
  "lexical_observation_count": 47,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `55efcd8ac84c6053e3b9188d54f86455d729498f`.

Source path: `GRWTSK/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.MeasureTheory.Measure.MeasureSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Measure.Regular` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Content](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/content--2614d751396797e7a01f4fb4.md) | 67 | `declaration-track:2614d751396797e7a01f4fb43b53e92ba0d5b5263f4f5584b32ea95096cacba4` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/instance--fdce0e75c4ed19797ee5fbe2.md) | 76 | `declaration-track:fdce0e75c4ed19797ee5fbe2a786f2f9a2562377780f46c3def8fdc1d6c99414` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/instance--64740835d4098e9f3f6149fd.md) | 84 | `declaration-track:64740835d4098e9f3f6149fdd1b6572bf30b6a1446ab7cb9f6b79cd463dd41d6` |
| 4 | `lemma` | [toFun_eq_toNNReal_apply](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/tofun-eq-tonnreal-apply--5b6b1b21b5935fc388680c40.md) | 91 | `result-track:5b6b1b21b5935fc388680c4092a596293ebe19501f0dfa88c28892dc04e6c1ef` |
| 5 | `lemma` | [mk_apply](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/mk-apply--f56653e27ae7c2103582783a.md) | 94 | `result-track:f56653e27ae7c2103582783a88938b6a9c9f7ef6e282a208f780a0c355d59d3f` |
| 6 | `lemma` | [apply_ne_top](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/apply-ne-top--586cb3e31010c06cd3c974b0.md) | 97 | `result-track:586cb3e31010c06cd3c974b0f24cac46b4061a74858787d3102bcb791ca11fd3` |
| 7 | `theorem` | [apply_eq_coe_toFun](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/apply-eq-coe-tofun--3fa07a9a94f5b067a7117c57.md) | 100 | `result-track:3fa07a9a94f5b067a7117c5776ac2157fcc54247228d9a65052e15c6ed674938` |
| 8 | `theorem` | [mono](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/mono--a9fc1287eff13752fc56d0c9.md) | 103 | `result-track:a9fc1287eff13752fc56d0c95ad4c3eeb5309c7119a646d72ac8739a4a421d72` |
| 9 | `theorem` | [sup_disjoint](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/sup-disjoint--bfda7dc8587b00cc5d197629.md) | 106 | `result-track:bfda7dc8587b00cc5d19762949172a8d05f94afed214b0bd60cfdbb9a0d1e93e` |
| 10 | `theorem` | [sup_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/sup-le--c807367509a4bee10f7469b2.md) | 111 | `result-track:c807367509a4bee10f7469b2dc31e4c7e908c26dc278321e0fceca9fc4e4daab` |
| 11 | `theorem` | [lt_top](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/lt-top--398be51be3f59a4a836c9221.md) | 114 | `result-track:398be51be3f59a4a836c92215ca4eb2246a52c1618366934eff6668020129a70` |
| 12 | `theorem` | [empty](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/empty--80501321aa58547ac12daf6a.md) | 117 | `result-track:80501321aa58547ac12daf6a7243e9f127d2fdb6e8e70770b0d106babd973961` |
| 13 | `def` | [innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/innercontent--e3926fb07d0b0a38736b0359.md) | 122 | `declaration-track:e3926fb07d0b0a38736b0359939f60cec0fdcb0ec6bbdb2f12f130839b4151ea` |
| 14 | `theorem` | [le_innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/le-innercontent--f917b8af2684872c1c2ae8a0.md) | 125 | `result-track:f917b8af2684872c1c2ae8a01dd8308f9ec8997fbf7d26c9a3264cd63dfdba3a` |
| 15 | `theorem` | [innerContent_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/innercontent-le--8de5c093dea094a524f01d3e.md) | 129 | `result-track:8de5c093dea094a524f01d3e406dbd496ff5d5f52482c6e246d3de292302806d` |
| 16 | `theorem` | [innerContent_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/innercontent-of-iscompact--929ddf8393483c297e1ecc5f.md) | 133 | `result-track:929ddf8393483c297e1ecc5f6da428e77805d19422182be2f713ee85cee95bb3` |
| 17 | `theorem` | [innerContent_bot](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/innercontent-bot--dd7f1908dcf68322147b83b4.md) | 137 | `result-track:dd7f1908dcf68322147b83b4de7846c9378d43681c243b9e937ce787051fb937` |
| 18 | `theorem` | [innerContent_mono](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/innercontent-mono--16f0180d208e030693d9c323.md) | 147 | `result-track:16f0180d208e030693d9c3237bbb527f3e083c3d6f0bd74de1e403c432c81c5f` |
| 19 | `theorem` | [innerContent_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/innercontent-exists-compact--ea771aa4df641b58b039fb01.md) | 151 | `result-track:ea771aa4df641b58b039fb01da84703ad86f46b75b9b9a8cf8e4f06e9a13e7d5` |
| 20 | `theorem` | [innerContent_iSup_nat](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/innercontent-isup-nat--1edadc55d34ddd56ee30f11f.md) | 163 | `result-track:1edadc55d34ddd56ee30f11f0af4e57f06878d9de4e08eb843bf32e6247d43dd` |
| 21 | `theorem` | [innerContent_iUnion_nat](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/innercontent-iunion-nat--fbcb833b8ff2b3f7ef0b18bc.md) | 191 | `result-track:fbcb833b8ff2b3f7ef0b18bcda161aa50e8daa5b6e699b4d3e343f03f5b5748a` |
| 22 | `theorem` | [innerContent_comap](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/innercontent-comap--17e8cdcce02c38febf3c1bab.md) | 197 | `result-track:17e8cdcce02c38febf3c1bab7ec26211d0a35d8341c766c06fc84040422eeb11` |
| 23 | `theorem` | [is_mul_left_invariant_innerContent](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/is-mul-left-invariant-innercontent--7cb35d91c6ea6b62872ccbde.md) | 205 | `result-track:7cb35d91c6ea6b62872ccbdecd4ce09b003a45ad2afc1bf7766821afb5258ce7` |
| 24 | `theorem` | [innerContent_pos_of_is_mul_left_invariant](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/innercontent-pos-of-is-mul-left-invariant--eddc565fcff154cbe86d91bf.md) | 212 | `result-track:eddc565fcff154cbe86d91bf25d1d4f9d8499ce872a15f2055c387485437c4fc` |
| 25 | `theorem` | [innerContent_mono'](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/innercontent-mono--7e3c0c127bad6b94cf79375d.md) | 226 | `result-track:7e3c0c127bad6b94cf79375d53bd5f1ecf936c218b1e8b7bcc2c7ffded333520` |
| 26 | `def` | [outerMeasure](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure--b7a42289dcd0b85e2cd13147.md) | 233 | `declaration-track:b7a42289dcd0b85e2cd1314729c83c172093d84a69ae15ac341f2da4d3a12569` |
| 27 | `theorem` | [outerMeasure_opens](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure-opens--3cca3ed6e56ffbdc9da44193.md) | 238 | `result-track:3cca3ed6e56ffbdc9da44193004d0fe157319ac35f91596bb63e4cce65848822` |
| 28 | `theorem` | [outerMeasure_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure-of-isopen--e1903229c0983ec9516eab88.md) | 241 | `result-track:e1903229c0983ec9516eab88118b401eb97886c9d1a583d4cfaafd0531978bd0` |
| 29 | `theorem` | [outerMeasure_le](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure-le--fbf614464f3d0e461f824934.md) | 245 | `result-track:fbf614464f3d0e461f82493497854572a72ac96fc03f0db64f989d3aa59510ec` |
| 30 | `theorem` | [le_outerMeasure_compacts](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/le-outermeasure-compacts--d967ab7162d181e2c7a860f1.md) | 249 | `result-track:d967ab7162d181e2c7a860f1ae5bafaaade2e34c8cc374d6af7cbc91bc5f5eba` |
| 31 | `theorem` | [outerMeasure_eq_iInf](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure-eq-iinf--37b7967898615f4ceb03be5a.md) | 256 | `result-track:37b7967898615f4ceb03be5a4d5b253e0053ce0e0f1db1ef2ad45aaca26595ea` |
| 32 | `theorem` | [outerMeasure_interior_compacts](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure-interior-compacts--a7beda2ea8ef4c7d312f3df7.md) | 260 | `result-track:a7beda2ea8ef4c7d312f3df76a3ece13dd1aa2de2292d025ea34c8e1ca5c3c9f` |
| 33 | `theorem` | [outerMeasure_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure-exists-compact--0f3f3c555aa59c7b88c7e101.md) | 263 | `result-track:0f3f3c555aa59c7b88c7e10101aefa68d18caa004b29d8068c046b59d40c767f` |
| 34 | `theorem` | [outerMeasure_exists_open](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure-exists-open--b03221e6e721e2e0f9930b00.md) | 269 | `result-track:b03221e6e721e2e0f9930b00a642d09feeb3a4f1448d2171cea1e383c11758da` |
| 35 | `theorem` | [outerMeasure_preimage](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure-preimage--77fc7a859e183c2fcb8127ce.md) | 276 | `result-track:77fc7a859e183c2fcb8127ce45f7f9cc0904f13a1c2d61792ad11154ab296b1e` |
| 36 | `theorem` | [outerMeasure_lt_top_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure-lt-top-of-iscompact--0fe2408c3e5c45e33b2279ed.md) | 283 | `result-track:0fe2408c3e5c45e33b2279ed462f88bc6c6a4b456b46457e0a600faa614ad213` |
| 37 | `theorem` | [is_mul_left_invariant_outerMeasure](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/is-mul-left-invariant-outermeasure--06032c3ac9aa8015df639968.md) | 294 | `result-track:06032c3ac9aa8015df639968c492d01c49eef9b587d070560e5d02010504997b` |
| 38 | `theorem` | [outerMeasure_caratheodory](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure-caratheodory--c401a67a2779b9dba2c10712.md) | 299 | `result-track:c401a67a2779b9dba2c10712285bc3c9dceb860d56deabec2caac2bf83cea644` |
| 39 | `theorem` | [outerMeasure_pos_of_is_mul_left_invariant](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outermeasure-pos-of-is-mul-left-invariant--6b70cd47d8789100f5afb590.md) | 308 | `result-track:6b70cd47d8789100f5afb590b45cebd5d7a8cf941bf3d6402b382bc4e632af72` |
| 40 | `theorem` | [borel_le_caratheodory](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/borel-le-caratheodory--c78a35f9516e91df7f9cd2ae.md) | 317 | `result-track:c78a35f9516e91df7f9cd2ae4f20b00925b2700f688727fea7ed3d08c9938fb6` |
| 41 | `def` | [measure](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/measure--77a1ddf8b3f1ab4eca99f27d.md) | 360 | `declaration-track:77a1ddf8b3f1ab4eca99f27dcb605935b17b930754d95ab4aad1e5f49ae65db9` |
| 42 | `theorem` | [measure_apply](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/measure-apply--ea4ca0c0a17114606de07e3b.md) | 363 | `result-track:ea4ca0c0a17114606de07e3b3b6a28b902b324090e11b7eeef678606ab1deca9` |
| 43 | `instance` | [outerRegular](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/outerregular--a5b66b2d4e7984261d4d4167.md) | 366 | `declaration-track:a5b66b2d4e7984261d4d41672aeb88ee84b1d2f49f4bd0abac1dc1714d12b97e` |
| 44 | `instance` | [regular](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/regular--06f33686ebeb8027f6f6453e.md) | 375 | `declaration-track:06f33686ebeb8027f6f6453e58f734ebb8ee3824614a0fa0b6381174c8fe7466` |
| 45 | `def` | [ContentRegular](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/contentregular--038fbacccd9c364a48cd89f8.md) | 394 | `declaration-track:038fbacccd9c364a48cd89f820cd4c7f471890127b949d951fda25ba7decd870` |
| 46 | `theorem` | [contentRegular_exists_compact](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/contentregular-exists-compact--8519d0b60c0994f1a34a605d.md) | 398 | `result-track:8519d0b60c0994f1a34a605d46b4506c7377875353d68e28a327eb17439327ac` |
| 47 | `theorem` | [measure_eq_content_of_regular](../../../../../mathematics/Topology/GeneralTopology/Content/Variantdc9771160714ac87ef206c4e62c9b92652e78bd0753608d32fc21712a101f72f.lean/declarations/measure-eq-content-of-regular--033ad058979892e48cb64265.md) | 414 | `result-track:033ad058979892e48cb64265c1c3414bd934f6ea4d0b7e27ba05ae28b4faa4a6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
