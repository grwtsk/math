# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.GeometricSeries.Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a8bf4cad1248047a66c08139b1ee0987245a766",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a8bf4cad1248047a66c08139b1ee0987245a766`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib` — import line 6; external provider; requires a separately pinned dependency.
- `AnalyticNumber.BoundaryCalculus` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complex_geometric_series_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/complex-geometric-series-summable--c7c66cff0e953af288202066.md) | 44 | `result-track:c7c66cff0e953af288202066fae04d3acaac1e8cb8befa3699217b0aa96d4c45` |
| 2 | `theorem` | [complex_geometric_series_abs_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/complex-geometric-series-abs-summable--24352814b99d6f726c39fb5f.md) | 51 | `result-track:24352814b99d6f726c39fb5ff6e4e75eb007b5ac7130debac020df4dc6fc65bf` |
| 3 | `theorem` | [complex_geometric_series_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/complex-geometric-series-hassum--d919b978b329cc6fb1b14c68.md) | 58 | `result-track:d919b978b329cc6fb1b14c68bd979c0627653c3d59c8cab55d2e737fa92efebc` |
| 4 | `def` | [geometricSeriesContext](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/geometricseriescontext--19552c21028ce45a3f56f278.md) | 65 | `declaration-track:19552c21028ce45a3f56f27842166f0007e160031b5bce89a9bb3e036442219f` |
| 5 | `def` | [geometricSeriesClaim](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/geometricseriesclaim--add37343b9cfcbf0489ca524.md) | 71 | `declaration-track:add37343b9cfcbf0489ca524d389021d5c270c0b94815f00fa78c1f489c9571a` |
| 6 | `def` | [geometricSeriesCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/geometricseriescertificate--7873a1d67ff71b6b1bb62eeb.md) | 84 | `declaration-track:7873a1d67ff71b6b1bb62eeb6a41c1b5153177639de056181281826f02493bc5` |
| 7 | `def` | [geometricSeriesToken](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/geometricseriestoken--fc11520d0db2382c4b021e2f.md) | 97 | `declaration-track:fc11520d0db2382c4b021e2f9a8a3cb352a0e425748a94eb6bbcf106824ffeeb` |
| 8 | `theorem` | [geometric_series_through_boundary_calculus](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/geometric-series-through-boundary-calculus--5a2769ebd06612dd06b98e26.md) | 114 | `result-track:5a2769ebd06612dd06b98e262ff30d7bb77d7e4ab9c2836001107c03e0beb5f8` |
| 9 | `theorem` | [geometric_series_no_direct_crossing](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/geometric-series-no-direct-crossing--382bdf85e4d1e916e3991586.md) | 125 | `result-track:382bdf85e4d1e916e3991586fb132879ea63b8ede031d9aee04b1130d45f344e` |
| 10 | `theorem` | [finite_partial_geometric_sum_tends_to_inverse](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/finite-partial-geometric-sum-tends-to-inverse--abeea8ec9dc13a959a57e87f.md) | 142 | `result-track:abeea8ec9dc13a959a57e87fd44b82923d814a02021ac51db816708143dbd0f4` |
| 11 | `def` | [partialSumClaim](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/partialsumclaim--a6756f142653283235bec4da.md) | 151 | `declaration-track:a6756f142653283235bec4da0497877fd69c954aa2cfeb840c950974b9816af4` |
| 12 | `def` | [partialSumCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/partialsumcertificate--d2dc2ae890672bcfebba840c.md) | 164 | `declaration-track:d2dc2ae890672bcfebba840ca9c23641d1a683a034c39ac8196c6b1c420b5457` |
| 13 | `def` | [partialSumToken](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/partialsumtoken--59cba4c0c649a1bfceb62bdf.md) | 175 | `declaration-track:59cba4c0c649a1bfceb62bdf15e565dcb376c041c5818efae290929d4c9c8a48` |
| 14 | `theorem` | [partial_sums_through_boundary_calculus](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantae1d8f6fde2dc501eec062de7790447ad6ca39f53b09c4fc4e090c09502b00ad.lean/declarations/partial-sums-through-boundary-calculus--436302eba24ba455d27c0bb6.md) | 187 | `result-track:436302eba24ba455d27c0bb6a9581720320c7a643ee7865559091e88027d4a06` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
