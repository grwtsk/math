# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogTwoSupplierReduction

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c7b3d5df5863ebe81bccb9a7475d35d87636bb8b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c7b3d5df5863ebe81bccb9a7475d35d87636bb8b`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryPrefixSupplier`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryPrefixSupplier.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [prefixMangoldtError_two_mul_eq_raw](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean/declarations/prefixmangoldterror-two-mul-eq-raw--4258d034b5e45a844188c780.md) | 15 | `result-track:4258d034b5e45a844188c7802badcff00c38c586e0a20168d7d6a4d3ff13c7a5` |
| 2 | `theorem` | [allDyadicRawMangoldt_of_prefixMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean/declarations/alldyadicrawmangoldt-of-prefixmangoldt--2223889a5bafa13b75d1de85.md) | 25 | `result-track:2223889a5bafa13b75d1de85fd78b77e128d2319960f9bafac87ee2551499f43` |
| 3 | `theorem` | [allDyadicNormalizedMangoldt_of_prefixMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean/declarations/alldyadicnormalizedmangoldt-of-prefixmangoldt--a77f90ab46a4ac939b532470.md) | 40 | `result-track:a77f90ab46a4ac939b532470b86799bd93ed5e6c09301705eb16e8b010910eb6` |
| 4 | `theorem` | [allDyadicBoundaryBounds_of_prefixMangoldt](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean/declarations/alldyadicboundarybounds-of-prefixmangoldt--603fd7bccf43f002a6b25b88.md) | 47 | `result-track:603fd7bccf43f002a6b25b887c6cdec1426a4bfa1ccff74e19fd5be5323376ea` |
| 5 | `def` | [CenteredMobiusLogTwoSupplierPackage](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean/declarations/centeredmobiuslogtwosupplierpackage--889dfbe0ed22e4e9ca9d8507.md) | 57 | `declaration-track:889dfbe0ed22e4e9ca9d850713c5a37d381c35eabaea2f0311a13927c347627b` |
| 6 | `theorem` | [allDyadicEnergyBound_of_twoSupplierPackage](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogTwoSupplierReduction.lean/declarations/alldyadicenergybound-of-twosupplierpackage--ec6a9df585a9fe18c63c922e.md) | 61 | `result-track:ec6a9df585a9fe18c63c922e2e2e9678ea17afc3903482ec10f93dcd083189af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
