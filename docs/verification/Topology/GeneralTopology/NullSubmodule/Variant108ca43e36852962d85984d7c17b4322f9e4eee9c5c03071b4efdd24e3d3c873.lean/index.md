# Verification target: GRWTSK.Topology.GeneralTopology.NullSubmodule.Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "173bad5a56f279a75224dc73bc4d1fc015f54c3a",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/NullSubmodule/Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/NullSubmodule/Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/NullSubmodule/Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `173bad5a56f279a75224dc73bc4d1fc015f54c3a`.

Source path: `GRWTSK/Topology/GeneralTopology/NullSubmodule/Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/NullSubmodule/Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Continuity` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.MulAction` — import line 12; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [nullSubgroup](../../../../../mathematics/Topology/GeneralTopology/NullSubmodule/Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873.lean/declarations/nullsubgroup--d9872735c9f95d270b9203cd.md) | 42 | `declaration-track:d9872735c9f95d270b9203cdca34180d76b77baf244e2f04a5f62deb673dde4c` |
| 2 | `lemma` | [isClosed_nullSubgroup](../../../../../mathematics/Topology/GeneralTopology/NullSubmodule/Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873.lean/declarations/isclosed-nullsubgroup--eaa3b4e3a229a5d4f6a22578.md) | 52 | `result-track:eaa3b4e3a229a5d4f6a22578272570bea488d9c03a17acfffdf39761d939fb62` |
| 3 | `lemma` | [mem_nullSubgroup_iff](../../../../../mathematics/Topology/GeneralTopology/NullSubmodule/Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873.lean/declarations/mem-nullsubgroup-iff--84c0d88a89be09e89a9b5b6c.md) | 56 | `result-track:84c0d88a89be09e89a9b5b6cc20eb00bf6a60a3891b05a28161aa68bbec87bb1` |
| 4 | `def` | [nullSubmodule](../../../../../mathematics/Topology/GeneralTopology/NullSubmodule/Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873.lean/declarations/nullsubmodule--54cc573f9bc4ef05d9234fdc.md) | 63 | `declaration-track:54cc573f9bc4ef05d9234fdc4ebaaf7354812637ecefa8070cbb730db16d8c89` |
| 5 | `lemma` | [isClosed_nullSubmodule](../../../../../mathematics/Topology/GeneralTopology/NullSubmodule/Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873.lean/declarations/isclosed-nullsubmodule--2b6b0e51aced5d5f6ac39196.md) | 70 | `result-track:2b6b0e51aced5d5f6ac39196fb3622e4f6d8d1bc5367e81a42b70fcd4e1f779e` |
| 6 | `lemma` | [mem_nullSubmodule_iff](../../../../../mathematics/Topology/GeneralTopology/NullSubmodule/Variant108ca43e36852962d85984d7c17b4322f9e4eee9c5c03071b4efdd24e3d3c873.lean/declarations/mem-nullsubmodule-iff--034d4f7da15f728f29ef4973.md) | 73 | `result-track:034d4f7da15f728f29ef4973adef1f6fa0a4608923f8c65ef558e0daffabd118` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
