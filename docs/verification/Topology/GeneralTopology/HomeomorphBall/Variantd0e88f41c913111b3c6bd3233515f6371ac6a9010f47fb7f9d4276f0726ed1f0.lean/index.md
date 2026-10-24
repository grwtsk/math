# Verification target: GRWTSK.Topology.GeneralTopology.HomeomorphBall.Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9a4272033b17ee49be323cf428398394841c55fb",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9a4272033b17ee49be323cf428398394841c55fb`.

Source path: `GRWTSK/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Topology.PartialHomeomorph` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.Normed.Group.AddTorsor` — import line 7; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.NormedSpace.Pointwise` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Real.Sqrt` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [PartialHomeomorph.univUnitBall](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/partialhomeomorph-univunitball--2a3fa02d025e10f949187868.md) | 41 | `declaration-track:2a3fa02d025e10f949187868e6672273f000b405ff770a6a43f09b69988cdaa8` |
| 2 | `theorem` | [PartialHomeomorph.univUnitBall_apply_zero](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/partialhomeomorph-univunitball-apply-zero--fa3f84391e3f7188f942c42f.md) | 75 | `result-track:fa3f84391e3f7188f942c42fc2c96c97b407741e475afb43399535ae005b8f1a` |
| 3 | `theorem` | [PartialHomeomorph.univUnitBall_symm_apply_zero](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/partialhomeomorph-univunitball-symm-apply-zero--0313768d63cdb164d9635d51.md) | 79 | `result-track:0313768d63cdb164d9635d5199b3482a6662ac4ff715cdfd4a4eb33b58ae13e3` |
| 4 | `def` | [Homeomorph.unitBall](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/homeomorph-unitball--4bf92b96dc1415c8520be3fb.md) | 91 | `declaration-track:4bf92b96dc1415c8520be3fb2cc0bc985f97ee8ce5aaacaab7976ad2c75539c9` |
| 5 | `theorem` | [Homeomorph.coe_unitBall_apply_zero](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/homeomorph-coe-unitball-apply-zero--b20c48711b7a151b6f762987.md) | 95 | `result-track:b20c48711b7a151b6f76298727d27c6425772d40771952dcadb240c042a9c864` |
| 6 | `def` | [unitBallBall](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/unitballball--181ba3c79eeea5fc42a05d06.md) | 106 | `declaration-track:181ba3c79eeea5fc42a05d06ece1081d1d8de40b2f77faef0f4b3aef68674ac3` |
| 7 | `def` | [univBall](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/univball--7154b61d544794d470ce7390.md) | 118 | `declaration-track:7154b61d544794d470ce73909b648744d597296e2bde1b36c348b289f1c86400` |
| 8 | `theorem` | [univBall_source](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/univball-source--9ddb30052846caf3f6dac390.md) | 123 | `result-track:9ddb30052846caf3f6dac390de9be46f1465ce149f8feec02fa99484ae397cc8` |
| 9 | `theorem` | [univBall_target](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/univball-target--437545684499fa1a265ab048.md) | 126 | `result-track:437545684499fa1a265ab048a59116d166b2aa3bcf3e7a6604df61f86f8aadc3` |
| 10 | `theorem` | [ball_subset_univBall_target](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/ball-subset-univball-target--7fe851e912e0f5c9e217558a.md) | 129 | `result-track:7fe851e912e0f5c9e217558a2b1e1695b43565c02522fd03337b8640941fb203` |
| 11 | `theorem` | [univBall_apply_zero](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/univball-apply-zero--c605badc99c92a7cf67bdeb5.md) | 136 | `result-track:c605badc99c92a7cf67bdeb54cf043f211f928ca498d37408a979040277d7cbb` |
| 12 | `theorem` | [univBall_symm_apply_center](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/univball-symm-apply-center--f879f1efdade7d61a8087dc8.md) | 140 | `result-track:f879f1efdade7d61a8087dc8335b525283c25a24d04e2d7ca6f1516c30866131` |
| 13 | `theorem` | [continuous_univBall](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/continuous-univball--5f690334c34f384b3c928524.md) | 145 | `result-track:5f690334c34f384b3c9285240869f30441d0441cf150935fb62291de2f05e3fd` |
| 14 | `theorem` | [continuousOn_univBall_symm](../../../../../mathematics/Topology/GeneralTopology/HomeomorphBall/Variantd0e88f41c913111b3c6bd3233515f6371ac6a9010f47fb7f9d4276f0726ed1f0.lean/declarations/continuouson-univball-symm--3a6b09e1fda2d866aeea207b.md) | 148 | `result-track:3a6b09e1fda2d866aeea207bccf9233c67627b829bf431a34dc3a04fb6394cc7` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
