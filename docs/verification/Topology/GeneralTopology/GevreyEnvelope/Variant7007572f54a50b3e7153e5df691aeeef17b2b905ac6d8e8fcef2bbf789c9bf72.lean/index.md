# Verification target: GRWTSK.Topology.GeneralTopology.GevreyEnvelope.Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "10186dd935491151c269697c9e3584f2eded1d36",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `10186dd935491151c269697c9e3584f2eded1d36`.

Source path: `GRWTSK/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.SpecialFunctions.Pow.Asymptotics` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.FieldSimp` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [diagnosticExponent](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/declarations/diagnosticexponent--1161c20dd9d126eba66277c6.md) | 27 | `declaration-track:1161c20dd9d126eba66277c65d8f7fc2281074b894749192e49ad505433ae885` |
| 2 | `def` | [testPoint](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/declarations/testpoint--54568293f6d3e73127c2fa1a.md) | 31 | `declaration-track:54568293f6d3e73127c2fa1a718b6ae36216ed5dd5b92c16f3945d0a7d06a9bb` |
| 3 | `theorem` | [diagnostic_exponent_test_point](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/declarations/diagnostic-exponent-test-point--3b90895a0baa0f1cd3de764b.md) | 34 | `result-track:3b90895a0baa0f1cd3de764b70c89ccb53bd988ca1fed8d7930d1a5681a851d1` |
| 4 | `theorem` | [diagnostic_exponent_test_point_div](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/declarations/diagnostic-exponent-test-point-div--c2bd370ef3f806e183d468d3.md) | 54 | `result-track:c2bd370ef3f806e183d468d3b5d56e51408a0c91e7c86530701c74238391167a` |
| 5 | `theorem` | [tendsto_diagnostic_exponent_test_point_div](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/declarations/tendsto-diagnostic-exponent-test-point-div--017e4a73d566e45a19d3fc79.md) | 73 | `result-track:017e4a73d566e45a19d3fc7962aeab9ef249d1b38fe873ee9c3b9cc1cab8d413` |
| 6 | `theorem` | [tendsto_diagnostic_exponent_test_point_atTop](../../../../../mathematics/Topology/GeneralTopology/GevreyEnvelope/Variant7007572f54a50b3e7153e5df691aeeef17b2b905ac6d8e8fcef2bbf789c9bf72.lean/declarations/tendsto-diagnostic-exponent-test-point-attop--0798f538e07c2d9f5f796560.md) | 92 | `result-track:0798f538e07c2d9f5f79656089ff009947c1dbae6dc4122ed6aab9e80471c45a` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
