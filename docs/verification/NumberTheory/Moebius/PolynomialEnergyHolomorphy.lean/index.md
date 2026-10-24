# Verification target: GRWTSK.NumberTheory.Moebius.PolynomialEnergyHolomorphy

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6693f419c965ddcb0897cc2105bd09d2797045e0",
  "lexical_observation_count": 3,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6693f419c965ddcb0897cc2105bd09d2797045e0`.

Source path: `GRWTSK/NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.Analysis.LaplaceTransform.PolynomialEnergyHolomorphy`](../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/PolynomialEnergyHolomorphy.lean/index.md) — import line 4; pinned internal source present.
- [`GRWTSK.Analysis.MeasureTheory.Integral.MoebiusCumulativeEnergy`](../../../../mathematics/Analysis/MeasureTheory/Integral/MoebiusCumulativeEnergy__SourceOccurrencee32c2e81dea22246d206ba45.lean/index.md) — import line 5; pinned internal source present.
- [`GRWTSK.NumberTheory.Zeta.ReciprocalHolomorphyZeroSymmetry`](../../../../mathematics/NumberTheory/Zeta/ReciprocalHolomorphyZeroSymmetry.lean/index.md) — import line 6; pinned internal source present.
- [`GRWTSK.Analysis.LaplaceTransform.MoebiusResponseFormula`](../../../../mathematics/Analysis/IntegralTransforms/ClassicalTransforms/LaplaceTransform/MoebiusResponseFormula.lean/index.md) — import line 7; pinned internal source present.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [polynomial_energy_laplace_return](../../../../mathematics/NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean/declarations/polynomial-energy-laplace-return--036953127f81beb8ff00e94b.md) | 16 | `result-track:036953127f81beb8ff00e94b67ba59c9631a196e3659939e6394f0bcc683515f` |
| 2 | `theorem` | [pickup_initial_identity](../../../../mathematics/NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean/declarations/pickup-initial-identity--e3d5a3347f4578452c41e604.md) | 29 | `result-track:e3d5a3347f4578452c41e604efb7b515ae1488ff21149302150ff60dbbd5ab2f` |
| 3 | `theorem` | [literal_RH_of_P04](../../../../mathematics/NumberTheory/Moebius/PolynomialEnergyHolomorphy.lean/declarations/literal-rh-of-p04--a8ebbfcda5c67de55437575e.md) | 34 | `result-track:a8ebbfcda5c67de55437575ea37d1db1de2f1e90159c4a4667c37e95e9c12966` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
