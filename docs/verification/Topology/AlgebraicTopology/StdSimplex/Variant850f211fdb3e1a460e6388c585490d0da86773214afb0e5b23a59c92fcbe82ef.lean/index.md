# Verification target: GRWTSK.Topology.AlgebraicTopology.StdSimplex.Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "df8040b15ac3987b23874cfbdc1994c0c507ea25",
  "lexical_observation_count": 39,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `df8040b15ac3987b23874cfbdc1994c0c507ea25`.

Source path: `GRWTSK/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.AlgebraicTopology.SimplicialSet.Subcomplex` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Subpresheaf.OfSection` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.CategoryTheory.Limits.Types.Shapes` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Fin.VecNotation` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Order.Fin.SuccAboveOrderIso` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [stdSimplex](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/stdsimplex--05875ab7beda9a404e3f3714.md) | 31 | `declaration-track:05875ab7beda9a404e3f371429d18af9cbd73cf2034e13908bd864a4cff9477d` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/instance--d0ada6abde5e05d455e242b3.md) | 39 | `declaration-track:d0ada6abde5e05d455e242b3ffa1bcdd0a33ee2c4412a4b87d9d4a3344fd471e` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/instance--c2b1f2b304a566adee87fef1.md) | 42 | `declaration-track:c2b1f2b304a566adee87fef1cd151b936c46d1c3453631788c336fe18abe136b` |
| 4 | `lemma` | [map_id](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/map-id--78eb87279d03bbe2f691f896.md) | 50 | `result-track:78eb87279d03bbe2f691f896622e604d5007922b11d76eef0bc5f8191795cf94` |
| 5 | `def` | [objEquiv](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/objequiv--0f889972bb850e936a522673.md) | 55 | `declaration-track:0f889972bb850e936a522673c4d7cf29ecc08092cad94bf5eb63668c4a0fb0cf` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/instance--fa690bb3303ca97136237742.md) | 60 | `declaration-track:fa690bb3303ca971362377425b1804dc0cd36057dfdea38fb7b9ab65fb0251c7` |
| 7 | `lemma` | [ext](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/ext--37196e9aebe13bd6d5a6ea1b.md) | 65 | `result-track:37196e9aebe13bd6d5a6ea1b2f9fe3a341d434acdc88e53001c75c60ced9450e` |
| 8 | `lemma` | [objEquiv_toOrderHom_apply](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/objequiv-toorderhom-apply--c9b674eec4aa0e226d1eed4b.md) | 69 | `result-track:c9b674eec4aa0e226d1eed4baad56712c2793500d4b8359f62299a8e5f50e52c` |
| 9 | `lemma` | [objEquiv_symm_comp](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/objequiv-symm-comp--6110a0ff655540fc126e671d.md) | 76 | `result-track:6110a0ff655540fc126e671dceed8a3c65eae888bd896fe7b49992b912ba37d9` |
| 10 | `lemma` | [objEquiv_symm_apply](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/objequiv-symm-apply--a051ba46becbec036ee1ad58.md) | 82 | `result-track:a051ba46becbec036ee1ad58a3989e6de2123f8d79ccefc84def17002c26b544` |
| 11 | `abbrev` | [objMk](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/objmk--c83867a3ef752bc7fa50a24f.md) | 87 | `declaration-track:c83867a3ef752bc7fa50a24fdeeea6406149dc0ddef4ec7ef763f4f2a468b8a2` |
| 12 | `lemma` | [objMk_apply](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/objmk-apply--c32ecc288d3b3c8cd5d5b38c.md) | 93 | `result-track:c32ecc288d3b3c8cd5d5b38c410f5198f3c93da6e608898998b3dfb17e36a5e1` |
| 13 | `def` | [asOrderHom](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/asorderhom--ac3a193d6edba46c02118317.md) | 99 | `declaration-track:ac3a193d6edba46c02118317460eb1ebf21acbdd0a95edd7df308373198c2488` |
| 14 | `lemma` | [map_apply](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/map-apply--3e3f404e9ca620de71606cd9.md) | 102 | `result-track:3e3f404e9ca620de71606cd9e0ca7627fb43a06d0c7e6e3c4ca2503fcbdf04ad` |
| 15 | `def` | [_root_.SSet.yonedaEquiv](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/root-sset-yonedaequiv--7ee442e17c85e47a528cb68f.md) | 108 | `declaration-track:7ee442e17c85e47a528cb68fa3cd94e6e936ac170547c9e7e7dc7d7b54cad4c2` |
| 16 | `lemma` | [yonedaEquiv_map](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/yonedaequiv-map--1576e800fdb0f3cac018f18f.md) | 112 | `result-track:1576e800fdb0f3cac018f18f4a5b27f3dbfff6d3c3641decfb39cd1d4335bd25` |
| 17 | `def` | [const](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/const--b93cf995ebef98e231c7d8a2.md) | 117 | `declaration-track:b93cf995ebef98e231c7d8a21b2b22cd6d6e6b2b55824ce217cc8b3903902347` |
| 18 | `lemma` | [const_down_toOrderHom](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/const-down-toorderhom--6227d6709f797cde4d1e4cd3.md) | 121 | `result-track:6227d6709f797cde4d1e4cd3d8a80765645651aa948fc02d70daeca1f5dc8e91` |
| 19 | `def` | [obj₀Equiv](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/obj-equiv--676f46eafd17588f323a9651.md) | 127 | `declaration-track:676f46eafd17588f323a96510f804e92860053b944832d5bafdb0e6acd4d95ca` |
| 20 | `def` | [edge](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/edge--a76805caaf8c7d470e4b2b1c.md) | 134 | `declaration-track:a76805caaf8c7d470e4b2b1ce089ec1b81486f8fb02ef02be6f87cfbd2062767` |
| 21 | `lemma` | [coe_edge_down_toOrderHom](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/coe-edge-down-toorderhom--831503f8b89f24d5359c0c7a.md) | 140 | `result-track:831503f8b89f24d5359c0c7a6436424d097b56cd0e6fdbdf5f336ab8920d1c08` |
| 22 | `def` | [triangle](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/triangle--9d5569ae5ae87996526ff9f1.md) | 145 | `declaration-track:9d5569ae5ae87996526ff9f11e07cc54f71a6cd31dfa551f5849f21606d11cb7` |
| 23 | `lemma` | [coe_triangle_down_toOrderHom](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/coe-triangle-down-toorderhom--fc960b67b773e19b624a33aa.md) | 152 | `result-track:fc960b67b773e19b624a33aa7580a9931513083b957f604a25318345fbf8c2ff` |
| 24 | `def` | [face](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/face--72ac7d9321d610542647ab25.md) | 161 | `declaration-track:72ac7d9321d610542647ab250bb42562ec0439d8ae52b4eda5450bcd0af363b7` |
| 25 | `lemma` | [mem_face_iff](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/mem-face-iff--153f150f96461ec9ac76205e.md) | 168 | `result-track:153f150f96461ec9ac76205e4cff16c73516306889d1d2fc355880b09d8eee39` |
| 26 | `lemma` | [face_inter_face](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/face-inter-face--f27b09b4c41dc3f5457c8ba6.md) | 172 | `result-track:f27b09b4c41dc3f5457c8ba68d59d43f37085e290fa2cb2cb952acf1ecbb88bd` |
| 27 | `lemma` | [yonedaEquiv_comp](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/yonedaequiv-comp--84958179589e411d0451edd8.md) | 178 | `result-track:84958179589e411d0451edd8b9fb5e743a91c6568eae704db6ce933454213294` |
| 28 | `abbrev` | [ofSimplex](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/ofsimplex--0f45e4bbcba3ac0ea8b25c4f.md) | 187 | `declaration-track:0f45e4bbcba3ac0ea8b25c4f480b37d61afbd3c7a93b91fe044fe28f25f4b0e3` |
| 29 | `lemma` | [range_eq_ofSimplex](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/range-eq-ofsimplex--c088d64ec37521a359157752.md) | 189 | `result-track:c088d64ec37521a359157752e468b34cd2c9e5c3c37d95b8a01f62512d30ff3e` |
| 30 | `lemma` | [mem_ofSimplex_obj](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/mem-ofsimplex-obj--7b8a2e5f096403556d50e602.md) | 193 | `result-track:7b8a2e5f096403556d50e6023aaf0bc441648bb6541951d2dabed94919a0d2ae` |
| 31 | `lemma` | [ofSimplex_le_iff](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/ofsimplex-le-iff--b9fe98bcefe1780c029c36d7.md) | 197 | `result-track:b9fe98bcefe1780c029c36d7e816f969e45fd9c1afde42a6afccb4245dd6ad4a` |
| 32 | `lemma` | [yonedaEquiv_coe](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/yonedaequiv-coe--ba60ae99b978057d1728a38a.md) | 201 | `result-track:ba60ae99b978057d1728a38a66f8785c1f86d0fd5cdd3e0334c3a944134be98e` |
| 33 | `lemma` | [face_eq_ofSimplex](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/face-eq-ofsimplex--ba068066768dd71661a8f3c0.md) | 211 | `result-track:ba068066768dd71661a8f3c0829c6f706844606a75ca54023c4671f527f5b179` |
| 34 | `def` | [faceRepresentableBy](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/facerepresentableby--017dcf3308c1fc8c585f5643.md) | 233 | `declaration-track:017dcf3308c1fc8c585f5643c7e8bc9a0b38056b91a0242bf2ac4d044b443e5c` |
| 35 | `def` | [isoOfRepresentableBy](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/isoofrepresentableby--4f0011532b6e717300d93303.md) | 257 | `declaration-track:4f0011532b6e717300d93303c58d8acc556b5b1588e8bce464a3d03a2a13b61c` |
| 36 | `lemma` | [ofSimplex_yonedaEquiv_δ](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/ofsimplex-yonedaequiv--d8ff76b605cd3ee4c06fdfd7.md) | 264 | `result-track:d8ff76b605cd3ee4c06fdfd7a22932c6ca5ce0de9cb79aa31cffbd20c488bc17` |
| 37 | `lemma` | [range_δ](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/range--04defe0d6bf4fa2e35706082.md) | 269 | `result-track:04defe0d6bf4fa2e35706082843c432cc0f33063e4c340570394446cb735859c` |
| 38 | `def` | [S1](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/s1--eee469bde3b55b4ce2db86eb.md) | 281 | `declaration-track:eee469bde3b55b4ce2db86eb7fd6100a431dd63d2013596ede6c1c43f699fe8f` |
| 39 | `def` | [stdSimplex](../../../../../mathematics/Topology/AlgebraicTopology/StdSimplex/Variant850f211fdb3e1a460e6388c585490d0da86773214afb0e5b23a59c92fcbe82ef.lean/declarations/stdsimplex--451135a1f04347c509e6c23d.md) | 292 | `declaration-track:451135a1f04347c509e6c23d23ff35e30b30c1af076cd31fc7ea5b72d0d6db6e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
