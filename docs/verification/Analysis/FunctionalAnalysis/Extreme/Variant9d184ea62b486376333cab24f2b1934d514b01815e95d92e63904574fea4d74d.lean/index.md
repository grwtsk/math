# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Extreme.Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5a95fa4ac71665fb65cc4118b576af965f72887a",
  "lexical_observation_count": 34,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5a95fa4ac71665fb65cc4118b576af965f72887a`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [IsExtreme](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme--1f1f773e6acf17958b0899a5.md) | 71 | `declaration-track:1f1f773e6acf17958b0899a5dca54c4561df4b95833e0a08c6d1edf85ff96905` |
| 2 | `def` | [Set.extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/set-extremepoints--5d6d754a32f1474d3d133cff.md) | 78 | `declaration-track:5d6d754a32f1474d3d133cff826ee309a8b9e8813229afaa526fdcaa7206709c` |
| 3 | `theorem` | [IsExtreme.refl](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-refl--a10d8eac29e1e4a7caded95c.md) | 82 | `result-track:a10d8eac29e1e4a7caded95c6191145a367adccdcdef445535cc469c26c59a78` |
| 4 | `theorem` | [IsExtreme.rfl](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-rfl--54d94869fb9aca326ef902f6.md) | 87 | `result-track:54d94869fb9aca326ef902f617ee671cf9c521e9d9e6a459b7e8263fd7402aa0` |
| 5 | `theorem` | [IsExtreme.right_mem_of_mem_openSegment](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-right-mem-of-mem-opensegment--695e60fa59c8316ff16bee37.md) | 90 | `result-track:695e60fa59c8316ff16bee3771d12c41425363c5b18654507039e0021caac27a` |
| 6 | `theorem` | [IsExtreme.trans](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-trans--98579c2aaa286e960ea14d31.md) | 95 | `result-track:98579c2aaa286e960ea14d31b6c84a658936f0c8bb8e5217a253ae623c658b41` |
| 7 | `theorem` | [IsExtreme.antisymm](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-antisymm--bdcf0eb577c7f073e4a2d2be.md) | 102 | `result-track:bdcf0eb577c7f073e4a2d2bea04587aa53eccd8f5dc60b5417d4cbdb09c0add4` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/instance--b18251ec86e8dbe155799129.md) | 105 | `declaration-track:b18251ec86e8dbe1557991290b8a72ececf5f977b9631479b817bc1f8acaaab3` |
| 9 | `theorem` | [IsExtreme.inter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-inter--c1c1cee751b7a5caf7b5a402.md) | 110 | `result-track:c1c1cee751b7a5caf7b5a4023fd8b1cad229810ae78c000b184727d650d9e670` |
| 10 | `theorem` | [IsExtreme.mono](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-mono--a7308e7ee17dc1519dd54f31.md) | 117 | `result-track:a7308e7ee17dc1519dd54f3172cf1a4be886b5a31e2b54a83050db516e1536f9` |
| 11 | `theorem` | [isExtreme_iInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-iinter--b2d58b32b8cc231e9815bdcd.md) | 121 | `result-track:b2d58b32b8cc231e9815bdcdf281b3e3ed22292afb1b2417d48a4717f02392a1` |
| 12 | `theorem` | [isExtreme_biInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-biinter--99c56395c2547a48d962e52d.md) | 128 | `result-track:99c56395c2547a48d962e52d5abd0cc717b2d6f615790cdbde60e578e3e0c51f` |
| 13 | `theorem` | [isExtreme_sInter](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-sinter--a274a4162f19c7abb22ab319.md) | 133 | `result-track:a274a4162f19c7abb22ab3190a2dee56c64689d6207fd6ead35097966fa1daa3` |
| 14 | `theorem` | [mem_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/mem-extremepoints--4beb345eb1d7685b88e03122.md) | 143 | `result-track:4beb345eb1d7685b88e0312268018baaee80601e574290162d7e1db71c205eb5` |
| 15 | `theorem` | [mem_extremePoints_iff_left](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/mem-extremepoints-iff-left--85b4047b09dab2a5118d5ed7.md) | 153 | `result-track:85b4047b09dab2a5118d5ed7dbd012cefdb7fd3bbb4d2a9b96c78417f11a44e4` |
| 16 | `lemma` | [isExtreme_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-singleton--4d00fb1e2dd91a27bc3bf394.md) | 158 | `result-track:4d00fb1e2dd91a27bc3bf39483ca507ebc2467404920fbeecd0c859f2d8fe0ba` |
| 17 | `theorem` | [extremePoints_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/extremepoints-subset--71e544ff567d786c7b876af4.md) | 163 | `result-track:71e544ff567d786c7b876af46e68356b9206d4b30fba8b38862d97918001ca5c` |
| 18 | `theorem` | [extremePoints_empty](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/extremepoints-empty--d95a746ed0f9fe5a11cbd8bf.md) | 167 | `result-track:d95a746ed0f9fe5a11cbd8bf2279adbda44f5d8300e17abf53bd9e1da2303425` |
| 19 | `theorem` | [extremePoints_singleton](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/extremepoints-singleton--5deac0799b287909be445116.md) | 171 | `result-track:5deac0799b287909be44511618e74ba95508f1fe3e2ba7b154d5da1410bf11b0` |
| 20 | `theorem` | [inter_extremePoints_subset_extremePoints_of_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/inter-extremepoints-subset-extremepoints-of-subset--7f2774cb715332fbe0eae934.md) | 174 | `result-track:7f2774cb715332fbe0eae934adb49e7dfaa333adb9da404198171d6c9ea2c053` |
| 21 | `theorem` | [IsExtreme.extremePoints_subset_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-extremepoints-subset-extremepoints--8b3e66e519de680f3c644a54.md) | 178 | `result-track:8b3e66e519de680f3c644a54117e5f6529bb88a91b1bf1f060141a35b1a0b6bc` |
| 22 | `theorem` | [IsExtreme.extremePoints_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-extremepoints-eq--e5125d24392c5e5dbf0b6389.md) | 182 | `result-track:e5125d24392c5e5dbf0b6389dcec47d23300b6505ee8652f94242139840a33ab` |
| 23 | `lemma` | [Set.extremePoints_eq_self](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/set-extremepoints-eq-self--74f14c23a70c6f7ee01dae8c.md) | 188 | `result-track:74f14c23a70c6f7ee01dae8c6721c4840e58b72a43476a322c3800e4a26434a6` |
| 24 | `theorem` | [IsExtreme.convex_sdiff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/isextreme-convex-sdiff--4472a85c2c93a61bfe6aed34.md) | 198 | `result-track:4472a85c2c93a61bfe6aed346b472c1513aa99bc1524f5e94bf734071832b7bc` |
| 25 | `theorem` | [extremePoints_prod](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/extremepoints-prod--2a0830066038c0f201f7fbd0.md) | 206 | `result-track:2a0830066038c0f201f7fbd07863592fea05afc45bdb720e86aba5a6aeaf5bd6` |
| 26 | `theorem` | [extremePoints_pi](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/extremepoints-pi--ad4a35e8f4164c48c57ac755.md) | 224 | `result-track:ad4a35e8f4164c48c57ac755aee9fef06d66f18b07be477cccc0412392bb339e` |
| 27 | `lemma` | [image_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/image-extremepoints--a933484d85aaddc535404052.md) | 249 | `result-track:a933484d85aaddc5354040525b1abc289adca8ab01b80e5b1041df368f86347c` |
| 28 | `theorem` | [mem_extremePoints_iff_forall_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/mem-extremepoints-iff-forall-segment--9dfc92cd1af83e9af65957be.md) | 267 | `result-track:9dfc92cd1af83e9af65957beb50baab670edfa1cb9e08fbf333fcc4a39c4e844` |
| 29 | `theorem` | [Convex.mem_extremePoints_iff_convex_sdiff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/convex-mem-extremepoints-iff-convex-sdiff--fa3666b55f12d8f6bd1f488d.md) | 279 | `result-track:fa3666b55f12d8f6bd1f488dde7110ba1dc4e356ea0c16d0dc9d3a043ef61c04` |
| 30 | `theorem` | [Convex.mem_extremePoints_iff_mem_sdiff_convexHull_sdiff](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/convex-mem-extremepoints-iff-mem-sdiff-convexhull-sdiff--c79ecff1d493afda56da684d.md) | 292 | `result-track:c79ecff1d493afda56da684d2415688c69bbc8f43e27686e55eddff35b6c6374` |
| 31 | `theorem` | [extremePoints_convexHull_subset](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/extremepoints-convexhull-subset--51b227933bc209d75cad84be.md) | 301 | `result-track:51b227933bc209d75cad84be62e0ac41f7df8011c2718b7ed6b36ae82c4fa6d7` |
| 32 | `lemma` | [star_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/star-segment--f5aaf82d3922d64b0e8007c0.md) | 314 | `result-track:f5aaf82d3922d64b0e8007c053a9da48ac3ce5e37f148e4704700f446d030735` |
| 33 | `lemma` | [star_openSegment](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/star-opensegment--4bcf1868ce42c463782af5a2.md) | 319 | `result-track:4bcf1868ce42c463782af5a26f3598868e012bdaf5e218c238064ca20703c211` |
| 34 | `lemma` | [star_extremePoints](../../../../../mathematics/Analysis/FunctionalAnalysis/Extreme/Variant9d184ea62b486376333cab24f2b1934d514b01815e95d92e63904574fea4d74d.lean/declarations/star-extremepoints--9936025b482aba0b32cb3578.md) | 325 | `result-track:9936025b482aba0b32cb357843251c7e9c66181c2a6ac41015163cd2e860ce75` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
