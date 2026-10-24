# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.UpperLower.Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff5a456166cc3acf29871de5d8c66c2d96d1a7c3",
  "lexical_observation_count": 48,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff5a456166cc3acf29871de5d8c66c2d96d1a7c3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Order.Group.Defs` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Pointwise.SMul` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.UpperLower.Basic` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [IsUpperSet.smul_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/isupperset-smul-subset--db26dbfbd215c5536e859118.md) | 35 | `result-track:db26dbfbd215c5536e8591181993a787edec05f4a986e6977864fd18b2da9318` |
| 2 | `theorem` | [IsLowerSet.smul_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/islowerset-smul-subset--4ec65f4447674b0d28908e9e.md) | 41 | `result-track:4ec65f4447674b0d28908e9e6883915fcfc3e8853062e615ef04e51b3085d8e3` |
| 3 | `theorem` | [IsUpperSet.smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/isupperset-smul--fae7249528acb3e28f122205.md) | 53 | `result-track:fae7249528acb3e28f122205672c706e6a4c527250f2c91ae685820ee2684536` |
| 4 | `theorem` | [IsLowerSet.smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/islowerset-smul--41d4293cc5329378ba19e749.md) | 60 | `result-track:41d4293cc5329378ba19e74978d665f75b6f5bc5eabf725a71995c96b3fded3b` |
| 5 | `theorem` | [Set.OrdConnected.smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/set-ordconnected-smul--78962635b972839dc39269ea.md) | 66 | `result-track:78962635b972839dc39269ea35af3815ba01b69a785191dbc4e165a6ba8fa510` |
| 6 | `theorem` | [IsUpperSet.mul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/isupperset-mul-left--3fc454087997fa4cc59d566d.md) | 73 | `result-track:3fc454087997fa4cc59d566d92fc9d6f74be4d6a86014c9947dd315d8056bdf2` |
| 7 | `theorem` | [IsUpperSet.mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/isupperset-mul-right--847b2f845cc81ff7538997ff.md) | 80 | `result-track:847b2f845cc81ff7538997ff03b270cc968a7f44882f164696a27875b7dfa292` |
| 8 | `theorem` | [IsLowerSet.mul_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/islowerset-mul-left--be711d2dcd00e03da6e0f88e.md) | 87 | `result-track:be711d2dcd00e03da6e0f88efc404b3d3dc8f1cee40b58d354d1386492c25ce7` |
| 9 | `theorem` | [IsLowerSet.mul_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/islowerset-mul-right--6286d511b4e4f5f7e10f5a14.md) | 93 | `result-track:6286d511b4e4f5f7e10f5a14dd0ccc5f82baeeb7c19dea68d00f21934c6d880d` |
| 10 | `theorem` | [IsUpperSet.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/isupperset-inv--3e8b6204b1750e885f05d323.md) | 99 | `result-track:3e8b6204b1750e885f05d32338cec51738f89656321f702a10243a0998cbefd0` |
| 11 | `theorem` | [IsLowerSet.inv](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/islowerset-inv--378b727f575cbb34b7e41094.md) | 104 | `result-track:378b727f575cbb34b7e41094b01567f2f0f8d284d356202f16e0ceea85da5910` |
| 12 | `theorem` | [IsUpperSet.div_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/isupperset-div-left--b1f28f5685408969a7798ebd.md) | 109 | `result-track:b1f28f5685408969a7798ebda2d9372e024fbd5bd8e24805a03f2f15170bd3b6` |
| 13 | `theorem` | [IsUpperSet.div_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/isupperset-div-right--93828d3e0054f13c6191ec09.md) | 116 | `result-track:93828d3e0054f13c6191ec090f7be806339242b249c537a9228aa7e28d9ad581` |
| 14 | `theorem` | [IsLowerSet.div_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/islowerset-div-left--2ea56f3dfe9d8e98e538176d.md) | 123 | `result-track:2ea56f3dfe9d8e98e538176d35d08385207ca3adac79ac9340d235e7744999eb` |
| 15 | `theorem` | [IsLowerSet.div_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/islowerset-div-right--5841aa8d8c88c4405d7aae55.md) | 129 | `result-track:5841aa8d8c88c4405d7aae551c29dc083a082f3ee60c263f24447905ab096d48` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--e4b2d807d00ff75bd6f86158.md) | 137 | `declaration-track:e4b2d807d00ff75bd6f8615824b62f29dadb5262cffeb889e4790be7772fea79` |
| 17 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--a50903c9f64a9c70bb60ae89.md) | 141 | `declaration-track:a50903c9f64a9c70bb60ae89b7fcd6cb8455fe2b3552f5567ec8b48ea0bc9e23` |
| 18 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--8cd9775c63c74b78f07212cf.md) | 145 | `declaration-track:8cd9775c63c74b78f07212cf0b8bce48f63758b9877387c4fe0596c4711ba61a` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--5ab4963e4a80db5769965e45.md) | 149 | `declaration-track:5ab4963e4a80db5769965e45c50da9515bf2c3d775384669b3870735875ef304` |
| 20 | `theorem` | [coe_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/coe-one--7dd43d5171d5d9dc58563529.md) | 153 | `result-track:7dd43d5171d5d9dc58563529bd0549a4fb01bb227786ffa063bd9dd0fa7a5522` |
| 21 | `theorem` | [coe_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/coe-mul--176de39b561be27b9881a830.md) | 159 | `result-track:176de39b561be27b9881a8307f8b554a3a97118000ad1f927fbaed32576ae194` |
| 22 | `theorem` | [coe_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/coe-div--10710b527bae13b51c894df6.md) | 165 | `result-track:10710b527bae13b51c894df60606f6632c03f78128eccecf5ac3afc84e05a55e` |
| 23 | `theorem` | [Ici_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/ici-one--2abe3487705a9dd79ecac329.md) | 171 | `result-track:2abe3487705a9dd79ecac329721590e8ebf9f8ecfe6fa456782317b3ecd1ae37` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--75aa27f1e72a87d07ea1e0a7.md) | 177 | `declaration-track:75aa27f1e72a87d07ea1e0a76fc87be78816481b771e18d695a481f69700f445` |
| 25 | `instance` | [commSemigroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/commsemigroup--f0388ff4e7d301f2501b4888.md) | 181 | `declaration-track:f0388ff4e7d301f2501b488828484e3eb09e70aad1bd1e66be33d8d037f3e0af` |
| 26 | `theorem` | [one_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/one-mul--cf73886223d46f85671abf3b.md) | 186 | `result-track:cf73886223d46f85671abf3b3fd6f1edf96e499f930f35f5462d4d29ee888372` |
| 27 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--34a2504bb46e0877198a61b6.md) | 193 | `declaration-track:34a2504bb46e0877198a61b69ea9d74cceb6407c7bf0cdd94c8eddf4ab2c87e2` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--4bd65dfd3e3483b55a3a6a5c.md) | 206 | `declaration-track:4bd65dfd3e3483b55a3a6a5c77779caa0c6746d0fdd9ca798425c951d7afe6f3` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--c255fc9d725f3526576b1e77.md) | 210 | `declaration-track:c255fc9d725f3526576b1e77ec6f1313ddd8da3e407721435155a70efd3c167d` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--973d8638bbf856aa992f836d.md) | 214 | `declaration-track:973d8638bbf856aa992f836d5f769427675fa61b86fd1a8aacc6ba649f5cbd13` |
| 31 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--8daf81e32bee22ec8911cb82.md) | 218 | `declaration-track:8daf81e32bee22ec8911cb82f1446b9ae47a243869c7c1777cb518a9cde86ebe` |
| 32 | `theorem` | [coe_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/coe-mul--61117bd5bd15a56c16279e87.md) | 222 | `result-track:61117bd5bd15a56c16279e87595412b41c5e1992c88759896f1f470d2ad2f015` |
| 33 | `theorem` | [coe_div](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/coe-div--78607f3a1985de5f5a538209.md) | 228 | `result-track:78607f3a1985de5f5a538209cd59bbaea64ff5bba04f141dbb329e17a149cb88` |
| 34 | `theorem` | [Iic_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/iic-one--e794991cfefd35b630408a43.md) | 234 | `result-track:e794991cfefd35b630408a43913d44343e883a15280c276667953bfc71d971ea` |
| 35 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--a802853956044fd13f70222b.md) | 240 | `declaration-track:a802853956044fd13f70222b95c0a2d4a335d89fa6c29f2f355e51da01ae07e2` |
| 36 | `instance` | [commSemigroup](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/commsemigroup--e36816567243d864b508df41.md) | 244 | `declaration-track:e36816567243d864b508df4198c6db3906e504e4f858db140eb21174a25df670` |
| 37 | `theorem` | [one_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/one-mul--9ad2c221ff93a5bcf93983a1.md) | 249 | `result-track:9ad2c221ff93a5bcf93983a1d943a86e954bd265252dc76e79ec209b41609da9` |
| 38 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/instance--5f149cfe1d3aa0b7eef5b087.md) | 256 | `declaration-track:5f149cfe1d3aa0b7eef5b08779a7e752f137063e450234b153fd008a1d7e6703` |
| 39 | `theorem` | [upperClosure_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/upperclosure-one--18aff1528c8a74c860d8b932.md) | 269 | `result-track:18aff1528c8a74c860d8b9325bbaf97f6ad77cab5ae969045f7d52c547812c47` |
| 40 | `theorem` | [lowerClosure_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/lowerclosure-one--d43d1083a6963788b5e18199.md) | 275 | `result-track:d43d1083a6963788b5e18199168c3c05627cfbdb26a8b66ed5d3b7ea5e0ad1db` |
| 41 | `theorem` | [upperClosure_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/upperclosure-smul--5d4d9cb2a17bc1a924d6b26d.md) | 281 | `result-track:5d4d9cb2a17bc1a924d6b26da6eea5ff761ee3ee9cef685a62a5c8590cd9b651` |
| 42 | `theorem` | [lowerClosure_smul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/lowerclosure-smul--98d58614fe7531cb2957931b.md) | 287 | `result-track:98d58614fe7531cb2957931b0b2142757e575b4f6c10c5d900257d6c7424d62a` |
| 43 | `theorem` | [mul_upperClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/mul-upperclosure--fae642e9df5da3745690a3f3.md) | 293 | `result-track:fae642e9df5da3745690a3f3597bf0412188eb7803fbe9c000c7c0e1c56a2dc7` |
| 44 | `theorem` | [mul_lowerClosure](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/mul-lowerclosure--1f4706685dd4e8a79235c32d.md) | 301 | `result-track:1f4706685dd4e8a79235c32ddd48acb5a79a14ce4dcb1f87b6d4a4820e0b0db3` |
| 45 | `theorem` | [upperClosure_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/upperclosure-mul--a880b744e63c57a44c17fc46.md) | 309 | `result-track:a880b744e63c57a44c17fc46c6dfa2b2bbd90507b56c2060bcf3f06c560b4520` |
| 46 | `theorem` | [lowerClosure_mul](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/lowerclosure-mul--db9c059ff1fb811053699bd6.md) | 316 | `result-track:db9c059ff1fb811053699bd6bf2e90f6d24ed3fa70398bce2c0a651afefd9ff0` |
| 47 | `theorem` | [upperClosure_mul_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/upperclosure-mul-distrib--e53464524090abc62cbaf746.md) | 323 | `result-track:e53464524090abc62cbaf74687b8525f8b7290811e4750f7f612be654425c212` |
| 48 | `theorem` | [lowerClosure_mul_distrib](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/UpperLower/Variante388785345cf046980c7c54202713d84615f9eeffda0df56e8d0d3b611bb0d8d.lean/declarations/lowerclosure-mul-distrib--f7edaf7f266896fc29ca716d.md) | 330 | `result-track:f7edaf7f266896fc29ca716d4944913ec43ce2311d932c95bece057728305f2e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
