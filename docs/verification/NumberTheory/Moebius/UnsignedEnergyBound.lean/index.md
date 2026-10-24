# Verification target: GRWTSK.NumberTheory.Moebius.UnsignedEnergyBound

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d37ae70ed8afc41273ce756de212688c0be90576",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Moebius/UnsignedEnergyBound.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/NumberTheory/Moebius/UnsignedEnergyBound.lean/index.md) · [Full source](../../../../mathematics/NumberTheory/Moebius/UnsignedEnergyBound.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d37ae70ed8afc41273ce756de212688c0be90576`.

Source path: `GRWTSK/NumberTheory/Moebius/UnsignedEnergyBound.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Moebius/UnsignedEnergyBound.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.PolynomialEnergyCriterion`](../../../../mathematics/NumberTheory/Zeta/Riemann/PolynomialEnergyCriterion.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Algebra.Order.Chebyshev` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [pickupEnergy_le_count_mul_diagonal](../../../../mathematics/NumberTheory/Moebius/UnsignedEnergyBound.lean/declarations/pickupenergy-le-count-mul-diagonal--1c1b8ea297f26c872fba209c.md) | 21 | `result-track:1c1b8ea297f26c872fba209c3bebef19817ac57ce0d02f9cd18558a1e3a62f75` |
| 2 | `theorem` | [pickupEnergy_exponential_allowance](../../../../mathematics/NumberTheory/Moebius/UnsignedEnergyBound.lean/declarations/pickupenergy-exponential-allowance--65ed8ecca1e3167296cb4ba6.md) | 44 | `result-track:65ed8ecca1e3167296cb4ba6b1022ccb864288140e3d3c19ac5011123c42e07d` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
