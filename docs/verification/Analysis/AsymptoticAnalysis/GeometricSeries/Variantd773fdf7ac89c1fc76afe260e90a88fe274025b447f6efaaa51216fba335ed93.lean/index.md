# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.GeometricSeries.Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ef15a925160d1299f8d0e59214fdd798805b8a0e",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ef15a925160d1299f8d0e59214fdd798805b8a0e`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 1; external provider; requires a separately pinned dependency.
- `AnalyticNumber.BoundaryCalculus` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complex_geometric_series_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/complex-geometric-series-summable--761e2f8378b1c717d9d7a9a9.md) | 36 | `result-track:761e2f8378b1c717d9d7a9a9691bb8564e5c4c9c4a8f38540a1861ba3cfd9a67` |
| 2 | `theorem` | [complex_geometric_series_abs_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/complex-geometric-series-abs-summable--6a7f143f30577e0035d76396.md) | 43 | `result-track:6a7f143f30577e0035d763961771caf1e7b3de649d3124504e2d8d59f734ca0e` |
| 3 | `theorem` | [complex_geometric_series_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/complex-geometric-series-hassum--b83d843d9d3085ccbc5addd2.md) | 50 | `result-track:b83d843d9d3085ccbc5addd20f47e8a1311af09a2b7494a455b1212b818fd888` |
| 4 | `def` | [geometricSeriesContext](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/geometricseriescontext--c5c94d85fc4ec3cec4382b0e.md) | 57 | `declaration-track:c5c94d85fc4ec3cec4382b0e01e43eede39bbd32db0554bba9eb1bf75daed2e9` |
| 5 | `def` | [geometricSeriesClaim](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/geometricseriesclaim--8b06398519044a5cbd7a1d0b.md) | 63 | `declaration-track:8b06398519044a5cbd7a1d0bb128069e3683cb2cf0865e8d5b1cb0431db3e5dc` |
| 6 | `def` | [geometricSeriesCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/geometricseriescertificate--ecad9a3c0fc860cfcd304eb2.md) | 76 | `declaration-track:ecad9a3c0fc860cfcd304eb2202ac504f95fc24d39276f425ccd9e6eb7035608` |
| 7 | `def` | [geometricSeriesToken](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/geometricseriestoken--ca971c9e999c288c22823b80.md) | 89 | `declaration-track:ca971c9e999c288c22823b807e5228c71ace98265cda07eb18b9830da0e3bfcf` |
| 8 | `theorem` | [geometric_series_through_boundary_calculus](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/geometric-series-through-boundary-calculus--c7148f494f86fd48c21f1efe.md) | 106 | `result-track:c7148f494f86fd48c21f1efe6bab6aa451e75427e8868c809e182aa31db21ede` |
| 9 | `theorem` | [geometric_series_no_direct_crossing](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/geometric-series-no-direct-crossing--ed169a4b62e13b1a0266720f.md) | 117 | `result-track:ed169a4b62e13b1a0266720fd67fb9c0ec2e5f7478b5252f1065d381eed5178f` |
| 10 | `theorem` | [finite_partial_geometric_sum_tends_to_inverse](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/finite-partial-geometric-sum-tends-to-inverse--66b444fa906f564b11fea4bc.md) | 134 | `result-track:66b444fa906f564b11fea4bca8345cebac3bec73987917b8314d1ec7df2951f4` |
| 11 | `def` | [partialSumClaim](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/partialsumclaim--89676d61e5464bfd6f88aae2.md) | 143 | `declaration-track:89676d61e5464bfd6f88aae26bb702a9d1c99e3f4ab8f2a39301e8775290d7a9` |
| 12 | `def` | [partialSumCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/partialsumcertificate--0a8542a5762e13192946c769.md) | 156 | `declaration-track:0a8542a5762e13192946c769ab5d7c8f124df69ce8ff286f240fb936de195396` |
| 13 | `def` | [partialSumToken](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/partialsumtoken--ea969182b101d26f72c3ea75.md) | 167 | `declaration-track:ea969182b101d26f72c3ea75ae2dc115d46e7ca8de924ac89bd12b1da0d7492f` |
| 14 | `theorem` | [partial_sums_through_boundary_calculus](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd773fdf7ac89c1fc76afe260e90a88fe274025b447f6efaaa51216fba335ed93.lean/declarations/partial-sums-through-boundary-calculus--fece1a33e9f14e189387f9b1.md) | 179 | `result-track:fece1a33e9f14e189387f9b120efd02cef541a8bdc9de1ce50d4479de445efbc` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
