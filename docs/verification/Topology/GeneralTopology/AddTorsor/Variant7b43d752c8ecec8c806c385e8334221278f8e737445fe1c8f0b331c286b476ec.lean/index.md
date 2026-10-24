# Verification target: GRWTSK.Topology.GeneralTopology.AddTorsor.Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "296b9013ca14defcc82b40f1b1b8162a78f3e7ce",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `296b9013ca14defcc82b40f1b1b8162a78f3e7ce`.

Source path: `GRWTSK/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Submodule` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace.Basic` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Midpoint` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.MetricSpace.IsometricSMul` — import line 14; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Metrizable.Uniformity` — import line 15; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Sequences` — import line 16; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormedAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/normedaddtorsor--3a5c17399de2236a3be25893.md) | 42 | `declaration-track:3a5c17399de2236a3be25893acc4bf1fe8879c4b8cbd9515e07312b33f1c37a3` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/instance--34a0b5f73d88254a19a42b9e.md) | 47 | `declaration-track:34a0b5f73d88254a19a42b9e7f3ecbfe17091fb1da347698e5bb495166e3c296` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/instance--63530f722e1abe106c3a4b29.md) | 54 | `declaration-track:63530f722e1abe106c3a4b291a2bdf502fe8fae9f54341d2e902f59bbb011f6b` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/instance--e2614bd7c217f0c5eac41f26.md) | 59 | `declaration-track:e2614bd7c217f0c5eac41f269fc92b33a37d165865bde00d6219bc86b9adca28` |
| 5 | `instance` | [AffineSubspace.toNormedAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/affinesubspace-tonormedaddtorsor--f5f38c75f86144337b5e5586.md) | 64 | `declaration-track:f5f38c75f86144337b5e5586f175282ccc44b89a4efa9ff10de7c6e56c81d6bf` |
| 6 | `theorem` | [dist_eq_norm_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/dist-eq-norm-vsub--f4cf6baff0a77991d4010e64.md) | 76 | `result-track:f4cf6baff0a77991d4010e645fbf0cc335bfed73caa019e2983046724c6703a7` |
| 7 | `theorem` | [nndist_eq_nnnorm_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/nndist-eq-nnnorm-vsub--5cc19b06bdd0efaa000e5f40.md) | 79 | `result-track:5cc19b06bdd0efaa000e5f404d6a73319d0c1da0eb96229c1a9d97a662917ad1` |
| 8 | `theorem` | [dist_eq_norm_vsub'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/dist-eq-norm-vsub--025795e4c710378f87c6da46.md) | 86 | `result-track:025795e4c710378f87c6da460dc246b20ad7e4a91c9faf46eb19ed4b092edfb8` |
| 9 | `theorem` | [nndist_eq_nnnorm_vsub'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/nndist-eq-nnnorm-vsub--306b40f43d86ccad7ca71855.md) | 89 | `result-track:306b40f43d86ccad7ca71855aca6e3d3868d41ed4d83722054c9a9b80a645b17` |
| 10 | `theorem` | [dist_vadd_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/dist-vadd-cancel-left--34bbe75c4b60d2f8de553b23.md) | 94 | `result-track:34bbe75c4b60d2f8de553b236bb562a3783638a51d4de0b333f4ca440481472f` |
| 11 | `theorem` | [nndist_vadd_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/nndist-vadd-cancel-left--a5af647557b26ce2ada4354b.md) | 97 | `result-track:a5af647557b26ce2ada4354b462634cef95baa4e34ed13fc750ada18115bb5c1` |
| 12 | `theorem` | [dist_vadd_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/dist-vadd-cancel-right--829a61a7b283510b84dbf018.md) | 101 | `result-track:829a61a7b283510b84dbf018955bfc453bc8698ce7c2ca18b994712baa252d63` |
| 13 | `theorem` | [nndist_vadd_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/nndist-vadd-cancel-right--853f606e32daf37210d94a7a.md) | 105 | `result-track:853f606e32daf37210d94a7a97a393d98828d544fa9be3bb452eae7c353c1026` |
| 14 | `theorem` | [dist_vadd_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/dist-vadd-left--cb59609982773e54d104b7f6.md) | 109 | `result-track:cb59609982773e54d104b7f6e9da82ad31c4de6e00a9dee8a7bee88a2c288daf` |
| 15 | `theorem` | [nndist_vadd_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/nndist-vadd-left--3d4b2be9516948e2ed152292.md) | 113 | `result-track:3d4b2be9516948e2ed1522928017c6a45e912850dbda346db83f902857cb7532` |
| 16 | `theorem` | [dist_vadd_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/dist-vadd-right--7420b18fe5aacf6b4ae356e9.md) | 117 | `result-track:7420b18fe5aacf6b4ae356e9fea45b71e7609782799a3cf8af6a48b89d5a3edb` |
| 17 | `theorem` | [nndist_vadd_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/nndist-vadd-right--416600d50515a8f759d27e16.md) | 120 | `result-track:416600d50515a8f759d27e1644fd07dc148a45f9535d81d33c2acc20ecebe577` |
| 18 | `def` | [IsometryEquiv.vaddConst](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/isometryequiv-vaddconst--d5b6c9739629afadd6cbac85.md) | 126 | `declaration-track:d5b6c9739629afadd6cbac858f9479a038157f2606b1cb2596d9ae9337b2b7f7` |
| 19 | `theorem` | [dist_vsub_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/dist-vsub-cancel-left--e2eb4650a36f9206cce89f16.md) | 131 | `result-track:e2eb4650a36f9206cce89f161070fc81d03fd5825673f18fe4a369b79acf812c` |
| 20 | `theorem` | [nndist_vsub_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/nndist-vsub-cancel-left--c727fe85aa5c0c9d1a142c41.md) | 135 | `result-track:c727fe85aa5c0c9d1a142c41d831f815b1e6b0aadc8146184436b3c313364c13` |
| 21 | `def` | [IsometryEquiv.constVSub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/isometryequiv-constvsub--c307bdb06f6d5a4ea341bc68.md) | 141 | `declaration-track:c307bdb06f6d5a4ea341bc687ab1cd4afbca06b9b9a17132bb7a5566a0e46ca5` |
| 22 | `theorem` | [dist_vsub_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/dist-vsub-cancel-right--16fa30a2c3cd9221c85a0768.md) | 146 | `result-track:16fa30a2c3cd9221c85a0768aa71d2ffe5586f346fe0b6d0629f7ff690c3bce5` |
| 23 | `theorem` | [nndist_vsub_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/nndist-vsub-cancel-right--a30ef248edc1ecc658bb7e39.md) | 150 | `result-track:a30ef248edc1ecc658bb7e39cf9cf0519080a6fa63098c908bd65230276d1d4b` |
| 24 | `theorem` | [dist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/dist-vadd-vadd-le--200860688704f89302c658c3.md) | 153 | `result-track:200860688704f89302c658c354cda602dc3686e2d6c7624036d1d5023959f906` |
| 25 | `theorem` | [nndist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/nndist-vadd-vadd-le--1346a1b6d5b70366bcbd1b9f.md) | 157 | `result-track:1346a1b6d5b70366bcbd1b9f33e8de6b78562679cb5e63d91a01fb27c3f84ff6` |
| 26 | `theorem` | [dist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/dist-vsub-vsub-le--72ca9e9af33c4f2d5e445694.md) | 161 | `result-track:72ca9e9af33c4f2d5e445694b79ac3d9fcd530e09a50b71a62d4a761af2d2e52` |
| 27 | `theorem` | [nndist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/nndist-vsub-vsub-le--61af28440358e731ad90dbdd.md) | 166 | `result-track:61af28440358e731ad90dbddd8d65e6175b5580eedea07e5355fe5d7dd66fd79` |
| 28 | `theorem` | [edist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/edist-vadd-vadd-le--1e88563b9adbb024ad5aca08.md) | 170 | `result-track:1e88563b9adbb024ad5aca084d95d3a892d058dcdd8cb82c3e981972902638e7` |
| 29 | `theorem` | [edist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/edist-vsub-vsub-le--071a191e588d20b6560dd86c.md) | 176 | `result-track:071a191e588d20b6560dd86c681da6a3bbf7c9569193922c2ed589e36f844125` |
| 30 | `def` | [pseudoMetricSpaceOfNormedAddCommGroupOfAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/pseudometricspaceofnormedaddcommgroupofaddtorsor--ef50d84889dcc689add913db.md) | 184 | `declaration-track:ef50d84889dcc689add913dbc2824f51059c54db32cb8078c2cc5315359c7f75` |
| 31 | `def` | [metricSpaceOfNormedAddCommGroupOfAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/metricspaceofnormedaddcommgroupofaddtorsor--b2cf33ba00d91f0072ac7682.md) | 195 | `declaration-track:b2cf33ba00d91f0072ac768213792f4010be95149b3dbcf82bd153eacfc935e9` |
| 32 | `theorem` | [LipschitzWith.vadd](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/lipschitzwith-vadd--ddc699c9454006dad3e5fb41.md) | 205 | `result-track:ddc699c9454006dad3e5fb415d9ebb3355cfd482cf3cf51ed6d4da15d850a804` |
| 33 | `theorem` | [LipschitzWith.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/lipschitzwith-vsub--5e7f5bb364afa570f90f7533.md) | 214 | `result-track:5e7f5bb364afa570f90f7533d0e308f34db25c5eb605631ed66f8a5cef21df18` |
| 34 | `theorem` | [uniformContinuous_vadd](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/uniformcontinuous-vadd--e9718d2615bf7b866580a9c2.md) | 223 | `result-track:e9718d2615bf7b866580a9c2f4b07d440a803a282c412d98592cc1d43281e944` |
| 35 | `theorem` | [uniformContinuous_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/uniformcontinuous-vsub--b3d66b42c5eb92739b74f91b.md) | 226 | `result-track:b3d66b42c5eb92739b74f91b2ba6ea3ee2fb576474966548515337c5fe9b0829` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/instance--cd8943950a2ed6db692c5195.md) | 229 | `declaration-track:cd8943950a2ed6db692c5195d8459260127acd39e0f4c87c172387708d6928d2` |
| 37 | `theorem` | [continuous_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/continuous-vsub--952592a92d63a8fc9a2b419d.md) | 232 | `result-track:952592a92d63a8fc9a2b419d37b104f9fc7589baf330e43016bddc95df0a2307` |
| 38 | `theorem` | [Filter.Tendsto.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/filter-tendsto-vsub--2023d9af56e2f0e3fc988ccb.md) | 235 | `result-track:2023d9af56e2f0e3fc988ccb8d4688f368cc60fc434d915d79a7fb93de8fddb0` |
| 39 | `theorem` | [Continuous.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/continuous-vsub--aafeceffc564f38905ccdb04.md) | 244 | `result-track:aafeceffc564f38905ccdb0473b3f1d1fe98d8a7949daf33fb4b5bde6d63914d` |
| 40 | `theorem` | [ContinuousAt.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/continuousat-vsub--3b9334c2798fd75b202c0518.md) | 249 | `result-track:3b9334c2798fd75b202c05181d63a9829a127d0658c251ed9dd16ffae4dccdaf` |
| 41 | `theorem` | [ContinuousWithinAt.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/continuouswithinat-vsub--453f2609c33e4ef59506d129.md) | 255 | `result-track:453f2609c33e4ef59506d129a66401179773bc9d9011ae656bb4bf8db3218c0a` |
| 42 | `theorem` | [ContinuousOn.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/continuouson-vsub--e8787293208e124f24a2e13b.md) | 261 | `result-track:e8787293208e124f24a2e13b394f6bdbe8962d2ea778dc7f0a4caceece424952` |
| 43 | `theorem` | [Filter.Tendsto.lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/filter-tendsto-linemap--68238203ee1879246cab0f88.md) | 271 | `result-track:68238203ee1879246cab0f885199262765cf0cc8b8f2abe1bd5fc0cf21f3df76` |
| 44 | `theorem` | [Filter.Tendsto.midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/filter-tendsto-midpoint--182e5a69970e02a590f30cd7.md) | 276 | `result-track:182e5a69970e02a590f30cd73e9eff2515690da021e0f7ab3e43f327490f4e8e` |
| 45 | `theorem` | [IsClosed.vadd_right_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variant7b43d752c8ecec8c806c385e8334221278f8e737445fe1c8f0b331c286b476ec.lean/declarations/isclosed-vadd-right-of-iscompact--743671ef79bd06d36ab78087.md) | 287 | `result-track:743671ef79bd06d36ab780879082b3c790efdf7fffba288bd64229500ed459e3` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
