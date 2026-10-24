# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "346f2dbbe9c9c32560e0cf600681cded46ae67c9",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `346f2dbbe9c9c32560e0cf600681cded46ae67c9`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Defs.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Setoid.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Filter.Defs` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.IrreducibleDef` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nhdsWithin](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/nhdswithin--a995b99fb303c3d33b5685b6.md) | 138 | `declaration-track:a995b99fb303c3d33b5685b628c54d26ecac473aac5cf8f9045b49f720ff7a7f` |
| 2 | `def` | [nhdsSet](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/nhdsset--069e4d877d4412b96de69ea6.md) | 161 | `declaration-track:069e4d877d4412b96de69ea64e87503f06e18272e9b5c64a4c34ccae13206b42` |
| 3 | `def` | [exterior](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/exterior--cbf920a2c52ebcc4b22a616e.md) | 171 | `declaration-track:cbf920a2c52ebcc4b22a616eb8a6c072effb85862cb1b684586f352901a35243` |
| 4 | `def` | [ContinuousAt](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/continuousat--b66ea51f08dff3bca13791e9.md) | 176 | `declaration-track:b66ea51f08dff3bca13791e9f50ab0e6fde70bee44097a25a693a2fd3c3335c1` |
| 5 | `def` | [ContinuousWithinAt](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/continuouswithinat--36a2c5fda1f2525cf2d90841.md) | 182 | `declaration-track:36a2c5fda1f2525cf2d90841aed72f1348c7bdc255effdbe6854d52e31dee1ba` |
| 6 | `def` | [ContinuousOn](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/continuouson--8ad42d61206d13b9edabe4aa.md) | 188 | `declaration-track:8ad42d61206d13b9edabe4aa5c0c5d507c03257bbbd233fcd316debd1e2c39e9` |
| 7 | `def` | [Specializes](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/specializes--d7d8cc024744e07f01025463.md) | 204 | `declaration-track:d7d8cc024744e07f01025463b953b37ef6c17bf1b33e7cb7a847de14d85f9be8` |
| 8 | `def` | [Inseparable](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/inseparable--856e922d0451db19cb4c93a3.md) | 218 | `declaration-track:856e922d0451db19cb4c93a3cb75d444867c5cb92d6dc44364715483f9c2aef3` |
| 9 | `def` | [specializationPreorder](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/specializationpreorder--6ee9749139b2a6ab5936f32b.md) | 224 | `declaration-track:6ee9749139b2a6ab5936f32b584e6fa93a03002c7a26b5d03e7d016881242b70` |
| 10 | `def` | [inseparableSetoid](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/inseparablesetoid--e78450e094197d5d0ae492b0.md) | 230 | `declaration-track:e78450e094197d5d0ae492b04e1ed99648f45bdd15f5ccaba2485d0ea8d929b8` |
| 11 | `def` | [SeparationQuotient](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/separationquotient--4c68b0c36c55830e1386b534.md) | 234 | `declaration-track:4c68b0c36c55830e1386b5342c19e3e1196949dc06343216f4e8e635e327a947` |
| 12 | `def` | [lim](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/lim--a9e8586d84b1259066b0bbd4.md) | 242 | `declaration-track:a9e8586d84b1259066b0bbd4c8f41e38303b9ce452767af018bebf2c575bde8f` |
| 13 | `def` | [limUnder](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/limunder--6d86709035e9533900200967.md) | 247 | `declaration-track:6d86709035e953390020096705235d6619084b8fbe517bb99932337e488d439b` |
| 14 | `def` | [ClusterPt](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/clusterpt--f188f5dceeecbed078cba62b.md) | 256 | `declaration-track:f188f5dceeecbed078cba62ba0ace8c715da07968b311d0ebc86e89bd2164a62` |
| 15 | `def` | [MapClusterPt](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/mapclusterpt--2de9c5d6296afffa288affcf.md) | 261 | `declaration-track:2de9c5d6296afffa288affcf04aad55ca340056e6f1821c3e12ebf08f9e865d9` |
| 16 | `def` | [AccPt](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/accpt--c404719b65f44976005c3756.md) | 266 | `declaration-track:c404719b65f44976005c37568497cce8c20173fa03d8d5d09a7ab1385941e097` |
| 17 | `def` | [IsCompact](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/iscompact--6d59d5137b3a7a503904581d.md) | 271 | `declaration-track:6d59d5137b3a7a503904581d7ab6af5b27b536a78ea11344568af6c30df88066` |
| 18 | `class` | [CompactSpace](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/compactspace--ba466f892b91907cd905067b.md) | 277 | `declaration-track:ba466f892b91907cd905067bbc102bb6a313b15779cb77759e8f55ee15c3eb97` |
| 19 | `class` | [NoncompactSpace](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/noncompactspace--51b4c84529581677b4fdaa3b.md) | 283 | `declaration-track:51b4c84529581677b4fdaa3b42bc16823bed6f9732f42dea2183ac850060cf94` |
| 20 | `class` | [WeaklyLocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/weaklylocallycompactspace--749c3c238a829046bc4fd16a.md) | 289 | `declaration-track:749c3c238a829046bc4fd16aeca9d9373a3f015f0a84862cc2bc70e764c44d00` |
| 21 | `class` | [LocallyCompactSpace](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/locallycompactspace--6c0f378b820a4cc6c6c2101c.md) | 303 | `declaration-track:6c0f378b820a4cc6c6c2101c0b0097d9d1d3bdfb60b823aec3fc258da2f742c1` |
| 22 | `class` | [LocallyCompactPair](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/locallycompactpair--8c7abc7e049c1ea9c3ccd65d.md) | 321 | `declaration-track:8c7abc7e049c1ea9c3ccd65d571d9b88d32d3e7b872a09e4b8e847ff5a423266` |
| 23 | `def` | [Filter.cocompact](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/filter-cocompact--18344ea44aba866c1a98dd9e.md) | 332 | `declaration-track:18344ea44aba866c1a98dd9e2feabbf30b9230488460d10d05cc59ce2512ec8d` |
| 24 | `def` | [Filter.coclosedCompact](../../../../../mathematics/Topology/GeneralTopology/Filter/Variant851f6ce384d7e93986cc4bd3ac4ca33f3cde9fd3cf2a23228a1697605acb62fe.lean/declarations/filter-coclosedcompact--68c7cca27b56ec61477721d0.md) | 338 | `declaration-track:68c7cca27b56ec61477721d068a67f7ba5b49b793bb42007b47cd05a732d908b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
