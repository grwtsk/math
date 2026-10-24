# Verification target: GRWTSK.Topology.GeneralTopology.Cantor.Variant7da0e192e7d0c2e07527655feca53aebe5c448fdfa270eabb7db0213d2f33aba

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "18d905d6a8de339ac92fb4500d7cf2debe69f601",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Cantor/Variant7da0e192e7d0c2e07527655feca53aebe5c448fdfa270eabb7db0213d2f33aba.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant7da0e192e7d0c2e07527655feca53aebe5c448fdfa270eabb7db0213d2f33aba.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant7da0e192e7d0c2e07527655feca53aebe5c448fdfa270eabb7db0213d2f33aba.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `18d905d6a8de339ac92fb4500d7cf2debe69f601`.

Source path: `GRWTSK/Topology/GeneralTopology/Cantor/Variant7da0e192e7d0c2e07527655feca53aebe5c448fdfa270eabb7db0213d2f33aba.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Cantor/Variant7da0e192e7d0c2e07527655feca53aebe5c448fdfa270eabb7db0213d2f33aba.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Carrier.BooleanSpace` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Connected.TotallyDisconnected` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Bases` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Basic` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CantorTopologyCapability](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant7da0e192e7d0c2e07527655feca53aebe5c448fdfa270eabb7db0213d2f33aba.lean/declarations/cantortopologycapability--125f6db3f93d0e8e24033f03.md) | 26 | `declaration-track:125f6db3f93d0e8e24033f03d20d1b9fe2775d13b5fcee2255084ee7e4ff6222` |
| 2 | `structure` | [HomeomorphicBaselineCapability](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant7da0e192e7d0c2e07527655feca53aebe5c448fdfa270eabb7db0213d2f33aba.lean/declarations/homeomorphicbaselinecapability--5fe37ddb30f5bd8a5a111516.md) | 38 | `declaration-track:5fe37ddb30f5bd8a5a111516e547010b3f1a2351890de7ad437b93f8713c0bcd` |
| 3 | `theorem` | [compact_univ](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant7da0e192e7d0c2e07527655feca53aebe5c448fdfa270eabb7db0213d2f33aba.lean/declarations/compact-univ--589be7e66437b203c1cad2b3.md) | 44 | `result-track:589be7e66437b203c1cad2b3f9e718a2e466dad4104216adf5770576a117b90e` |
| 4 | `theorem` | [connected_subsets_are_singletons](../../../../../mathematics/Topology/GeneralTopology/Cantor/Variant7da0e192e7d0c2e07527655feca53aebe5c448fdfa270eabb7db0213d2f33aba.lean/declarations/connected-subsets-are-singletons--1ac88db5e3f62a1472c5aca6.md) | 51 | `result-track:1ac88db5e3f62a1472c5aca6a64c5877f375b84605491e6b24692dd7a2744be5` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
