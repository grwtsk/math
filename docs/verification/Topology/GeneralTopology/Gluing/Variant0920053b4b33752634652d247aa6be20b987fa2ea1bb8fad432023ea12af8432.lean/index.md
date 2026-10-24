# Verification target: GRWTSK.Topology.GeneralTopology.Gluing.Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "694923143d2ddbfb88963488273fd033f2782247",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `694923143d2ddbfb88963488273fd033f2782247`.

Source path: `GRWTSK/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GlueData` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.Elementwise` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Pullbacks` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Opens` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.LibrarySearch` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/gluedata--9fe54c03fbfeab9f7b0ed990.md) | 87 | `declaration-track:9fe54c03fbfeab9f7b0ed990b5d0db3b8830c5dacf95f049cb0164eb194911ec` |
| 2 | `theorem` | [π_surjective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/surjective--142b9139d6a81796ae760573.md) | 99 | `result-track:142b9139d6a81796ae760573dd00e0e3b5a1f6aaef9d03a9f1f05fd7598ac537` |
| 3 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/isopen-iff--1d3cdd1574a69d0d06090464.md) | 104 | `result-track:1d3cdd1574a69d0d0609046423157d6dbf347bef7ae0de802d250ec0d0979c33` |
| 4 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/jointly-surjective--ea13a00548e2e67e2faea5b8.md) | 119 | `result-track:ea13a00548e2e67e2faea5b80ad66eb7b9f8f6050e0d069e5a41e1e41357bdf2` |
| 5 | `def` | [Rel](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/rel--6cc109f35608348b2316c9e3.md) | 127 | `declaration-track:6cc109f35608348b2316c9e367e66fe3c5e12109d1447e35f5b40a99de641189` |
| 6 | `theorem` | [rel_equiv](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/rel-equiv--327f7f928247b57f71a030be.md) | 132 | `result-track:327f7f928247b57f71a030be769f95c32de48e7a3bb8a16351430184e9f1295d` |
| 7 | `theorem` | [eqvGen_of_π_eq](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/eqvgen-of-eq--a9af3247692be4a104d8f11b.md) | 159 | `result-track:a9af3247692be4a104d8f11b78c4040e0c3c7adfae28d76085513ddbc7114d9a` |
| 8 | `theorem` | [ι_eq_iff_rel](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/eq-iff-rel--b07ebfb4aea3df4ed011e872.md) | 198 | `result-track:b07ebfb4aea3df4ed011e872ae9f77d1dbad0ec565b52849c8b716c82c71fc35` |
| 9 | `theorem` | [ι_injective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/injective--6253cc98d22c7684b366f64d.md) | 232 | `result-track:6253cc98d22c7684b366f64d6fa94e695a0eed7231d415c644ea87d8cbdc04d3` |
| 10 | `instance` | [ι_mono](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/mono--7bbc9b1db4380a488b1ec859.md) | 243 | `declaration-track:7bbc9b1db4380a488b1ec859b59b2f4b4a2dc2b835f460fb669ac9d701ed0692` |
| 11 | `theorem` | [image_inter](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/image-inter--a1ea6ef3c30b488ea1e30b88.md) | 248 | `result-track:a1ea6ef3c30b488ea1e30b889adc83da170f8c0af2c7964da699eaa4ab422cd8` |
| 12 | `theorem` | [preimage_range](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/preimage-range--93837ed2f5386a0e561f85fe.md) | 270 | `result-track:93837ed2f5386a0e561f85feff3199dd5e4665c557e10e90ced892503ce2ceee` |
| 13 | `theorem` | [preimage_image_eq_image](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/preimage-image-eq-image--c6c5de01a28da48a62acae77.md) | 277 | `result-track:c6c5de01a28da48a62acae77107afffffb6c7a6edded8d73541dd1caff65c872` |
| 14 | `theorem` | [preimage_image_eq_image'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/preimage-image-eq-image--3a8cd7a10c40226580efc71c.md) | 292 | `result-track:3a8cd7a10c40226580efc71c47b33be985339ca3a88617893f9c5d88c4fd93cf` |
| 15 | `theorem` | [open_image_open](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/open-image-open--d5c8a49e08bf52c4b8d980a6.md) | 311 | `result-track:d5c8a49e08bf52c4b8d980a6f36ce2a5b7d768cb7308dbb7bd425cb31ec2df1e` |
| 16 | `theorem` | [ι_openEmbedding](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/openembedding--09c4a2347f1cff80f7764feb.md) | 321 | `result-track:09c4a2347f1cff80f7764febf8e9b06f1f60402eacdcb58ab84521891d87bb42` |
| 17 | `structure` | [MkCore](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/mkcore--3a26a71d4e8ce100ff766ad0.md) | 341 | `declaration-track:3a26a71d4e8ce100ff766ad0aff391169117014d5ff809ec992852e500859795` |
| 18 | `theorem` | [MkCore.t_inv](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/mkcore-t-inv--50dbd7011fefcfa18b03f4b9.md) | 356 | `result-track:50dbd7011fefcfa18b03f4b95b97ccc73b59e2f4c3b72530be80eb92d4ebd456` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/instance--4d43306642d000b28aba427a.md) | 365 | `declaration-track:4d43306642d000b28aba427a9dab547df8b9dd95ea8a6372f63395b0f4dab827` |
| 20 | `def` | [MkCore.t'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/mkcore-t--f1a07e71485a4c33012dadb0.md) | 369 | `declaration-track:f1a07e71485a4c33012dadb068a1b94c151b45514b8a0255178b0d989770d1e7` |
| 21 | `def` | [mk'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/mk--e3ad46cca9dca7b75a42711f.md) | 387 | `declaration-track:e3ad46cca9dca7b75a42711ff5ead3d3ebeb24d4bd2f9758f28f8bfe9ed6f3f7` |
| 22 | `def` | [ofOpenSubsets](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/ofopensubsets--21ad67c8ab31fe395ea2f80e.md) | 427 | `declaration-track:21ad67c8ab31fe395ea2f80e71d9a9c825bf35b42e2d68aab076d4786bbd43d0` |
| 23 | `def` | [fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/fromopensubsetsglue--d632318a2262fe825d877f11.md) | 451 | `declaration-track:d632318a2262fe825d877f11b17f197b1d97b95f19467f7d5e17e22e3a1ab10f` |
| 24 | `theorem` | [ι_fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/fromopensubsetsglue--7bcd65d087f46bc839e7611c.md) | 459 | `result-track:7bcd65d087f46bc839e7611c3dff239073b09c6fb851e9498e0088e8f6ce4a71` |
| 25 | `theorem` | [fromOpenSubsetsGlue_injective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/fromopensubsetsglue-injective--fe3b2f76c13b2eaaee1c6cad.md) | 465 | `result-track:fe3b2f76c13b2eaaee1c6caddee92834ade7609df31bac462ef5eded6b6c7656` |
| 26 | `theorem` | [fromOpenSubsetsGlue_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/fromopensubsetsglue-isopenmap--64414f76092c2401c3c49cfb.md) | 480 | `result-track:64414f76092c2401c3c49cfb59712af0670007c6c374e352a93fe225ed50c05a` |
| 27 | `theorem` | [fromOpenSubsetsGlue_openEmbedding](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/fromopensubsetsglue-openembedding--bf7cdc935d4c20431d703e08.md) | 504 | `result-track:bf7cdc935d4c20431d703e0886aa90c99586cc7dec6859854ba188ef2ddf863a` |
| 28 | `theorem` | [range_fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/range-fromopensubsetsglue--39f638ca618609db29d47fd4.md) | 510 | `result-track:39f638ca618609db29d47fd4d3234b4673c1de547a3a0ab6770a7513df1d81b0` |
| 29 | `def` | [openCoverGlueHomeo](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant0920053b4b33752634652d247aa6be20b987fa2ea1bb8fad432023ea12af8432.lean/declarations/opencovergluehomeo--808375d96e635174449e8bb6.md) | 526 | `declaration-track:808375d96e635174449e8bb6335f53fdcdc429bb82def9ea61b5756bf40b5719` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
