# Verification target: GRWTSK.Topology.GeneralTopology.ConductorThreeCriticalReindexBounds.Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "54b78335f28d94956820f9e30287d7cbe381940c",
  "lexical_observation_count": 5,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `54b78335f28d94956820f9e30287d7cbe381940c`.

Source path: `GRWTSK/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `lemma` | [count_to_matrix_pointwise](../../../../../mathematics/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4.lean/declarations/count-to-matrix-pointwise--a4486a57b94302daeeaac135.md) | 32 | `result-track:a4486a57b94302daeeaac135fbda5163678405c6ea0f09ff48832e79dd8e061b` |
| 2 | `theorem` | [residueDifferenceCriticalBound_implies_matrixCriticalDecay](../../../../../mathematics/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4.lean/declarations/residuedifferencecriticalbound-implies-matrixcriticaldecay--a33ab0f45d50a855a7aeabbe.md) | 196 | `result-track:a33ab0f45d50a855a7aeabbecf4c9180409ceba70115ce57db9f07441bee0b10` |
| 3 | `lemma` | [matrix_to_count_pointwise](../../../../../mathematics/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4.lean/declarations/matrix-to-count-pointwise--1da077c16b0ec0544dd7252c.md) | 213 | `result-track:1da077c16b0ec0544dd7252c6389d2ba42a872833040ccdff363e9c87ec46bbc` |
| 4 | `theorem` | [matrixCriticalDecay_implies_residueDifferenceCriticalBound](../../../../../mathematics/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4.lean/declarations/matrixcriticaldecay-implies-residuedifferencecriticalbound--737ed0d51696779ae40c8130.md) | 354 | `result-track:737ed0d51696779ae40c81303834378cc5baeb4bb6e8955eb6e1830c3237b1f1` |
| 5 | `theorem` | [residueDifferenceCriticalBound_iff_matrixCriticalDecay](../../../../../mathematics/Topology/GeneralTopology/ConductorThreeCriticalReindexBounds/Variant48c47647e67bdfccd90e292d9d1092e1f7ebfd4dfd9e43b4528e438564ab58b4.lean/declarations/residuedifferencecriticalbound-iff-matrixcriticaldecay--3d229e3864e0cb6ebfb58858.md) | 404 | `result-track:3d229e3864e0cb6ebfb5885841e6510e9e28d6bfbda4a660ac1190aed2d03bce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
