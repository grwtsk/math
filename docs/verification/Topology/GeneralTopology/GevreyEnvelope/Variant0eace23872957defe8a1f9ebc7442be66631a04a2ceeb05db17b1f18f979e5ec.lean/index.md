# Verification target: GRWTSK.Topology.GeneralTopology.GevreyEnvelope.Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "40214ce4b87621289c84d9a41b6f2d331d4f467b",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `40214ce4b87621289c84d9a41b6f2d331d4f467b`.

Source path: `GRWTSK/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagnosticExponent](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean/declarations/diagnosticexponent--e35cc59ac01f4ebec22da16a.md) | 35 | `declaration-track:e35cc59ac01f4ebec22da16a2bd7a9b210ab334762a540cc317fe4754dcd9a6f` |
| 2 | `def` | [testPoint](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean/declarations/testpoint--f687f1d662a0ffae15ba483b.md) | 39 | `declaration-track:f687f1d662a0ffae15ba483b64657f56c638f0a6ea94932bf84035106931247d` |
| 3 | `theorem` | [diagnostic_exponent_test_point](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean/declarations/diagnostic-exponent-test-point--85c8c7a12d7dfa8eb8230ced.md) | 42 | `result-track:85c8c7a12d7dfa8eb8230cede3cb1c72b4910a8543f90026aa0d2a2d116d4022` |
| 4 | `theorem` | [diagnostic_exponent_test_point_div](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean/declarations/diagnostic-exponent-test-point-div--19d74357ae95d7a53c69daff.md) | 62 | `result-track:19d74357ae95d7a53c69daffdb5b7a22b65f433fc2e5e9e1b3332e13abc9a975` |
| 5 | `theorem` | [tendsto_diagnostic_exponent_test_point_div](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean/declarations/tendsto-diagnostic-exponent-test-point-div--4fd2893b09caec90b7bde7ed.md) | 81 | `result-track:4fd2893b09caec90b7bde7ed568ae12f6838dbe280d30e6164faa082988b86cb` |
| 6 | `theorem` | [tendsto_diagnostic_exponent_test_point_atTop](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant0eace23872957defe8a1f9ebc7442be66631a04a2ceeb05db17b1f18f979e5ec.lean/declarations/tendsto-diagnostic-exponent-test-point-attop--25c4adbeb137b740a5acd29f.md) | 100 | `result-track:25c4adbeb137b740a5acd29faa8ba04fbfcf069a14aedda39a559a973ea15430` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
