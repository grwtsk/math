# Verification target: GRWTSK.Topology.GeneralTopology.Compact.Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "f88bf7f467759e447f735295109664b2cc6f0251",
  "lexical_observation_count": 35,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `f88bf7f467759e447f735295109664b2cc6f0251`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.LocallyConvex.Bounded` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Module.StrongTopology` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [IsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator--63272fbde892cb5e6c0bb63c.md) | 59 | `declaration-track:63272fbde892cb5e6c0bb63ccc67efd9110fb2f17c3ad722cab6c8be3de95a41` |
| 2 | `theorem` | [isCompactOperator_zero](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-zero--7500ae03357933ce99917edb.md) | 63 | `result-track:7500ae03357933ce99917edbdc11eccac4450a3951b9459dfc797930fe0ae57b` |
| 3 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_image_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-iff-exists-mem-nhds-image-subset-compact--8e59ed6f5757cfa677f233bb.md) | 74 | `result-track:8e59ed6f5757cfa677f233bba04bbe262e3644920c076104ce8fcd0d5178dba3` |
| 4 | `theorem` | [isCompactOperator_iff_exists_mem_nhds_isCompact_closure_image](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-iff-exists-mem-nhds-iscompact-closure-image--4274e547d23d0ea8b7850e6d.md) | 79 | `result-track:4274e547d23d0ea8b7850e6d81e8d5dae1773058f3147ddc73a3e0ec8eb0876d` |
| 5 | `theorem` | [IsCompactOperator.image_subset_compact_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-image-subset-compact-of-isvonnbounded--0bbe0be461006c2a18ed8429.md) | 94 | `result-track:0bbe0be461006c2a18ed84298d54e8717f54fc715136cb8583aad1cb79ed5a9a` |
| 6 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_isVonNBounded](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-iscompact-closure-image-of-isvonnbounded--268e7d080bf180f85e6aae79.md) | 104 | `result-track:268e7d080bf180f85e6aae7905cfe2b312a0d182f475d5baacbc80731132076a` |
| 7 | `theorem` | [IsCompactOperator.image_subset_compact_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-image-subset-compact-of-bounded--8dd289233e72602ef5dfc12a.md) | 118 | `result-track:8dd289233e72602ef5dfc12ae5d803c198bcd36bd020cd154ff02af6abf7cd63` |
| 8 | `theorem` | [IsCompactOperator.isCompact_closure_image_of_bounded](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-iscompact-closure-image-of-bounded--8f172e167cd3ee1ca8d466d6.md) | 123 | `result-track:8f172e167cd3ee1ca8d466d6868dd069932e7afb54f6f3f973b636765ce5a0dc` |
| 9 | `theorem` | [IsCompactOperator.image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-image-ball-subset-compact--5047eb308602af99aa099617.md) | 128 | `result-track:5047eb308602af99aa0996170d61eb378a94913cc1c61d5dd2abc8d1cf69d243` |
| 10 | `theorem` | [IsCompactOperator.image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-image-closedball-subset-compact--8871ae13d27db6d9fd87c542.md) | 132 | `result-track:8871ae13d27db6d9fd87c5425ebaec420bc18b46d1b3a042c77890c686039a26` |
| 11 | `theorem` | [IsCompactOperator.isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-iscompact-closure-image-ball--243c16a48bfae274a70e406a.md) | 137 | `result-track:243c16a48bfae274a70e406a08bde77b98a447428c830765047f80340bdd48e1` |
| 12 | `theorem` | [IsCompactOperator.isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-iscompact-closure-image-closedball--e423cc3d7f9c74bd38928429.md) | 142 | `result-track:e423cc3d7f9c74bd389284297d83e605d3b49244db8141a840ff9c21fdb21644` |
| 13 | `theorem` | [isCompactOperator_iff_image_ball_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-iff-image-ball-subset-compact--87b2cb240dd70acef482b61e.md) | 147 | `result-track:87b2cb240dd70acef482b61ec9565f4a447b501e7e69dcc6cb1bf45625e56264` |
| 14 | `theorem` | [isCompactOperator_iff_image_closedBall_subset_compact](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-iff-image-closedball-subset-compact--1825d04caeb190a7fc9119bf.md) | 154 | `result-track:1825d04caeb190a7fc9119bf2144e716f8ed2114092d69c1bd945b1a8a310225` |
| 15 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_ball](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-iff-iscompact-closure-image-ball--accbc8cdd9fe4889878503a0.md) | 161 | `result-track:accbc8cdd9fe4889878503a010a1b85f920d3e60952515ed3af11cca455158c3` |
| 16 | `theorem` | [isCompactOperator_iff_isCompact_closure_image_closedBall](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-iff-iscompact-closure-image-closedball--66e25958722958b6208144c3.md) | 168 | `result-track:66e25958722958b6208144c329ddc5607a22605a6bd36ae371b9ad3fe605ee34` |
| 17 | `theorem` | [IsCompactOperator.smul](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-smul--490a8bae6a2d34b357d97f16.md) | 186 | `result-track:490a8bae6a2d34b357d97f167554914276d220e9b8a70d8b45a5c3cc77acc0b9` |
| 18 | `theorem` | [IsCompactOperator.add](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-add--405130ce70a3166f1b3c1705.md) | 193 | `result-track:405130ce70a3166f1b3c1705da386e82044509626500c9b330619ecfd1f1e8b9` |
| 19 | `theorem` | [IsCompactOperator.neg](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-neg--9d8fdc2e9c263799633ef20c.md) | 200 | `result-track:9d8fdc2e9c263799633ef20c63ec26a95bf42e4e14146d3fb57596abba2dddd4` |
| 20 | `theorem` | [IsCompactOperator.sub](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-sub--25b217fb01e540b49a179f65.md) | 205 | `result-track:25b217fb01e540b49a179f6572c2d71b63ec3fc0bf656b63d6a6d485c6b958f5` |
| 21 | `def` | [compactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/compactoperator--21c38c6b4b44d18c22bea960.md) | 212 | `declaration-track:21c38c6b4b44d18c22bea960b9281f2be1a972ff5cb7dc6444f87c9c49fa981a` |
| 22 | `theorem` | [IsCompactOperator.comp_clm](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-comp-clm--3e15a1cb5e450937b5d66bd2.md) | 227 | `result-track:3e15a1cb5e450937b5d66bd26b57b1cc6165a47562dd67276ca277c0de8eb6aa` |
| 23 | `theorem` | [IsCompactOperator.continuous_comp](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-continuous-comp--b3327cc4262e27ab1afc53be.md) | 234 | `result-track:b3327cc4262e27ab1afc53bee7e235f9836fb51a110266a01363004c44e4a8b7` |
| 24 | `theorem` | [IsCompactOperator.clm_comp](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-clm-comp--a4c18a3a511ab8b080ed7b04.md) | 241 | `result-track:a4c18a3a511ab8b080ed7b040579f72e8cab8fb0b0160988d0061ec4d7f6c2ca` |
| 25 | `theorem` | [IsCompactOperator.codRestrict](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-codrestrict--1671a7009f1e809410914dfd.md) | 254 | `result-track:1671a7009f1e809410914dfd6929b0e4438b162e1d339e522331e1c0e630ef6d` |
| 26 | `theorem` | [IsCompactOperator.restrict](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-restrict--ad48779d93ac23b3a86cce66.md) | 277 | `result-track:ad48779d93ac23b3a86cce66ab607548f28e9873f105ea47396b9fa4179901b1` |
| 27 | `theorem` | [IsCompactOperator.restrict'](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-restrict--f517aab38690236e05202edf.md) | 290 | `result-track:f517aab38690236e05202edfa409c6f225c31004e9a768726c630ebb3d3046f2` |
| 28 | `theorem` | [IsCompactOperator.continuous](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-continuous--85e54224ae9e5b41e7a6d32a.md) | 305 | `result-track:85e54224ae9e5b41e7a6d32a0cf6b06cc573846338ea507fd6a4c83e8c3f70ac` |
| 29 | `def` | [ContinuousLinearMap.mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/continuouslinearmap-mkofiscompactoperator--f01e13bf58e954247f1ff0e0.md) | 337 | `declaration-track:f01e13bf58e954247f1ff0e0a54b4bda513a20e4b9a5505a836e0a25a05873d1` |
| 30 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_to_linearMap](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/continuouslinearmap-mkofiscompactoperator-to-linearmap--65d203e221d3bfdb460afc90.md) | 342 | `result-track:65d203e221d3bfdb460afc90eb79059c27242ed71ce95ce38d25fd99b880b064` |
| 31 | `theorem` | [ContinuousLinearMap.coe_mkOfIsCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/continuouslinearmap-coe-mkofiscompactoperator--100f9eec6b135a8964af5630.md) | 348 | `result-track:100f9eec6b135a8964af5630a1b52c8ce2671a3bae359bc808c0cb321a1a1efc` |
| 32 | `theorem` | [ContinuousLinearMap.mkOfIsCompactOperator_mem_compactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/continuouslinearmap-mkofiscompactoperator-mem-compactoperator--d04c2d83bf014818d89eaf89.md) | 352 | `result-track:d04c2d83bf014818d89eaf897ac519e3d288c4c1b80aabf1702d59be69f87889` |
| 33 | `theorem` | [isClosed_setOf_isCompactOperator](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/isclosed-setof-iscompactoperator--eea630d4b320059a4a8c8663.md) | 361 | `result-track:eea630d4b320059a4a8c8663e0a6ad56e75febd63180adfdbfce1cd89d8ff8c3` |
| 34 | `theorem` | [compactOperator_topologicalClosure](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/compactoperator-topologicalclosure--8a73100f00363932a732b19c.md) | 397 | `result-track:8a73100f00363932a732b19c63a9467a19981cc0dfa61d802ccc4204179505f5` |
| 35 | `theorem` | [isCompactOperator_of_tendsto](../../../../../mathematics/Topology/GeneralTopology/Compact/Variantcc4b9bc8d02a71ba1f63b37c8e1a733a4f3e6152c9888d4ca28cf71ecd378d2b.lean/declarations/iscompactoperator-of-tendsto--cacc08427519b69c168e9777.md) | 404 | `result-track:cacc08427519b69c168e9777e0a4af3e410ca2e7ec3fe1f4496babd573f8f64e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
