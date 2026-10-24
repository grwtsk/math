# Verification target: GRWTSK.Topology.GeneralTopology.Incidence.Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "84510d7c244b755477f6cab1b35769e0d3da2b37",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `84510d7c244b755477f6cab1b35769e0d3da2b37`.

Source path: `GRWTSK/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Closure` — import line 1; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Continuous` — import line 2; external provider; requires a separately pinned dependency.
- `Mathematics.Terrain.BooleanYoneda` — import line 3; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MembershipChangesAt](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean/declarations/membershipchangesat--b7ad0b6058174695c2fdf258.md) | 24 | `declaration-track:b7ad0b6058174695c2fdf2584acc76312ed8dbe368f3e3d3e6b90cb350c1e76e` |
| 2 | `theorem` | [eventually_membership_eq_of_not_mem_frontier](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean/declarations/eventually-membership-eq-of-not-mem-frontier--8e79d61dfce3863b175f8f83.md) | 33 | `result-track:8e79d61dfce3863b175f8f839244df358d2bff381f57a337390025e2dd22a0a7` |
| 3 | `theorem` | [membershipChange_requires_frontier](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean/declarations/membershipchange-requires-frontier--31a9ca6b71acd24ff5706660.md) | 54 | `result-track:31a9ca6b71acd24ff5706660873e9fbbed74fad1915a468fa2ceb06bb5cd8779` |
| 4 | `theorem` | [thresholdTrajectory_injective](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variant2ee233d19422776531c54cc682e319cbd014319cbda57b6088388a7b081111d0.lean/declarations/thresholdtrajectory-injective--c2300c40ea9156bd1da19425.md) | 73 | `result-track:c2300c40ea9156bd1da19425f0f002185e517d7c0f889ea467d49075692b2e70` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
