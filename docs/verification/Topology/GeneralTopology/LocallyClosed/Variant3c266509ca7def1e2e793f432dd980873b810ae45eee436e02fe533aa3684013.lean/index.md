# Verification target: GRWTSK.Topology.GeneralTopology.LocallyClosed.Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6d4b7e2f8a1979ca213f76cbedfa4cd8407ba991",
  "lexical_observation_count": 44,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6d4b7e2f8a1979ca213f76cbedfa4cd8407ba991`.

Source path: `GRWTSK/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean.json)

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
| 1 | `lemma` | [mem_coborder_iff_imp](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/mem-coborder-iff-imp--687fe69bd4cba6eb0aa0f7f8.md) | 61 | `result-track:687fe69bd4cba6eb0aa0f7f8fbb7dbe8816eab6d27b68ee028cc83b4e4dfc314` |
| 2 | `lemma` | [subset_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/subset-coborder--86b2f08baed261030146c67b.md) | 65 | `result-track:86b2f08baed261030146c67b1e18c4de9ce4bd8f059c3893d9e1965986bc1170` |
| 3 | `lemma` | [coborder_inter_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/coborder-inter-closure--eecfa194a820b9aecde11668.md) | 70 | `result-track:eecfa194a820b9aecde116682946957111b77d867e711cef8fb3b30cf7290f62` |
| 4 | `lemma` | [closure_inter_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/closure-inter-coborder--903f19b54b1bd25041ba1000.md) | 75 | `result-track:903f19b54b1bd25041ba10002ea626a7dd2bcb46775102e85d9d0b064b10fbd1` |
| 5 | `lemma` | [coborder_eq_union_frontier_compl](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/coborder-eq-union-frontier-compl--1b945a6e2fd81230eb0e6efd.md) | 79 | `result-track:1b945a6e2fd81230eb0e6efdac56c0bab4293b70f5ed26e59259cdf4ee64d4ca` |
| 6 | `lemma` | [coborder_eq_univ_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/coborder-eq-univ-iff--d0f53088f268e2394042aef9.md) | 84 | `result-track:d0f53088f268e2394042aef9cb761e198430afa8120fa980d4af7216367e2c33` |
| 7 | `lemma` | [coborder_eq_compl_frontier_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/coborder-eq-compl-frontier-iff--79eba898bf9f0eea3e9a845f.md) | 90 | `result-track:79eba898bf9f0eea3e9a845f083462ec04fc26e20523ad2e08fed5625435ae70` |
| 8 | `theorem` | [coborder_eq_union_closure_compl](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/coborder-eq-union-closure-compl--b5af2167765c21f4dd4d9291.md) | 95 | `result-track:b5af2167765c21f4dd4d9291c56cc5bedfaec49366fa26d7c5a4aefd6e7b29f0` |
| 9 | `theorem` | [dense_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/dense-coborder--5c3fc8cb905b3a8e1d5f79ba.md) | 100 | `result-track:5c3fc8cb905b3a8e1d5f79baacc04f1b7be220fcc3e51efe9cfcbecc58492ee0` |
| 10 | `lemma` | [IsOpenMap.coborder_preimage_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/isopenmap-coborder-preimage-subset--bb835c9136dffd5a00bf5e71.md) | 108 | `result-track:bb835c9136dffd5a00bf5e7134bfaf52f4c75f6f747088c09045f355752ad01f` |
| 11 | `lemma` | [Continuous.preimage_coborder_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/continuous-preimage-coborder-subset--d1eaea916a9c1850462ebd2d.md) | 114 | `result-track:d1eaea916a9c1850462ebd2d4e58cec3df86ae394e5b86705a861ccb8cdf8d17` |
| 12 | `lemma` | [coborder_preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/coborder-preimage--dd79615e78456b553231afbc.md) | 120 | `result-track:dd79615e78456b553231afbcad8dff64360325b381ffb8e0d38dfdd8665fcf82` |
| 13 | `lemma` | [Topology.IsOpenEmbedding.coborder_preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/topology-isopenembedding-coborder-preimage--d28778b71c3d9b9ac736503e.md) | 125 | `result-track:d28778b71c3d9b9ac736503eb1293a401bf72d94e8d7375c5411142d21208ca3` |
| 14 | `lemma` | [isClosed_preimage_val_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/isclosed-preimage-val-coborder--c91703088e7c8d856ad76d1a.md) | 129 | `result-track:c91703088e7c8d856ad76d1aad59a18518c5f33470e2a494d4e2ee86282c6106` |
| 15 | `lemma` | [IsLocallyClosedAt.of_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-of-mem-nhds--46cbc8ae00a6677071f53123.md) | 137 | `result-track:46cbc8ae00a6677071f53123ef2d8710220c36b0a6171dee8288437b5466ecc1` |
| 16 | `lemma` | [IsLocallyClosedAt.of_notMem_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-of-notmem-closure--53b94b14cc319a6735ad5829.md) | 141 | `result-track:53b94b14cc319a6735ad5829c2afa67c9ca392f2f95d8de89b018cd4ed8dc349` |
| 17 | `lemma` | [IsLocallyClosedAt.preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-preimage--e4de50026a5a7624989351d5.md) | 146 | `result-track:e4de50026a5a7624989351d5bd7a607812c9e9417fc0f6ed6fa50a6a2d4cc5e0` |
| 18 | `lemma` | [isLocallyClosedAt_tfae](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-tfae--bbc064a3c7384d8c1d861371.md) | 168 | `result-track:bbc064a3c7384d8c1d86137158c1a36df886d7d820959189c51b6cc1ff88360c` |
| 19 | `lemma` | [isLocallyClosedAt_iff_exists_isClosed_preimage_val](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-iff-exists-isclosed-preimage-val--cd8f050055bc8ace02fc8885.md) | 210 | `result-track:cd8f050055bc8ace02fc88857cba5a2e1b869decad6bb0a5ca1b59c41424e528` |
| 20 | `lemma` | [isLocallyClosedAt_iff_exists_inter_closure_subset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-iff-exists-inter-closure-subset--c631318538ae642f8f030693.md) | 214 | `result-track:c631318538ae642f8f030693eaf3cfd6e0c0bac6fed9cc5d48dc89cf54f53af0` |
| 21 | `lemma` | [isLocallyClosedAt_iff_exists_eq_inter_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-iff-exists-eq-inter-closure--6523b41e08074eae6a2b9ad4.md) | 218 | `result-track:6523b41e08074eae6a2b9ad4ed8c3dff6df6ca8c42020b8c22211ae755e697ea` |
| 22 | `lemma` | [isLocallyClosedAt_iff_exists_isClosed_inter_eq_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-iff-exists-isclosed-inter-eq-of-hasbasis--161ac070bef93c8b51e24b00.md) | 222 | `result-track:161ac070bef93c8b51e24b00879665594414c522cb4d0a15ce4a472fdea96ff2` |
| 23 | `lemma` | [isLocallyClosedAt_iff_exists_isClosed_preimage_val_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-iff-exists-isclosed-preimage-val-of-hasbasis--2e831c4a4c8c6e8f708dead5.md) | 230 | `result-track:2e831c4a4c8c6e8f708dead506175ee4077d67810f13018764f2b93beae7bc56` |
| 24 | `lemma` | [isLocallyClosedAt_iff_exists_inter_closure_subset_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-iff-exists-inter-closure-subset-of-hasbasis--b4f5cc31d3e73efcf5ee8237.md) | 237 | `result-track:b4f5cc31d3e73efcf5ee82378a9ec56abf6228c54a238937216aa9ae0bc47ece` |
| 25 | `lemma` | [isLocallyClosedAt_iff_exists_eq_inter_closure_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-iff-exists-eq-inter-closure-of-hasbasis--6bd65aa09c58acb497908abc.md) | 244 | `result-track:6bd65aa09c58acb497908abcededeb50d1bb4c5ceb44f1c5ccf26f0ff6261d90` |
| 26 | `lemma` | [isLocallyClosedAt_iff_exists_isClosed_eventuallyEqSet](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-iff-exists-isclosed-eventuallyeqset--81b4c1f3340fcfce468b4982.md) | 251 | `result-track:81b4c1f3340fcfce468b4982c5bfc2cb9da95d80b0a70a8e2565be223af921c8` |
| 27 | `lemma` | [isLocallyClosedAt_iff_eventuallyEqSet_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-iff-eventuallyeqset-closure--fa461452f34cd3831761584d.md) | 259 | `result-track:fa461452f34cd3831761584d8d3c53fbb4d5d5240842c992b917e1bef59035c1` |
| 28 | `lemma` | [isLocallyClosedAt_iff_closure_eventuallySubset](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-iff-closure-eventuallysubset--61183f5993325f733f79f4c8.md) | 267 | `result-track:61183f5993325f733f79f4c813ba2c0734eba816ddbb96fa06f0bb7352c50fcb` |
| 29 | `lemma` | [isLocallyClosedAt_iff_coborder_mem_nhds](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-iff-coborder-mem-nhds--8fd2984d18682d27def2c90f.md) | 275 | `result-track:8fd2984d18682d27def2c90f8e458eab7fa556fc87467a3acdcad1b13346afc2` |
| 30 | `lemma` | [IsLocallyClosedAt.congr](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-congr--022d36da87a80c24afef901a.md) | 278 | `result-track:022d36da87a80c24afef901a86db52f03364ae1e6a6fceb398393fa552cfc74a` |
| 31 | `lemma` | [isLocallyClosedAt_congr](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-congr--9795d48ab8bedafcb4d69fc2.md) | 283 | `result-track:9795d48ab8bedafcb4d69fc21e289ab6a24b89203c1db8a49708c99676622d26` |
| 32 | `lemma` | [interior_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/interior-coborder--190e6986cfbc6383743d0045.md) | 287 | `result-track:190e6986cfbc6383743d0045b79f0c90f577a62b25a984d7321aace845f2abca` |
| 33 | `lemma` | [IsLocallyClosedAt.inter](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-inter--e9679b8b00377ad6ee1f6f5f.md) | 291 | `result-track:e9679b8b00377ad6ee1f6f5ff549a6da5a06fb48d85d7a90758304d56e220b11` |
| 34 | `lemma` | [IsLocallyClosedAt.union](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosedat-union--48b236bddd9ac70001896b9e.md) | 298 | `result-track:48b236bddd9ac70001896b9ec11832ad3dfdde1339b53d64aa8fd2fafa0def89` |
| 35 | `lemma` | [IsLocallyClosed.isLocallyClosedAt](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosed-islocallyclosedat--339ce5cac163d13aba584926.md) | 309 | `result-track:339ce5cac163d13aba58492675c4312b87a4c8038e4298485df9ab5510d6e8ea` |
| 36 | `lemma` | [IsLocallyClosed.inter](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosed-inter--8bfbb05f0d61625bb7b4132d.md) | 314 | `result-track:8bfbb05f0d61625bb7b4132da1297ed46b39cf0b7034d33bee522734882aeedd` |
| 37 | `lemma` | [IsLocallyClosed.preimage](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosed-preimage--41f0efb809e400303c1f011a.md) | 320 | `result-track:41f0efb809e400303c1f011abde23960f5e1dd438c5a56b82aedc821d2fccce2` |
| 38 | `lemma` | [Topology.IsInducing.isLocallyClosed_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/topology-isinducing-islocallyclosed-iff--ca71b83b469570f02ae1c78b.md) | 326 | `result-track:ca71b83b469570f02ae1c78b4bd73ba6420bdfe886aa68074f528206d5c6a41e` |
| 39 | `lemma` | [Topology.IsEmbedding.isLocallyClosed_iff](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/topology-isembedding-islocallyclosed-iff--b5cc33fbd3e14d25fcfa1db9.md) | 336 | `result-track:b5cc33fbd3e14d25fcfa1db9957bc4831e370ffc361c75bf440714c14b2f3d8f` |
| 40 | `lemma` | [IsLocallyClosed.image](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosed-image--7b601a064255d128d8e30783.md) | 342 | `result-track:7b601a064255d128d8e30783398800b2bcdab33b20890a7e7777588b0093ec4e` |
| 41 | `lemma` | [isLocallyClosed_tfae](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosed-tfae--36a976026c05d5ff5dbcce7b.md) | 358 | `result-track:36a976026c05d5ff5dbcce7b9791e37631f5120fced5b898498af4dafe65ee60` |
| 42 | `lemma` | [isLocallyClosed_iff_isLocallyClosedAt](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosed-iff-islocallyclosedat--c9be81a5c4cfcb33f59cfaec.md) | 379 | `result-track:c9be81a5c4cfcb33f59cfaecef7d6eae1e1bfb5e2d8d1cdd566d98dc4bd791f7` |
| 43 | `lemma` | [isLocallyClosed_iff_isOpen_coborder](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosed-iff-isopen-coborder--bad35d2adde0c8aee4575963.md) | 383 | `result-track:bad35d2adde0c8aee457596391708008289fbde83ecccacccad3d78e8f56899f` |
| 44 | `lemma` | [isLocallyClosed_iff_isOpen_preimage_val_closure](../../../../../mathematics/Topology/GeneralTopology/LocallyClosed/Variant3c266509ca7def1e2e793f432dd980873b810ae45eee436e02fe533aa3684013.lean/declarations/islocallyclosed-iff-isopen-preimage-val-closure--3453885544290dbfb6def335.md) | 388 | `result-track:3453885544290dbfb6def3355f6ad054388171ac856908db787468a36a0297d7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
