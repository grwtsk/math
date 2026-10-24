# Verification target: GRWTSK.Topology.GeneralTopology.Incidence.Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e7b0f7037ba95af8c09114f31e78989bff627c86",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e7b0f7037ba95af8c09114f31e78989bff627c86`.

Source path: `GRWTSK/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.Closure` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Continuous` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Terrain.BooleanYoneda` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [MembershipChangesAt](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean/declarations/membershipchangesat--f0d815fe263c84eb5cc3b551.md) | 32 | `declaration-track:f0d815fe263c84eb5cc3b5512c29bc5473cec790176665fe970a561ab9198b51` |
| 2 | `theorem` | [eventually_membership_eq_of_not_mem_frontier](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean/declarations/eventually-membership-eq-of-not-mem-frontier--61db6824b0173bbba2de3977.md) | 41 | `result-track:61db6824b0173bbba2de397760090fb99230e285ea555cb705014236269a82ca` |
| 3 | `theorem` | [membershipChange_requires_frontier](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean/declarations/membershipchange-requires-frontier--39cb4b013304109b5d0259e4.md) | 62 | `result-track:39cb4b013304109b5d0259e4f97a71441e13c2f1e6a22eab6f1cabe8bb55a8bd` |
| 4 | `theorem` | [thresholdTrajectory_injective](../../../../../mathematics/Topology/GeneralTopology/Incidence/Variantec8b740172ef30a560265ca256bcd1ea8a7ece58ed8d51febd9f44887cb256c9.lean/declarations/thresholdtrajectory-injective--72d8103287b778fce286056a.md) | 81 | `result-track:72d8103287b778fce286056a6a6067a9590f61bdd327131a7abe837dce471e13` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
