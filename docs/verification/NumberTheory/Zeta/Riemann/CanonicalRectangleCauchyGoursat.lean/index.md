# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCauchyGoursat

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "08f48b61a89c972ab33306c673fb78b753012bd5",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `08f48b61a89c972ab33306c673fb78b753012bd5`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CanonicalRectangleCountIsolation`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCountIsolation.lean/index.md) — import line 4; pinned internal source present.
- `Mathlib.Analysis.Complex.CauchyIntegral` — import line 5; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [rectangleBoundaryIntegral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/declarations/rectangleboundaryintegral--171bf1cf837326f712cf3b65.md) | 37 | `declaration-track:171bf1cf837326f712cf3b65ea005e576f21fef6900d9accb5b3c987f5bcc4d2` |
| 2 | `def` | [closedRectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/declarations/closedrectangle--fe5d7a8f8aa5ae5ebc0ceb7d.md) | 45 | `declaration-track:fe5d7a8f8aa5ae5ebc0ceb7dc1f539fa0861af222e1e1d5935e0f69324b8ae1b` |
| 3 | `def` | [openRectangle](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/declarations/openrectangle--6ac3b351a7a9f7ecedd14910.md) | 49 | `declaration-track:6ac3b351a7a9f7ecedd14910edc60241ce63d21886d19aef5c34f24ea5056cf9` |
| 4 | `theorem` | [rectangleLogDerivativeIntegral_eq_boundaryIntegral](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/declarations/rectanglelogderivativeintegral-eq-boundaryintegral--b48b87685c8e38132a9c7994.md) | 57 | `result-track:b48b87685c8e38132a9c79945dcbebe91b39e3a6e328e24d8a16f1fa89d4a892` |
| 5 | `theorem` | [rectangleBoundaryIntegral_eq_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/declarations/rectangleboundaryintegral-eq-zero--f01c466a12ee17a41fa500b6.md) | 68 | `result-track:f01c466a12ee17a41fa500b6f93b656b1bd18d26007d3935719574c50cb150a6` |
| 6 | `theorem` | [rectangleBoundaryIntegral_eq_zero_of_analyticOnNhd](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/declarations/rectangleboundaryintegral-eq-zero-of-analyticonnhd--98c20ef978a98bd1e6e051a2.md) | 84 | `result-track:98c20ef978a98bd1e6e051a2dae2441fa18b3de6648f41c99f37afde2feb8d68` |
| 7 | `theorem` | [rectangleBoundaryIntegral_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CanonicalRectangleCauchyGoursat.lean/declarations/rectangleboundaryintegral-zero--771f2a1c754249e14e87fdd5.md) | 93 | `result-track:771f2a1c754249e14e87fdd520856ba534c3016339e81e07e7f7b04fa6cb6b62` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
