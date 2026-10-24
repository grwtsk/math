# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Jensen.Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "89480b11ec63bfe142d814198b0cf685f44b4daa",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `89480b11ec63bfe142d814198b0cf685f44b4daa`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Function` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ConvexOn.map_centerMass_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/convexon-map-centermass-le--64df21e03e0331467c68cc97.md) | 56 | `result-track:64df21e03e0331467c68cc97506de5ce7126511f962abf24c51713f51e751dcc` |
| 2 | `theorem` | [ConcaveOn.le_map_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/concaveon-le-map-centermass--03a436fa6f9886cef322cc38.md) | 65 | `result-track:03a436fa6f9886cef322cc38921f0d2f04d431bc801f7029aba734823eb41d54` |
| 3 | `theorem` | [ConvexOn.map_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/convexon-map-sum-le--68348f2990de2074ba13d5ab.md) | 71 | `result-track:68348f2990de2074ba13d5ab27dbec03eb1c777fc8d754f2a05d211290102f59` |
| 4 | `theorem` | [ConcaveOn.le_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/concaveon-le-map-sum--763748bda8e89ba5810e2985.md) | 77 | `result-track:763748bda8e89ba5810e29858bdc44e572474cdcdcde9f3541fea19676501cdb` |
| 5 | `lemma` | [ConvexOn.map_add_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/convexon-map-add-sum-le--dfad761440763965792a835f.md) | 83 | `result-track:dfad761440763965792a835f3b0b7c4b1f9822cb4b445d53606f6ef686e37198` |
| 6 | `lemma` | [ConcaveOn.map_add_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/concaveon-map-add-sum-le--7dcd4aa24115f482e0e9127d.md) | 94 | `result-track:7dcd4aa24115f482e0e9127d76222aafeabb4706456d8e5b92710ecc350b21f7` |
| 7 | `lemma` | [StrictConvexOn.map_sum_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/strictconvexon-map-sum-lt--5dfb77479e3618b6af963547.md) | 107 | `result-track:5dfb77479e3618b6af9635477f10fed6da101155240fe5872c3ac006c7a07bed` |
| 8 | `lemma` | [StrictConcaveOn.lt_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/strictconcaveon-lt-map-sum--3603403c08930271893069bc.md) | 151 | `result-track:3603403c08930271893069bcce045fe5e526fcca5660435b78f42c534efba7c5` |
| 9 | `lemma` | [StrictConvexOn.eq_of_le_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/strictconvexon-eq-of-le-map-sum--c9dd3592cbd20dda9de1c38e.md) | 163 | `result-track:c9dd3592cbd20dda9de1c38ec2f162cb104cd126983bebd26b05f4005701e362` |
| 10 | `lemma` | [StrictConcaveOn.eq_of_map_sum_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/strictconcaveon-eq-of-map-sum-eq--3976754b154511b9263ec7ec.md) | 175 | `result-track:3976754b154511b9263ec7ecc37d1a32d8ca19505ae2125ae3674d69ad4407e3` |
| 11 | `lemma` | [StrictConvexOn.map_sum_eq_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/strictconvexon-map-sum-eq-iff--c97b712cb2c69aa2f505bd50.md) | 186 | `result-track:c97b712cb2c69aa2f505bd5042b26a70c7b0a025ed3bde72e09e46c364a91590` |
| 12 | `lemma` | [StrictConcaveOn.map_sum_eq_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/strictconcaveon-map-sum-eq-iff--b7819465a7116be52a85fc9c.md) | 212 | `result-track:b7819465a7116be52a85fc9c0e4606df58852c61512010778416a08fd192b9c6` |
| 13 | `lemma` | [StrictConvexOn.map_sum_eq_iff'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/strictconvexon-map-sum-eq-iff--6b63e6f032de6af96875c3ae.md) | 222 | `result-track:6b63e6f032de6af96875c3aeb6e1939fdd5fba3fbc3d77a16a948c2dfa6dc207` |
| 14 | `lemma` | [StrictConcaveOn.map_sum_eq_iff'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/strictconcaveon-map-sum-eq-iff--12b28e8c2072dcec7febd6e1.md) | 239 | `result-track:12b28e8c2072dcec7febd6e179d293a4e23dfa01000803e1d2b37654291fc825` |
| 15 | `theorem` | [ConvexOn.le_sup_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/convexon-le-sup-of-mem-convexhull--3bf0fcb49aaffdf02fecd6da.md) | 256 | `result-track:3bf0fcb49aaffdf02fecd6daf31657ab1fb20ea206f834b6d4bb8ff95e68b7ab` |
| 16 | `theorem` | [ConvexOn.inf_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/convexon-inf-le-of-mem-convexhull--1bc6547aebe59de2feef6e99.md) | 263 | `result-track:1bc6547aebe59de2feef6e999506cc68c8a26ef6e90c3013ca587317910d15fd` |
| 17 | `lemma` | [ConvexOn.exists_ge_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/convexon-exists-ge-of-centermass--142337097b0efd50024301be.md) | 270 | `result-track:142337097b0efd50024301be7bd045dea6fc001147406a1489223f4d36cffb55` |
| 18 | `lemma` | [ConcaveOn.exists_le_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/concaveon-exists-le-of-centermass--0d3b1d1c7b68d9dba69e87cc.md) | 286 | `result-track:0d3b1d1c7b68d9dba69e87cc30a0ff38b4b2585fd0b3f01e4cdc57684c6625a6` |
| 19 | `lemma` | [ConvexOn.exists_ge_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/convexon-exists-ge-of-mem-convexhull--6c2a8da7956b1594e4c2a000.md) | 292 | `result-track:6c2a8da7956b1594e4c2a00032057552b32d0116b0a52557d4afb186a64f792b` |
| 20 | `lemma` | [ConcaveOn.exists_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/concaveon-exists-le-of-mem-convexhull--b3a9effdd360c8bbc48cc723.md) | 302 | `result-track:b3a9effdd360c8bbc48cc72362e8510094d3e1c2b087f71d2c87abea61a5e87e` |
| 21 | `lemma` | [ConvexOn.le_max_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/convexon-le-max-of-mem-segment--deb01b9f31d52436c6a8f242.md) | 307 | `result-track:deb01b9f31d52436c6a8f242eb78a159e7a1f0e715da494aa02f77dd36ef0ddf` |
| 22 | `lemma` | [ConcaveOn.min_le_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/concaveon-min-le-of-mem-segment--42279904919d820e0045d36e.md) | 313 | `result-track:42279904919d820e0045d36e85bed970da7b96c77bd8bd787c95e2864a64f879` |
| 23 | `lemma` | [ConvexOn.le_max_of_mem_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/convexon-le-max-of-mem-icc--ee0d1edd1ce513f36182b558.md) | 318 | `result-track:ee0d1edd1ce513f36182b5588f89927f9699d89ccd66b2599898419687edf21a` |
| 24 | `lemma` | [ConcaveOn.min_le_of_mem_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/concaveon-min-le-of-mem-icc--63a96ba59ede963b63200f36.md) | 324 | `result-track:63a96ba59ede963b63200f366d585f5c39305b465fac91b70081b658188df313` |
| 25 | `lemma` | [ConvexOn.bddAbove_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/convexon-bddabove-convexhull--94f8fab3bf0add09fe429d48.md) | 328 | `result-track:94f8fab3bf0add09fe429d4833a450af630666e437c968505d1216c6512ce876` |
| 26 | `lemma` | [ConcaveOn.bddBelow_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant3ef159a4e0f7aa775ac8ea7f2713e9bba65453b102419ae669e2913ad8a26ced.lean/declarations/concaveon-bddbelow-convexhull--1a03ca717085068121ce5da4.md) | 336 | `result-track:1a03ca717085068121ce5da4a1071991804f172cdc5771e33db67b9d1d6bba6d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
