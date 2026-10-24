# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerFirstMomentCorrection

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4057a71b4614ee62806063bbc945c6c2a81f2426",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4057a71b4614ee62806063bbc945c6c2a81f2426`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.QuadraticThetaPrimeFejerPeriodCorrection`](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerPeriodCorrection.lean/index.md) — import line 3; pinned internal source present.
- `Mathlib.NumberTheory.Harmonic.Bounds` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nonAliasingFejerFirstMomentBudget](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean/declarations/nonaliasingfejerfirstmomentbudget--7955511e083aea6795defb60.md) | 16 | `declaration-track:7955511e083aea6795defb602aa5be05719f068b99ea4b83264dfdce9d846411` |
| 2 | `def` | [NonAliasingPrimePrefixFejerFirstMomentComparison](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean/declarations/nonaliasingprimeprefixfejerfirstmomentcomparison--03cbdbe373e47e3f73c0c118.md) | 26 | `declaration-track:03cbdbe373e47e3f73c0c11825fdaf239dd9143a6fe81dbbe8a996c0031a4767` |
| 3 | `theorem` | [distance_mul_sampledTriangularKernelAtOctavePeriod_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean/declarations/distance-mul-sampledtriangularkernelatoctaveperiod-le--604ec18b9a5a0cb969150966.md) | 34 | `result-track:604ec18b9a5a0cb9691509669a784976ff5f53e11c5b8c250138ade0b17d3605` |
| 4 | `def` | [NonAliasingFejerFirstMomentHarmonicBoundClaim](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean/declarations/nonaliasingfejerfirstmomentharmonicboundclaim--5cd77cf51960e4c8e7286e25.md) | 63 | `declaration-track:5cd77cf51960e4c8e7286e25569f080f8d0801f3489d41971433cf5c4c43e72a` |
| 5 | `structure` | [NonAliasingFejerFirstMomentAccepted](../../../../../mathematics/NumberTheory/Zeta/Riemann/QuadraticThetaPrimeFejerFirstMomentCorrection.lean/declarations/nonaliasingfejerfirstmomentaccepted--913d872ed1ce276fa4fcd6cd.md) | 75 | `declaration-track:913d872ed1ce276fa4fcd6cdbfe5590b9ba792b52030dcb2be6a140188c5ff56` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
