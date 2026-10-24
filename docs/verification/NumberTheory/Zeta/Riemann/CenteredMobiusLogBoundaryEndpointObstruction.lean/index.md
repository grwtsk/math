# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryEndpointObstruction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "4a04deffabb8b79644833d1ca8fbd30e91a8239b",
  "lexical_observation_count": 9,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `4a04deffabb8b79644833d1ca8fbd30e91a8239b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryStrength`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryStrength.lean/index.md) — import line 6; pinned internal source present.
- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [dyadicTotalReadout](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/declarations/dyadictotalreadout--756e39116cd406c07b1ece57.md) | 15 | `declaration-track:756e39116cd406c07b1ece5770afdf32ebdd4e69b10245df338232cac03d1082` |
| 2 | `def` | [dyadicHarmonicReadout](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/declarations/dyadicharmonicreadout--083881992b89250e772afb03.md) | 18 | `declaration-track:083881992b89250e772afb0397cfe80e3b54ec640a509170aa840c04a2a88a8a` |
| 3 | `def` | [dyadicZeroTotalPerturbation](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/declarations/dyadiczerototalperturbation--077f9a0c0c664c3f585a3eec.md) | 22 | `declaration-track:077f9a0c0c664c3f585a3eecdd0cca84cde950fa9ff8c4eef7a8122f01b9757a` |
| 4 | `theorem` | [dyadicZeroTotalPerturbation_total_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/declarations/dyadiczerototalperturbation-total-zero--ac3d1fb69a6a823f838f82d0.md) | 28 | `result-track:ac3d1fb69a6a823f838f82d080854b87983e93ffefb7ac43b535e7e5ee59626d` |
| 5 | `theorem` | [dyadicZeroTotalPerturbation_harmonic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/declarations/dyadiczerototalperturbation-harmonic--e1996beec4991ed55d1abf9d.md) | 43 | `result-track:e1996beec4991ed55d1abf9d43c726ed8ef73d820ddde94ee88479b6f3739127` |
| 6 | `theorem` | [dyadicZeroTotalPerturbation_harmonic_ne_zero](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/declarations/dyadiczerototalperturbation-harmonic-ne-zero--1df4d12fcb050d90a89f0e74.md) | 55 | `result-track:1df4d12fcb050d90a89f0e747c106b59e50695a2501e94e6b9f2260904bffc5f` |
| 7 | `theorem` | [dyadic_total_does_not_determine_harmonic](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/declarations/dyadic-total-does-not-determine-harmonic--29b2e3a4391fddb906f2888f.md) | 67 | `result-track:29b2e3a4391fddb906f2888fbd0c82d193c55dfb908935b6677e3d4c51b0417c` |
| 8 | `def` | [centeredGreenDyadicPrefixMangoldtError](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/declarations/centeredgreendyadicprefixmangoldterror--e1f0115102847558bdba1773.md) | 81 | `declaration-track:e1f0115102847558bdba1773027c793dba36e5e93143a08eeeab2611ad9b0854` |
| 9 | `def` | [AllDyadicPrefixMangoldtSquareRootPlusEpsilonBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/declarations/alldyadicprefixmangoldtsquarerootplusepsilonbound--c90b455fdcd6b430fe9ec40f.md) | 87 | `declaration-track:c90b455fdcd6b430fe9ec40fac11d5fa52e41e768fa471546066b56442178929` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
