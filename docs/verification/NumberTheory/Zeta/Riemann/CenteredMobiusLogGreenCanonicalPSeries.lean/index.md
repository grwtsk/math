# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenCanonicalPSeries

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ca4e8d2b5a0ca3b0ee2c7a7969d7754d18aae034",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ca4e8d2b5a0ca3b0ee2c7a7969d7754d18aae034`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogGreenFiniteHybridEnergy`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenFiniteHybridEnergy.lean/index.md) — import line 7; pinned internal source present.
- `Mathlib.Analysis.PSeries` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [greenPSeriesC2](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean/declarations/greenpseriesc2--29f80dead8f72c91c92a0444.md) | 18 | `declaration-track:29f80dead8f72c91c92a04447e5b0dfcb48a537d0c3f5c88257b93d21015f63c` |
| 2 | `def` | [greenPSeriesC4](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean/declarations/greenpseriesc4--e1d4bbfda8a5f7e24ce5cd13.md) | 19 | `declaration-track:e1d4bbfda8a5f7e24ce5cd13f04a6af87d3122bf994a9e3c7b178befb8e81bb6` |
| 3 | `theorem` | [greenPSeriesC2_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean/declarations/greenpseriesc2-nonneg--7d20aa88258e0dfd28a3c23a.md) | 21 | `result-track:7d20aa88258e0dfd28a3c23a9c472db1679188e633f67decb2ebac11c2b0656b` |
| 4 | `theorem` | [greenPSeriesC4_nonneg](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean/declarations/greenpseriesc4-nonneg--7de0d83c40db73915782e0e4.md) | 24 | `result-track:7de0d83c40db73915782e0e4aea3890ce737407af91d9904d743c5252d1c8aa0` |
| 5 | `theorem` | [green_reciprocalSquare_partial_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean/declarations/green-reciprocalsquare-partial-le--7f64cae9b977c82f37514011.md) | 27 | `result-track:7f64cae9b977c82f3751401143433cb1204eac0519c63daf85d293d483db43e5` |
| 6 | `theorem` | [green_reciprocalFourth_partial_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean/declarations/green-reciprocalfourth-partial-le--c967570a61878035fa3d9f58.md) | 34 | `result-track:c967570a61878035fa3d9f587ae751917f0846773990a37b47df88e5e31f95fb` |
| 7 | `theorem` | [greenHighQuotientResidueMajorant_le_canonical](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean/declarations/greenhighquotientresiduemajorant-le-canonical--5c9693aa519a1ca820dba75d.md) | 42 | `result-track:5c9693aa519a1ca820dba75d44724b7f1041b3ad4a42f11e6bbb7b612d3e5602` |
| 8 | `theorem` | [greenAliasResidualEnergy_le_canonical](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogGreenCanonicalPSeries.lean/declarations/greenaliasresidualenergy-le-canonical--ed77e85d3a018945ae5a0030.md) | 61 | `result-track:ed77e85d3a018945ae5a00305246cad8815bfa94b0eca30f680bf5ac6d9d9812` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
