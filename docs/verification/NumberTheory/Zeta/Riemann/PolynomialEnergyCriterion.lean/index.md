# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "11eca8932f04899eb6402ce03f61de1d418fa70b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `11eca8932f04899eb6402ce03f61de1d418fa70b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Moebius.GramDiagonalBound`](../../../../../mathematics/NumberTheory/Moebius/GramDiagonalBound.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.DirichletLaplaceIdentity`](../../../../../mathematics/NumberTheory/Moebius/DirichletLaplaceIdentity.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Moebius.LaplaceHolomorphy`](../../../../../mathematics/NumberTheory/Moebius/LaplaceHolomorphy.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.Riemann.LaplaceCriterion`](../../../../../mathematics/NumberTheory/Zeta/Riemann/LaplaceCriterion.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pickupCrossPoly_iff_pickupEnergyPoly](../../../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/declarations/pickupcrosspoly-iff-pickupenergypoly--545619476db60348baf3ad9b.md) | 25 | `result-track:545619476db60348baf3ad9b7962c809ab9173d71edabc277544fa29437b9ebd` |
| 2 | `theorem` | [pickup_initial_transform_identity](../../../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/declarations/pickup-initial-transform-identity--1192e801364e5f8f54722c9f.md) | 30 | `result-track:1192e801364e5f8f54722c9f953487580ac8bf64ca0eb2c6f90d87536d36d488` |
| 3 | `theorem` | [pickup_energy_poly_signed_laplace_holomorphic](../../../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/declarations/pickup-energy-poly-signed-laplace-holomorphic--dff2d606240576810f6280d2.md) | 36 | `result-track:dff2d606240576810f6280d29f53270105b813649aac5047216f6a181848163f` |
| 4 | `theorem` | [riemannHypothesis_of_pickupEnergyPoly](../../../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/declarations/riemannhypothesis-of-pickupenergypoly--1d6b4f8f07241d239d7541ee.md) | 41 | `result-track:1d6b4f8f07241d239d7541ee06071a45fa136f87fb72691621273eff3f93c533` |
| 5 | `theorem` | [riemannHypothesis_of_pickupCrossPoly](../../../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/declarations/riemannhypothesis-of-pickupcrosspoly--ad595d4640f599359d025c0c.md) | 47 | `result-track:ad595d4640f599359d025c0cc448c0af5d00b590b29fc5a7878ac674e7b35b29` |
| 6 | `theorem` | [pickupCross_lower](../../../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/declarations/pickupcross-lower--82cb809602174f75fd56fe8d.md) | 52 | `result-track:82cb809602174f75fd56fe8dd0ac74a54ba657e8a3eea828f1afb3503b2050fa` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
