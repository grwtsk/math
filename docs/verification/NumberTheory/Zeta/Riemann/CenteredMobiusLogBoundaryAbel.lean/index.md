# Verification target: GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryAbel

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a5db4f36f3c896dbab550e0e55407f6cdef46c76",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean/index.md) · [Full source](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a5db4f36f3c896dbab550e0e55407f6cdef46c76`.

Source path: `GRWTSK/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- [`GRWTSK.NumberTheory.Zeta.Riemann.CenteredMobiusLogBoundaryEndpointObstruction`](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryEndpointObstruction.lean/index.md) — import line 5; pinned internal source present.
- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [centeredGreenBaselineHarmonicResidual](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean/declarations/centeredgreenbaselineharmonicresidual--8278df6c194b7023576a4aa3.md) | 15 | `declaration-track:8278df6c194b7023576a4aa37ee4d63102288ac8b751d92af02c70fadb088cad` |
| 2 | `theorem` | [prefixMangoldtError_increment](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean/declarations/prefixmangoldterror-increment--753af4f958448cf868fb905b.md) | 19 | `result-track:753af4f958448cf868fb905b23b96724b5d539b938f679637ca583408eb9e7e2` |
| 3 | `theorem` | [harmonicMangoldtDiscrepancy_abel](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean/declarations/harmonicmangoldtdiscrepancy-abel--b2178e61897359e8f7a9cfe3.md) | 37 | `result-track:b2178e61897359e8f7a9cfe3318b8ac30fabd24bb83b4b0e5f5ab94ab7e8daa5` |
| 4 | `theorem` | [abs_centeredGreenBaselineHarmonicResidual_le](../../../../../mathematics/NumberTheory/Zeta/Riemann/CenteredMobiusLogBoundaryAbel.lean/declarations/abs-centeredgreenbaselineharmonicresidual-le--61229b36510e0cdc90637d50.md) | 85 | `result-track:61229b36510e0cdc90637d50deaa6970bf6481c65d75a31845190fb8081b4a69` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
