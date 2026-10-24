# Verification target: GRWTSK.Topology.AlgebraicTopology.SimplyConnected.Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "6572a22d60627d94425b6fa7286ade982fc1e9e5",
  "lexical_observation_count": 22,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `6572a22d60627d94425b6fa7286ade982fc1e9e5`.

Source path: `GRWTSK/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

No anchored import commands were observed. This does not establish dependency closure.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [SimplyConnectedSpace](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/simplyconnectedspace--6deccff3d8f2ab5604f8b5aa.md) | 40 | `declaration-track:6deccff3d8f2ab5604f8b5aab3dbbcc46638bd894241e3a1022a8161b82cf53c` |
| 2 | `theorem` | [simply_connected_iff_unique_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/simply-connected-iff-unique-homotopic--7407f9d1481281a6f50b7f20.md) | 43 | `result-track:7407f9d1481281a6f50b7f20f3e880e12d6a874c5e09e91d20296b9551f3a017` |
| 3 | `theorem` | [ContinuousMap.HomotopyEquiv.simplyConnectedSpace](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/continuousmap-homotopyequiv-simplyconnectedspace--78414345a24128a68fb837d8.md) | 51 | `result-track:78414345a24128a68fb837d8a81023ec12bce750fdb22115a9814e5359b0d854` |
| 4 | `theorem` | [ContinuousMap.HomotopyEquiv.simplyConnectedSpace_iff](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/continuousmap-homotopyequiv-simplyconnectedspace-iff--2cffea988e57d8fbe912145e.md) | 55 | `result-track:2cffea988e57d8fbe912145e34dd68b1c883fb23028f86cd2e6fca0134eda315` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/instance--16fbb04ce1828e2989b238e1.md) | 63 | `declaration-track:16fbb04ce1828e2989b238e1fcc50fbd3cf288fd6dac19970d349e305d89871b` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/instance--7dd14df4e2abedc94603550f.md) | 67 | `declaration-track:7dd14df4e2abedc94603550f192ef5d2263baa744d6ecb0e2c61a6f1ca5744ac` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/instance--4d0aec73439656fd9bac1253.md) | 70 | `declaration-track:4d0aec73439656fd9bac12534e62200e41be73d4cb7a46285ded4f9b34508451` |
| 8 | `theorem` | [paths_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/paths-homotopic--82ef0a24ad4c82f27a514c53.md) | 76 | `result-track:82ef0a24ad4c82f27a514c535f00334fc22d8a900575419e0c082797634420ca` |
| 9 | `instance` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/instance--b7429da2c11b85660be44cb9.md) | 79 | `declaration-track:b7429da2c11b85660be44cb97ac233ec8f39fb74bfbf47442d96c9b33f8423a4` |
| 10 | `theorem` | [simply_connected_iff_paths_homotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/simply-connected-iff-paths-homotopic--c6e49e8278cdede2a88f7fcc.md) | 88 | `result-track:c6e49e8278cdede2a88f7fcc370d4b5fd10a6757638c39a1139e38b4329707f8` |
| 11 | `theorem` | [simply_connected_iff_paths_homotopic'](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/simply-connected-iff-paths-homotopic--395ca58391702b3867ebb04f.md) | 96 | `result-track:395ca58391702b3867ebb04faae117986af3cff225fa9891a2352740f70eb771` |
| 12 | `theorem` | [simply_connected_iff_loops_nullhomotopic](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/simply-connected-iff-loops-nullhomotopic--97bed77f8f64526fce0f848b.md) | 106 | `result-track:97bed77f8f64526fce0f848b673e1110855751e996859df99cfe31b45e74d6cb` |
| 13 | `def` | [IsSimplyConnected](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/issimplyconnected--240725da4e7f89d99c688eed.md) | 134 | `declaration-track:240725da4e7f89d99c688eed62e6656ba94fe23f92884735e7a2e95258529885` |
| 14 | `theorem` | [IsSimplyConnected.simplyConnectedSpace](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/issimplyconnected-simplyconnectedspace--a775f50e2eadcbb47d1b8e6d.md) | 136 | `result-track:a775f50e2eadcbb47d1b8e6d6c3043778c54a8eb4d96827f06dcca5b8cd38857` |
| 15 | `theorem` | [IsSimplyConnected.isPathConnected](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/issimplyconnected-ispathconnected--9cb1c0b733bd9a1abf91c3f0.md) | 139 | `result-track:9cb1c0b733bd9a1abf91c3f09e96bee00513dd4b2c3a44005ab165ab6cd520d8` |
| 16 | `theorem` | [IsSimplyConnected.nonempty](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/issimplyconnected-nonempty--da7d239fcbf55c6cd899cbcb.md) | 144 | `result-track:da7d239fcbf55c6cd899cbcba3a51161b1d623112fb7bf43b9d39f6f4faa24eb` |
| 17 | `theorem` | [Topology.IsEmbedding.isSimplyConnected_image](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/topology-isembedding-issimplyconnected-image--f90dbe35ee85026d8e74f468.md) | 147 | `result-track:f90dbe35ee85026d8e74f4687cb01341602868a54cf1dc5392c8e25ec2dae405` |
| 18 | `theorem` | [Homeomorph.isSimplyConnected_image](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/homeomorph-issimplyconnected-image--774132b7f5dbc7a168c02433.md) | 153 | `result-track:774132b7f5dbc7a168c02433af455be31e5ef98de45e6cf9eb9f373b6f501c7f` |
| 19 | `theorem` | [Homeomorph.isSimplyConnected_preimage](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/homeomorph-issimplyconnected-preimage--94901c571ac940d9cd057a4a.md) | 158 | `result-track:94901c571ac940d9cd057a4ab057eff1047eb11ef588d67192f2a5514130944c` |
| 20 | `theorem` | [isSimplyConnected_iff_exists_homotopy_refl_forall_mem](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/issimplyconnected-iff-exists-homotopy-refl-forall-mem--2160c6f9f683b339d56aad59.md) | 164 | `result-track:2160c6f9f683b339d56aad595ae7e34a5729d22939331d8254867f31fcb412ab` |
| 21 | `theorem` | [isSimplyConnected_smul_set_iff](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/issimplyconnected-smul-set-iff--8c34be093c09f99b95949fa9.md) | 188 | `result-track:8c34be093c09f99b95949fa930b6b597e970795966792d540521872c389fde86` |
| 22 | `theorem` | [isSimplyConnected_smul_set₀_iff](../../../../../mathematics/Topology/AlgebraicTopology/SimplyConnected/Variantcbd3c439378bd8f618cc2cbac4da35a6fa7b11f19a78db04b4f67b9870804ae7.lean/declarations/issimplyconnected-smul-set-iff--8c403b07191ddbb57db0de73.md) | 194 | `result-track:8c403b07191ddbb57db0de73f1735374cd46a8eae41e919b5ec0905290128f7f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
