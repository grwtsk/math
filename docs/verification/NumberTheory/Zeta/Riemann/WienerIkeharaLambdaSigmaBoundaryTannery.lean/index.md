# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaSigmaBoundaryTannery

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2bbb6efef7e9364f21b79e43b2aef3f171de7946",
  "lexical_observation_count": 10,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2bbb6efef7e9364f21b79e43b2aef3f171de7946`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.WienerIkeharaLambdaLogKernelUniformBound`](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaLogKernelUniformBound.lean/index.md) — import line 12; pinned internal source present.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Fourier` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Distribution.SchwartzSpace.Basic` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.Tannery` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.NumberTheory.LSeries.Basic` — import line 16; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 17; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [wienerSigmaFourierTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/declarations/wienersigmafourierterm--d0d96d560b628240c483e114.md) | 71 | `declaration-track:d0d96d560b628240c483e11441ac3804f1c7225d49bfea71b0553fb18429f210` |
| 2 | `theorem` | [wienerSigma_LSeriesTerm_tendsto_one](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/declarations/wienersigma-lseriesterm-tendsto-one--06cccab44a4e3641e8a27916.md) | 79 | `result-track:06cccab44a4e3641e8a2791600111028722b02ee00ae8249b451127fc832bd30` |
| 3 | `theorem` | [wienerSigma_SchwartzFourier_decay](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/declarations/wienersigma-schwartzfourier-decay--02cc80b56382c80bf39db719.md) | 115 | `result-track:02cc80b56382c80bf39db719a8e62f3c417f9417dbef9d18aec1bd7377cc3435` |
| 4 | `theorem` | [wienerSigma_normTerm_one_eq_kernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/declarations/wienersigma-normterm-one-eq-kernel--7b71bf88e18b511b473f2f66.md) | 143 | `result-track:7b71bf88e18b511b473f2f66da5b78a9d7d52e0847af00ddd5aae3289369f31c` |
| 5 | `theorem` | [wienerSigma_normTerm_le_kernel](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/declarations/wienersigma-normterm-le-kernel--9c54fc5a17a7b88b29edd835.md) | 168 | `result-track:9c54fc5a17a7b88b29edd835d6336c50fc4e0dac892aa160b2e5c25143b0418a` |
| 6 | `theorem` | [wienerSigmaFourierTerm_norm_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/declarations/wienersigmafourierterm-norm-le--8e4f57724c962e69a662fb90.md) | 192 | `result-track:8e4f57724c962e69a662fb9021c4800481e5d019f8b252734a52340cdcad7a08` |
| 7 | `def` | [wienerSigmaBoundaryFourierTerm](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/declarations/wienersigmaboundaryfourierterm--b9057290629fe0d0d1ab5914.md) | 224 | `declaration-track:b9057290629fe0d0d1ab59149514b1670bee7f84c28125b8d389965f72df96e6` |
| 8 | `theorem` | [wienerSigmaTerm_one_eq_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/declarations/wienersigmaterm-one-eq-boundary--a31ac1b75b82b928d9bf68d5.md) | 232 | `result-track:a31ac1b75b82b928d9bf68d5f6d3551c20bf3b4c4eadb76ded0d26884fb84b1b` |
| 9 | `theorem` | [wienerSigmaFourier_tendsto_boundary](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/declarations/wienersigmafourier-tendsto-boundary--4fec22c6f81d86e7b897fda7.md) | 250 | `result-track:4fec22c6f81d86e7b897fda733fe4e62ef45001e2c1d3f39eb5e2b6a55ebc07b` |
| 10 | `theorem` | [wienerSigmaFourier_uniform_norm_tsum](../../../../../mathematics/NumberTheory/Zeta/Riemann/WienerIkeharaLambdaSigmaBoundaryTannery.lean/declarations/wienersigmafourier-uniform-norm-tsum--bdccbc911c697c35470d9199.md) | 289 | `result-track:bdccbc911c697c35470d9199e5afe000def5d6534b90192f85c664260dd64236` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
