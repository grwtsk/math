# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenMinimalParseval

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "87579161bddfecaab29ddaf33bfa902941b1c0f4",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMinimalParseval.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMinimalParseval.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMinimalParseval.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `87579161bddfecaab29ddaf33bfa902941b1c0f4`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMinimalParseval.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMinimalParseval.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogHistoricalDyadicEnergy`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogHistoricalDyadicEnergy.lean/index.md) — import line 8; pinned internal source present.
- `Mathlib.Analysis.Fourier.AddCircle` — import line 9; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 10; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [thinHistoricalGreenResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMinimalParseval.lean/declarations/thinhistoricalgreenresidual--c2da0cf71dcb22cf370469c5.md) | 21 | `declaration-track:c2da0cf71dcb22cf370469c5e254ac3a46195209983a2ddb2468a19ae5d3cde3` |
| 2 | `def` | [thinHistoricalGreenFourierCoeff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMinimalParseval.lean/declarations/thinhistoricalgreenfouriercoeff--a2c6209327b63c006a06d86e.md) | 24 | `declaration-track:a2c6209327b63c006a06d86e8cf6c30a746a2be2ab933dc0c08125c494e879ea` |
| 3 | `theorem` | [thinHistoricalGreenResidual_interval_norm_sq](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMinimalParseval.lean/declarations/thinhistoricalgreenresidual-interval-norm-sq--ac7d36dd983ff75dec8b80fc.md) | 29 | `result-track:ac7d36dd983ff75dec8b80fc2af302be7ddbb4e79ed75d62bee0228b64dbfc02` |
| 4 | `theorem` | [thinHistoricalGreenFourier_parseval_hasSum](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMinimalParseval.lean/declarations/thinhistoricalgreenfourier-parseval-hassum--7fcd6e439073996bd847358b.md) | 39 | `result-track:7fcd6e439073996bd847358bbaa0aad389c203d7490a409e83aff0668ec642c3` |
| 5 | `theorem` | [thinGreenEnergy_eq_greenEnergy_of_coeff](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenMinimalParseval.lean/declarations/thingreenenergy-eq-greenenergy-of-coeff--480185664e149922112a75ee.md) | 55 | `result-track:480185664e149922112a75eef9d2aed089f6c3136675a722a99a484e872d0837` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
