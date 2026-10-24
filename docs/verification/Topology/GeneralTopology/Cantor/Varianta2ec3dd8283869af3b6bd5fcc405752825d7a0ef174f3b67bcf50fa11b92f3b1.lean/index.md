# Verification target: GRWTSK.Topology.GeneralTopology.Cantor.Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "76bbdf3c5e00c70a62e0f9faaad9cfad035ed703",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `76bbdf3c5e00c70a62e0f9faaad9cfad035ed703`.

Source path: `GRWTSK/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 2; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 3; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 4; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CantorTopologyCapability](../../../../../mathematics/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean/declarations/cantortopologycapability--14a5ffee655972f737232637.md) | 18 | `declaration-track:14a5ffee655972f737232637009b8268077d8f33b40c7bb45382e4ac40c41d17` |
| 2 | `structure` | [HomeomorphicBaselineCapability](../../../../../mathematics/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean/declarations/homeomorphicbaselinecapability--76afde1a30d2094026aa923d.md) | 30 | `declaration-track:76afde1a30d2094026aa923dbbdc7294c53765f7a1d381a25a268eabca6be860` |
| 3 | `theorem` | [compact_univ](../../../../../mathematics/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean/declarations/compact-univ--7da797f2088a6e936b5704ba.md) | 36 | `result-track:7da797f2088a6e936b5704ba0a9054a25317d7641d98ca935a02fb9b7f83a57b` |
| 4 | `theorem` | [connected_subsets_are_singletons](../../../../../mathematics/Topology/GeneralTopology/Cantor/Varianta2ec3dd8283869af3b6bd5fcc405752825d7a0ef174f3b67bcf50fa11b92f3b1.lean/declarations/connected-subsets-are-singletons--e5e5beefbf38851a63444ad0.md) | 43 | `result-track:e5e5beefbf38851a63444ad024f6ad3e9275222acc3dbc40eb58c205b26563af` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
