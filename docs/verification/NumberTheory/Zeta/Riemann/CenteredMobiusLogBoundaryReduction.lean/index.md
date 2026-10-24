# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b7cbf1035876b00c548102d527a81e126789da1d",
  "lexical_observation_count": 7,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b7cbf1035876b00c548102d527a81e126789da1d`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenSupplierComposition`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenSupplierComposition.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredGreenDyadicMangoldtMass](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/declarations/centeredgreendyadicmangoldtmass--5ff8c1991b35083827630aac.md) | 15 | `declaration-track:5ff8c1991b35083827630aac4b47e94d6f21f05201c06687218fca7b87aabfd8` |
| 2 | `def` | [centeredGreenDyadicMangoldtNormalizedDiscrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/declarations/centeredgreendyadicmangoldtnormalizeddiscrepancy--64f875e8dd2887331c0a8edd.md) | 19 | `declaration-track:64f875e8dd2887331c0a8edd053a12cbe9611db90723e2ef708a833735be6943` |
| 3 | `theorem` | [mass0_eq_harmonic_mangoldt_discrepancy](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/declarations/mass0-eq-harmonic-mangoldt-discrepancy--80f6bc341795740cd940b745.md) | 23 | `result-track:80f6bc341795740cd940b7450a51b2d0f7bebaf7eb0d66c51e70315137ee8a04` |
| 4 | `theorem` | [mass1_eq_normalized_mangoldt_sub_mass0](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/declarations/mass1-eq-normalized-mangoldt-sub-mass0--63fd6be5acb566491c6b7c56.md) | 31 | `result-track:63fd6be5acb566491c6b7c5651158ff9739b81977d7c5c85a98c59b5ee58a395` |
| 5 | `theorem` | [mass1_sq_le_two_discrepancies](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/declarations/mass1-sq-le-two-discrepancies--94518eb55fe4703b8b694adc.md) | 63 | `result-track:94518eb55fe4703b8b694adc793f8e451b04ea25d4f27d802380c088bbdcf2d5` |
| 6 | `def` | [AllDyadicNormalizedMangoldtDiscrepancySquareBound](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/declarations/alldyadicnormalizedmangoldtdiscrepancysquarebound--378d7e2004e9d7e7dd79430d.md) | 74 | `declaration-track:378d7e2004e9d7e7dd79430d21a89cd2e3e66a56def427ccf53f0e26a2a0ee7d` |
| 7 | `theorem` | [allDyadicMass1Bound_of_mass0_and_normalizedMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryReduction.lean/declarations/alldyadicmass1bound-of-mass0-and-normalizedmangoldt--8419f91fa1353dd29a405312.md) | 78 | `result-track:8419f91fa1353dd29a4053122979abc849b1f451cc9f5995ebc2066c45fff8a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
