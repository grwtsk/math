# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenPolarizedReadout

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "37f98d21c77c6a9f8fa8e2ea26f3af5c9c13f8a3",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `37f98d21c77c6a9f8fa8e2ea26f3af5c9c13f8a3`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.DyadicGreenFourierActionFrame`](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenFourierActionFrame.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Fourier.AddCircle` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [hasSum_prod_fourierCoeff_unitCircle](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/hassum-prod-fouriercoeff-unitcircle--9460855a4f8d69dc491239a3.md) | 42 | `result-track:9460855a4f8d69dc491239a312ff82d32b4d50945205db7d69edeed9a9de06e4` |
| 2 | `theorem` | [hasSum_prod_fourierCoeffOn_unit](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/hassum-prod-fouriercoeffon-unit--5ccff49be2ce1dae88673c2d.md) | 57 | `result-track:5ccff49be2ce1dae88673c2d3ec4e22aa88ea3af6e3511278180d1745ed7274c` |
| 3 | `theorem` | [complexTestSlope_memLp_Ioc](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/complextestslope-memlp-ioc--433fa7f14e3aa83f1a2e790d.md) | 85 | `result-track:433fa7f14e3aa83f1a2e790d4349c141a3075d239ab5104a855f7d1078ef2f0b` |
| 4 | `def` | [complexTestSlopeFourierCoeff](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/complextestslopefouriercoeff--54e9bd65fe7e1e78d787c4cf.md) | 117 | `declaration-track:54e9bd65fe7e1e78d787c4cf24539c9080269a0eaa5b59224e0003458fa0c300` |
| 5 | `def` | [greenPolarizedFourierTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/greenpolarizedfourierterm--59dddeab55a7b6ec888f4b5d.md) | 122 | `declaration-track:59dddeab55a7b6ec888f4b5d74e20ae324e6f2fe0b15df607655e8e8c7ab68e6` |
| 6 | `theorem` | [greenPolarizedFourierTerm_hasSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/greenpolarizedfourierterm-hassum--f02abf62ece55530297efd69.md) | 128 | `result-track:f02abf62ece55530297efd69513f6ec07b194d7fdc16a28d2120043614fca5a6` |
| 7 | `def` | [greenPolarizedFourierShell](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/greenpolarizedfouriershell--e3fdcea5224fcf800aa75e3b.md) | 147 | `declaration-track:e3fdcea5224fcf800aa75e3bdbd763d9225bb05ce3ba717d0617dcbba8891fce` |
| 8 | `theorem` | [greenPolarizedFourierShell_hasSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/greenpolarizedfouriershell-hassum--ba3f0e095c0550b2235ce0de.md) | 152 | `result-track:ba3f0e095c0550b2235ce0dee9d0f0cd8367bab95c2eaa58225a369aa9f4b3d4` |
| 9 | `def` | [greenPolarizedFourierHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/greenpolarizedfourierhead--f54c4fc970b5e2b1b5789eac.md) | 162 | `declaration-track:f54c4fc970b5e2b1b5789eac99e6fdb732dfa0cff94e6ef5ab40d52fcb9d7950` |
| 10 | `theorem` | [greenPolarizedFourierHead_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/greenpolarizedfourierhead-tendsto--fb5150db0065d15814a24c96.md) | 166 | `result-track:fb5150db0065d15814a24c96e7a3999404bcb5c7834a4dd1fa9a2d99a7d0e98a` |
| 11 | `def` | [complexTestEndpointReadout](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/complextestendpointreadout--1ba7c2fb37428b25e8c7f2b5.md) | 176 | `declaration-track:1ba7c2fb37428b25e8c7f2b5fe2ed797878de6163b96cca836e8872d0232466e` |
| 12 | `def` | [fourierReconstructedActionHead](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/fourierreconstructedactionhead--f6694daab064248c87594bc9.md) | 182 | `declaration-track:f6694daab064248c87594bc9a8f281192378bed5eaa0b32149a93d43aaa3f408` |
| 13 | `theorem` | [fourierReconstructedActionHead_tendsto](../../../../../mathematics/NumberTheory/Zeta/Riemann/DyadicGreenPolarizedReadout.lean/declarations/fourierreconstructedactionhead-tendsto--46f0d00e8e57e2b4df6c3a80.md) | 189 | `result-track:46f0d00e8e57e2b4df6c3a80f2da66766a33bba16c8c697d96c4c3398b8318ab` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
