# Verification target: GRWTSK.Topology.GeneralTopology.Hom.Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "7f2118319deb8e64ddddc8602175247f78bee601",
  "lexical_observation_count": 32,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `7f2118319deb8e64ddddc8602175247f78bee601`.

Source path: `GRWTSK/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic.StacksAttribute` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.ContinuousMap.Basic` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Maps.Proper.Basic` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsSpectralMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/isspectralmap--c76402cd668e8d2e5e6a311c.md) | 39 | `declaration-track:c76402cd668e8d2e5e6a311c3082f9255994306ae552ac43eaded001cae8b6bd` |
| 2 | `theorem` | [IsCompact.preimage_of_isOpen](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/iscompact-preimage-of-isopen--42db8d12d4d7de3862f8cfd3.md) | 44 | `result-track:42db8d12d4d7de3862f8cfd3fa7dd3d9c83ca256ab05e0bd287dfbcbd544bcc3` |
| 3 | `theorem` | [IsSpectralMap.continuous](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/isspectralmap-continuous--6362fab3f7fddaecb625660a.md) | 48 | `result-track:6362fab3f7fddaecb625660a3d3bf1e7861896fc9843fff78d71b28ace1d916a` |
| 4 | `theorem` | [isSpectralMap_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/isspectralmap-id--e92b4fb91371932a00497130.md) | 51 | `result-track:e92b4fb91371932a00497130ae3a212e59af02f0e547c242106a8107a4fd1a9b` |
| 5 | `theorem` | [IsSpectralMap.comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/isspectralmap-comp--3a48ff7867c5400b3148963d.md) | 55 | `result-track:3a48ff7867c5400b3148963d5be8afa55ccf913da907984c9fae8a3d751c4893` |
| 6 | `theorem` | [IsProperMap.isSpectralMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/ispropermap-isspectralmap--095fd03c34d1f9ff33cab0bb.md) | 60 | `result-track:095fd03c34d1f9ff33cab0bb90d970e07ba17c0a1f19f61473ec7e7f3f85cffd` |
| 7 | `structure` | [SpectralMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/spectralmap--bc5207165d9fe908807cbf2e.md) | 66 | `declaration-track:bc5207165d9fe908807cbf2eb03143b50f24e9d562dd22ffe693e3694bb40f53` |
| 8 | `class` | [SpectralMapClass](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/spectralmapclass--0f8c47d54efeebd54abbd35a.md) | 77 | `declaration-track:0f8c47d54efeebd54abbd35a38f52a8522828091f0b4d87a67f720c1f325d4a8` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/instance--f15750bc90df317171be1d54.md) | 89 | `declaration-track:f15750bc90df317171be1d54a01eb092263521bc89f5598ffddb9e98aeda5e15` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/instance--46a4e18b3e3a57e349d4e1ad.md) | 93 | `declaration-track:46a4e18b3e3a57e349d4e1addf8a1083cb39cf87ec306c7891d873ac7810c21f` |
| 11 | `def` | [toContinuousMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/tocontinuousmap--e22e6c17f84090385f9ab456.md) | 105 | `declaration-track:e22e6c17f84090385f9ab456da058a7f7161f89cfa17e8f1658ad629a8afe6c6` |
| 12 | `instance` | [instFunLike](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/instfunlike--bd0594395c664c987ba978f5.md) | 108 | `declaration-track:bd0594395c664c987ba978f53c6ba877f6006ccebd3bd42f804dadc01fd3e66d` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/instance--e8ec3016d3707e5339df9666.md) | 112 | `declaration-track:e8ec3016d3707e5339df9666b448731650cafd393e31da3bd85ac735976a32fc` |
| 14 | `theorem` | [toFun_eq_coe](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/tofun-eq-coe--efae1c2f674c1fb4cd09e3ef.md) | 116 | `result-track:efae1c2f674c1fb4cd09e3efff136904ff683c3556a5da6aaa076a4efda89151` |
| 15 | `theorem` | [ext](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/ext--0174820328a9fede255658eb.md) | 120 | `result-track:0174820328a9fede255658eb02621a931501748234056d5582c92065d11950ee` |
| 16 | `def` | [copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/copy--671ceebcda2f985010955d22.md) | 125 | `declaration-track:671ceebcda2f985010955d22cd9f63ddaa86f52147fbc195fd5a96db3b2a1f17` |
| 17 | `theorem` | [coe_copy](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/coe-copy--2945f049a4e5ec8d28246b4e.md) | 129 | `result-track:2945f049a4e5ec8d28246b4e74996c3940eb1fd61d681b3652ac15a4c492aee7` |
| 18 | `theorem` | [copy_eq](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/copy-eq--9ea92a2acd0f5ffe0558e95d.md) | 132 | `result-track:9ea92a2acd0f5ffe0558e95de4d9075b5efa860dc6696c6d3f0cbad70e8124b9` |
| 19 | `def` | [id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/id--64137a615a5edb2478ec827e.md) | 138 | `declaration-track:64137a615a5edb2478ec827ecaebc66fed2e6bcb074c1dd80767cb51a7317df2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/instance--17920c1b50e018fe745b9764.md) | 141 | `declaration-track:17920c1b50e018fe745b976469b9f814a4461cd4ea811c63a59926511c031e74` |
| 21 | `theorem` | [coe_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/coe-id--7d7cb9eb929ab92f4aba057c.md) | 145 | `result-track:7d7cb9eb929ab92f4aba057c18ddd1d8dc6ed06ae2e31b2ed57aa408c550f89f` |
| 22 | `theorem` | [id_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/id-apply--3274f40a02a284ab9a730a71.md) | 151 | `result-track:3274f40a02a284ab9a730a71646cfa90a00c4a9128a1735569fe8e69614e5360` |
| 23 | `def` | [comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/comp--7a5f11462494717ae84b5db2.md) | 155 | `declaration-track:7a5f11462494717ae84b5db24e01f796311a91b74706f57d4feee8e1f07def1b` |
| 24 | `theorem` | [coe_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/coe-comp--9de4508047e489546370b535.md) | 159 | `result-track:9de4508047e489546370b535daf2e206da11116982914ca342112d92fd9e942b` |
| 25 | `theorem` | [comp_apply](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/comp-apply--4dafbc94234e40b3ad0f84dc.md) | 163 | `result-track:4dafbc94234e40b3ad0f84dce60f851e8d7c5f9bf222bd907c55cb29772e57bc` |
| 26 | `theorem` | [coe_comp_continuousMap](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/coe-comp-continuousmap--90847ee168d08b8f502d8564.md) | 166 | `result-track:90847ee168d08b8f502d856493b9ed9a2f386408d7fbac68bd9de7e8cb1e5ab2` |
| 27 | `theorem` | [coe_comp_continuousMap'](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/coe-comp-continuousmap--a2c8e4c729a563aa422394dd.md) | 171 | `result-track:a2c8e4c729a563aa422394ddac4628c1c5cf9913cae204743cf44e4b489849d1` |
| 28 | `theorem` | [comp_assoc](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/comp-assoc--bcae868b84fcb2d881ce97c2.md) | 176 | `result-track:bcae868b84fcb2d881ce97c28f903a3a31eb9ea2bf9fb69dbc063d43143e931b` |
| 29 | `theorem` | [comp_id](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/comp-id--98b58c710c13dec48f67fd11.md) | 181 | `result-track:98b58c710c13dec48f67fd11344918f713e406160066942c10b7b55b31faeaba` |
| 30 | `theorem` | [id_comp](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/id-comp--c355a0ed8d7ee5ef818d7e59.md) | 185 | `result-track:c355a0ed8d7ee5ef818d7e5952f7f6672d19bda9e84bcfc4247c1c17b29729ba` |
| 31 | `theorem` | [cancel_right](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/cancel-right--081b5af00d88eb8ada8eeaf4.md) | 189 | `result-track:081b5af00d88eb8ada8eeaf47b60f71586e4fd2aebd5a0af8edf6edea0211caf` |
| 32 | `theorem` | [cancel_left](../../../../../mathematics/Topology/GeneralTopology/Hom/Variantc2f8889fcd8aaeb636faf256fbc79f7572089c6cbfc37a53ae013ab260ac1c3d.lean/declarations/cancel-left--818fbcb149d18b4fe416fb83.md) | 195 | `result-track:818fbcb149d18b4fe416fb83e569affa17e0da9f7d4f32e758f85c8b6a5e3d5b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
