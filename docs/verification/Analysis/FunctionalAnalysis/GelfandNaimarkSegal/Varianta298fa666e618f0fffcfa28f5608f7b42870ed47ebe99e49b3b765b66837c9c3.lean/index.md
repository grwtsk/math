# Verification target: GRWTSK.Analysis.FunctionalAnalysis.GelfandNaimarkSegal.Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f4eb326e23204bba9a86132fefb761c198fdc16f",
  "lexical_observation_count": 27,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f4eb326e23204bba9a86132fefb761c198fdc16f`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean.json)

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
| 1 | `def` | [PreGNS](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/pregns--05bf3813e25d589f0f32aaf3.md) | 58 | `declaration-track:05bf3813e25d589f0f32aaf3a84797fdcb14ca4374e1c632d08d5ec6f6bba798` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/instance--22c12f80847839f4692ea579.md) | 60 | `declaration-track:22c12f80847839f4692ea579a8fbcb58dce08089d708f6b6fdbaea3dd87d16d0` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/instance--60476433ea8ad9c206410468.md) | 61 | `declaration-track:60476433ea8ad9c206410468f5e6ae6436a465e2065227f93b998b5991696cf9` |
| 4 | `def` | [toPreGNS](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/topregns--61f0866bdfddc2d2c1e1b00c.md) | 64 | `declaration-track:61f0866bdfddc2d2c1e1b00cb705b685a402ab1aa8dbb106cd411372065ec2b5` |
| 5 | `def` | [ofPreGNS](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/ofpregns--e166195b4fe00b38497ad6bb.md) | 67 | `declaration-track:e166195b4fe00b38497ad6bbe56d7846e748a380d33afa5e38e0e3993419d5bc` |
| 6 | `lemma` | [toPreGNS_ofPreGNS](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/topregns-ofpregns--384e8c4134d66f4126923224.md) | 70 | `result-track:384e8c4134d66f4126923224a62bbc7cb58e46577afb25a7f93bc5be4dfe3c47` |
| 7 | `lemma` | [ofPreGNS_toPreGNS](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/ofpregns-topregns--a34dbfc041bebba0e49afd2b.md) | 73 | `result-track:a34dbfc041bebba0e49afd2bd286aea8198b43eafa34f12237b48872bdcdd688` |
| 8 | `abbrev` | [preGNSpreInnerProdSpace](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/pregnspreinnerprodspace--6d6d47e6c73a351067e8b6cb.md) | 82 | `declaration-track:6d6d47e6c73a351067e8b6cbacfb079a6e69fbf4a9d127f2b8251f153980e6d4` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/instance--2c9a89e5ea18c6825eef3cdd.md) | 89 | `declaration-track:2c9a89e5ea18c6825eef3cdd5e74588feff46a88a3a3eece8465ceece5d5bbf5` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/instance--2fba251040f66a7c81b778f0.md) | 91 | `declaration-track:2fba251040f66a7c81b778f06def9dc5bd73099f705b1f04fadce4bfe4164822` |
| 11 | `lemma` | [preGNS_inner_def](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/pregns-inner-def--08707109727d218da5444f2c.md) | 94 | `result-track:08707109727d218da5444f2c722ba685fa4706cc15a0bc8fff86642c2b5e6b29` |
| 12 | `lemma` | [preGNS_norm_def](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/pregns-norm-def--0cdc3ad4472b787d1b980228.md) | 97 | `result-track:0cdc3ad4472b787d1b9802281b355ffac835290742ce88925886bfbf31992d05` |
| 13 | `lemma` | [preGNS_norm_sq](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/pregns-norm-sq--571cc9bfb844060ecd210e05.md) | 100 | `result-track:571cc9bfb844060ecd210e054e081678db6269c72eb457f1060de4becceba558` |
| 14 | `lemma` | [preGNS_norm_def'](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/pregns-norm-def--fd16ab289c93e4b8dbfc46b1.md) | 105 | `result-track:fd16ab289c93e4b8dbfc46b178379e3b0bff7c5aaca5fdfc8a5a434f374f99f6` |
| 15 | `lemma` | [norm_map_star_mul_le](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/norm-map-star-mul-le--9253a5fa7f064ecc40cb23fa.md) | 114 | `result-track:9253a5fa7f064ecc40cb23fab11ca19d06159ca3ffc0d9f0484a2d37e9688770` |
| 16 | `lemma` | [norm_map_star_mul_sq_le](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/norm-map-star-mul-sq-le--265d263e4d099953945afbca.md) | 121 | `result-track:265d263e4d099953945afbca8a111e28b686952450c66efae12f26b9bd765189` |
| 17 | `lemma` | [norm_map_mul_star_le](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/norm-map-mul-star-le--3ce2d3d552d0abe27b3d9f4e.md) | 127 | `result-track:3ce2d3d552d0abe27b3d9f4efbcd9511bc7c3fcc4461ad8a75884910798ba82b` |
| 18 | `lemma` | [norm_map_mul_star_sq_le](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/norm-map-mul-star-sq-le--00be49fd2594a86b8aac167c.md) | 133 | `result-track:00be49fd2594a86b8aac167c94644e824129848c8417c3093086e4ac99fee857` |
| 19 | `abbrev` | [GNS](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/gns--e75384be07d0ae270745cf4a.md) | 148 | `declaration-track:e75384be07d0ae270745cf4aabbf0ec2276da76f891a2a4048ed46bfaec8ff9c` |
| 20 | `def` | [leftMulMapPreGNS](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/leftmulmappregns--f6f6a0b64598516755234e4f.md) | 159 | `declaration-track:f6f6a0b64598516755234e4fe139e1097bf4acfb20f7f14eb5f680099cf3e288` |
| 21 | `lemma` | [leftMulMapPreGNS_mul_eq_comp](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/leftmulmappregns-mul-eq-comp--e0061092dd255343b1f99749.md) | 174 | `result-track:e0061092dd255343b1f997492ea414c6315f9bc524266658fc91bb0c06832b8b` |
| 22 | `lemma` | [completion_leftMulMapPreGNS_map_smul](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/completion-leftmulmappregns-map-smul--7597e3138c28394f3a1b6637.md) | 183 | `result-track:7597e3138c28394f3a1b6637126ce25462da8f7eb9920132428a117d6e68bbdb` |
| 23 | `def` | [gnsNonUnitalStarAlgHom](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/gnsnonunitalstaralghom--a1f4b30cf43f3a2b759a095a.md) | 197 | `declaration-track:a1f4b30cf43f3a2b759a095a7056728c4f8b8f9a07d158a6cb3ece9dc3d5c2d5` |
| 24 | `lemma` | [gnsNonUnitalStarAlgHom_apply](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/gnsnonunitalstaralghom-apply--6ab24ca5113b1d1308c5a9a4.md) | 219 | `result-track:6ab24ca5113b1d1308c5a9a45a9e087b03acba54fb2879af20124ab5fddc3a52` |
| 25 | `lemma` | [gnsNonUnitalStarAlgHom_apply_coe](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/gnsnonunitalstaralghom-apply-coe--efe3f90ada1de6b7c0db2911.md) | 223 | `result-track:efe3f90ada1de6b7c0db291179ddeafc8da2b8147f563ecda375198bfa336d70` |
| 26 | `lemma` | [gnsNonUnitalStarAlgHom_map_one](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/gnsnonunitalstaralghom-map-one--b8c828f9d0911c60e48a3075.md) | 234 | `result-track:b8c828f9d0911c60e48a3075f3dea1348a215527e7e32d05dd67b5b188909155` |
| 27 | `def` | [gnsStarAlgHom](../../../../../mathematics/Analysis/FunctionalAnalysis/GelfandNaimarkSegal/Varianta298fa666e618f0fffcfa28f5608f7b42870ed47ebe99e49b3b765b66837c9c3.lean/declarations/gnsstaralghom--4757ea8617bd01538f69183d.md) | 247 | `declaration-track:4757ea8617bd01538f69183db893bca392a7d159897397b58937b89e970eb9d6` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
