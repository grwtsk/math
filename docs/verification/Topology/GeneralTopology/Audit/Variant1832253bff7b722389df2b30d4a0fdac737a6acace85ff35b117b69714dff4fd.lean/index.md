# Verification target: GRWTSK.Topology.GeneralTopology.Audit.Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "2997eb46f6075062a991afa30b0102493bce86d2",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Audit/Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Audit/Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Audit/Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `2997eb46f6075062a991afa30b0102493bce86d2`.

Source path: `GRWTSK/Topology/GeneralTopology/Audit/Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Audit/Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd.lean.json)

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
| 1 | `def` | [diagnosticExponent](../../../../../mathematics/Topology/GeneralTopology/Audit/Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd.lean/declarations/diagnosticexponent--6279163364b2e5de9c8f5eff.md) | 27 | `declaration-track:6279163364b2e5de9c8f5eff80941c4b4987a600c83351bd14ebd7bec4b47a8a` |
| 2 | `def` | [testPoint](../../../../../mathematics/Topology/GeneralTopology/Audit/Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd.lean/declarations/testpoint--3df4845fdc9da4244563460e.md) | 31 | `declaration-track:3df4845fdc9da4244563460e56a153f6a52c22be7c832885c1d0485a1b0817cf` |
| 3 | `theorem` | [diagnostic_exponent_test_point](../../../../../mathematics/Topology/GeneralTopology/Audit/Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd.lean/declarations/diagnostic-exponent-test-point--f49284f9cac824f62380b619.md) | 34 | `result-track:f49284f9cac824f62380b6194f0ead7a86536a7b15e756940986122157e79dc0` |
| 4 | `theorem` | [diagnostic_exponent_test_point_div](../../../../../mathematics/Topology/GeneralTopology/Audit/Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd.lean/declarations/diagnostic-exponent-test-point-div--284898bdd9c2efe9965cf4ed.md) | 54 | `result-track:284898bdd9c2efe9965cf4edbafc828a46c65e118c34b4bd92575117285c4992` |
| 5 | `theorem` | [tendsto_diagnostic_exponent_test_point_div](../../../../../mathematics/Topology/GeneralTopology/Audit/Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd.lean/declarations/tendsto-diagnostic-exponent-test-point-div--b5066aa0ab96c77529e6c962.md) | 73 | `result-track:b5066aa0ab96c77529e6c96226d722559619df1b390617df7775fb6424c086f7` |
| 6 | `theorem` | [tendsto_diagnostic_exponent_test_point_atTop](../../../../../mathematics/Topology/GeneralTopology/Audit/Variant1832253bff7b722389df2b30d4a0fdac737a6acace85ff35b117b69714dff4fd.lean/declarations/tendsto-diagnostic-exponent-test-point-attop--970aa0a117a920f477d9674c.md) | 92 | `result-track:970aa0a117a920f477d9674cc9566711c5f0228b1f6378c52cf826465a9f6329` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
