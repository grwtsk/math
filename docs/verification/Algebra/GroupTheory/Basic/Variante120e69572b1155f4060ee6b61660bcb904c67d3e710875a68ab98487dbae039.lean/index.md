# Verification target: GRWTSK.Algebra.GroupTheory.Basic.Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7238243725830506f1a4c7c5a181b3ba60b9fd1",
  "lexical_observation_count": 41,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/index.md) · [Full source](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7238243725830506f1a4c7c5a181b3ba60b9fd1`.

Source path: `GRWTSK/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Hom.Defs` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Submonoid.Defs` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Subsemigroup.Basic` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Algebra.Group.Units.Defs` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/instance--9bef63a1b0b80c8dd7a54706.md) | 66 | `declaration-track:9bef63a1b0b80c8dd7a5470695d3b7fb6c6a798a3809e6bf933f041f3a77bef4` |
| 2 | `theorem` | [coe_sInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/coe-sinf--065aa62939358a3b2e614db0.md) | 75 | `result-track:065aa62939358a3b2e614db0c375f3c8245eab467b4ae9fe7ee650316df387e4` |
| 3 | `theorem` | [mem_sInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/mem-sinf--f18a28f989cc3176f38a0663.md) | 79 | `result-track:f18a28f989cc3176f38a0663a72b9683b93341a6b020896d6c88b56b2ba6ade5` |
| 4 | `theorem` | [mem_iInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/mem-iinf--296dadfa0a1317cd513ee622.md) | 83 | `result-track:296dadfa0a1317cd513ee622e2402d1a276fde18928d5050e7d38f0b5ff33b45` |
| 5 | `theorem` | [coe_iInf](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/coe-iinf--aa0564f3a9d3fd37a8e04363.md) | 87 | `result-track:aa0564f3a9d3fd37a8e04363d5b4a5800461d4afe5049bfd0ca710dff6b36409` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/instance--667ad8ecb38f65155e59fc5e.md) | 92 | `declaration-track:667ad8ecb38f65155e59fc5e3d97e10e67308711db94d7a13733c65b54948245` |
| 7 | `def` | [closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure--fa65c4f6e6cb6df4087d6b10.md) | 111 | `declaration-track:fa65c4f6e6cb6df4087d6b10814099c7358feea13414c1a6cf49ac24120af1b9` |
| 8 | `theorem` | [mem_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/mem-closure--2a6aa6ee98c0f21755845442.md) | 115 | `result-track:2a6aa6ee98c0f21755845442a15b1da77d081f00fe1bd8556ef53f8e81c97ea5` |
| 9 | `theorem` | [subset_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/subset-closure--0debd0235ffd9147bb9b836b.md) | 121 | `result-track:0debd0235ffd9147bb9b836b6b62800206d9c56f6fb449a326e5e43c2cc051d0` |
| 10 | `theorem` | [notMem_of_notMem_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/notmem-of-notmem-closure--f1d70d770f1b6e35cf6e95dc.md) | 124 | `result-track:f1d70d770f1b6e35cf6e95dc7eb133be832292e2c1f5a4f3d2687b174427b583` |
| 11 | `theorem` | [closure_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-le--da49cec04a5bc0c4aa9abced.md) | 140 | `result-track:da49cec04a5bc0c4aa9abceda9ac622156610067789fe9804139373077e1552f` |
| 12 | `theorem` | [closure_mono](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-mono--783c1e78bebfd54b8b749742.md) | 148 | `result-track:783c1e78bebfd54b8b7497423e78c9b80d821844646f1746264543149d930289` |
| 13 | `theorem` | [closure_eq_of_le](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-eq-of-le--b91d35134596a274b82d4597.md) | 152 | `result-track:b91d35134596a274b82d4597109b29df957b3fe4fd9cbd3c22c0fd5f345d10b1` |
| 14 | `theorem` | [closure_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-induction--6339516132560362d0e0502b.md) | 163 | `result-track:6339516132560362d0e0502b039ac6c67bf162c0b1c296015b3a37f00ca35abb` |
| 15 | `theorem` | [closure_induction₂](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-induction--77c7cd8a186c47bd983122ee.md) | 176 | `result-track:77c7cd8a186c47bd983122ee8d512dcc463e66115e42f651d1015ce6710f8bc4` |
| 16 | `theorem` | [dense_induction](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/dense-induction--16866f4d9b907b6e6e1c1ab0.md) | 199 | `result-track:16866f4d9b907b6e6e1c1ab068f1bddeea2246140e51c5744dafefd24ae71e9f` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/example--edc3204a5c6f24e9c47b1e95.md) | 211 | `declaration-track:edc3204a5c6f24e9c47b1e953c1647fd872df70d94242f13f370afe7062ef62a` |
| 18 | `lemma` | [closure_eq_one_union](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-eq-one-union--a7ac95313c04407a0a4222c0.md) | 220 | `result-track:a7ac95313c04407a0a4222c03e5e5425357b76e31e378f0c5f608b57dd21d5a9` |
| 19 | `def` | [gi](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/gi--b171d16cefeb9c4af5ce0484.md) | 240 | `declaration-track:b171d16cefeb9c4af5ce0484dec13c5a59a41cec0f568ac21849c07a8e7c0045` |
| 20 | `theorem` | [closure_eq](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-eq--05063f8d4b96fcff681707b9.md) | 250 | `result-track:05063f8d4b96fcff681707b9141662681d05dbc2d091157d6898ecf46a159208` |
| 21 | `theorem` | [closure_empty](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-empty--e8bbe869c2dbc8cef01dc939.md) | 254 | `result-track:e8bbe869c2dbc8cef01dc939af1092156c92420a22512c942b2d88eb0c63fbaf` |
| 22 | `theorem` | [closure_univ](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-univ--e057f08df323f64057b2d9fb.md) | 258 | `result-track:e057f08df323f64057b2d9fbaeb45d84512c5ccaa9a3ec2ffbaa8ddce96464ca` |
| 23 | `theorem` | [closure_union](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-union--33690194e7ce8f0f74b84661.md) | 262 | `result-track:33690194e7ce8f0f74b846619e71431da402521fd72e485096b6b1d30317d0f6` |
| 24 | `theorem` | [sup_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/sup-eq-closure--8a38d9a83b1f6a0800bae306.md) | 266 | `result-track:8a38d9a83b1f6a0800bae306874e658e474731b6f2eec26c6613b5aaf1d41d63` |
| 25 | `theorem` | [closure_iUnion](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-iunion--10b12d723126db7a7c9703c2.md) | 270 | `result-track:10b12d723126db7a7c9703c26f6f5b37f87881884108c0eedac786a4d0e72f1a` |
| 26 | `theorem` | [closure_singleton_le_iff_mem](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-singleton-le-iff-mem--b4b1decb2409481384c9948c.md) | 274 | `result-track:b4b1decb2409481384c9948c5e41936291b5ecc42d84f5b13d4a4d522dbeb363` |
| 27 | `theorem` | [closure_insert_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-insert-one--227b4f5f902bbde79dbb6f17.md) | 278 | `result-track:227b4f5f902bbde79dbb6f17a8946b00fa476dee60a286bb2ea8a1950cd5fd85` |
| 28 | `theorem` | [mem_iSup](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/mem-isup--377371be6e956dccbf877983.md) | 283 | `result-track:377371be6e956dccbf87798379bc07024a9bd09150748234597f3dc6756a34e1` |
| 29 | `theorem` | [iSup_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/isup-eq-closure--88be25a40564688543c1f2c7.md) | 289 | `result-track:88be25a40564688543c1f2c7bd36048e99fe51ae6242adff224c4f47b979e323` |
| 30 | `theorem` | [disjoint_def](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/disjoint-def--65c76ec91a6c014011ec4d2a.md) | 294 | `result-track:65c76ec91a6c014011ec4d2a4e2d997a30628f7d10508c6c81de10330f4d5c43` |
| 31 | `theorem` | [disjoint_def'](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/disjoint-def--9b5394a6522848936c2fe540.md) | 299 | `result-track:9b5394a6522848936c2fe540c300c7b3d6c7e236151ff263c8a0f97253e60e3a` |
| 32 | `lemma` | [closure_sdiff_eq_closure](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-sdiff-eq-closure--8f65c18b2d24199790409f0f.md) | 306 | `result-track:8f65c18b2d24199790409f0f5d3d8f4ccc8221a99d108c03b1730432e0be2f8f` |
| 33 | `lemma` | [closure_sdiff_singleton_one](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/closure-sdiff-singleton-one--38a0a366308511a0dbbe0942.md) | 314 | `result-track:38a0a366308511a0dbbe094254b8273d854ac1146aac8050cd774dcdbaf63c65` |
| 34 | `theorem` | [eqOn_closureM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/eqon-closurem--2fc9f15512f6b4b8e45e6247.md) | 329 | `result-track:2fc9f15512f6b4b8e45e6247e6056d837501a1f07bd1ac9727408a7b6dd76c3a` |
| 35 | `theorem` | [eq_of_eqOn_denseM](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/eq-of-eqon-densem--18c0963a8c0c72ffa043778a.md) | 333 | `result-track:18c0963a8c0c72ffa043778aeab182319c3559abe66f93b62279e7cae6a8b608` |
| 36 | `def` | [IsUnit.submonoid](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/isunit-submonoid--71932f85ab89ac67a943ba3c.md) | 349 | `declaration-track:71932f85ab89ac67a943ba3cc5e0ee84800d38fbf948a5b8d8bd1391891778ad` |
| 37 | `theorem` | [IsUnit.mem_submonoid_iff](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/isunit-mem-submonoid-iff--028ea41732d12a157d667f1a.md) | 358 | `result-track:028ea41732d12a157d667f1a19bbfce0229a7da8c21b718e479e5ddeeff48ff0` |
| 38 | `def` | [ofClosureMEqTopLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/ofclosuremeqtopleft--89b8c1986623e11e4b13e4c4.md) | 376 | `declaration-track:89b8c1986623e11e4b13e4c4662cecdd53fe8c15fa78728e36bb6578efec2bb1` |
| 39 | `theorem` | [coe_ofClosureMEqTopLeft](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/coe-ofclosuremeqtopleft--4a463edc9622b0d4bd878323.md) | 386 | `result-track:4a463edc9622b0d4bd8783233908097a395404e5b7a43e4da5368c628b4e0a48` |
| 40 | `def` | [ofClosureMEqTopRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/ofclosuremeqtopright--d6e5ca5b1e5d9040c211b8ba.md) | 397 | `declaration-track:d6e5ca5b1e5d9040c211b8ba3f3d1c50f7360ccbb37904330e8d6d31e1b9fff3` |
| 41 | `theorem` | [coe_ofClosureMEqTopRight](../../../../../mathematics/Algebra/GroupTheory/Basic/Variante120e69572b1155f4060ee6b61660bcb904c67d3e710875a68ab98487dbae039.lean/declarations/coe-ofclosuremeqtopright--35c905a2b9fb915512458b7a.md) | 408 | `result-track:35c905a2b9fb915512458b7a95d2a404944eeb6cd400082d7a45bacf2484ea14` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
