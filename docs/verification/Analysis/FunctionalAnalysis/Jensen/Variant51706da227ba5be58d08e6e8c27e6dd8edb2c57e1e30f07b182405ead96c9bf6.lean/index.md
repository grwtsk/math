# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Jensen.Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "25776a4421c9a68b1048b578dd96a781466892c1",
  "lexical_observation_count": 38,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `25776a4421c9a68b1048b578dd96a781466892c1`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean.json)

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
| 1 | `theorem` | [ConvexOn.map_centerMass_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/convexon-map-centermass-le--c4cf35b05c41160a4bb92e3a.md) | 52 | `result-track:c4cf35b05c41160a4bb92e3a5082916485dd14295167181c4259142da057f127` |
| 2 | `theorem` | [ConcaveOn.le_map_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/concaveon-le-map-centermass--891058c565eba6d023ad9c9f.md) | 61 | `result-track:891058c565eba6d023ad9c9f09b2d6ca3af5409b3606bb9b0d08ee26d3154198` |
| 3 | `theorem` | [ConvexOn.map_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/convexon-map-sum-le--af14c96bd86f3565c6009700.md) | 67 | `result-track:af14c96bd86f3565c600970037eb47d29d51b1ed252b95ca977ad36f62b96df0` |
| 4 | `theorem` | [ConcaveOn.le_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/concaveon-le-map-sum--7c292365412bd72dcdc050d7.md) | 73 | `result-track:7c292365412bd72dcdc050d72e4b6ee61fbc14dfdf757576614f837129c44af5` |
| 5 | `lemma` | [ConvexOn.map_add_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/convexon-map-add-sum-le--153dd85ba61e56d8f7e2d367.md) | 79 | `result-track:153dd85ba61e56d8f7e2d36788128545cc05c848c43aaa68dc7d217d05cfc78c` |
| 6 | `lemma` | [ConcaveOn.map_add_sum_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/concaveon-map-add-sum-le--2a2dbc7ffe3f86984e4ce5a3.md) | 90 | `result-track:2a2dbc7ffe3f86984e4ce5a36ddb9f34fbeec7658a419ba7ee12bd9b5556aa5c` |
| 7 | `lemma` | [StrictConvexOn.map_sum_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconvexon-map-sum-lt--89a72dfcb5040f77e62ddbc4.md) | 103 | `result-track:89a72dfcb5040f77e62ddbc448972dcdc4228ef01afb6bd25a08836f8135fd8d` |
| 8 | `lemma` | [StrictConcaveOn.lt_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconcaveon-lt-map-sum--59ab509d8fb0998ee84266db.md) | 147 | `result-track:59ab509d8fb0998ee84266db2d7296b629f1a189723a3da5ae406efaeb787a78` |
| 9 | `lemma` | [StrictConvexOn.eq_of_le_map_sum](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconvexon-eq-of-le-map-sum--25f425bc3d8313da806279c4.md) | 159 | `result-track:25f425bc3d8313da806279c4a3dc7f9700ccc24f02cc29bc1497cc14edf6cef4` |
| 10 | `lemma` | [StrictConcaveOn.eq_of_map_sum_eq](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconcaveon-eq-of-map-sum-eq--eed6fc73c12c5c843ce4a46d.md) | 171 | `result-track:eed6fc73c12c5c843ce4a46dcc4efa3818e68394582ea3e99c05d898dd53d171` |
| 11 | `theorem` | [StrictConvexOn.map_sum_eq_iff_of_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconvexon-map-sum-eq-iff-of-pos--ea45250caec096a5040a8aa2.md) | 179 | `result-track:ea45250caec096a5040a8aa28ae988c46f89c1120b756c6e75ecd50240caf263` |
| 12 | `theorem` | [StrictConcaveOn.map_sum_eq_iff_of_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconcaveon-map-sum-eq-iff-of-pos--68187d04aee376450c7721dd.md) | 190 | `result-track:68187d04aee376450c7721ddeef0ed4d63539951f406353cc3acdd8fd965cce5` |
| 13 | `theorem` | [StrictConvexOn.map_sum_eq_iff_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconvexon-map-sum-eq-iff-of-nonneg--e633e5649665984bb0f77175.md) | 197 | `result-track:e633e5649665984bb0f771757e214d12530e52edada62753288870db7d83a85b` |
| 14 | `theorem` | [StrictConcaveOn.map_sum_eq_iff_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconcaveon-map-sum-eq-iff-of-nonneg--a2726e1c16c8c86debeed724.md) | 210 | `result-track:a2726e1c16c8c86debeed7243e33c1cabddb0a5a8dc20552fc244a63102350bb` |
| 15 | `theorem` | [StrictConvexOn.map_sum_lt_iff_of_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconvexon-map-sum-lt-iff-of-pos--bcabf78b524cbeb9ff5483a6.md) | 216 | `result-track:bcabf78b524cbeb9ff5483a6e68d3ebfd5261f15d5be5b94e996bc0c5feb3f05` |
| 16 | `theorem` | [StrictConcaveOn.lt_map_sum_iff_of_pos](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconcaveon-lt-map-sum-iff-of-pos--024ad78591fe2ad0a0ceec16.md) | 223 | `result-track:024ad78591fe2ad0a0ceec1643c994ffc534650b1207185d4a9d83345738daa8` |
| 17 | `theorem` | [StrictConvexOn.map_sum_lt_iff_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconvexon-map-sum-lt-iff-of-nonneg--957400d9d930569bafa9e749.md) | 228 | `result-track:957400d9d930569bafa9e749038a1bf1c4a7ae734fe0df8d794b1c369511e75b` |
| 18 | `theorem` | [StrictConcaveOn.lt_map_sum_iff_of_nonneg](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconcaveon-lt-map-sum-iff-of-nonneg--34991fc97e22ef5d162bdac1.md) | 234 | `result-track:34991fc97e22ef5d162bdac1564fd2acf6f43803745ef12bfd9ec75efc0a220a` |
| 19 | `lemma` | [StrictConvexOn.map_sum_eq_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconvexon-map-sum-eq-iff--f318a12381fd2a95a964c38a.md) | 245 | `result-track:f318a12381fd2a95a964c38abfdd9e79a5a82b62d3ea503c3e774c14cacd64a7` |
| 20 | `lemma` | [StrictConcaveOn.map_sum_eq_iff](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconcaveon-map-sum-eq-iff--e70c739fc0b51ad3daa2d056.md) | 265 | `result-track:e70c739fc0b51ad3daa2d056dce1d211124535eb8bfe6a63eac336fc9811dde0` |
| 21 | `lemma` | [StrictConvexOn.map_sum_eq_iff'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconvexon-map-sum-eq-iff--f2120d81d5d1b549d2db606d.md) | 275 | `result-track:f2120d81d5d1b549d2db606d2c2691368ac6ec2bfd8e5ef7ae657eb2225860d5` |
| 22 | `lemma` | [StrictConcaveOn.map_sum_eq_iff'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconcaveon-map-sum-eq-iff--cb01602be45a97a75042c012.md) | 292 | `result-track:cb01602be45a97a75042c01266cc35f90ec510f8c7db1c75035fd28ac52c8bf7` |
| 23 | `theorem` | [StrictConvexOn.map_sum_lt_iff_of_pos'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconvexon-map-sum-lt-iff-of-pos--ff19f1b2366dfe324f0c7f0c.md) | 298 | `result-track:ff19f1b2366dfe324f0c7f0cb4424ff06afadeb671d69ed729afc8edf5d18a80` |
| 24 | `theorem` | [StrictConcaveOn.lt_map_sum_iff_of_pos'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconcaveon-lt-map-sum-iff-of-pos--ae37bde0333bc454779954e5.md) | 306 | `result-track:ae37bde0333bc454779954e58f6e7af7ca90b0285347998ccfd680999bbecef8` |
| 25 | `theorem` | [StrictConvexOn.map_sum_lt_iff_of_nonneg'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconvexon-map-sum-lt-iff-of-nonneg--557a92aa10dc77a488df4e66.md) | 312 | `result-track:557a92aa10dc77a488df4e66f433e7ad273a9a3b45e679a8324573b93683a139` |
| 26 | `theorem` | [StrictConcaveOn.lt_map_sum_iff_of_nonneg'](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/strictconcaveon-lt-map-sum-iff-of-nonneg--a1169f796870ed3b0a27ec49.md) | 324 | `result-track:a1169f796870ed3b0a27ec49286c628c4dfc28e01f9eba542dfa70175ee3ca3b` |
| 27 | `theorem` | [ConvexOn.le_sup_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/convexon-le-sup-of-mem-convexhull--8991a3ce44879c95ffcfc2af.md) | 341 | `result-track:8991a3ce44879c95ffcfc2afa25aedc3bf7c5c17cdfa8e9c0b523ae66a3ebe25` |
| 28 | `theorem` | [ConvexOn.inf_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/convexon-inf-le-of-mem-convexhull--d7d9f03fc64ee825acbaf96d.md) | 348 | `result-track:d7d9f03fc64ee825acbaf96d083df8796340c78ded7bcd063e6ca49c51d43ba3` |
| 29 | `lemma` | [ConvexOn.exists_ge_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/convexon-exists-ge-of-centermass--f1c3c592dc969981d60e2b7e.md) | 355 | `result-track:f1c3c592dc969981d60e2b7e8b401ef8498ee6f3358631245c4957353136c645` |
| 30 | `lemma` | [ConcaveOn.exists_le_of_centerMass](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/concaveon-exists-le-of-centermass--21c78a4526790c72b607caab.md) | 371 | `result-track:21c78a4526790c72b607caabb1a2a04c14cb7662b0f8cfb8703ea8a59f8447db` |
| 31 | `lemma` | [ConvexOn.exists_ge_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/convexon-exists-ge-of-mem-convexhull--0fda78f2982ebb4ce4e8415d.md) | 377 | `result-track:0fda78f2982ebb4ce4e8415d53d26ba40d5a5921e64a025ca99e51091d15856b` |
| 32 | `lemma` | [ConcaveOn.exists_le_of_mem_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/concaveon-exists-le-of-mem-convexhull--879cb4ca1c050ca59cf6b265.md) | 387 | `result-track:879cb4ca1c050ca59cf6b265ec28cc19056920b4e2218da639060846e691858b` |
| 33 | `lemma` | [ConvexOn.le_max_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/convexon-le-max-of-mem-segment--3be48662f5c04a5a2a1961d8.md) | 392 | `result-track:3be48662f5c04a5a2a1961d8ecb54496768aef2e9f500610643451b6d26f6ecd` |
| 34 | `lemma` | [ConcaveOn.min_le_of_mem_segment](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/concaveon-min-le-of-mem-segment--0afade6c5df9f851c63a3701.md) | 398 | `result-track:0afade6c5df9f851c63a3701f69373f8068b37bef9cebe3818fe895752a4e533` |
| 35 | `lemma` | [ConvexOn.le_max_of_mem_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/convexon-le-max-of-mem-icc--00d312dd47e0dae65ec36e8a.md) | 403 | `result-track:00d312dd47e0dae65ec36e8aea559c3c83fdf819457daf06844fb06c54db7582` |
| 36 | `lemma` | [ConcaveOn.min_le_of_mem_Icc](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/concaveon-min-le-of-mem-icc--ea24a7635dd0c40a6f48d070.md) | 409 | `result-track:ea24a7635dd0c40a6f48d070ed82bb47b288f6449cf5fd4226fe79673810e736` |
| 37 | `lemma` | [ConvexOn.bddAbove_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/convexon-bddabove-convexhull--25b015ee59d5bc012098d322.md) | 413 | `result-track:25b015ee59d5bc012098d3227f185c8e139e54a27ec88bc3c456476632d1453e` |
| 38 | `lemma` | [ConcaveOn.bddBelow_convexHull](../../../../../mathematics/Analysis/FunctionalAnalysis/Jensen/Variant51706da227ba5be58d08e6e8c27e6dd8edb2c57e1e30f07b182405ead96c9bf6.lean/declarations/concaveon-bddbelow-convexhull--d945087984b0032728af6ab0.md) | 421 | `result-track:d945087984b0032728af6ab0e89f7544f60e0e316b021893aae4edeeb11ca715` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
