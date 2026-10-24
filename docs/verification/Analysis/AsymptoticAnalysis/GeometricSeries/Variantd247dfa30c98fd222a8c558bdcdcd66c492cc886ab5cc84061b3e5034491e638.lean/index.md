# Verification target: GRWTSK.Analysis.AsymptoticAnalysis.GeometricSeries.Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6cbffb79e807abb3ae8f04dacfd6b59304da4a69",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/index.md) · [Full source](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6cbffb79e807abb3ae8f04dacfd6b59304da4a69`.

Source path: `GRWTSK/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `AnalyticNumber.Mathlib.Certificate` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [complex_geometric_series_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/complex-geometric-series-summable--a199494b513917f59f64482f.md) | 37 | `result-track:a199494b513917f59f64482f561c367a907b450887e48012564e82e072fe68fc` |
| 2 | `theorem` | [complex_geometric_series_abs_summable](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/complex-geometric-series-abs-summable--fceba2cc33b509badf6bda2f.md) | 44 | `result-track:fceba2cc33b509badf6bda2f161eab46fead0b7c6cb46293dc0b744d72b4670a` |
| 3 | `theorem` | [complex_geometric_series_hasSum](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/complex-geometric-series-hassum--a7529cfbd357883ad14eec72.md) | 51 | `result-track:a7529cfbd357883ad14eec723cbe5f38855eb927094c0949639a665e822e3089` |
| 4 | `theorem` | [one_sub_inv_analyticAt](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/one-sub-inv-analyticat--715d998a8be990ad355f6b64.md) | 60 | `result-track:715d998a8be990ad355f6b6456021f2263e542e02953b16614160003ba4b6131` |
| 5 | `theorem` | [one_sub_inv_analyticOn_unitBall](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/one-sub-inv-analyticon-unitball--43732886c6eb5a733933b28f.md) | 75 | `result-track:43732886c6eb5a733933b28f76abfe3ba694d1efd36865fb514ee77ed3fc75b9` |
| 6 | `def` | [geometricSeriesContext](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/geometricseriescontext--8733c85bf45f771b8daa50f4.md) | 84 | `declaration-track:8733c85bf45f771b8daa50f4627d5149f865e323afc8bde5e3ec34960c5661d1` |
| 7 | `def` | [geometricSeriesClaim](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/geometricseriesclaim--5fe29f316038f7d1a10570b7.md) | 91 | `declaration-track:5fe29f316038f7d1a10570b7eef8794b87d07ff6c1ceaafc54ecd3872274f76f` |
| 8 | `def` | [geometricSeriesMathlibProofCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/geometricseriesmathlibproofcertificate--e876ca2e93ae2d09ef32da6c.md) | 106 | `declaration-track:e876ca2e93ae2d09ef32da6cfd5b2414c40c3ea4a96ce765c460fbfdfcbe680a` |
| 9 | `def` | [geometricSeriesAnalyticCertificate](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/geometricseriesanalyticcertificate--177680e6a8fdc88c112b8c49.md) | 124 | `declaration-track:177680e6a8fdc88c112b8c49e279dd979eec1081311115c287da35af1b67318a` |
| 10 | `def` | [geometricSeriesAnalyticToken](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/geometricseriesanalytictoken--f4577cdb974bf1e24ed03fe2.md) | 130 | `declaration-track:f4577cdb974bf1e24ed03fe205c838f1ee03e891a8007f9cff480bdd97a3d686` |
| 11 | `theorem` | [geometric_series_mathlib_certificate_sound](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/geometric-series-mathlib-certificate-sound--3d10588246021365083a2517.md) | 139 | `result-track:3d10588246021365083a2517c5ceff805f977e8a3d10da4d71250569711c2557` |
| 12 | `theorem` | [geometric_series_through_boundary_calculus](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/geometric-series-through-boundary-calculus--67b5903a891427e90b7aee7f.md) | 151 | `result-track:67b5903a891427e90b7aee7f25dd35845ec02ca956151a33d05d2ef21b5be7a0` |
| 13 | `theorem` | [geometric_series_no_direct_crossing](../../../../../mathematics/Analysis/AsymptoticAnalysis/GeometricSeries/Variantd247dfa30c98fd222a8c558bdcdcd66c492cc886ab5cc84061b3e5034491e638.lean/declarations/geometric-series-no-direct-crossing--0cfb4d9b485678a5bccfefb6.md) | 162 | `result-track:0cfb4d9b485678a5bccfefb69d3b16fa33631f72f4cc68ce0f05ba981866e5ec` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
