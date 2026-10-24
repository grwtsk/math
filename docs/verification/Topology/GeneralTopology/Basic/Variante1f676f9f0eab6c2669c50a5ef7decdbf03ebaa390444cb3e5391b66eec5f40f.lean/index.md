# Verification target: GRWTSK.Topology.GeneralTopology.Basic.Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6968563145948b67953f4aa49441c0ce263f4c7f",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6968563145948b67953f4aa49441c0ce263f4c7f`.

Source path: `GRWTSK/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.CategoryTheory.Category.Grpd` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Groupoid` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Category.TopCat.Basic` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Homotopy.Path` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Set.Subsingleton` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [reflTransSymmAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/refltranssymmaux--db51f8124ec2ce6158f1a33c.md) | 39 | `declaration-track:db51f8124ec2ce6158f1a33cedfdadb38472b904a5aeff702b2741a3118d2827` |
| 2 | `theorem` | [continuous_reflTransSymmAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/continuous-refltranssymmaux--1a816c55ef43932ba7f5353a.md) | 43 | `result-track:1a816c55ef43932ba7f5353af81c32db64159f02879c9ba4fd8abd0b0ead36ad` |
| 3 | `theorem` | [reflTransSymmAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/refltranssymmaux-mem-i--7d796833dad7e5c3cb7e044a.md) | 52 | `result-track:7d796833dad7e5c3cb7e044ad20a1d7d686b0bd58c30a461100860e9a241c5e5` |
| 4 | `def` | [reflTransSymm](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/refltranssymm--d18f4938271fbd761907d18f.md) | 79 | `declaration-track:d18f4938271fbd761907d18f463cbd88fda92b89495b624f9a1cf56bf4789412` |
| 5 | `def` | [reflSymmTrans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/reflsymmtrans--80ef2cb5dbf93eda957c5e7e.md) | 96 | `declaration-track:80ef2cb5dbf93eda957c5e7e3164c094087be2c4c5f6ef213e654e03958e17c0` |
| 6 | `def` | [transReflReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/transreflreparamaux--a3f006de72073d70922dc89d.md) | 104 | `declaration-track:a3f006de72073d70922dc89d3590d67971f6a024b52f2f95a907220441103b59` |
| 7 | `theorem` | [continuous_transReflReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/continuous-transreflreparamaux--eb234eb8c7dba965a8dd7149.md) | 108 | `result-track:eb234eb8c7dba965a8dd71494c485cf0c9ee24d88e1f8093533738d003daa482` |
| 8 | `theorem` | [transReflReparamAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/transreflreparamaux-mem-i--8ed1bdf36ea0e6fb3b75c4e3.md) | 114 | `result-track:8ed1bdf36ea0e6fb3b75c4e3577770fab69cfe5492c1c93adaaa782f636d117f` |
| 9 | `theorem` | [transReflReparamAux_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/transreflreparamaux-zero--b559ca9020d6e1ca7cde7ea8.md) | 118 | `result-track:b559ca9020d6e1ca7cde7ea84701f47a9c77b419ada38b2e84aca931f0eb2761` |
| 10 | `theorem` | [transReflReparamAux_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/transreflreparamaux-one--b973939dba99d01550540428.md) | 121 | `result-track:b973939dba99d015505404281fd037060b32f7a225d1fc873279e5a65ea325da` |
| 11 | `theorem` | [trans_refl_reparam](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/trans-refl-reparam--d25adde5061ddbbaddec6772.md) | 124 | `result-track:d25adde5061ddbbaddec6772f14ad23646cf0f42febee91865f4bda2d591c33a` |
| 12 | `def` | [transRefl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/transrefl--47d87fc8fe241024de9a73c9.md) | 138 | `declaration-track:47d87fc8fe241024de9a73c95a0e7350d730165ccf0ed978bb6cc3f58b4cd977` |
| 13 | `def` | [reflTrans](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/refltrans--962ec1d7b6affa063f71c536.md) | 145 | `declaration-track:962ec1d7b6affa063f71c53634d02d298946681a5b0df21a8f0f4322fd88727b` |
| 14 | `def` | [transAssocReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/transassocreparamaux--86633f192a1f703cf1b603ce.md) | 153 | `declaration-track:86633f192a1f703cf1b603ce48ab4a353a4f7725cfbb1856d81844f50b52bd79` |
| 15 | `theorem` | [continuous_transAssocReparamAux](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/continuous-transassocreparamaux--ba87f9b10b36fcb9412eb154.md) | 157 | `result-track:ba87f9b10b36fcb9412eb1546c297c3d0cbfaf8da06935d5c5d47fb204c21b9c` |
| 16 | `theorem` | [transAssocReparamAux_mem_I](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/transassocreparamaux-mem-i--7e7509f526ebfa40fcf24600.md) | 167 | `result-track:7e7509f526ebfa40fcf246004d27352051d6a64e11ab77e43fe51b38b54c39f1` |
| 17 | `theorem` | [transAssocReparamAux_zero](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/transassocreparamaux-zero--79c33d9fcd946ff398adde8d.md) | 171 | `result-track:79c33d9fcd946ff398adde8d8b167a8b3203f8ae019732fb25e03c4fee558718` |
| 18 | `theorem` | [transAssocReparamAux_one](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/transassocreparamaux-one--4a0a0532dd2f4bbe623ada4d.md) | 174 | `result-track:4a0a0532dd2f4bbe623ada4d2ac6cd82eae9e27e8c2cdd82ce5644fb80ca85cf` |
| 19 | `theorem` | [trans_assoc_reparam](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/trans-assoc-reparam--adb98bcd218203c8aabf6114.md) | 177 | `result-track:adb98bcd218203c8aabf6114868088120f92720f87fefc04e65ae4a7f073abbe` |
| 20 | `def` | [transAssoc](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/transassoc--8bd7b03c706bdb9dfdae770a.md) | 197 | `declaration-track:8bd7b03c706bdb9dfdae770aa17cf067f4c5b18c20db04ac9b698f4873af02bc` |
| 21 | `structure` | [FundamentalGroupoid](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/fundamentalgroupoid--57fc1b92ad2e8c5b996add29.md) | 213 | `declaration-track:57fc1b92ad2e8c5b996add29f11ca64e79f906e5b35cdfe13c95b97d948822b7` |
| 22 | `def` | [equiv](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/equiv--c6bb1a964b2f567f1cd69217.md) | 223 | `declaration-track:c6bb1a964b2f567f1cd6921732a9a377cfe5be350789e9e9e51e0dd06eeb3209` |
| 23 | `lemma` | [isEmpty_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/isempty-iff--7969ef05907e58c246d9240a.md) | 230 | `result-track:7969ef05907e58c246d9240a4f4b65e8fc6fdfa594e4264df19a9a84d2d56517` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/instance--5d8446058a66b88d6b5f576c.md) | 234 | `declaration-track:5d8446058a66b88d6b5f576c3cb2f86e98ce16f63cd097ca04a6f943df61ee8b` |
| 25 | `lemma` | [nonempty_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/nonempty-iff--da8b0887055e5c13df976c47.md) | 239 | `result-track:da8b0887055e5c13df976c47613cc60f3002846ad58d8a25f16fb30c33daeb75` |
| 26 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/instance--1375402c4b6e3fe85a2c5c6e.md) | 243 | `declaration-track:1375402c4b6e3fe85a2c5c6eaa6fa4a5e28ad27500ce3ef5ebf6c7df03f6c025` |
| 27 | `lemma` | [subsingleton_iff](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/subsingleton-iff--3dfe14aa96dbbbca39f7ecef.md) | 248 | `result-track:3dfe14aa96dbbbca39f7ecefaf90c8eb2fc61d74d2eed124b2a7c609ae37713d` |
| 28 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/instance--81e457aa38c4f65cf26d3a67.md) | 252 | `declaration-track:81e457aa38c4f65cf26d3a6791887b87a4c14b72cbb23af7466a024a3125d08e` |
| 29 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/instance--afd23dfc15445807ffea2a3e.md) | 259 | `declaration-track:afd23dfc15445807ffea2a3e70fc8eb81f9a09f699acfe6be7904ccb354ca4d9` |
| 30 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/instance--32f4e48db2faac3bb9f4d500.md) | 264 | `declaration-track:32f4e48db2faac3bb9f4d500baf8262c5033bcf9944f1a139304b7acfb8fbb3b` |
| 31 | `theorem` | [comp_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/comp-eq--b15af454d22964048a31763a.md) | 295 | `result-track:b15af454d22964048a31763a06ea38827fef2f90d9999f06fb8e244a43b78860` |
| 32 | `theorem` | [id_eq_path_refl](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/id-eq-path-refl--58fa7de0ef810f39c0648334.md) | 297 | `result-track:58fa7de0ef810f39c0648334db492b731b83389e51f129106753440bbfa1e77b` |
| 33 | `def` | [fundamentalGroupoidFunctor](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/fundamentalgroupoidfunctor--3a0872323bb0c9558d699771.md) | 300 | `declaration-track:3a0872323bb0c9558d699771d38406f6e3cfb24922d65dc2b7ac5185a5bd0669` |
| 34 | `theorem` | [map_eq](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/map-eq--31a5379ac6ac6e7fba15a00d.md) | 334 | `result-track:31a5379ac6ac6e7fba15a00dd74bc4df04cd62fd2ca0cd93428b24e52211483e` |
| 35 | `abbrev` | [toTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/totop--5efcddf9a4e5c15882bcf188.md) | 339 | `declaration-track:5efcddf9a4e5c15882bcf188f50dbe01d3cc6b13ff1c865e6e748c80dd56d062` |
| 36 | `abbrev` | [fromTop](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/fromtop--bc45307801a299ddae6c852e.md) | 343 | `declaration-track:bc45307801a299ddae6c852ec1d12fc2d511f25bf436847d60e00b09b7f16045` |
| 37 | `abbrev` | [toPath](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/topath--9dc3e9304015e76f807c1f07.md) | 347 | `declaration-track:9dc3e9304015e76f807c1f070fd7a52987d983152cf4ded6b331fb2460bd6185` |
| 38 | `abbrev` | [fromPath](../../../../../mathematics/Topology/GeneralTopology/Basic/Variante1f676f9f0eab6c2669c50a5ef7decdbf03ebaa390444cb3e5391b66eec5f40f.lean/declarations/frompath--4e9a55436845428c1ac79b23.md) | 353 | `declaration-track:4e9a55436845428c1ac79b234f414b3cffc5a11d4fbdca08017fb5ad3bba0ce0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
