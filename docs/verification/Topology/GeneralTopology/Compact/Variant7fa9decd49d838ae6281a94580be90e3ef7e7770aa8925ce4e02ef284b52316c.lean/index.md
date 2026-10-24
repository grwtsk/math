# Verification target: GRWTSK.Topology.GeneralTopology.Compact.Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ac64d492920fcefe9be4e7f54b66f8afc9046751",
  "lexical_observation_count": 2,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Compact/Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ac64d492920fcefe9be4e7f54b66f8afc9046751`.

Source path: `GRWTSK/Topology/GeneralTopology/Compact/Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Compact/Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Algebra.Group.Basic` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.CompactOpen` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sets.Compacts` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `theorem` | [TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_group](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean/declarations/topologicalspace-positivecompacts-locallycompactspace-of-group--d828c5b64b51c3e6d6347f00.md) | 38 | `result-track:d828c5b64b51c3e6d6347f00cbcc5c0f69a4103d5ea261665e84b2dac635cdc7` |
| 2 | `instance` | [QuotientGroup.continuousSMul](../../../../../mathematics/Topology/GeneralTopology/Compact/Variant7fa9decd49d838ae6281a94580be90e3ef7e7770aa8925ce4e02ef284b52316c.lean/declarations/quotientgroup-continuoussmul--d63f3301680097877ec0d606.md) | 62 | `declaration-track:d63f3301680097877ec0d606a35f1c8f1bc147792b65089bb050464ba6f854f0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
