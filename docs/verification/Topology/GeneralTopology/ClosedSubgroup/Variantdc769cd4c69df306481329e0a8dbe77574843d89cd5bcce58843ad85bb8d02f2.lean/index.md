# Verification target: GRWTSK.Topology.GeneralTopology.ClosedSubgroup.Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "820a2a95e00a9d4464abfaae2aa2079594ceab3c",
  "lexical_observation_count": 11,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `820a2a95e00a9d4464abfaae2aa2079594ceab3c`.

Source path: `GRWTSK/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Algebra.Group.Subgroup.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.GroupTheory.Index` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Group.Basic` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [ClosedSubgroup](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/declarations/closedsubgroup--f74663d350b8e7eed0e8d307.md) | 42 | `declaration-track:f74663d350b8e7eed0e8d307da827e8b21a2b675e365c6a2e2bdfbc08e1385ba` |
| 2 | `structure` | [ClosedAddSubgroup](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/declarations/closedaddsubgroup--e8f7dc87694c268b8ca85886.md) | 47 | `declaration-track:e8f7dc87694c268b8ca85886b450482e1e9d9ac5337842d171bcca39da63870f` |
| 3 | `theorem` | [toSubgroup_injective](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/declarations/tosubgroup-injective--bec52949644f8eb99b35cec3.md) | 61 | `result-track:bec52949644f8eb99b35cec31fade7e88e62bee22fdbd4840e8438902635adee` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/declarations/instance--c8fa92a51246a1fa621fae3b.md) | 68 | `declaration-track:c8fa92a51246a1fa621fae3bdd937c16df099d24e38e9567be5b50d1c05ea2c5` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/declarations/instance--affba23048cdbb84b67fcd21.md) | 73 | `declaration-track:affba23048cdbb84b67fcd2196329986295738bf21e8bc161062b8529d9bace8` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/declarations/instance--c14f47e1e9cb5b152a776a3d.md) | 79 | `declaration-track:c14f47e1e9cb5b152a776a3db905924f61c8a295b49adc89d9bc9cadb7c3ff51` |
| 7 | `instance` | [instInfClosedSubgroup](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/declarations/instinfclosedsubgroup--7b4b97562d5ec03ebe2503f2.md) | 83 | `declaration-track:7b4b97562d5ec03ebe2503f2843302e48aa20595c310359872f790a6369baafd` |
| 8 | `instance` | [instSemilatticeInfClosedSubgroup](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/declarations/instsemilatticeinfclosedsubgroup--83eda457a9a75f54d50b72ea.md) | 87 | `declaration-track:83eda457a9a75f54d50b72ea13ab6781803d1c82cf003147af48f14b09fbcf09` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/declarations/instance--70f8ebcac6794f6f4155c278.md) | 91 | `declaration-track:70f8ebcac6794f6f4155c278002084b2defe096965bdde7e7e64c9346105f88a` |
| 10 | `lemma` | [normalCore_isClosed](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/declarations/normalcore-isclosed--011c821dd65813dd61adb86c.md) | 102 | `result-track:011c821dd65813dd61adb86cb8e05a6eaffacc0ac1ecf535a938d5191bf3e536` |
| 11 | `lemma` | [isOpen_of_isClosed_of_finiteIndex](../../../../../mathematics/Topology/GeneralTopology/ClosedSubgroup/Variantdc769cd4c69df306481329e0a8dbe77574843d89cd5bcce58843ad85bb8d02f2.lean/declarations/isopen-of-isclosed-of-finiteindex--8a4eb5a6fbb77a3ed793c470.md) | 112 | `result-track:8a4eb5a6fbb77a3ed793c470d352785c43a3294902f5dad8fecd21d4df19d6de` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
