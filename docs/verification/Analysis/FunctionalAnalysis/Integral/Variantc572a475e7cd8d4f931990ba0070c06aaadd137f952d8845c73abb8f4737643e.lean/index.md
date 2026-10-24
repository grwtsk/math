# Verification target: GRWTSK.Analysis.FunctionalAnalysis.Integral.Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "01b5d995dab9d0f313828b9209e3cc0570a91422",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/index.md) · [Full source](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `01b5d995dab9d0f313828b9209e3cc0570a91422`.

Source path: `GRWTSK/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Convex.Function` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Convex.StrictConvexSpace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Function.AEEqOfIntegral` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.Average` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [Convex.integral_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/convex-integral-mem--a7736860802ab938d84494b4.md) | 64 | `result-track:a7736860802ab938d84494b4c72affa0d26da21cdaa0e6e76f041428f6f0ed75` |
| 2 | `theorem` | [Convex.average_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/convex-average-mem--f2647eb8aa47bc5a9d9622b1.md) | 95 | `result-track:f2647eb8aa47bc5a9d9622b18598222bddd58fa4b152130ad71c6a84364aa252` |
| 3 | `theorem` | [Convex.set_average_mem](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/convex-set-average-mem--f9c7f867e943947364e38b6c.md) | 104 | `result-track:f9c7f867e943947364e38b6ca488bea3769358b38b9baab00de75809505ab9a6` |
| 4 | `theorem` | [Convex.set_average_mem_closure](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/convex-set-average-mem-closure--44bc38a12aefc8b7caad91a5.md) | 114 | `result-track:44bc38a12aefc8b7caad91a5d701755e7c279273a38c2f663da93253f4671ef4` |
| 5 | `theorem` | [ConvexOn.average_mem_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/convexon-average-mem-epigraph--bc376df739903e370b54aadd.md) | 120 | `result-track:bc376df739903e370b54aaddd99a89a86e66c555dd471fe56732c210df7a2480` |
| 6 | `theorem` | [ConcaveOn.average_mem_hypograph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/concaveon-average-mem-hypograph--c0790beee8ff5fee5dfb3bf3.md) | 130 | `result-track:c0790beee8ff5fee5dfb3bf3b994427e571edfc953c159907d5653935770325c` |
| 7 | `theorem` | [ConvexOn.map_average_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/convexon-map-average-le--1f6b83a73e39e156a2082218.md) | 143 | `result-track:1f6b83a73e39e156a20822188e608ac7d8bed5d7af582f98208b7810fd9566b2` |
| 8 | `theorem` | [ConcaveOn.le_map_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/concaveon-le-map-average--c96e722d859d80cf8114cef6.md) | 155 | `result-track:c96e722d859d80cf8114cef62f6225ddaa48302a964e8363dd8ec4d28569a7b0` |
| 9 | `theorem` | [ConvexOn.set_average_mem_epigraph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/convexon-set-average-mem-epigraph--200f41ce0b60476467f0b26b.md) | 167 | `result-track:200f41ce0b60476467f0b26b7123dc5314116bd7824116f61684a2c45468bda7` |
| 10 | `theorem` | [ConcaveOn.set_average_mem_hypograph](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/concaveon-set-average-mem-hypograph--7ca4be974dc266b6daad7a42.md) | 181 | `result-track:7ca4be974dc266b6daad7a4248214ac1b40045c45047255ea0710ef13b1ae133` |
| 11 | `theorem` | [ConvexOn.map_set_average_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/convexon-map-set-average-le--e794245d2a1a380517841e10.md) | 194 | `result-track:e794245d2a1a380517841e1050ce5049be2d8ba9083f07cde37819a8afdaa430` |
| 12 | `theorem` | [ConcaveOn.le_map_set_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/concaveon-le-map-set-average--f7a6edc2a80c391400cf9d8a.md) | 206 | `result-track:f7a6edc2a80c391400cf9d8af6c252e55bc86125893b532ba07e386e82009c2f` |
| 13 | `theorem` | [ConvexOn.map_integral_le](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/convexon-map-integral-le--adb0864bf5e5fdbdd6de244f.md) | 218 | `result-track:adb0864bf5e5fdbdd6de244f94b219bfbb1563d7016b2e3ba1f43ec65f02a375` |
| 14 | `theorem` | [ConcaveOn.le_map_integral](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/concaveon-le-map-integral--90eaa6346305ebaa258fdc1c.md) | 228 | `result-track:90eaa6346305ebaa258fdc1c44965e1371c64caef93a8d92cfb6c581552c9e3b` |
| 15 | `theorem` | [ae_eq_const_or_exists_average_ne_compl](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/ae-eq-const-or-exists-average-ne-compl--604a976298dcdbf280d2c2a1.md) | 242 | `result-track:604a976298dcdbf280d2c2a1165899f7b28013ee4ce19b7b7faac41915b34fec` |
| 16 | `theorem` | [Convex.average_mem_interior_of_set](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/convex-average-mem-interior-of-set--7d2a381c070b1453ef9d1161.md) | 261 | `result-track:7d2a381c070b1453ef9d11615d02968d8f837e3369b7ce3ea032ea7f7e708073` |
| 17 | `theorem` | [StrictConvex.ae_eq_const_or_average_mem_interior](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/strictconvex-ae-eq-const-or-average-mem-interior--baf644da1d74d2aadc537fb4.md) | 279 | `result-track:baf644da1d74d2aadc537fb48f1927506cdad29c2fec381c8b2fe0e2db5d1850` |
| 18 | `theorem` | [StrictConvexOn.ae_eq_const_or_map_average_lt](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/strictconvexon-ae-eq-const-or-map-average-lt--1c1f208f070c30ce4ad07c7d.md) | 294 | `result-track:1c1f208f070c30ce4ad07c7d10d8d1063e5442550b9eb2ffa85be38fbe4c328c` |
| 19 | `theorem` | [StrictConcaveOn.ae_eq_const_or_lt_map_average](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/strictconcaveon-ae-eq-const-or-lt-map-average--03c17890b8c5272813aa8d25.md) | 323 | `result-track:03c17890b8c5272813aa8d250923a9a0ffc69e50f31233b67851ce2ab9b26d1e` |
| 20 | `theorem` | [ae_eq_const_or_norm_average_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/ae-eq-const-or-norm-average-lt-of-norm-le-const--eb8069b2bc45ce48bccc43e3.md) | 334 | `result-track:eb8069b2bc45ce48bccc43e3a55ed8a9fa6f72ed7d24220840cceed6cea3a2a3` |
| 21 | `theorem` | [ae_eq_const_or_norm_integral_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/ae-eq-const-or-norm-integral-lt-of-norm-le-const--69f91a1cdb0c4f581c66426c.md) | 353 | `result-track:69f91a1cdb0c4f581c66426c8a87720cd53acf9dfbede09b5dc63383dc611e01` |
| 22 | `theorem` | [ae_eq_const_or_norm_set_integral_lt_of_norm_le_const](../../../../../mathematics/Analysis/FunctionalAnalysis/Integral/Variantc572a475e7cd8d4f931990ba0070c06aaadd137f952d8845c73abb8f4737643e.lean/declarations/ae-eq-const-or-norm-set-integral-lt-of-norm-le-const--a27c09821de24fc605b3e471.md) | 367 | `result-track:a27c09821de24fc605b3e47129cb1b9f91fa23745654dc8edd7fe689a990ea9c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
