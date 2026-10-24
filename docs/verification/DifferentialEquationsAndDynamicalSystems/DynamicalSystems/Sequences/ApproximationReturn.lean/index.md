# Verification target: GRWTSK.DynamicalSystems.Sequences.ApproximationReturn

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "728e4258f184eef7e2279e09e3c56759fa9e8888",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/DynamicalSystems/Sequences/ApproximationReturn.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/index.md) · [Full source](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `728e4258f184eef7e2279e09e3c56759fa9e8888`.

Source path: `GRWTSK/DynamicalSystems/Sequences/ApproximationReturn.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/DynamicalSystems/Sequences/ApproximationReturn.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.ContinuedFractions.ScheduledDenominators`](../../../../../mathematics/NumberTheory/ElementaryNumberTheory/ContinuedFractions/ScheduledDenominators.lean/index.md) — import line 1; pinned internal source present.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 2; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PolynomialBound](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/polynomialbound--1df8d654496e4d93fb1f9579.md) | 29 | `declaration-track:1df8d654496e4d93fb1f95794ec67534976fe93c4010f3a7fe75971aa8854642` |
| 2 | `def` | [IdentifiesWithLoss](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/identifieswithloss--e0e1952a6077fc4e1fb399c4.md) | 33 | `declaration-track:e0e1952a6077fc4e1fb399c4d5a153b5b0aced7fd893412115de33b3abaf3224` |
| 3 | `theorem` | [polynomial_return](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/polynomial-return--7ec465e9528968a24111bbb0.md) | 38 | `result-track:7ec465e9528968a24111bbb0affc492f375d4c2187ebb9ab7e93b565246a1354` |
| 4 | `def` | [ArithmeticRoute](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/arithmeticroute--fca4e75410345a813e1991f8.md) | 61 | `declaration-track:fca4e75410345a813e1991f871b816efd3ab134cfc08a9402b8bdf2be8969fe6` |
| 5 | `theorem` | [arithmetic_route_return](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/arithmetic-route-return--6437ffe4e42da807cf5c1217.md) | 69 | `result-track:6437ffe4e42da807cf5c12175990d9c9864279b75537bdd2c7881c900223b3f6` |
| 6 | `def` | [intervalLoss](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/intervalloss--5aeb598776d1cfe8118fc9db.md) | 76 | `declaration-track:5aeb598776d1cfe8118fc9db7e8aed76f260fb399fec95b087f1ba91a9aa8028` |
| 7 | `def` | [finiteSizeLoss](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/finitesizeloss--f0bc81f594c339f98043f825.md) | 80 | `declaration-track:f0bc81f594c339f98043f825cacc54d59861d4dd47a4f9f851ab1ef89818d225` |
| 8 | `def` | [ApproximationCertificate](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/approximationcertificate--dd449ecd791eff2b6bbda88c.md) | 83 | `declaration-track:dd449ecd791eff2b6bbda88c546f204029e7795897fe3fb6b22d76384957f86d` |
| 9 | `theorem` | [finiteSizeLoss_pos](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/finitesizeloss-pos--fa74398de8d5d0ca9f0eeffc.md) | 87 | `result-track:fa74398de8d5d0ca9f0eeffc9b1347659e14998006c730f3ae6b15e495bac9d3` |
| 10 | `theorem` | [equal_frequency_intervalLoss](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/equal-frequency-intervalloss--038019e8c836d36422ad4d17.md) | 91 | `result-track:038019e8c836d36422ad4d171f482ae012ede01937d4ae0cd33f3c5c97aeb25d` |
| 11 | `theorem` | [intervalLoss_nonneg](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/intervalloss-nonneg--d5c257ae197d9237cc98a960.md) | 96 | `result-track:d5c257ae197d9237cc98a96057f8eecc5b0b1f18eb14d2dfb80b72c40c82fb87` |
| 12 | `theorem` | [approximation_return](../../../../../mathematics/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Sequences/ApproximationReturn.lean/declarations/approximation-return--156d76be3c46d230d0bb57c0.md) | 103 | `result-track:156d76be3c46d230d0bb57c0261150d6ad18e561e788346c46fe5402f5cb0c09` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
