# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.GraphTheory.Turan.Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ff42de11d5bc83a29b72c85401a351e15fd390a3",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ff42de11d5bc83a29b72c85401a351e15fd390a3`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean.json)

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
| 1 | `def` | [IsTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/isturanmaximal--4f054e9f9b2485d92d993959.md) | 56 | `declaration-track:4f054e9f9b2485d92d9939591b2a493dc8a5f6b89c471e1ba71b6e29f240892a` |
| 2 | `def` | [turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/turangraph--f4d19efde7421df7d87df0a8.md) | 63 | `declaration-track:f4d19efde7421df7d87df0a8024f7a3e6de0dff8752d06507b0476f9f2058117` |
| 3 | `lemma` | [turanGraph_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/turangraph-adj--f74a9d85d09c9e75f134c0c3.md) | 65 | `result-track:f74a9d85d09c9e75f134c0c34f982e5a01476901cb3db2d031386c9cf6891fa2` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/instance--a735ad6c0c4f39e28cf3785c.md) | 68 | `declaration-track:a735ad6c0c4f39e28cf3785ca68aedc2db60c7a40c12d100b948fd0bb19d46d1` |
| 5 | `lemma` | [turanGraph_zero](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/turangraph-zero--596cd295bb9d04b21cb59a02.md) | 71 | `result-track:596cd295bb9d04b21cb59a02229f56bb02d1a35386b646ba001efd06620c9089` |
| 6 | `lemma` | [turanGraph_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/turangraph-one--7f516e9e381276fd2d11abfc.md) | 72 | `result-track:7f516e9e381276fd2d11abfc975759c619dc8dcba8ce523b7f97830ae4a6b1fc` |
| 7 | `theorem` | [turanGraph_eq_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/turangraph-eq-top--3209126522cc6984269cbf5f.md) | 75 | `result-track:3209126522cc6984269cbf5f10f7281463262aa62e90ecd95e65d799757f9195` |
| 8 | `theorem` | [turanGraph_cliqueFree](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/turangraph-cliquefree--8d776598e9da03eed4e9f6af.md) | 85 | `result-track:8d776598e9da03eed4e9f6af699d97e83d4e17fe26d6ff36589662142de2db99` |
| 9 | `theorem` | [not_cliqueFree_of_isTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/not-cliquefree-of-isturanmaximal--68944565ca491874e2c2d267.md) | 95 | `result-track:68944565ca491874e2c2d26796ba15687621676c4624aa8f5e7d3d9ac9872314` |
| 10 | `lemma` | [exists_isTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/exists-isturanmaximal--8c897f961589cfe708dd97ce.md) | 105 | `result-track:8c897f961589cfe708dd97cec3b48337963b54d329589a32b4d92a8f883c4c2b` |
| 11 | `lemma` | [degree_eq_of_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/degree-eq-of-not-adj--e631f51dbdec77cd18adc35c.md) | 116 | `result-track:e631f51dbdec77cd18adc35ccfd4c9d4386548b3d2ee2be734aeaa67614680a2` |
| 12 | `lemma` | [not_adj_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/not-adj-trans--f48cf182f73a86de187f06f8.md) | 128 | `result-track:f48cf182f73a86de187f06f82a563bf89d1d36a720cf11a7752507e721e911ac` |
| 13 | `theorem` | [equivalence_not_adj](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/equivalence-not-adj--0de23068a23f58a1fbfcdf81.md) | 160 | `result-track:0de23068a23f58a1fbfcdf810aa5a6d67368a50f701f014e6f02d7e43ad808e9` |
| 14 | `def` | [setoid](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/setoid--11cd9fd57eea3f7bee1d167b.md) | 168 | `declaration-track:11cd9fd57eea3f7bee1d167be5e588d2e450c2454237a65420ad5ae9ba2100dc` |
| 15 | `instance` | [(anonymous)](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/instance--ae4ea08d7e6a19878e6e5ab6.md) | 170 | `declaration-track:ae4ea08d7e6a19878e6e5ab6a82b5a204cf02ece8687aac5f340c47133440453` |
| 16 | `def` | [finpartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/finpartition--861dbe5c9c45311cd4d4e5f1.md) | 174 | `declaration-track:861dbe5c9c45311cd4d4e5f141700744ac3f5a20a34182eb44d0beadef0e6f02` |
| 17 | `lemma` | [not_adj_iff_part_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/not-adj-iff-part-eq--08174aae703001618404c7e0.md) | 176 | `result-track:08174aae703001618404c7e006f96c5612a146a219342838a10c3e42f3ba0a06` |
| 18 | `lemma` | [degree_eq_card_sub_part_card](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/degree-eq-card-sub-part-card--d15894a62479e8115fea26ff.md) | 184 | `result-track:d15894a62479e8115fea26fffb9afb90f8033d9d59eadb38cbb9fa2d000d8b60` |
| 19 | `theorem` | [isEquipartition](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/isequipartition--84f5d9f3901fa1f38d2f6c7b.md) | 197 | `result-track:84f5d9f3901fa1f38d2f6c7b1440418d4bd47fccaa88753b3188e5b0953ef9a8` |
| 20 | `lemma` | [card_parts_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/card-parts-le--71c31b39d6ec3230c266df8f.md) | 217 | `result-track:71c31b39d6ec3230c266df8f92ea4939a3e1595c333f0fa3e351f3733c56b80a` |
| 21 | `theorem` | [card_parts](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/card-parts--0225366fd1c16f0def3d0b5d.md) | 230 | `result-track:0225366fd1c16f0def3d0b5da8cf2437f86eaef1ac7a6e8d42ff577626e01906` |
| 22 | `theorem` | [nonempty_iso_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/nonempty-iso-turangraph--70532808bc1271d0aae5ad66.md) | 254 | `result-track:70532808bc1271d0aae5ad6634359b0fe2b77397e49d5189ccc75aa2ef8c9577` |
| 23 | `theorem` | [isTuranMaximal_of_iso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/isturanmaximal-of-iso--d1c5334a353e32e62f80dde8.md) | 275 | `result-track:d1c5334a353e32e62f80dde8b30b63eef56355c05d15eeda884821eaefcfdbc5` |
| 24 | `theorem` | [IsTuranMaximal.iso](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/isturanmaximal-iso--f50182886e4c120a09f324aa.md) | 283 | `result-track:f50182886e4c120a09f324aa3100f23f7101574989a908e381e26ebf13c3bb1b` |
| 25 | `theorem` | [isTuranMaximal_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/isturanmaximal-turangraph--55b8e249d967c3b2d64b6657.md) | 288 | `result-track:55b8e249d967c3b2d64b6657f774153e6f6c6264ee69c675002ee50de528696a` |
| 26 | `theorem` | [isTuranMaximal_iff_nonempty_iso_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/isturanmaximal-iff-nonempty-iso-turangraph--7dc04026a3b8f8db75c4b1c1.md) | 293 | `result-track:7dc04026a3b8f8db75c4b1c129f733899ece7c7fd1768173e2189b8e37fa05d5` |
| 27 | `lemma` | [isExtremal_top_free_iff_isTuranMaximal](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/isextremal-top-free-iff-isturanmaximal--3a631add8e11827e68a8b455.md) | 299 | `result-track:3a631add8e11827e68a8b455733befd63b785657bca99bdeb765abeac183d936` |
| 28 | `lemma` | [isExtremal_top_free_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/isextremal-top-free-turangraph--3815bba3a8020834d1769687.md) | 304 | `result-track:3815bba3a8020834d1769687c2657b168699441c0ebcb6a418468820069bd591` |
| 29 | `theorem` | [extremalNumber_top](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/extremalnumber-top--366fdb2d25270110ac1052b0.md) | 310 | `result-track:366fdb2d25270110ac1052b078d20044782bb11a5a1ecb6876ac362c74781bc6` |
| 30 | `theorem` | [card_edgeFinset_eq_extremalNumber_top_iff_nonempty_iso_turanGraph](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/card-edgefinset-eq-extremalnumber-top-iff-nonempty-iso-turangraph--b024b29af4db9c33a282e736.md) | 321 | `result-track:b024b29af4db9c33a282e736c2a913e91ed1e1d28eeed8f3110ea66596551b9a` |
| 31 | `abbrev` | [turanNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/turannumber--b55438956275270955f1a292.md) | 330 | `declaration-track:b55438956275270955f1a292a5872479b33b29dad46cb2c38c5076e8f4b4c7ca` |
| 32 | `lemma` | [sum_ne_add_mod_eq_sub_one](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/sum-ne-add-mod-eq-sub-one--21fcf7c8ff6a558ebf4a0cfa.md) | 332 | `result-track:21fcf7c8ff6a558ebf4a0cfaa3937b1a581c2ed09f52f98d3ed3d3aee445d90f` |
| 33 | `lemma` | [turanNumber_add](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/turannumber-add--c52129567ad9978029494915.md) | 352 | `result-track:c52129567ad997802949491517f471213d97e2b168dc005236f94b426dd85914` |
| 34 | `theorem` | [turanNumber_eq](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/turannumber-eq--1ef3d26db5ea9b47d37ddddc.md) | 373 | `result-track:1ef3d26db5ea9b47d37ddddc97598d9c2a42af6818e82346264b18b21a107aea` |
| 35 | `lemma` | [turanNumber_two](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/turannumber-two--11bb59d1f7432369b1b22423.md) | 406 | `result-track:11bb59d1f7432369b1b22423f48789841ace06f254824b36ef5812551511b30c` |
| 36 | `lemma` | [turanNumber_three](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/turannumber-three--9a6623ccfed40e8fa64d5b32.md) | 412 | `result-track:9a6623ccfed40e8fa64d5b3235bc8cc2c4c6a365317cb27fdc485e02d6a6da0b` |
| 37 | `theorem` | [mul_turanNumber_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/mul-turannumber-le--6a248cf7b501f143ee8fccfa.md) | 420 | `result-track:6a248cf7b501f143ee8fccfac1744b02ef56e9ef37f730a938c84ba292bd7525` |
| 38 | `theorem` | [CliqueFree.card_edgeFinset_le](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/cliquefree-card-edgefinset-le--f52b469331cac7e875288bc7.md) | 433 | `result-track:f52b469331cac7e875288bc7349b29713210bb239f4c02182a2ee9de4f739dc3` |
| 39 | `lemma` | [strictMonoOn_turanNumber](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/GraphTheory/Turan/Variantbc1b359202124ecc738c1da8be0ec8b6d38649d608b1813202fc2039ee2538a9.lean/declarations/strictmonoon-turannumber--36692f5530699c2115fc53ef.md) | 442 | `result-track:36692f5530699c2115fc53efa87fd5eaa137b13773b7b1f89a750bae58b875d0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
