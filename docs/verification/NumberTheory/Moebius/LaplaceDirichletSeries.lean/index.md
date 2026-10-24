# Verification target: GRWTSK.NumberTheory.Moebius.LaplaceDirichletSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bf694380e233e32eeb49979931e72540d598cfbb",
  "lexical_observation_count": 19,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/LaplaceDirichletSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bf694380e233e32eeb49979931e72540d598cfbb`.

Source path: `GRWTSK/NumberTheory/Moebius/LaplaceDirichletSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/LaplaceDirichletSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.FiniteLaplaceSums`](../../../../mathematics/NumberTheory/Moebius/FiniteLaplaceSums.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DiagonalEnergyBounds`](../../../../mathematics/NumberTheory/Moebius/DiagonalEnergyBounds.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Analysis.PSeries` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.MeasureTheory.Integral.DominatedConvergence` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [moebiusLaplaceTerm](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/moebiuslaplaceterm--5497678c0acdfcfe9f87e6aa.md) | 28 | `declaration-track:5497678c0acdfcfe9f87e6aa5d678ca3781fa273bd20180b6b2161a5ad8fd852` |
| 2 | `def` | [atomMajorant](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/atommajorant--cc80449e852fa1cad7e567c4.md) | 31 | `declaration-track:cc80449e852fa1cad7e567c4ecaf4d30c5a5f102dc9caf43cdce715a4b5aeda8` |
| 3 | `theorem` | [response_nonnegative](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/response-nonnegative--12b31f512a1b4a4af800d296.md) | 35 | `result-track:12b31f512a1b4a4af800d296151ca1380a413e3bbe5f70b2a7cd67400f69cefe` |
| 4 | `theorem` | [response_upper](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/response-upper--36619bbdba3a744ba2ed8d26.md) | 51 | `result-track:36619bbdba3a744ba2ed8d262dd59af673a13e6f64e4b02eaf8f45a37fbc6ad2` |
| 5 | `theorem` | [moebius_laplace_term_zero](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/moebius-laplace-term-zero--69b65162aca1e8721835015a.md) | 61 | `result-track:69b65162aca1e8721835015ae25448d590a5369ff3bcee9fbe4963294e25e96a` |
| 6 | `theorem` | [moebius_laplace_term_integrable](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/moebius-laplace-term-integrable--e06970fccab82b739d2c7325.md) | 65 | `result-track:e06970fccab82b739d2c7325356a7765965f7a662be82e45aa71f458050dfe64` |
| 7 | `theorem` | [norm_moebius_laplace_term_le](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/norm-moebius-laplace-term-le--6b76c493e86db21ed9ae6505.md) | 73 | `result-track:6b76c493e86db21ed9ae6505c3063a9670c87db393d5fd22c8cfcdf669acedd7` |
| 8 | `theorem` | [atom_majorant_integrable](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/atom-majorant-integrable--e17a31d6cbe4c8337dc2d1a0.md) | 98 | `result-track:e17a31d6cbe4c8337dc2d1a0096e5910e71237c17c4cc694465df9ba099efb89` |
| 9 | `theorem` | [atom_majorant_integral](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/atom-majorant-integral--99f0d47ca9aa8d0e92ce8825.md) | 106 | `result-track:99f0d47ca9aa8d0e92ce8825f54441a156f09d3fd3733645b1b29dedeaba2999` |
| 10 | `theorem` | [moebius_laplace_hasSum_pickup](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/moebius-laplace-hassum-pickup--e864d805c6ff18d9a8bc7f83.md) | 128 | `result-track:e864d805c6ff18d9a8bc7f8386d5f2ab3c5f71eea4daa74ec56d52bed12b1e3c` |
| 11 | `theorem` | [integrated_norm_moebius_laplace_term_le](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/integrated-norm-moebius-laplace-term-le--5343322aaf72d8b6290cdb46.md) | 149 | `result-track:5343322aaf72d8b6290cdb468cfd068d15c8a1afceb3ca0f2442f2de14e31f6a` |
| 12 | `theorem` | [summable_integrated_norm_moebius_laplace_term](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/summable-integrated-norm-moebius-laplace-term--b4a97831fd4a25b33b4785da.md) | 163 | `result-track:b4a97831fd4a25b33b4785daea632d80e467914ee2944e6d6b2ef7c90d32abf3` |
| 13 | `theorem` | [original_pickup_laplace_integrable](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/original-pickup-laplace-integrable--6e4a4402414281e8d2977f70.md) | 172 | `result-track:6e4a4402414281e8d2977f70776decd4746347df14ab9fa015c815cdf631e0e8` |
| 14 | `theorem` | [original_pickup_laplace_integral_eq_tsum](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/original-pickup-laplace-integral-eq-tsum--81ce19184624f70020e7047c.md) | 202 | `result-track:81ce19184624f70020e7047c319a10c1936c32ce105665b410ffffa7f2e9ae84` |
| 15 | `theorem` | [moebius_laplace_term_integral](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/moebius-laplace-term-integral--3ca3040a9d04a2a18a4c5c47.md) | 213 | `result-track:3ca3040a9d04a2a18a4c5c47050c462945dd1fab3beb7e73e91f54042990785e` |
| 16 | `theorem` | [original_pickup_laplace_integral_eq_LSeries](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/original-pickup-laplace-integral-eq-lseries--5fa9b0c7015fe9af8614d2e6.md) | 225 | `result-track:5fa9b0c7015fe9af8614d2e662f222d244c5276601ce920713eb6547496f94fe` |
| 17 | `theorem` | [native_moebius_complex_coefficient](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/native-moebius-complex-coefficient--283acfa924da90c29f3a0785.md) | 235 | `result-track:283acfa924da90c29f3a07856b7e390938650a9b25f99a5bd0bf574522b3f5db` |
| 18 | `theorem` | [native_moebius_series_zeta_identity](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/native-moebius-series-zeta-identity--cc69add1da4d55a9b7440ed9.md) | 240 | `result-track:cc69add1da4d55a9b7440ed9fd914111d113a63e8eab33890192aa3eb6bf0784` |
| 19 | `theorem` | [original_pickup_laplace_zeta_identity](../../../../mathematics/NumberTheory/Moebius/LaplaceDirichletSeries.lean/declarations/original-pickup-laplace-zeta-identity--4b8cee70889f4eae95fbfed1.md) | 247 | `result-track:4b8cee70889f4eae95fbfed1e1fcbc2a0ce5f379116c78f9e7001af55e1188e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
