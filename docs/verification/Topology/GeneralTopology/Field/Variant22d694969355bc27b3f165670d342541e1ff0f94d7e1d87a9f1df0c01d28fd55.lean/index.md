# Verification target: GRWTSK.Topology.GeneralTopology.Field.Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5b4c4e16865b7338379cdfd80904b721393fad53",
  "lexical_observation_count": 46,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5b4c4e16865b7338379cdfd80904b721393fad53`.

Source path: `GRWTSK/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Field.Defs` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.AtTopBot.Ring` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [tendsto_const_mul_atTop_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-attop-of-pos--e0dffd6fa0038351d40be232.md) | 28 | `result-track:e0dffd6fa0038351d40be2326faadf09bcbae66e509a44feface539627372719` |
| 2 | `theorem` | [tendsto_mul_const_atTop_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-mul-const-attop-of-pos--eb1a4b4511b482b9300d3f4c.md) | 35 | `result-track:eb1a4b4511b482b9300d3f4cd3aa9e561f7144b4cfd2d484272bcb2f9256bbcd` |
| 3 | `lemma` | [tendsto_div_const_atTop_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-div-const-attop-of-pos--5fa8e65daa7d7fa7fc268750.md) | 41 | `result-track:5fa8e65daa7d7fa7fc268750c672463902a9a291cc5a882e2c0211c8aff97831` |
| 4 | `theorem` | [tendsto_const_mul_atTop_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-attop-iff-pos--a43405e77e0f97d45dad6557.md) | 47 | `result-track:a43405e77e0f97d45dad6557827267ce0b267d900c676d142ad4d210ba2fc175` |
| 5 | `theorem` | [tendsto_mul_const_atTop_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-mul-const-attop-iff-pos--bc0c64cd3407f6f56b6b6309.md) | 55 | `result-track:bc0c64cd3407f6f56b6b630914dbc786817480bde354431a76d0b89219f6f992` |
| 6 | `lemma` | [tendsto_div_const_atTop_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-div-const-attop-iff-pos--18d271e7b8be27d0fac3e160.md) | 61 | `result-track:18d271e7b8be27d0fac3e160e174d848b9f2c75baf60d85ce1c467964bbc01cb` |
| 7 | `theorem` | [Tendsto.const_mul_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-attop--8c66fed3c01f1596100a9799.md) | 68 | `result-track:8c66fed3c01f1596100a9799d89088928905f1f959748ed8e9f22537a2612f0a` |
| 8 | `theorem` | [Tendsto.atTop_mul_const](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-attop-mul-const--f4e25e1611504b06031dcb30.md) | 75 | `result-track:f4e25e1611504b06031dcb30bfe19ecd44bb0d80647810177d874f78756e447c` |
| 9 | `theorem` | [Tendsto.atTop_div_const](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-attop-div-const--f2e61773ce1d33704a7f0920.md) | 81 | `result-track:f2e61773ce1d33704a7f09208af09289ccc3199abf0bcca395cd15c83bac6496` |
| 10 | `theorem` | [tendsto_const_mul_pow_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-pow-attop--5fc2e8c20cebe644629bb30e.md) | 85 | `result-track:5fc2e8c20cebe644629bb30e580d8a932366b19a6e841655ebd7f9755224256b` |
| 11 | `theorem` | [tendsto_const_mul_pow_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-pow-attop-iff--3305549dbfd2e089c9940d5b.md) | 89 | `result-track:3305549dbfd2e089c9940d5b74058b8df14603aaa382a32a821714375ea14105` |
| 12 | `lemma` | [tendsto_zpow_atTop_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-zpow-attop-attop--b2f9eee8d71bdd568c1516c4.md) | 97 | `result-track:b2f9eee8d71bdd568c1516c4c774cb1c4b3d313e6e8ce85975815c2c7a1a3deb` |
| 13 | `theorem` | [tendsto_const_mul_atBot_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-atbot-of-pos--585e133848e0d123b97873d9.md) | 110 | `result-track:585e133848e0d123b97873d93153597a1d512865a130d9e4a205a9b66b3db1a1` |
| 14 | `theorem` | [tendsto_mul_const_atBot_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-mul-const-atbot-of-pos--acecafc84a23c028da92fb23.md) | 116 | `result-track:acecafc84a23c028da92fb23b3ba3f766caa931ff8ccb47b4bd64904448fa7df` |
| 15 | `lemma` | [tendsto_div_const_atBot_of_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-div-const-atbot-of-pos--f435dfc7ae30b3ca6fbd3092.md) | 122 | `result-track:f435dfc7ae30b3ca6fbd30922ebc5c6bf692713f5e9099feaec8e48fd2c418bc` |
| 16 | `theorem` | [tendsto_const_mul_atTop_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-attop-of-neg--9682ce98b6eee3e2946f1de7.md) | 128 | `result-track:9682ce98b6eee3e2946f1de7c22f3afc36d9b5557fc80a50e74b70ebe8876022` |
| 17 | `theorem` | [tendsto_mul_const_atTop_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-mul-const-attop-of-neg--ba4605808adfe707cf1603c8.md) | 134 | `result-track:ba4605808adfe707cf1603c81e84f1aad97f138ba88629604b0d0596f62c4121` |
| 18 | `lemma` | [tendsto_div_const_atTop_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-div-const-attop-of-neg--b762ccb472b66224d5180fc7.md) | 140 | `result-track:b762ccb472b66224d5180fc771a095b3c6e3fca806a4e93cb084a3fe4688fd2a` |
| 19 | `theorem` | [tendsto_const_mul_atBot_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-atbot-of-neg--d3325ae0964835dc0da0694c.md) | 146 | `result-track:d3325ae0964835dc0da0694cbc852421a61d028c33e9c5e308b47c0efa7654e5` |
| 20 | `theorem` | [tendsto_mul_const_atBot_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-mul-const-atbot-of-neg--b7cb952b8c738aa1a0779f10.md) | 152 | `result-track:b7cb952b8c738aa1a0779f1037760b7189fbb2c6dd1d4a53a5f9a1cf1d9da610` |
| 21 | `lemma` | [tendsto_div_const_atBot_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-div-const-atbot-of-neg--c07eaadafb0cf24ed152419c.md) | 158 | `result-track:c07eaadafb0cf24ed152419c5aab9be5b8480733e209b078ecb188266333fe13` |
| 22 | `theorem` | [tendsto_const_mul_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-attop-iff--a0ab0cf1771824ce80a53eee.md) | 164 | `result-track:a0ab0cf1771824ce80a53eee4807965365751aafea942a2b1124efb0e848bd04` |
| 23 | `theorem` | [tendsto_mul_const_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-mul-const-attop-iff--81a7bec4c0f971257c3eabc6.md) | 173 | `result-track:81a7bec4c0f971257c3eabc6ac80a3f017904f725f4f481e416b8235df2315f4` |
| 24 | `lemma` | [tendsto_div_const_atTop_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-div-const-attop-iff--58c9789879844d186a5412e0.md) | 179 | `result-track:58c9789879844d186a5412e0673faa807628c9186909a77028f0bc79a83cef97` |
| 25 | `theorem` | [tendsto_const_mul_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-atbot-iff--431602826854b730dc6c596f.md) | 185 | `result-track:431602826854b730dc6c596f02fdd48c543d4325b438f9660448bf70a7548fcc` |
| 26 | `theorem` | [tendsto_mul_const_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-mul-const-atbot-iff--d67b9e4de1284958bfc86552.md) | 191 | `result-track:d67b9e4de1284958bfc865520cf6c7f61addd4fcc527ca151389f9d72914ba5e` |
| 27 | `lemma` | [tendsto_div_const_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-div-const-atbot-iff--95dcae24fcbda524eede776a.md) | 197 | `result-track:95dcae24fcbda524eede776ae85b2fac89160c6ec947706887088fe47b925572` |
| 28 | `theorem` | [tendsto_const_mul_atTop_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-attop-iff-neg--ac72015600c8adac3db3ceab.md) | 203 | `result-track:ac72015600c8adac3db3ceab998e462e21d9befa563b535321c9d439abd044c0` |
| 29 | `theorem` | [tendsto_mul_const_atTop_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-mul-const-attop-iff-neg--e4459b068b59797a3a9efb27.md) | 209 | `result-track:e4459b068b59797a3a9efb270a0afb7d0011c8cc06277f5bcabaedc6eb56cdd5` |
| 30 | `lemma` | [tendsto_div_const_atTop_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-div-const-attop-iff-neg--d6e5141c8c158cbf7b53bc69.md) | 215 | `result-track:d6e5141c8c158cbf7b53bc69980eb19d7340041e920953ec8272a3b3dd2e0fc2` |
| 31 | `theorem` | [tendsto_const_mul_atBot_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-atbot-iff-pos--669861e7bdf6f511877a4f23.md) | 221 | `result-track:669861e7bdf6f511877a4f23858e8d56ad452ba4f08bbfb20f5cb499b23ded02` |
| 32 | `theorem` | [tendsto_mul_const_atBot_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-mul-const-atbot-iff-pos--416a370f3ff9854b562cd5fa.md) | 227 | `result-track:416a370f3ff9854b562cd5faae59d15a30ab741cfe95af72ad9b5072b51e61a5` |
| 33 | `lemma` | [tendsto_div_const_atBot_iff_pos](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-div-const-atbot-iff-pos--67b5ea926bc8fd7f0bf82c64.md) | 233 | `result-track:67b5ea926bc8fd7f0bf82c6448b94376cf60a87f800ebf9e7333638ffe1da9cb` |
| 34 | `theorem` | [tendsto_const_mul_atBot_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-atbot-iff-neg--35019066b392a07067e3a9f7.md) | 239 | `result-track:35019066b392a07067e3a9f718da61fe78b52714f71368c35f28f7d4f66c4e87` |
| 35 | `theorem` | [tendsto_mul_const_atBot_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-mul-const-atbot-iff-neg--affafe4e243bd067466b09df.md) | 245 | `result-track:affafe4e243bd067466b09df2745c20a4b536475eda9453d3141426b4c4eff62` |
| 36 | `lemma` | [tendsto_div_const_atBot_iff_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-div-const-atbot-iff-neg--254d31e34909006e44a24391.md) | 251 | `result-track:254d31e34909006e44a2439148b0fcf47b897b8fc5503f6111e97cb49c759854` |
| 37 | `theorem` | [Tendsto.const_mul_atTop_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-attop-of-neg--992cebb916481aa81e56c711.md) | 257 | `result-track:992cebb916481aa81e56c711a8bd994e5c83e365f9acc43fd87306187f0f2ccc` |
| 38 | `theorem` | [Tendsto.atTop_mul_const_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-attop-mul-const-of-neg--a2c242864ed8ddbef5ba287c.md) | 263 | `result-track:a2c242864ed8ddbef5ba287c69faa5e8929d7ff1adc7eddc3a8746d22279cb20` |
| 39 | `lemma` | [Tendsto.atTop_div_const_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-attop-div-const-of-neg--a5fe066eda7929157dffbfa4.md) | 269 | `result-track:a5fe066eda7929157dffbfa4ef760cdac69cdd38a638a1450e6ad291409062c7` |
| 40 | `theorem` | [Tendsto.const_mul_atBot](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-atbot--d61cfd162d8b760b000ad120.md) | 274 | `result-track:d61cfd162d8b760b000ad1207de7c388775d43f32fc272dade4db23e3142135e` |
| 41 | `theorem` | [Tendsto.atBot_mul_const](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-atbot-mul-const--8334228285b6c8ea9ed19687.md) | 280 | `result-track:8334228285b6c8ea9ed196871ca03f429fde47ebcb96d90f03a50f5bdee5d920` |
| 42 | `theorem` | [Tendsto.atBot_div_const](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-atbot-div-const--df0223d7b377fbe9fb032a62.md) | 286 | `result-track:df0223d7b377fbe9fb032a628c84ab64fb4a81472fcd5866c89b0e7c76e5fdbc` |
| 43 | `theorem` | [Tendsto.const_mul_atBot_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-atbot-of-neg--f8d0febd4182018f948c9184.md) | 291 | `result-track:f8d0febd4182018f948c9184cad98a0bebbb050ae3156840d73d208efe80dfe4` |
| 44 | `theorem` | [Tendsto.atBot_mul_const_of_neg](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-atbot-mul-const-of-neg--17f9adc159d54390409fdaf1.md) | 297 | `result-track:17f9adc159d54390409fdaf1a19bf5674ffc5710c95d320da7172b8458f9d3fd` |
| 45 | `theorem` | [tendsto_neg_const_mul_pow_atTop](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-neg-const-mul-pow-attop--f895d7c49b5c62525b9af666.md) | 301 | `result-track:f895d7c49b5c62525b9af6660ff4c36d775643b423e58c9ddb010fbcc83ae7be` |
| 46 | `theorem` | [tendsto_const_mul_pow_atBot_iff](../../../../../mathematics/Topology/GeneralTopology/Field/Variant22d694969355bc27b3f165670d342541e1ff0f94d7e1d87a9f1df0c01d28fd55.lean/declarations/tendsto-const-mul-pow-atbot-iff--66ffe034f9deb186b781b49f.md) | 305 | `result-track:66ffe034f9deb186b781b49f4de38ca609ecdffd19de23f969fe78ec48434bd3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
