# Verification target: GRWTSK.Topology.GeneralTopology.FinsetBuilder.Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "b5d40296391e552a70029ccb3da9612fd9a172fe",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `b5d40296391e552a70029ccb3da9612fd9a172fe`.

Source path: `GRWTSK/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Order.Interval.Finset.Basic` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--4e62ff001bf90c993f58a684.md) | 21 | `declaration-track:4e62ff001bf90c993f58a684c1a34b13df7c3251d36bc1ee02739c16000d4f75` |
| 2 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--65333f834a841478e0fc4d9b.md) | 28 | `declaration-track:65333f834a841478e0fc4d9bad9db49d5c990331be95e597540d9667c2499268` |
| 3 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--4385ce80ea83ef08c97d44ac.md) | 29 | `declaration-track:4385ce80ea83ef08c97d44aca0d4c92734c19acff91f00310fa66868094d1282` |
| 4 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--dd7519bd1da89498de7129ed.md) | 33 | `declaration-track:dd7519bd1da89498de7129ed442ff6a0f53795b33d63261a83f339e381ad8f6f` |
| 5 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--352c689c6e3cc24f46a8ac49.md) | 34 | `declaration-track:352c689c6e3cc24f46a8ac494c9720b0d59fc47c12775e42dc712407edb9425c` |
| 6 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--00d2d31841f6f806d4635849.md) | 35 | `declaration-track:00d2d31841f6f806d4635849f5bb0b0a5d431616a851908b0d5ae4a0a0fb6848` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--29bc5080b21d09ed7a393685.md) | 38 | `declaration-track:29bc5080b21d09ed7a393685946d8b391f21d223cab516d6f358c8b6fd287191` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--637dc7db18f0c4432aba50a8.md) | 39 | `declaration-track:637dc7db18f0c4432aba50a80b2acf31996ada860af454a900ea7b317200ee8c` |
| 9 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--81a44f5cabbc849d45712d17.md) | 43 | `declaration-track:81a44f5cabbc849d45712d175dddd3696c029edf47ff6c3ff4faac740629229f` |
| 10 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--2417e865a854c639b1f3a1b7.md) | 44 | `declaration-track:2417e865a854c639b1f3a1b736256f2964c0602ed7b5a6d79bb6f4c5d47cc38a` |
| 11 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--cb7654ffdf65d65a390aebec.md) | 47 | `declaration-track:cb7654ffdf65d65a390aebecf8c1f45d9b4b9a1a97065d6fd31b2747c9597fb3` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--dc9d46956099a6b2dac41062.md) | 48 | `declaration-track:dc9d46956099a6b2dac4106278f5d39df0da400ec7bfe91680fbc0d6eaa67069` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--6aa60766f59cf8e567d38552.md) | 57 | `declaration-track:6aa60766f59cf8e567d385528b227d55c1fe3e2ea1a65d27295fbb94c172355a` |
| 14 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--2c4a55be444c6617550265fa.md) | 58 | `declaration-track:2c4a55be444c6617550265fa31ac45f2c4e08c2655d781b34ea8df065aa0d789` |
| 15 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--d7738a2c7a9e429cd25b3db0.md) | 61 | `declaration-track:d7738a2c7a9e429cd25b3db07f244074ff378a1eee24aeaec4ff0b3165a0f076` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--3ab50d13b1a5be8b04d23e7b.md) | 62 | `declaration-track:3ab50d13b1a5be8b04d23e7bd7714f9eb1586f38b3850f6ae789a506afdb8295` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--8959860599c1b2b1b20edb17.md) | 69 | `declaration-track:8959860599c1b2b1b20edb179024916717905b1abb39f7fc2942d55952901cfe` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--0f85bcba6383ebdb7d3ae588.md) | 70 | `declaration-track:0f85bcba6383ebdb7d3ae588d617fd45dfbc51e6c5615a752de30626dafc1837` |
| 19 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--30bf552cfb0bfded53bb886e.md) | 73 | `declaration-track:30bf552cfb0bfded53bb886e5b0fc226592f859b94b1b4b47dcce9fe78cbee23` |
| 20 | `example` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/FinsetBuilder/Variant2c02662dbd101a86702275ad3d78dbcdf25e75769d58da5f29a3723fe6596b99.lean/declarations/example--070cd69ceaa4d6f2636bbaa6.md) | 74 | `declaration-track:070cd69ceaa4d6f2636bbaa68a22259768ad6e34a3e6542c0a36571757fc0408` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
