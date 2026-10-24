# Verification target: GRWTSK.Topology.GeneralTopology.LinearTopology.Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "3798230fe242e60caa151b551e94ef358e22af29",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `3798230fe242e60caa151b551e94ef358e22af29`.

Source path: `GRWTSK/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.RingTheory.TwoSidedIdeal.Operations` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.Ring.Basic` — import line 13; external provider; requires a separately pinned dependency.
- `Mathlib.Topology.Algebra.OpenSubgroup` — import line 14; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [_root_.GRWTSK.Topology.GeneralTopology.RootIsLinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.IsLinearTopology](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/root-grwtsk-topology-generaltopology-rootislineartopology-variant14f3782--5dcaa4a379e716525763f7fe.md) | 106 | `declaration-track:5dcaa4a379e716525763f7feb6ed8a246467678cb5f6f07e2f863bf373e5e7c0` |
| 2 | `lemma` | [hasBasis_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/hasbasis-submodule--ce6b673dbaf56a112dca2358.md) | 111 | `result-track:ce6b673dbaf56a112dca23589780454948de6b0d143252898d56494ec6c0b9e4` |
| 3 | `lemma` | [hasBasis_open_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/hasbasis-open-submodule--104088e4e4639544dc4e1dc5.md) | 116 | `result-track:104088e4e4639544dc4e1dc5b96bee3e84406bc2bacd42e49475815843741ca3` |
| 4 | `lemma` | [mk_of_hasBasis'](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/mk-of-hasbasis--365c8546897471e420422091.md) | 126 | `result-track:365c8546897471e420422091370cb45781c999443d5dc8f15d3d57c721239430` |
| 5 | `lemma` | [mk_of_hasBasis](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/mk-of-hasbasis--42a404aacad39426900ccf29.md) | 148 | `result-track:42a404aacad39426900ccf2913cb592e75eae3667ad9be504c212aff5060fa59` |
| 6 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootIsLinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.isLinearTopology_iff_hasBasis_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/root-grwtsk-topology-generaltopology-rootislineartopology-variant14f3782--6399a616ae22df814acc271e.md) | 155 | `result-track:6399a616ae22df814acc271e69c9e0af67babc7b56980a145e5db2430c73c363` |
| 7 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootIsLinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.isLinearTopology_iff_hasBasis_open_submodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/root-grwtsk-topology-generaltopology-rootislineartopology-variant14f3782--13c22f4ca30656eadd717a91.md) | 160 | `result-track:13c22f4ca30656eadd717a91510e5ab8a52f9d353cb821103dc0de7a8ac91bec` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/instance--cf9c8969dfc82fc33748e49c.md) | 166 | `declaration-track:cf9c8969dfc82fc33748e49cce529ce9933e28c8d12899e8b3e6f50ffef102b7` |
| 9 | `lemma` | [hasBasis_subbimodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/hasbasis-subbimodule--d74abe0226388269390fa93e.md) | 183 | `result-track:d74abe0226388269390fa93ea1ec69f410e8b89b91b8235e64b9b2b706bef63f` |
| 10 | `lemma` | [hasBasis_open_subbimodule](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/hasbasis-open-subbimodule--b821df496be54dc813fa0ce9.md) | 239 | `result-track:b821df496be54dc813fa0ce9ef0376d935552ba3f7ec8bffc045e5ddc809c9f8` |
| 11 | `theorem` | [tendsto_smul_zero](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/tendsto-smul-zero--bb970c299df555f8fbe7a98b.md) | 253 | `result-track:bb970c299df555f8fbe7a98b759c2023bbe4369ed89919763e3e39b1ad9e3a29` |
| 12 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootIsLinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.IsCentralScalar.isLinearTopology_iff](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/root-grwtsk-topology-generaltopology-rootislineartopology-variant14f3782--343b7902ce17a6ea50ba5416.md) | 264 | `result-track:343b7902ce17a6ea50ba5416e2d62bc7a006e4a678629a42ddd20ef5ddf74c45` |
| 13 | `theorem` | [hasBasis_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/hasbasis-ideal--00c9be5b558570afa0c0cdd8.md) | 278 | `result-track:00c9be5b558570afa0c0cdd8b7671abd6ff5465eb8881e6e060f1f9adfdc6afb` |
| 14 | `theorem` | [hasBasis_open_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/hasbasis-open-ideal--7dc3974c0f4a46c0f5e283d1.md) | 282 | `result-track:7dc3974c0f4a46c0f5e283d18483afef0a0de3c73d3484021d192420fa03b311` |
| 15 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootIsLinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.isLinearTopology_iff_hasBasis_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/root-grwtsk-topology-generaltopology-rootislineartopology-variant14f3782--14fcec9654d30b7c0e59d1fd.md) | 286 | `result-track:14fcec9654d30b7c0e59d1fd8604901313602bd1d7a45adaf8ab5d0c72953cb4` |
| 16 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootIsLinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.isLinearTopology_iff_hasBasis_open_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/root-grwtsk-topology-generaltopology-rootislineartopology-variant14f3782--2c2a44f7d199fd4849e4c319.md) | 291 | `result-track:2c2a44f7d199fd4849e4c319680c395d6eaa5cc878afc2db1fbc1096c7f05c0d` |
| 17 | `theorem` | [hasBasis_right_ideal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/hasbasis-right-ideal--180fdb07853012fd89eb24a8.md) | 296 | `result-track:180fdb07853012fd89eb24a8af4c5191295871894a7f81a9b3f3695011c01c7d` |
| 18 | `lemma` | [hasBasis_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/hasbasis-twosidedideal--f81793712741b2c9bf6990c7.md) | 306 | `result-track:f81793712741b2c9bf6990c7561a3382ebf57cd65044713bf257698d999e950e` |
| 19 | `lemma` | [hasBasis_open_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/hasbasis-open-twosidedideal--6879661e023aef3b88d96ddb.md) | 315 | `result-track:6879661e023aef3b88d96ddbfb68366782b18efe36fbfdfc040491296d213582` |
| 20 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootIsLinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.isLinearTopology_iff_hasBasis_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/root-grwtsk-topology-generaltopology-rootislineartopology-variant14f3782--8a6e7a28b7c86f3a84f00593.md) | 323 | `result-track:8a6e7a28b7c86f3a84f005930a8f2f445ab4ef5dfdbe926080ffad22bfff995a` |
| 21 | `theorem` | [_root_.GRWTSK.Topology.GeneralTopology.RootIsLinearTopology.Variant14f37828e73e2a1a7a9bb047a45e8ff55cbb1f2989d7c6373d6aa0d518aded14.isLinearTopology_iff_hasBasis_open_twoSidedIdeal](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/root-grwtsk-topology-generaltopology-rootislineartopology-variant14f3782--ebd5b1e95b1cdf978ab4beaf.md) | 331 | `result-track:ebd5b1e95b1cdf978ab4beafd89bcb043ee143d47a66d4e9a74a94baf3c8204e` |
| 22 | `theorem` | [tendsto_mul_zero_of_left](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/tendsto-mul-zero-of-left--7c0be11d2eaff870b52711cf.md) | 338 | `result-track:7c0be11d2eaff870b52711cfcba12ff71a82c30fef27ba8bc192bb6f049ffc6a` |
| 23 | `theorem` | [tendsto_mul_zero_of_right](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/tendsto-mul-zero-of-right--97c7165655ff862af3a9ed45.md) | 343 | `result-track:97c7165655ff862af3a9ed4553f76c039bd9f8ce6103592804797ac4c98b27e1` |
| 24 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/LinearTopology/Variant40c1ea90031c7d8872443832e518c1edc0e1b944820f1e41d0713779714b9ae0.lean/declarations/instance--694a73887d58aca55b380c56.md) | 355 | `declaration-track:694a73887d58aca55b380c56215178c74c4763ae53c5d7850904610f5bb5c9eb` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
