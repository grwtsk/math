# Verification target: GRWTSK.Topology.GeneralTopology.Field.Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f1429aec19e1335c715c65b508ab68b18e763232",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f1429aec19e1335c715c65b508ab68b18e763232`.

Source path: `GRWTSK/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Pointwise.Interval` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Field` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Field` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Order.Group` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsTopologicalRing.of_norm](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/istopologicalring-of-norm--849c1c53b48ceacb4eb8cc9b.md) | 37 | `result-track:849c1c53b48ceacb4eb8cc9b8b6a64314996416fc7f38ad85a5258d950c813a0` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/instance--7af72146135b6561641ea4af.md) | 66 | `declaration-track:7af72146135b6561641ea4af1c4c512c210a09c8b5567e7ad873647eb7d66ac5` |
| 3 | `theorem` | [Filter.Tendsto.atTop_mul_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-attop-mul-pos--987163a29f3eeb5eeb53e205.md) | 72 | `result-track:987163a29f3eeb5eeb53e205c8ddd6eeaec7c4cdd9a94c515e6210f54e304533` |
| 4 | `theorem` | [Filter.Tendsto.pos_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-pos-mul-attop--ccb8075bedfaaee392de5dce.md) | 86 | `result-track:ccb8075bedfaaee392de5dce1b24487f065f6b4184298024f2c56c2e551ab745` |
| 5 | `theorem` | [Filter.Tendsto.atTop_mul_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-attop-mul-neg--401eb0397fc952a9d18d2d10.md) | 95 | `result-track:401eb0397fc952a9d18d2d1001951811aafc815970cebba85ec6bf5a51152ce0` |
| 6 | `theorem` | [Filter.Tendsto.neg_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-neg-mul-attop--5f95678563d5f0cf116a8825.md) | 103 | `result-track:5f95678563d5f0cf116a8825e20b2e73cabe92d88e176769fa3dc87d4c9fa534` |
| 7 | `theorem` | [Filter.Tendsto.atBot_mul_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-atbot-mul-pos--a49b9c258da3059a55ed95ae.md) | 109 | `result-track:a49b9c258da3059a55ed95aef555418912289a7b611e09594a6492f4a0f6259c` |
| 8 | `theorem` | [Filter.Tendsto.atBot_mul_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-atbot-mul-neg--f6fd0cc767e6a4ad194cb08e.md) | 119 | `result-track:f6fd0cc767e6a4ad194cb08ec27488135ca7385d83d0e51006be7407809586cf` |
| 9 | `theorem` | [Filter.Tendsto.pos_mul_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-pos-mul-atbot--2e78ad2a301369e34bdfa613.md) | 126 | `result-track:2e78ad2a301369e34bdfa613b3940a11294d4ef2db847590a9cd8e256bc83774` |
| 10 | `theorem` | [Filter.Tendsto.neg_mul_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-neg-mul-atbot--be1164925879956ad7f11899.md) | 135 | `result-track:be1164925879956ad7f1189956ced5d2db4f65a5403ecdbf4b72f297f51d7aae` |
| 11 | `lemma` | [inv_atTop₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/inv-attop--9110e5e0934b710f364183d4.md) | 140 | `result-track:9110e5e0934b710f364183d40679497b4bdb0b0649176046b72c0ecece11ccae` |
| 12 | `lemma` | [inv_atBot₀](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/inv-atbot--6ee3d8bc00faa84214f5cec1.md) | 145 | `result-track:6ee3d8bc00faa84214f5cec16697ce03fd2ea456fc2a168fb5f27b6e555656a9` |
| 13 | `lemma` | [inv_nhdsGT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/inv-nhdsgt-zero--88107ef0536a40431d98d161.md) | 150 | `result-track:88107ef0536a40431d98d1612d2f3e422b6d4ba8e00271b96f98708a29fee2b4` |
| 14 | `lemma` | [inv_nhdsLT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/inv-nhdslt-zero--2835a02a5e9c5aeb1c487a20.md) | 155 | `result-track:2835a02a5e9c5aeb1c487a2000c00e1ddec9513c30b020943dba4270854cbff5` |
| 15 | `theorem` | [tendsto_inv_nhdsGT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-inv-nhdsgt-zero--b346faf6c66a4142ce162155.md) | 159 | `result-track:b346faf6c66a4142ce162155b59bc41c56053ba5a7b8dafae489b776b31ba723` |
| 16 | `theorem` | [tendsto_inv_atTop_nhdsGT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-inv-attop-nhdsgt-zero--5e916051c20a41d253a23e17.md) | 166 | `result-track:5e916051c20a41d253a23e1728210908834018c0db457aa0a3126bc639bd6875` |
| 17 | `theorem` | [tendsto_inv_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-inv-attop-zero--c10241dbe3e5875a82d450df.md) | 172 | `result-track:c10241dbe3e5875a82d450df67d85cf39ed3b18e0a043c61729bb296c726365f` |
| 18 | `theorem` | [tendsto_inv_nhdsLT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-inv-nhdslt-zero--b86102835892ecf1dd13ed9d.md) | 176 | `result-track:b86102835892ecf1dd13ed9d82584b08ec41ed6c82135a3fa9e3dc993afa00a4` |
| 19 | `theorem` | [tendsto_inv_atBot_nhdsLT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-inv-atbot-nhdslt-zero--a9fee61ff84fa688f51077a6.md) | 183 | `result-track:a9fee61ff84fa688f51077a6ba7a5e9c68f1c1201047a06092226aa321e91af0` |
| 20 | `theorem` | [tendsto_inv_atBot_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-inv-atbot-zero--1cc6571485b4e5094dc8b883.md) | 189 | `result-track:1cc6571485b4e5094dc8b883c9646dc67eea08c0a38117e40b2177f33c7bb0fd` |
| 21 | `theorem` | [Filter.Tendsto.div_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-div-attop--e30c5c6da02911fb0d2164dd.md) | 192 | `result-track:e30c5c6da02911fb0d2164dda21ff12f8b7bac6641e88aa19aec31e8ab2c96cc` |
| 22 | `theorem` | [Filter.Tendsto.div_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-div-atbot--e8ca84817b0cdafd91527186.md) | 197 | `result-track:e8ca84817b0cdafd915271865829f8a6b21f1e7e4c7e0988e0ca573c3eebd5b9` |
| 23 | `lemma` | [Filter.Tendsto.const_div_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-const-div-attop--0be1e3323045e04cab9dbbd6.md) | 202 | `result-track:0be1e3323045e04cab9dbbd60062f05436637d102ceda598cf5327d038183395` |
| 24 | `lemma` | [Filter.Tendsto.const_div_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-const-div-atbot--893e50c8bf7dcb3e4e20d93d.md) | 206 | `result-track:893e50c8bf7dcb3e4e20d93d61cbcc3ad59eef58e8955c97892a4ccd6130ee68` |
| 25 | `theorem` | [Filter.Tendsto.inv_tendsto_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-inv-tendsto-attop--2143b5211eb1506ee6d5186e.md) | 210 | `result-track:2143b5211eb1506ee6d5186eb01992f12f7f2495a06619f2e14e15bab72fd979` |
| 26 | `theorem` | [Filter.Tendsto.inv_tendsto_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-inv-tendsto-atbot--a0dff27ef623caa1d8c5ea06.md) | 213 | `result-track:a0dff27ef623caa1d8c5ea068b1bb832f8e61aad1c14308243022090aae0917d` |
| 27 | `theorem` | [Filter.Tendsto.inv_tendsto_nhdsGT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-inv-tendsto-nhdsgt-zero--0639e489bc5cbeb99a31d8c9.md) | 216 | `result-track:0639e489bc5cbeb99a31d8c99f245266498550dc251af72e8c109e3a8377abe7` |
| 28 | `theorem` | [Filter.Tendsto.inv_tendsto_nhdsLT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/filter-tendsto-inv-tendsto-nhdslt-zero--32002d1127af8e48ebe2eb3f.md) | 222 | `result-track:32002d1127af8e48ebe2eb3f5758c523acf3d5b3eeb02bf0b83bc38cbe1a7208` |
| 29 | `theorem` | [bdd_le_mul_tendsto_zero'](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/bdd-le-mul-tendsto-zero--597b56f38440e5868937d52d.md) | 227 | `result-track:597b56f38440e5868937d52d2b892c688f45016322ca18405bcb35a91b02d2f6` |
| 30 | `theorem` | [bdd_le_mul_tendsto_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/bdd-le-mul-tendsto-zero--ea88c48b6e7fe7fe319ef372.md) | 241 | `result-track:ea88c48b6e7fe7fe319ef3729836c1226c9cab053f7ba5b999d1218797fe79fa` |
| 31 | `theorem` | [tendsto_bdd_div_atTop_nhds_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-bdd-div-attop-nhds-zero--3e4cd23844ed6ef37eae3693.md) | 253 | `result-track:3e4cd23844ed6ef37eae3693f608aff0d063068f892cc522419665d5dd16ec80` |
| 32 | `theorem` | [tendsto_pow_neg_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-pow-neg-attop--dbc35022e5bd35fe3c01e529.md) | 261 | `result-track:dbc35022e5bd35fe3c01e5295d2edbe7f48f64b55363ed5d3fa4d59ee3f87d41` |
| 33 | `theorem` | [tendsto_zpow_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-zpow-attop-zero--3dc76098c250ec669fd70209.md) | 265 | `result-track:3dc76098c250ec669fd7020980c31091162d5e3b964eb831059a0def3b1f6158` |
| 34 | `theorem` | [tendsto_const_mul_zpow_atTop_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-const-mul-zpow-attop-zero--364f8c8471ce04e8bcd521ca.md) | 271 | `result-track:364f8c8471ce04e8bcd521ca5ee883123b863e1991f4c0837e237fc2c6d79b32` |
| 35 | `theorem` | [tendsto_const_mul_pow_nhds_iff'](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-const-mul-pow-nhds-iff--fcce00fdeeac33dd632ed4fa.md) | 275 | `result-track:fcce00fdeeac33dd632ed4fade086962aa5517544626637f7b51b909d8197743` |
| 36 | `theorem` | [tendsto_const_mul_pow_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-const-mul-pow-nhds-iff--ce3374c111bdc6a7e9e46aea.md) | 286 | `result-track:ce3374c111bdc6a7e9e46aea6b00188c123819bc268d791a8aed0b2cbea7bbcf` |
| 37 | `theorem` | [tendsto_const_mul_zpow_atTop_nhds_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/tendsto-const-mul-zpow-attop-nhds-iff--c0fba92aa58957c235307fd7.md) | 290 | `result-track:c0fba92aa58957c235307fd722d941fff8f5125e782e0179147993f411c20213` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/instance--db41bcc60bd02cdb3aeda980.md) | 306 | `declaration-track:db41bcc60bd02cdb3aeda980923b37565127edb9011169fb3bd3d205eb1103e3` |
| 39 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/instance--ce797eb1164d094b5e68bef4.md) | 319 | `declaration-track:ce797eb1164d094b5e68bef47fb246bdff5d3af9fa9958f5b6f1115f4ec664cc` |
| 40 | `theorem` | [comap_mulLeft_nhdsGT_zero](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/comap-mulleft-nhdsgt-zero--0795a2f9e9c9f5eda4b64014.md) | 326 | `result-track:0795a2f9e9c9f5eda4b6401479ae2e6398412b16575b90adb462324e2d001ff8` |
| 41 | `theorem` | [eventually_nhdsGT_zero_mul_left](../../../../../mathematics/Topology/GeneralTopology/Field/Variant6d6c9bff70e7b1a9fabe1f28be0206c222d8f7623b161a488fb433d2053c6f79.lean/declarations/eventually-nhdsgt-zero-mul-left--c6c595bcbd3dc17bd3aa06ef.md) | 335 | `result-track:c6c595bcbd3dc17bd3aa06ef876cbc376b6d4f75159f2c11008387c967f78a01` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
