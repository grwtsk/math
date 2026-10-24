# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Jensen.Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "0fb5f5c192359128a63127e47d13e24b9105814c",
  "lexical_observation_count": 26,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `0fb5f5c192359128a63127e47d13e24b9105814c`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Combination` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.Function` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [ConvexOn.map_centerMass_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/convexon-map-centermass-le--e69ca24c271b9bdd80a1b921.md) | 48 | `result-track:e69ca24c271b9bdd80a1b921eb3196d93dcfa4b1e32a308711b7b5b8b583b854` |
| 2 | `theorem` | [ConcaveOn.le_map_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/concaveon-le-map-centermass--c7569c17c50964fb58c004c7.md) | 57 | `result-track:c7569c17c50964fb58c004c7678a758753ea8a360044f60ebb0657a5c2d312e3` |
| 3 | `theorem` | [ConvexOn.map_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/convexon-map-sum-le--5a9582b12c6ab9a111633aff.md) | 63 | `result-track:5a9582b12c6ab9a111633aff18fdb13f314082bd1606605b900cac15533c54c3` |
| 4 | `theorem` | [ConcaveOn.le_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/concaveon-le-map-sum--780d5aff44cda7728bc0c138.md) | 69 | `result-track:780d5aff44cda7728bc0c138f85ad77bc9c9829226ea337f7152eafe07fdf79b` |
| 5 | `lemma` | [ConvexOn.map_add_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/convexon-map-add-sum-le--a9bc55f29fe575dfbb146516.md) | 75 | `result-track:a9bc55f29fe575dfbb146516e2eed1d01ccb3cb306f08ca7710612db2c4fd330` |
| 6 | `lemma` | [ConcaveOn.map_add_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/concaveon-map-add-sum-le--3e78cfc82b54be411af8e35a.md) | 86 | `result-track:3e78cfc82b54be411af8e35a3719f3985ec68074818ea56e8031f992b19e9e33` |
| 7 | `lemma` | [StrictConvexOn.map_sum_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/strictconvexon-map-sum-lt--dbc32e920024f94a29ee1a08.md) | 99 | `result-track:dbc32e920024f94a29ee1a08fff0b9fc3a8f0c95544d84e862d225646f65b3c1` |
| 8 | `lemma` | [StrictConcaveOn.lt_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/strictconcaveon-lt-map-sum--431a90780ed6263b6a40a143.md) | 143 | `result-track:431a90780ed6263b6a40a143a8059effe9beb087a34117efe3297a0dbc74184a` |
| 9 | `lemma` | [StrictConvexOn.eq_of_le_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/strictconvexon-eq-of-le-map-sum--cc06608606e6debd7be5949a.md) | 155 | `result-track:cc06608606e6debd7be5949a2a1fe9d64227a1c81cfdb81fb26de461502a9101` |
| 10 | `lemma` | [StrictConcaveOn.eq_of_map_sum_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/strictconcaveon-eq-of-map-sum-eq--fdee53bc6c671ab99941f721.md) | 167 | `result-track:fdee53bc6c671ab99941f721528cb54c942cc4a4c94f557ce1d258d9dbe44532` |
| 11 | `lemma` | [StrictConvexOn.map_sum_eq_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/strictconvexon-map-sum-eq-iff--3eb4823180d2093d695198d8.md) | 178 | `result-track:3eb4823180d2093d695198d87005999ba2c5f47b015a82a19db5f6d30cb5b7f2` |
| 12 | `lemma` | [StrictConcaveOn.map_sum_eq_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/strictconcaveon-map-sum-eq-iff--230941c1e58e222550ad4ac8.md) | 204 | `result-track:230941c1e58e222550ad4ac8b4e93fbe46b2d233177a7ca5915de2e9acfe1953` |
| 13 | `lemma` | [StrictConvexOn.map_sum_eq_iff'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/strictconvexon-map-sum-eq-iff--0aae5625cefb8a3e6381f579.md) | 214 | `result-track:0aae5625cefb8a3e6381f579a0a73c0055f39e6bc6c7b0e75aa8da7af1e8909e` |
| 14 | `lemma` | [StrictConcaveOn.map_sum_eq_iff'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/strictconcaveon-map-sum-eq-iff--5fc19daf19fc8a173d019996.md) | 231 | `result-track:5fc19daf19fc8a173d019996d0a8203c73df6aab598ce75c2f9572a57cb3bf76` |
| 15 | `theorem` | [ConvexOn.le_sup_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/convexon-le-sup-of-mem-convexhull--b6da737fb644f044bace1615.md) | 248 | `result-track:b6da737fb644f044bace1615cb632ed5fd22e83f895280891c9d14ae3400e109` |
| 16 | `theorem` | [ConvexOn.inf_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/convexon-inf-le-of-mem-convexhull--b0904806722412edf1fba4c7.md) | 255 | `result-track:b0904806722412edf1fba4c76cb49ce0dbbd6c6c3ca698e860951f96edf29316` |
| 17 | `lemma` | [ConvexOn.exists_ge_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/convexon-exists-ge-of-centermass--375e91d5257483b07486ef67.md) | 262 | `result-track:375e91d5257483b07486ef67d0dbb46e5bb3c7a1a385ddfdb13dda4c352eaa76` |
| 18 | `lemma` | [ConcaveOn.exists_le_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/concaveon-exists-le-of-centermass--0ae0ebf15fd6b08fa4c38114.md) | 278 | `result-track:0ae0ebf15fd6b08fa4c381144b5d4910ee21cbfec4132009ac1f9c3e5312a2bb` |
| 19 | `lemma` | [ConvexOn.exists_ge_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/convexon-exists-ge-of-mem-convexhull--07a4c24021578c3e53a6a887.md) | 284 | `result-track:07a4c24021578c3e53a6a887c90ab6b87ae6934fe46aef89a20d65663e602b05` |
| 20 | `lemma` | [ConcaveOn.exists_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/concaveon-exists-le-of-mem-convexhull--9657c4ffb7daa30ebe61e424.md) | 294 | `result-track:9657c4ffb7daa30ebe61e424269d35f5de246ebc4641c2a00b0bc1341523fceb` |
| 21 | `lemma` | [ConvexOn.le_max_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/convexon-le-max-of-mem-segment--fec999d4da6df03e65a217dc.md) | 299 | `result-track:fec999d4da6df03e65a217dc4b116320edb481747bd2dd3c08ee4c17042e18b9` |
| 22 | `lemma` | [ConcaveOn.min_le_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/concaveon-min-le-of-mem-segment--73d1de1ca8a3bce3c62daa25.md) | 305 | `result-track:73d1de1ca8a3bce3c62daa25181d47bef00ab424b7f5d494ff58119d609b31ff` |
| 23 | `lemma` | [ConvexOn.le_max_of_mem_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/convexon-le-max-of-mem-icc--b36fc36eb7d0d1342fd896d1.md) | 310 | `result-track:b36fc36eb7d0d1342fd896d1a59d99b4e9732545be2027b9e431a4a7aee03a26` |
| 24 | `lemma` | [ConcaveOn.min_le_of_mem_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/concaveon-min-le-of-mem-icc--5334e1ab6c67f974bd424da0.md) | 316 | `result-track:5334e1ab6c67f974bd424da07a0b176395f1094c85b6d8ba2d32ddfc07d788aa` |
| 25 | `lemma` | [ConvexOn.bddAbove_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/convexon-bddabove-convexhull--3e6ad377d5a9c83fc2b9ecdb.md) | 320 | `result-track:3e6ad377d5a9c83fc2b9ecdbc39a12e62d1cca5260cccec295585408b822ddde` |
| 26 | `lemma` | [ConcaveOn.bddBelow_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variantdbb0ece3c2d4eb8743880110b684e58efcd9067ecba2d24a259516f1909c7677.lean/declarations/concaveon-bddbelow-convexhull--746adfdc1ee66a751c374a38.md) | 328 | `result-track:746adfdc1ee66a751c374a3885c2f576699b8743efa521b3e100bd4be1e8d03e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
