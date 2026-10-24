# Verification target: GRWTSK.Topology.GeneralTopology.Filter.Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "d1370367c29a1502e7e6c92bcda6f79cdd89b4aa",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Filter/Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `d1370367c29a1502e7e6c92bcda6f79cdd89b4aa`.

Source path: `GRWTSK/Topology/GeneralTopology/Filter/Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Filter/Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Aesop` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [List](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda.lean/declarations/list--7e4040e592cb790eab17be95.md) | 21 | `declaration-track:7e4040e592cb790eab17be956866597cba95d17fbaa9ea1b90b74b326bc17a47` |
| 2 | `def` | [filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda.lean/declarations/filter--7076da3f75ededfce6775e8a.md) | 28 | `declaration-track:7076da3f75ededfce6775e8a72ca90a97f2c5548b7533d1ea050d06b96e3ad7c` |
| 3 | `theorem` | [filter_cons_true](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda.lean/declarations/filter-cons-true--729da0309bead8eda67db279.md) | 36 | `result-track:729da0309bead8eda67db27911606ffadffc27b6d075450d9a9ad91759dcb761` |
| 4 | `theorem` | [filter_cons_false](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda.lean/declarations/filter-cons-false--fe0f797ba63a6de8d8e095be.md) | 40 | `result-track:fe0f797ba63a6de8d8e095bed30f2839840cdc5117ef8b83f46852f16ac5732a` |
| 5 | `inductive` | [Mem](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda.lean/declarations/mem--7724372bfe7d8f7291c9f014.md) | 44 | `declaration-track:7724372bfe7d8f7291c9f014dbff02104bc09e19e66e358f868056adca2d1adb` |
| 6 | `theorem` | [mem_filter](../../../../../mathematics/Topology/GeneralTopology/Filter/Variante0bd4ea2298c424da4c61b913a78b01502873a9baf26136dd0458c90a58b6cda.lean/declarations/mem-filter--f9c03b2c0a6d8c8730d29efa.md) | 50 | `result-track:f9c03b2c0a6d8c8730d29efa91d8cf5ddd03a97a16f8e10244593078a642d9b1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
