# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Union.Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "85332c79da25b173e1cec1ea195e5e65f51254cf",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `85332c79da25b173e1cec1ea195e5e65f51254cf`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finset.Fold` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Multiset.Bind` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Order.SetNotation` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/disjiunion--4b1acdf448ea24dde92fbe67.md) | 39 | `declaration-track:4b1acdf448ea24dde92fbe67fb7583e1724ac679263733bd5dc855f3f85716d2` |
| 2 | `lemma` | [disjiUnion_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/disjiunion-val--0209536bf4bd96e579c563e9.md) | 44 | `result-track:0209536bf4bd96e579c563e9564b8c7a4075fb672dec51738a5b36073ca4d84a` |
| 3 | `lemma` | [disjiUnion_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/disjiunion-empty--630e7dfedeaeeaa57683917a.md) | 47 | `result-track:630e7dfedeaeeaa57683917a4b8f10a528d3c7dc7f6260ab24e7832e35bdceee` |
| 4 | `lemma` | [mem_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/mem-disjiunion--6cdcaa65175d7adcd027c453.md) | 49 | `result-track:6cdcaa65175d7adcd027c453454fd66b9ff991d86d8540bb8cded3e4af4314fe` |
| 5 | `lemma` | [coe_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/coe-disjiunion--6af1de2e628bb0c4db834d7f.md) | 53 | `result-track:6af1de2e628bb0c4db834d7fe662bd82b6c0c05769f622f72c850f90add26f3e` |
| 6 | `lemma` | [disjiUnion_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/disjiunion-cons--c8113bc67cde565a2e672d4d.md) | 56 | `result-track:c8113bc67cde565a2e672d4d6360ae2b23718820366d584f2eef9d0f27049a2c` |
| 7 | `lemma` | [singleton_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/singleton-disjiunion--102839fd19c9c2d6770a37d1.md) | 65 | `result-track:102839fd19c9c2d6770a37d138667ddcf80a0e8b2c8939a0fcc3484414659a58` |
| 8 | `lemma` | [disjiUnion_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/disjiunion-disjiunion--90be53bd04cac76f43fc2800.md) | 68 | `result-track:90be53bd04cac76f43fc2800326a0c27ecc147cdb00e731656b447da387ee61c` |
| 9 | `lemma` | [sUnion_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/sunion-disjiunion--51e7f8d0bcf09214880d6643.md) | 84 | `result-track:51e7f8d0bcf09214880d66434450398a16086ef37f8da62576c9148b13e69cf6` |
| 10 | `lemma` | [pairwiseDisjoint_fibers](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/pairwisedisjoint-fibers--f154eec3c20d9b8b72d92b08.md) | 95 | `result-track:f154eec3c20d9b8b72d92b08a0d33fc9a8a3938b0854d7fa178ac3735a34a470` |
| 11 | `lemma` | [disjiUnion_filter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/disjiunion-filter-eq--4a4b5c3085c60d020257880a.md) | 99 | `result-track:4a4b5c3085c60d020257880addc955029d1fba449378f3ef0dfa2407d840dac0` |
| 12 | `lemma` | [disjiUnion_filter_eq_of_maps_to](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/disjiunion-filter-eq-of-maps-to--e5b1f34568195ba9b2681457.md) | 104 | `result-track:e5b1f34568195ba9b26814575725bd37fa670b412d028f79664f5bc895a43459` |
| 13 | `theorem` | [map_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/map-disjiunion--eee66f009c3ba4b0caa6cf67.md) | 110 | `result-track:eee66f009c3ba4b0caa6cf67796ae0f74f9104465855041359820d9824ccb7cc` |
| 14 | `theorem` | [disjiUnion_map](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/disjiunion-map--55ded72cd71a08fb41551582.md) | 116 | `result-track:55ded72cd71a08fb415515823a53ecfd12f0b701db4f87487d260650028e6586` |
| 15 | `theorem` | [fold_disjiUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/fold-disjiunion--e7ef93d63b6b83efb0aa1148.md) | 123 | `result-track:e7ef93d63b6b83efb0aa1148195ad5a227bfedfa281821d5a137a54fff8e23f7` |
| 16 | `def` | [biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion--362d0df345e00364bd647a4e.md) | 135 | `declaration-track:362d0df345e00364bd647a4e77defaf09e5ce399eca72dec34c7155722d4a8b5` |
| 17 | `lemma` | [biUnion_val](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-val--ee5a6aa0b7bee173ad5738c2.md) | 138 | `result-track:ee5a6aa0b7bee173ad5738c2d11049432209e2ce6a844af7023162ec5cb9dc35` |
| 18 | `lemma` | [biUnion_empty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-empty--dc080d3edbca6a70e042a29e.md) | 141 | `result-track:dc080d3edbca6a70e042a29eeb2e404652a9072d539aec87f96c7275e64a5dc0` |
| 19 | `lemma` | [mem_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/mem-biunion--8fd15f433c1a368d59dfd743.md) | 143 | `result-track:8fd15f433c1a368d59dfd7432d1ca394ca5683896e43efb4f8ccd91e042353e3` |
| 20 | `lemma` | [coe_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/coe-biunion--7531e5d060f34797ce118b2b.md) | 147 | `result-track:7531e5d060f34797ce118b2bd2d8483bb7fb43961fb04d2869b934e7949bea09` |
| 21 | `lemma` | [biUnion_insert](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-insert--4fe0f522f238ed219d22dbd4.md) | 151 | `result-track:4fe0f522f238ed219d22dbd4e7917896ec4a965decb9bd272538e93404c40001` |
| 22 | `lemma` | [biUnion_congr](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-congr--cfc236fdd2d8b621448e2bbc.md) | 154 | `result-track:cfc236fdd2d8b621448e2bbc2388d4bb9b2ae1066961cda579f4d31246450f7a` |
| 23 | `lemma` | [disjiUnion_eq_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/disjiunion-eq-biunion--4e87aa4ab58c26d7044a7d74.md) | 159 | `result-track:4e87aa4ab58c26d7044a7d748d21a46415bc930a76ddbda763bc9866a13f354d` |
| 24 | `lemma` | [biUnion_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-subset--d33e9302101ccc604b774189.md) | 162 | `result-track:d33e9302101ccc604b77418924cb81e46e5ce140fa934ab0b4ce26c6d8d7c9f6` |
| 25 | `lemma` | [singleton_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/singleton-biunion--e380ac3556a6917e6b3001eb.md) | 167 | `result-track:e380ac3556a6917e6b3001ebf61d9fb01029a4fe847ad8903df5a56b52818bd8` |
| 26 | `lemma` | [biUnion_inter](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-inter--e09eee9974e07b62cfa21288.md) | 170 | `result-track:e09eee9974e07b62cfa212889efe30bb4b7ae0364d624b9e6c662447b201829c` |
| 27 | `lemma` | [inter_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/inter-biunion--c7eb149af6776f6f0846615d.md) | 176 | `result-track:c7eb149af6776f6f0846615db806d13538e78396f5b196e2390e2c41333a16f7` |
| 28 | `lemma` | [biUnion_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-biunion--15a3adea2884f948cc810a71.md) | 181 | `result-track:15a3adea2884f948cc810a71f08a21b9d7e5227039f3bdc9b152f289ce0fb332` |
| 29 | `lemma` | [bind_toFinset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/bind-tofinset--e46f8e5e5d8dadb5c9471cc1.md) | 188 | `result-track:e46f8e5e5d8dadb5c9471cc18c6368b5a9ba5437123c37b18195c1555602c8ad` |
| 30 | `lemma` | [biUnion_mono](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-mono--b971e57fdeb1813ed269b0a8.md) | 192 | `result-track:b971e57fdeb1813ed269b0a8ba22e515a07829b7c2f164ad8266ebda46ef5370` |
| 31 | `lemma` | [biUnion_subset_biUnion_of_subset_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-subset-biunion-of-subset-left--de6ddecf06b8157d40d8aba4.md) | 197 | `result-track:de6ddecf06b8157d40d8aba4805b46ebf3c398b5ea9eafb669c096eeae7fa31a` |
| 32 | `lemma` | [subset_biUnion_of_mem](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/subset-biunion-of-mem--6b889b84df0a03f191bdfa5a.md) | 201 | `result-track:6b889b84df0a03f191bdfa5a8c4e9a502bd2e3efa654f64a395b5ab3cc35eab0` |
| 33 | `lemma` | [biUnion_subset_iff_forall_subset](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-subset-iff-forall-subset--cfab082d459eeee869635c72.md) | 206 | `result-track:cfab082d459eeee869635c724e55156c9d2849060ff6d9da645d68e2b8831ee7` |
| 34 | `lemma` | [biUnion_singleton_eq_self](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-singleton-eq-self--cd134060ca15b08d225c4edb.md) | 213 | `result-track:cd134060ca15b08d225c4edb62249387773f7780aca084151d6eedd2a76436e3` |
| 35 | `lemma` | [filter_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/filter-biunion--e0c1d264f20e7f8070eae4a1.md) | 216 | `result-track:e0c1d264f20e7f8070eae4a1ff5f13464092839b3f097dfe8a6eaf61b25748d8` |
| 36 | `lemma` | [biUnion_filter_eq_of_maps_to](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-filter-eq-of-maps-to--f886ac092492d2f1eac26cd7.md) | 226 | `result-track:f886ac092492d2f1eac26cd7837562c3f8f52c14de483d156c7f34270fe3e58c` |
| 37 | `lemma` | [erase_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/erase-biunion--eca8e372e6b05dd8ba379830.md) | 230 | `result-track:eca8e372e6b05dd8ba3798300911bf99ee6db9585a1af47948d80da06c43094e` |
| 38 | `lemma` | [biUnion_nonempty](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-nonempty--7d5d049a9015402393408d2f.md) | 237 | `result-track:7d5d049a9015402393408d2f702c7eceb8494abcf72c76b88ef322072b1fb883` |
| 39 | `lemma` | [Nonempty.biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/nonempty-biunion--5ba9cda29cfecff141659006.md) | 242 | `result-track:5ba9cda29cfecff141659006a5a7f8ee32ecb0a47a3039e546db84a7e9a510e8` |
| 40 | `lemma` | [disjoint_biUnion_left](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/disjoint-biunion-left--7ce4e643c7af3707d8699599.md) | 245 | `result-track:7ce4e643c7af3707d8699599b161e35c5e4fb52f0518c1fa1a6c8e6d8849426f` |
| 41 | `lemma` | [disjoint_biUnion_right](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/disjoint-biunion-right--d9236837b4500f5b7029fff4.md) | 253 | `result-track:d9236837b4500f5b7029fff46a8fafb550408478f8fd4bd9f9095ef32f03b2b0` |
| 42 | `theorem` | [image_biUnion](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/image-biunion--7fc8263e631cd98b4a35fc22.md) | 257 | `result-track:7fc8263e631cd98b4a35fc22643a8b9afc61ce1c01d79df4e64a8ba76de20d6b` |
| 43 | `theorem` | [biUnion_image](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-image--c37be6cd9c3933f63e61966d.md) | 262 | `result-track:c37be6cd9c3933f63e61966d4a03564fec1d6e0a2e30be9023f45fb1a8b8906f` |
| 44 | `theorem` | [image_biUnion_filter_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/image-biunion-filter-eq--2ae43086dd265e2d5ef63423.md) | 267 | `result-track:2ae43086dd265e2d5ef63423ea13eb6b1bc86c98ef75e85a49f6c66bcadef5bb` |
| 45 | `theorem` | [biUnion_singleton](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Union/Variantd25539f55f78e127a78dd08ec51e43759f3618dcb8e9421646cc47e6e92cb469.lean/declarations/biunion-singleton--81301e50caea6707079cb068.md) | 271 | `result-track:81301e50caea6707079cb0688233a78d061b2a03a99c5bf8dd8c11ce9b26341d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
