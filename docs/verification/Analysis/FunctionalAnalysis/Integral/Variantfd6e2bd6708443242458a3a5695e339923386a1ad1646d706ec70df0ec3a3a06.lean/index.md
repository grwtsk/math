# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Integral.Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2fa4c96abcb589f7ad9dd1ca5590e1078660981b",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2fa4c96abcb589f7ad9dd1ca5590e1078660981b`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean.json)

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
| 1 | `theorem` | [Convex.integral_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/convex-integral-mem--a6aac82446e777b22ce21836.md) | 65 | `result-track:a6aac82446e777b22ce21836b5513bdc11fba7035623982efa83010cb7b67914` |
| 2 | `theorem` | [Convex.average_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/convex-average-mem--9c5093b40027ea104e9e0b8f.md) | 96 | `result-track:9c5093b40027ea104e9e0b8f47f52101de931a3852bff3e60bcbf727190d1149` |
| 3 | `theorem` | [Convex.set_average_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/convex-set-average-mem--c91ccf2a6d6a56c769bdcfef.md) | 103 | `result-track:c91ccf2a6d6a56c769bdcfef21de6a0d7ed12e8d3caec74096a56b41b8b37e6d` |
| 4 | `theorem` | [Convex.set_average_mem_closure](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/convex-set-average-mem-closure--e5cf46d212aae30e4c832334.md) | 112 | `result-track:e5cf46d212aae30e4c832334c41f21ee7953038621f75fd328251559fa46b02d` |
| 5 | `theorem` | [ConvexOn.average_mem_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/convexon-average-mem-epigraph--5ccb531a5702c3c6af7925fc.md) | 117 | `result-track:5ccb531a5702c3c6af7925fc6b5f273ee5ff16bf52e06436b696da9c71aa3b2a` |
| 6 | `theorem` | [ConcaveOn.average_mem_hypograph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/concaveon-average-mem-hypograph--e6fcdc5d57ea9870b67c4013.md) | 126 | `result-track:e6fcdc5d57ea9870b67c40133e56e9f7e7dc17b9792723e8a526c1991b615d0d` |
| 7 | `theorem` | [ConvexOn.map_average_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/convexon-map-average-le--97fa83468b2d01094742cd30.md) | 137 | `result-track:97fa83468b2d01094742cd309a04ed871c0a87dd0f22494f2b3e31fb7ef66171` |
| 8 | `theorem` | [ConcaveOn.le_map_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/concaveon-le-map-average--ef2affbc0225a66b8ef0d030.md) | 148 | `result-track:ef2affbc0225a66b8ef0d030bd873fb210f2ce66de37311bad400d9765dc428c` |
| 9 | `theorem` | [ConvexOn.set_average_mem_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/convexon-set-average-mem-epigraph--ce3541a745a4a9731af57703.md) | 159 | `result-track:ce3541a745a4a9731af5770328e4f7a8a04853a6697b61a3bf724c12c7f64e48` |
| 10 | `theorem` | [ConcaveOn.set_average_mem_hypograph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/concaveon-set-average-mem-hypograph--800e07c51d85dac70d9e6b21.md) | 172 | `result-track:800e07c51d85dac70d9e6b2194cbca8eaee13189ba04de94824b740dbad1abc2` |
| 11 | `theorem` | [ConvexOn.map_set_average_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/convexon-map-set-average-le--0ba72dd71261bd5b0e1c25f7.md) | 183 | `result-track:0ba72dd71261bd5b0e1c25f739990a72d01d0ed5d838336a2a4bd80b923d0e47` |
| 12 | `theorem` | [ConcaveOn.le_map_set_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/concaveon-le-map-set-average--bcf46f268137a693afb01f96.md) | 194 | `result-track:bcf46f268137a693afb01f9623af43c79a5fa7d2b6f3fae737ea22cf12c22ba0` |
| 13 | `theorem` | [ConvexOn.map_integral_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/convexon-map-integral-le--08e71ec581c01cb7d14316fb.md) | 205 | `result-track:08e71ec581c01cb7d14316fb450904ec1ab5e26b3eef0369c7e9c84324486e27` |
| 14 | `theorem` | [ConcaveOn.le_map_integral](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/concaveon-le-map-integral--45726b4f2b57822185cefa2e.md) | 214 | `result-track:45726b4f2b57822185cefa2e0499626f91c8bff0a0e521e159a813824948e992` |
| 15 | `theorem` | [ae_eq_const_or_exists_average_ne_compl](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/ae-eq-const-or-exists-average-ne-compl--ef815ad4d0d36fbdd927016f.md) | 227 | `result-track:ef815ad4d0d36fbdd927016ff7ea11f95756134a2558a5a475c3ee1b38020f6f` |
| 16 | `theorem` | [Convex.average_mem_interior_of_set](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/convex-average-mem-interior-of-set--aeb1b5626af104f127da4062.md) | 246 | `result-track:aeb1b5626af104f127da4062514d9ddb77bf326080a0a8d5386c9f2e54e3c31c` |
| 17 | `theorem` | [StrictConvex.ae_eq_const_or_average_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/strictconvex-ae-eq-const-or-average-mem-interior--ced7439bbc3fe2f735953a6c.md) | 261 | `result-track:ced7439bbc3fe2f735953a6c216ae1e899875da3825d10280143149264eb7a8c` |
| 18 | `theorem` | [StrictConvexOn.ae_eq_const_or_map_average_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/strictconvexon-ae-eq-const-or-map-average-lt--f49000cd1e3b12bd98f85fdf.md) | 275 | `result-track:f49000cd1e3b12bd98f85fdff02f526f24237a2b905ee8a459a34588ceba4174` |
| 19 | `theorem` | [StrictConcaveOn.ae_eq_const_or_lt_map_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/strictconcaveon-ae-eq-const-or-lt-map-average--1fd28c407388e215e4a8abb3.md) | 303 | `result-track:1fd28c407388e215e4a8abb301be77e3a8e65502869a38f1e584ea089dcc9743` |
| 20 | `theorem` | [ae_eq_const_or_norm_average_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/ae-eq-const-or-norm-average-lt-of-norm-le-const--58c48671677bc66c011f371f.md) | 312 | `result-track:58c48671677bc66c011f371f54eba4ce169f4f86b29d8740da4bd940b614b6fe` |
| 21 | `theorem` | [ae_eq_const_or_norm_integral_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/ae-eq-const-or-norm-integral-lt-of-norm-le-const--e6ea9df0b0ed20821e1a3e6e.md) | 331 | `result-track:e6ea9df0b0ed20821e1a3e6ea83769aff51807e85648a408f23247d17e2d8e48` |
| 22 | `theorem` | [ae_eq_const_or_norm_setIntegral_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantfd6e2bd6708443242458a3a5695e339923386a1ad1646d706ec70df0ec3a3a06.lean/declarations/ae-eq-const-or-norm-setintegral-lt-of-norm-le-const--7204ceaf4027ace799370d25.md) | 344 | `result-track:7204ceaf4027ace799370d25cd48936d8f685e3e1a6c01c3e1300b9d50bf6daf` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
