# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Jensen.Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "aa3b396babf0ab664eef29767001286885bb0035",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `aa3b396babf0ab664eef29767001286885bb0035`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean.json)

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
| 1 | `theorem` | [ConvexOn.map_centerMass_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/convexon-map-centermass-le--e9bf47b7b663de8ea0a94117.md) | 60 | `result-track:e9bf47b7b663de8ea0a9411771310bf3c965bf835c76a643bfde8edb9700b586` |
| 2 | `theorem` | [ConcaveOn.le_map_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/concaveon-le-map-centermass--906155f1dee209685fcf948f.md) | 69 | `result-track:906155f1dee209685fcf948f4136c144c537d3f439d1019e492136d5f651d83d` |
| 3 | `theorem` | [ConvexOn.map_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/convexon-map-sum-le--768c58a9fa11b2db2e8621d9.md) | 75 | `result-track:768c58a9fa11b2db2e8621d9abe388db3c6f6716a9c5e4496eefa42fc54c7551` |
| 4 | `theorem` | [ConcaveOn.le_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/concaveon-le-map-sum--f42524d30358a5ba2aea3f06.md) | 81 | `result-track:f42524d30358a5ba2aea3f06e79ef6067f67c8f33b23cd45054177fecac96d95` |
| 5 | `lemma` | [ConvexOn.map_add_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/convexon-map-add-sum-le--d2afbec01284472dc526a4f3.md) | 87 | `result-track:d2afbec01284472dc526a4f34f53dbd90803a1002756a30aaef78c1ae82369b2` |
| 6 | `lemma` | [ConcaveOn.map_add_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/concaveon-map-add-sum-le--c1cee7ae60324e8e5caa9cb2.md) | 98 | `result-track:c1cee7ae60324e8e5caa9cb29a14db508018d6b0a693a4b5592a4f39bc2bdff8` |
| 7 | `lemma` | [StrictConvexOn.map_sum_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconvexon-map-sum-lt--c13eca6881a90657ce82f8b3.md) | 111 | `result-track:c13eca6881a90657ce82f8b302c2112c2809e3263c776ac6182a6d1347933c6a` |
| 8 | `lemma` | [StrictConcaveOn.lt_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconcaveon-lt-map-sum--9a1100b473614f612bdaedf5.md) | 155 | `result-track:9a1100b473614f612bdaedf5506ab9aeb844511cc98f2c0d87657a7b43231e0f` |
| 9 | `lemma` | [StrictConvexOn.eq_of_le_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconvexon-eq-of-le-map-sum--7657537b68a5a7b10d6d8c0f.md) | 167 | `result-track:7657537b68a5a7b10d6d8c0fcf58698b34dd52133e9738f737e606d61f6770d8` |
| 10 | `lemma` | [StrictConcaveOn.eq_of_map_sum_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconcaveon-eq-of-map-sum-eq--ff20950ccb810f826d7f678c.md) | 179 | `result-track:ff20950ccb810f826d7f678cb7568d73a70ce8abd8d9f5134e3cd1ec3efb34ad` |
| 11 | `theorem` | [StrictConvexOn.map_sum_eq_iff_of_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconvexon-map-sum-eq-iff-of-pos--387eb3a20f9df34bda1863ff.md) | 187 | `result-track:387eb3a20f9df34bda1863ff63a62fa5d093c3f2f65562b988cd5de82875301d` |
| 12 | `theorem` | [StrictConcaveOn.map_sum_eq_iff_of_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconcaveon-map-sum-eq-iff-of-pos--71aeb9a8d8d72e33c31ed7bc.md) | 198 | `result-track:71aeb9a8d8d72e33c31ed7bc1a3c2fa75cd61fbe78403dc1399fc7735bf199e6` |
| 13 | `theorem` | [StrictConvexOn.map_sum_eq_iff_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconvexon-map-sum-eq-iff-of-nonneg--6b4047f62e21f95764f3ca06.md) | 205 | `result-track:6b4047f62e21f95764f3ca066f5bfaa0a5d7197d831c70a150318d276ad12ab9` |
| 14 | `theorem` | [StrictConcaveOn.map_sum_eq_iff_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconcaveon-map-sum-eq-iff-of-nonneg--e83343ce5e10bdb4e0439876.md) | 218 | `result-track:e83343ce5e10bdb4e0439876d5caa8a3480b34e28d054be52645ecabd4a40e72` |
| 15 | `theorem` | [StrictConvexOn.map_sum_lt_iff_of_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconvexon-map-sum-lt-iff-of-pos--337323b3acc77d1689778141.md) | 224 | `result-track:337323b3acc77d168977814177ea96ec586434e21ea6c48c4c6d7838581bc927` |
| 16 | `theorem` | [StrictConcaveOn.lt_map_sum_iff_of_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconcaveon-lt-map-sum-iff-of-pos--64fcde6c4a18de431d721c07.md) | 231 | `result-track:64fcde6c4a18de431d721c074902ad544dca99468de8de03f6f414f37327b355` |
| 17 | `theorem` | [StrictConvexOn.map_sum_lt_iff_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconvexon-map-sum-lt-iff-of-nonneg--42bdf9e9cdd946d1538e44f1.md) | 236 | `result-track:42bdf9e9cdd946d1538e44f1d3111ff29d4e0602f34a827f98be4eb2061a7afc` |
| 18 | `theorem` | [StrictConcaveOn.lt_map_sum_iff_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconcaveon-lt-map-sum-iff-of-nonneg--efdfdf5abf2ca10439747263.md) | 242 | `result-track:efdfdf5abf2ca1043974726309e1c5b45d8e721b82f6e19a00436970c046452f` |
| 19 | `lemma` | [StrictConvexOn.map_sum_eq_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconvexon-map-sum-eq-iff--61b3c2ea9f30dbfd4cac89f2.md) | 253 | `result-track:61b3c2ea9f30dbfd4cac89f222bf856761728e8895fa17ed5c115a18773a7cb4` |
| 20 | `lemma` | [StrictConcaveOn.map_sum_eq_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconcaveon-map-sum-eq-iff--cba8f585983d581d3e56aae0.md) | 273 | `result-track:cba8f585983d581d3e56aae02c66804605a102745ac7a831350b828da6dde595` |
| 21 | `lemma` | [StrictConvexOn.map_sum_eq_iff'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconvexon-map-sum-eq-iff--edde31beaee3870a78e70359.md) | 283 | `result-track:edde31beaee3870a78e70359725bd3264941a7f68d63b9b35c6569f92cafe655` |
| 22 | `lemma` | [StrictConcaveOn.map_sum_eq_iff'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconcaveon-map-sum-eq-iff--ecfc752c98f2a3e6b09712be.md) | 300 | `result-track:ecfc752c98f2a3e6b09712be13d4ba96d54e54af112e37dfcf935094ec263dee` |
| 23 | `theorem` | [StrictConvexOn.map_sum_lt_iff_of_pos'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconvexon-map-sum-lt-iff-of-pos--a1362e7a663683eefca434da.md) | 306 | `result-track:a1362e7a663683eefca434da0637cf768ba9f682eaa765d3254da771a957fb1e` |
| 24 | `theorem` | [StrictConcaveOn.lt_map_sum_iff_of_pos'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconcaveon-lt-map-sum-iff-of-pos--3949ff2dfc0803b7024c2757.md) | 314 | `result-track:3949ff2dfc0803b7024c2757eff6adbd7abda067a05adfead1da85c998951007` |
| 25 | `theorem` | [StrictConvexOn.map_sum_lt_iff_of_nonneg'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconvexon-map-sum-lt-iff-of-nonneg--01f4521baa3fd41329989135.md) | 320 | `result-track:01f4521baa3fd41329989135ccac6cc9bf5d19b532d466993d220c3b6f4b4e1f` |
| 26 | `theorem` | [StrictConcaveOn.lt_map_sum_iff_of_nonneg'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/strictconcaveon-lt-map-sum-iff-of-nonneg--f3a6e271f99988da049763b2.md) | 332 | `result-track:f3a6e271f99988da049763b2e28c9d9232481c26b92332341c8136c4b87fe0bc` |
| 27 | `theorem` | [ConvexOn.le_sup_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/convexon-le-sup-of-mem-convexhull--0b11a277f3443a35bb4c73d8.md) | 349 | `result-track:0b11a277f3443a35bb4c73d88d3dafc9d0060e2c05021f50313f1c7a71c50137` |
| 28 | `theorem` | [ConvexOn.inf_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/convexon-inf-le-of-mem-convexhull--f747b18bcb6a61b752ee6dce.md) | 356 | `result-track:f747b18bcb6a61b752ee6dce4c769fb7c8366f606885fce5eba9c64f4c78f883` |
| 29 | `lemma` | [ConvexOn.exists_ge_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/convexon-exists-ge-of-centermass--1f448241296568f1bfbe9daf.md) | 363 | `result-track:1f448241296568f1bfbe9daf3777d8a532d7ff12ce615b9be157eb5275e25919` |
| 30 | `lemma` | [ConcaveOn.exists_le_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/concaveon-exists-le-of-centermass--f814f1c5c50c300ab443d507.md) | 379 | `result-track:f814f1c5c50c300ab443d5079cb679c8ee7b09f61c29706f7079c68ede6d1f32` |
| 31 | `lemma` | [ConvexOn.exists_ge_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/convexon-exists-ge-of-mem-convexhull--dd1cf4c5d2703a1c481f0953.md) | 385 | `result-track:dd1cf4c5d2703a1c481f09535d685d025b4c4a6ce6144b48d69d9b22dd823424` |
| 32 | `lemma` | [ConcaveOn.exists_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/concaveon-exists-le-of-mem-convexhull--e62acca92ac98ee0e423205e.md) | 395 | `result-track:e62acca92ac98ee0e423205e1ab41a8ab4b2c91ebcef5bb9c70fccdd3a0f6297` |
| 33 | `lemma` | [ConvexOn.le_max_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/convexon-le-max-of-mem-segment--7067fef6bd307cbc79e53c39.md) | 400 | `result-track:7067fef6bd307cbc79e53c39cf90d2772f75ae507fe456735aca3fca1853e846` |
| 34 | `lemma` | [ConcaveOn.min_le_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/concaveon-min-le-of-mem-segment--a83d093daf1f8af9d46b8497.md) | 406 | `result-track:a83d093daf1f8af9d46b8497e5ee25d410088bc51cd5b8e8023aaa1e4dc0d8ad` |
| 35 | `lemma` | [ConvexOn.le_max_of_mem_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/convexon-le-max-of-mem-icc--77a1724ce803d7fedb476eac.md) | 411 | `result-track:77a1724ce803d7fedb476eac8d1e60a9a4a84730d0fbe7d94beb8001290eea33` |
| 36 | `lemma` | [ConcaveOn.min_le_of_mem_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/concaveon-min-le-of-mem-icc--dded6df0766c93723a741d7b.md) | 417 | `result-track:dded6df0766c93723a741d7ba92e2a0510597e979d7bf252a81db3ea00eb3b7f` |
| 37 | `lemma` | [ConvexOn.bddAbove_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/convexon-bddabove-convexhull--6e482361283b738b22b197de.md) | 421 | `result-track:6e482361283b738b22b197de8d05cc2a87b30221a75109fd3f9b3f4c38e68e32` |
| 38 | `lemma` | [ConcaveOn.bddBelow_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant249bf87fd7a2e562dd8c66f0ac7638a228c602f3c347b7b50782a4dac453aeba.lean/declarations/concaveon-bddbelow-convexhull--5518d5eeed40a1b862164394.md) | 429 | `result-track:5518d5eeed40a1b86216439461761de478c69394a6adeef667100caa457e4c87` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
