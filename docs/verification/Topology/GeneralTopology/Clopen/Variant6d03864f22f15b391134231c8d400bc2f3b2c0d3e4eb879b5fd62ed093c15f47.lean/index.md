# Verification target: GRWTSK.Topology.GeneralTopology.Clopen.Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3c8d3a34b987ca4805269f32d7e0112a8c6308ae",
  "lexical_observation_count": 30,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3c8d3a34b987ca4805269f32d7e0112a8c6308ae`.

Source path: `GRWTSK/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean.json)

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
| 1 | `theorem` | [IsClopen.isOpen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-isopen--4cdfea9ffef093d7cd9df93f.md) | 28 | `result-track:4cdfea9ffef093d7cd9df93f3a0e39f1485bc937be25743cef97f411b41fece2` |
| 2 | `theorem` | [IsClopen.isClosed](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-isclosed--19621fbd12ed16b18fd3c79a.md) | 30 | `result-track:19621fbd12ed16b18fd3c79a7369dde7ed0e307e2472fde6d822876f10630999` |
| 3 | `theorem` | [isClopen_iff_frontier_eq_empty](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-iff-frontier-eq-empty--5d77f4677db0f96948695ce0.md) | 32 | `result-track:5d77f4677db0f96948695ce00870148bae9baf16dbe062c91e6869ad5f6aeaef` |
| 4 | `theorem` | [IsClopen.union](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-union--e68b1b929cc6ade1540466b0.md) | 40 | `result-track:e68b1b929cc6ade1540466b0e779a92ca2407276c2f26656d473e8e5f4d6cddc` |
| 5 | `theorem` | [IsClopen.inter](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-inter--129a932f58a5311b255ccd18.md) | 43 | `result-track:129a932f58a5311b255ccd1844c105023bbfaf7ab5be932e34cab2a491a872fb` |
| 6 | `theorem` | [isClopen_empty](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-empty--cef1b7840e71112584504796.md) | 46 | `result-track:cef1b7840e71112584504796a250265a252e831857f318f0879869d8e683654a` |
| 7 | `theorem` | [isClopen_univ](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-univ--75d0b4f854c116db2e67120b.md) | 48 | `result-track:75d0b4f854c116db2e67120b3bed68b3684b044f80a07c34a39f46dc2ef073d7` |
| 8 | `theorem` | [IsClopen.compl](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-compl--59dc907052540f738970c739.md) | 50 | `result-track:59dc907052540f738970c7392182d350a653c5dee3b5337a8db1b7528d484787` |
| 9 | `theorem` | [isClopen_compl_iff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-compl-iff--b49add4c4472b0424d498da5.md) | 54 | `result-track:b49add4c4472b0424d498da5700ec9975a53ef116d66e2532f92a8a1298a6110` |
| 10 | `theorem` | [IsClopen.diff](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-diff--1b871e12375ed1146a221fd4.md) | 57 | `result-track:1b871e12375ed1146a221fd41712c1a99e2ff01f4b6f8ece9b262347547d6fcc` |
| 11 | `lemma` | [IsClopen.himp](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-himp--22597960adca257d83d63331.md) | 60 | `result-track:22597960adca257d83d63331a547232c2267e2537f948a278b7603afea47543e` |
| 12 | `theorem` | [IsClopen.prod](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-prod--883ed3df3d8ab1b0b23fa201.md) | 63 | `result-track:883ed3df3d8ab1b0b23fa201248e306cab08782960b162fc8814d590857cb217` |
| 13 | `theorem` | [isClopen_iUnion_of_finite](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-iunion-of-finite--8c1be1d2507624ccf58ff378.md) | 66 | `result-track:8c1be1d2507624ccf58ff37816ed673b601eba80c8c2cdf13f4269e02a760f1d` |
| 14 | `theorem` | [Set.Finite.isClopen_biUnion](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/set-finite-isclopen-biunion--bd6eb90c4e3574190dc2cdff.md) | 70 | `result-track:bd6eb90c4e3574190dc2cdffcc06cd788f0bf0b3c9d63d93126e4f8f3e3a1f09` |
| 15 | `theorem` | [isClopen_biUnion_finset](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-biunion-finset--22c004800291fc0f02191aee.md) | 74 | `result-track:22c004800291fc0f02191aee856830bf4599ff8050109f5d66a2db0e66208c20` |
| 16 | `theorem` | [isClopen_iInter_of_finite](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-iinter-of-finite--1cbdcfb261f9d49ef45e3883.md) | 78 | `result-track:1cbdcfb261f9d49ef45e388314df819fd25b94f0b57497a9191ec0786825e77f` |
| 17 | `theorem` | [Set.Finite.isClopen_biInter](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/set-finite-isclopen-biinter--27ccbcb702241e0a2f729bd5.md) | 82 | `result-track:27ccbcb702241e0a2f729bd5d909d6ee894c2a9f61209acf2f57c03bdf2e1c8f` |
| 18 | `theorem` | [isClopen_biInter_finset](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-biinter-finset--49a05f41bf63e26a08d46171.md) | 86 | `result-track:49a05f41bf63e26a08d461719574d93a32270b978d1e9905b784fa764b8cd48a` |
| 19 | `theorem` | [IsClopen.preimage](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-preimage--620c9222d3f549d9f695219f.md) | 90 | `result-track:620c9222d3f549d9f695219f0af82155f654eedf5b0d41d0f856a07a7ad4d12b` |
| 20 | `theorem` | [ContinuousOn.preimage_isClopen_of_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/continuouson-preimage-isclopen-of-isclopen--62e0ba4c936dfcd67d6fa8e9.md) | 94 | `result-track:62e0ba4c936dfcd67d6fa8e919d326b3dae614a01bd81682b7c6016251d2aae6` |
| 21 | `theorem` | [isClopen_inter_of_disjoint_cover_clopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-inter-of-disjoint-cover-clopen--8f4177b8c9e9bfa21dd83604.md) | 100 | `result-track:8f4177b8c9e9bfa21dd83604ad3f3af0278dda9892c824896fb9258f6d187610` |
| 22 | `lemma` | [isClopen_inter_of_disjoint_cover_clopen'](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-inter-of-disjoint-cover-clopen--618ae791c55079f880649f78.md) | 110 | `result-track:618ae791c55079f880649f78c077e74bf40a36b802b9fdfd868d32d488f9b41c` |
| 23 | `theorem` | [isClopen_of_disjoint_cover_open](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-of-disjoint-cover-open--c81b929a0c83cb16925bb27d.md) | 118 | `result-track:c81b929a0c83cb16925bb27d4fceca4bb8d8b3531df23163d7c0f3261ccd42c7` |
| 24 | `theorem` | [isClopen_discrete](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-discrete--413f1c29c196b2b35e232a35.md) | 123 | `result-track:413f1c29c196b2b35e232a356bc2486e22e163e254689114b99b66563ae0e5b3` |
| 25 | `theorem` | [isClopen_range_inl](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-range-inl--5731237124cba96fee9f83f4.md) | 126 | `result-track:5731237124cba96fee9f83f485aac54649c5dc151f284e1efba1726d23948b16` |
| 26 | `theorem` | [isClopen_range_inr](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-range-inr--44ba4154e05ac43d2a6e220e.md) | 129 | `result-track:44ba4154e05ac43d2a6e220eb258048460ac801c42536454143d9311c3ba3629` |
| 27 | `theorem` | [isClopen_range_sigmaMk](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/isclopen-range-sigmamk--34b485a1c5b9e70835099243.md) | 132 | `result-track:34b485a1c5b9e7083509924340a6b425fc9067fc23f4ac6c42428823aea031cb` |
| 28 | `theorem` | [Topology.IsQuotientMap.isClopen_preimage](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/topology-isquotientmap-isclopen-preimage--1380216069c327bbc39e9bf4.md) | 136 | `result-track:1380216069c327bbc39e9bf4a94cb232820ce4d0199a3ad9e23078a45401fa47` |
| 29 | `theorem` | [continuous_boolIndicator_iff_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/continuous-boolindicator-iff-isclopen--9d1a963305be159645dcd4f1.md) | 140 | `result-track:9d1a963305be159645dcd4f129a34a4598d522317b99c9fa91d069627c35da50` |
| 30 | `theorem` | [continuousOn_boolIndicator_iff_isClopen](../../../../../mathematics/Topology/GeneralTopology/Clopen/Variant6d03864f22f15b391134231c8d400bc2f3b2c0d3e4eb879b5fd62ed093c15f47.lean/declarations/continuouson-boolindicator-iff-isclopen--4796c4c3c5ea1e5e65834638.md) | 144 | `result-track:4796c4c3c5ea1e5e6583463884da70868993ff6897694872fb402ea15ca00732` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
