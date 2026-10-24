# Verification target: GRWTSK.Topology.GeneralTopology.Gluing.Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "1fd25bdc23a1a0eb0820f4c246448e1762c34d94",
  "lexical_observation_count": 29,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `1fd25bdc23a1a0eb0820f4c246448e1762c34d94`.

Source path: `GRWTSK/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.GlueData` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Limits.Pullbacks` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Opens` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Generalize` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Elementwise` — import line 10; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.ConcreteCategory.EpiMono` — import line 11; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GlueData](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/gluedata--bbb87aac5d4e09585f9daede.md) | 85 | `declaration-track:bbb87aac5d4e09585f9daeded96ebbe350803a97df026d16b7a606b65bb50d24` |
| 2 | `theorem` | [π_surjective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/surjective--5c6536b6d79592872ba36890.md) | 95 | `result-track:5c6536b6d79592872ba36890cf018beb0ae677955badc46ee4ccdf0884e2605d` |
| 3 | `theorem` | [isOpen_iff](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/isopen-iff--c93b4276bb8677f0fa7431fe.md) | 98 | `result-track:c93b4276bb8677f0fa7431feeaa9983a9931ad562c85291332d9204cfd1b77d5` |
| 4 | `theorem` | [ι_jointly_surjective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/jointly-surjective--6e53207f4269cbc020e55757.md) | 105 | `result-track:6e53207f4269cbc020e55757410c58790b4db686eef7fc7f70f3d2db6beb3482` |
| 5 | `def` | [Rel](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/rel--668c65f55b4c50e00176e141.md) | 111 | `declaration-track:668c65f55b4c50e00176e141075595e28aa86a13bb06dfa988776cfdd1f62cc2` |
| 6 | `theorem` | [rel_equiv](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/rel-equiv--67af667a841e2f10bb5fd799.md) | 114 | `result-track:67af667a841e2f10bb5fd7991421b089987e8e73dc69c87a0c87f50e5f051447` |
| 7 | `theorem` | [eqvGen_of_π_eq](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/eqvgen-of-eq--cb861cca0bede8326d7c01c5.md) | 144 | `result-track:cb861cca0bede8326d7c01c57212ee0ffc93171c44ba1098a76bf679849bb2ee` |
| 8 | `theorem` | [ι_eq_iff_rel](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/eq-iff-rel--03d2489194286518c18d806a.md) | 178 | `result-track:03d2489194286518c18d806a8b98ffef0dfbb7ad123fb8036597b0f3070c901d` |
| 9 | `theorem` | [ι_injective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/injective--dc361340f40482bb69cf48b1.md) | 208 | `result-track:dc361340f40482bb69cf48b108ad571a3b593e29097ff3432431dc5504042b22` |
| 10 | `instance` | [ι_mono](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/mono--ca5423259e9dc83cd0772d5a.md) | 216 | `declaration-track:ca5423259e9dc83cd0772d5aff5158141d3e41bdebb003d2ac50b141d19d05b3` |
| 11 | `theorem` | [image_inter](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/image-inter--4a2ed536a7ba8cece7cccd8d.md) | 219 | `result-track:4a2ed536a7ba8cece7cccd8d485023189b15654e7e0b40fdb94bce3b2a250d05` |
| 12 | `theorem` | [preimage_range](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/preimage-range--93d19806e3a9c028f1ffcf16.md) | 232 | `result-track:93d19806e3a9c028f1ffcf16fa57539246c4a34d295fb6069bcb29f056b8e514` |
| 13 | `theorem` | [preimage_image_eq_image](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/preimage-image-eq-image--302f4efa275717939f41a673.md) | 237 | `result-track:302f4efa275717939f41a673451d2584abff76e62f21bdff7796009d109349fc` |
| 14 | `theorem` | [preimage_image_eq_image'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/preimage-image-eq-image--673a5e31b7df58b6f0bc3401.md) | 249 | `result-track:673a5e31b7df58b6f0bc340197001d6e271942601917370d12a21c3966f33304` |
| 15 | `theorem` | [open_image_open](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/open-image-open--caa540c5a9570e62fd87fa9a.md) | 260 | `result-track:caa540c5a9570e62fd87fa9a742bd44202f287d67b894663fba223647348d35e` |
| 16 | `theorem` | [ι_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/isopenembedding--725abcb2025b21ac8d3e1e9d.md) | 268 | `result-track:725abcb2025b21ac8d3e1e9d1ddc03747cb362c450d7f81be20a525e856b8a3d` |
| 17 | `structure` | [MkCore](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/mkcore--93a14fa046451b8bab499f59.md) | 285 | `declaration-track:93a14fa046451b8bab499f59d13038109797d4c31d0082cac75cafcbe74b1ff3` |
| 18 | `theorem` | [MkCore.t_inv](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/mkcore-t-inv--69e245ff60eefcfd8581b688.md) | 302 | `result-track:69e245ff60eefcfd8581b688f645dcc858f4e9dbc6575a3837c49e3c1e3db492` |
| 19 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/instance--8f8a87ac92cd4d6656e34181.md) | 309 | `declaration-track:8f8a87ac92cd4d6656e341816442f603e4a7598f4dbfc2734c20802b56829696` |
| 20 | `def` | [MkCore.t'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/mkcore-t--73cddfbb02651f13272db5e4.md) | 313 | `declaration-track:73cddfbb02651f13272db5e489b7a4658b50b80dd8336a24746b8088767e0edb` |
| 21 | `def` | [mk'](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/mk--f4416ae6de23bebde5b1120c.md) | 326 | `declaration-track:f4416ae6de23bebde5b1120cfa037651f182da085a0c353d1830b317654fe77b` |
| 22 | `def` | [ofOpenSubsets](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/ofopensubsets--7dfab387bfdefb29256cb56f.md) | 361 | `declaration-track:7dfab387bfdefb29256cb56f7a0546edaa42995155e94b02e70bb9fe6c0a2662` |
| 23 | `def` | [fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/fromopensubsetsglue--948ff486269dd7e19c5328b0.md) | 376 | `declaration-track:948ff486269dd7e19c5328b06e5125e1a17b162e10abe50fec0cd790072ed7c9` |
| 24 | `theorem` | [ι_fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/fromopensubsetsglue--f0f140b3abd1911f51f33a8c.md) | 382 | `result-track:f0f140b3abd1911f51f33a8c38cb1fb0e999aada6449058c9afe93d563b70ed3` |
| 25 | `theorem` | [fromOpenSubsetsGlue_injective](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/fromopensubsetsglue-injective--7fb58db3777f44b48c0fc04a.md) | 386 | `result-track:7fb58db3777f44b48c0fc04ac2b050e1f2ae4d432afec68d8520cf13cb15e256` |
| 26 | `theorem` | [fromOpenSubsetsGlue_isOpenMap](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/fromopensubsetsglue-isopenmap--a0f1002f5eaed4fde27377a0.md) | 397 | `result-track:a0f1002f5eaed4fde27377a02c03604820cf26c0b6d52f6c606cc5b3e1254526` |
| 27 | `theorem` | [fromOpenSubsetsGlue_isOpenEmbedding](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/fromopensubsetsglue-isopenembedding--c99b51843552c4b5f01e1533.md) | 416 | `result-track:c99b51843552c4b5f01e153350a1a0ae0f377a538374a97f0892ff6f717d612f` |
| 28 | `theorem` | [range_fromOpenSubsetsGlue](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/range-fromopensubsetsglue--a4e647589150115cf5aa6bae.md) | 420 | `result-track:a4e647589150115cf5aa6bae852b0b92e173b63feecf59ffab70f82a1d7d5e0e` |
| 29 | `def` | [openCoverGlueHomeo](../../../../../mathematics/Topology/GeneralTopology/Gluing/Variant328ed1dcddcde43b9836f676634b2100bb7a3ff5049e0d8c8545c44148bd0de4.lean/declarations/opencovergluehomeo--426ecd052e45b34f7b51e818.md) | 432 | `declaration-track:426ecd052e45b34f7b51e818c7852d95539d1ec80bead77ad3ea82f0331dcce0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
