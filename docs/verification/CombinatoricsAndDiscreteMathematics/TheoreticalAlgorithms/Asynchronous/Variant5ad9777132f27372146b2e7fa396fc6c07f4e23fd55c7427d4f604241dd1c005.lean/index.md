# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Asynchronous.Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "5bbfa8d1f2ba8d75d2081fb4d543019b177d1881",
  "lexical_observation_count": 24,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/index.md) · [Full source](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `5bbfa8d1f2ba8d75d2081fb4d543019b177d1881`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.BooleanNetwork` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [BooleanNetwork.AsynchronousNetwork](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork--9cf55e2fe73c3c71fbbc9eff.md) | 6 | `declaration-track:9cf55e2fe73c3c71fbbc9eff123505c3ff0ad341fd55806c4b69bccc5d58a7f2` |
| 2 | `def` | [BooleanNetwork.AsynchronousNetwork.updateAt](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-updateat--86fbcf2f68e6cb0d3f800558.md) | 10 | `declaration-track:86fbcf2f68e6cb0d3f800558e3cbf3c2a794c5040e7c331852ee57919a8b64af` |
| 3 | `def` | [BooleanNetwork.AsynchronousNetwork.Step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-step--a22e2287e390505c7b294a8c.md) | 22 | `declaration-track:a22e2287e390505c7b294a8ceff5429f6ae1708390dcdc12ecd724b8f7ee5c52` |
| 4 | `theorem` | [BooleanNetwork.AsynchronousNetwork.updateAt_same](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-updateat-same--3fa22f01be0d1683bcadcbab.md) | 28 | `result-track:3fa22f01be0d1683bcadcbab50831e0147de95c6c05df582282e13cfc2610087` |
| 5 | `theorem` | [BooleanNetwork.AsynchronousNetwork.updateAt_other](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-updateat-other--6049cbd84376f1113aa944d9.md) | 35 | `result-track:6049cbd84376f1113aa944d97f3bc449552982799892177a9ae06d0266a99c01` |
| 6 | `def` | [BooleanNetwork.AsynchronousNetwork.run](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-run--08f7b3ef0f2d07e1e4d68233.md) | 44 | `declaration-track:08f7b3ef0f2d07e1e4d682335b7dcae2716e5705712725832b26a37eff52c469` |
| 7 | `def` | [BooleanNetwork.AsynchronousNetwork.trajectory](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-trajectory--867d497b4e91a744bbb59894.md) | 52 | `declaration-track:867d497b4e91a744bbb5989493bcf5a76ddc5d7e811d16c44c56e0d83fb39e75` |
| 8 | `def` | [BooleanNetwork.AsynchronousNetwork.FollowsSchedule](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-followsschedule--1e37e96751246abec1280db7.md) | 63 | `declaration-track:1e37e96751246abec1280db7daa39f42f8699dd1c70fff4abb228c451a2fd5a4` |
| 9 | `def` | [BooleanNetwork.AsynchronousNetwork.Reachable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-reachable--d54766c396a737b6b1636a67.md) | 71 | `declaration-track:d54766c396a737b6b1636a67a00f6567a2db5e6cd3968bc7a006d8af52e00e70` |
| 10 | `def` | [BooleanNetwork.AsynchronousNetwork.StableCoordinate](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-stablecoordinate--4b532815dce137ec0489e2fa.md) | 79 | `declaration-track:4b532815dce137ec0489e2fae937a645faf77d94107fa4fc2d3f9e17306744ed` |
| 11 | `def` | [BooleanNetwork.AsynchronousNetwork.StableState](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-stablestate--f58b162435b2a1bdbd8d6713.md) | 87 | `declaration-track:f58b162435b2a1bdbd8d671325e0d956c801fd73c195e00516c083398744b638` |
| 12 | `def` | [BooleanNetwork.AsynchronousNetwork.FixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-fixedpoint--46c95146f485750641ea9c47.md) | 95 | `declaration-track:46c95146f485750641ea9c47fad3cf2f494726a16993def27cc036ac1d1acfcd` |
| 13 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-run-nil--b0589319d6247efe5e904320.md) | 101 | `result-track:b0589319d6247efe5e90432029cff4f62e0a6e4f0eeba102d971775f6508632b` |
| 14 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-run-cons--b804b3d0484dd60f64649f58.md) | 106 | `result-track:b804b3d0484dd60f64649f5820fcf5d2729907a4df3717e71ec013629ee80fe1` |
| 15 | `theorem` | [BooleanNetwork.AsynchronousNetwork.trajectory_nil](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-trajectory-nil--d0a1226026ade350286401ce.md) | 114 | `result-track:d0a1226026ade350286401ce072d1d1aeb215b5cb0faae4219f6bdde33c8ec2a` |
| 16 | `theorem` | [BooleanNetwork.AsynchronousNetwork.trajectory_cons](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-trajectory-cons--22d9effab96d738f57ebcd63.md) | 119 | `result-track:22d9effab96d738f57ebcd63da01f93caeee43c5721db48f48597893fbd06e8e` |
| 17 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_append](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-run-append--611f28a1e23edb079c36ebba.md) | 127 | `result-track:611f28a1e23edb079c36ebbaff1de4a9eca9ff52e7a21a3a1f3e0103f8f4cff0` |
| 18 | `theorem` | [BooleanNetwork.AsynchronousNetwork.reachable_refl](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-reachable-refl--91770f58a13738f88d679d29.md) | 137 | `result-track:91770f58a13738f88d679d297c8dc4dff051893d51583d60b52475040e1eeaec` |
| 19 | `theorem` | [BooleanNetwork.AsynchronousNetwork.reachable_step](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-reachable-step--5fe9ac3b56527c5ebcb9cf36.md) | 143 | `result-track:5fe9ac3b56527c5ebcb9cf36d076ed589ca732c33406828f8da9ec92bf5c739f` |
| 20 | `theorem` | [BooleanNetwork.AsynchronousNetwork.reachable_trans](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-reachable-trans--665a31dc0fe202394c74c21f.md) | 150 | `result-track:665a31dc0fe202394c74c21f78e683faa1d8eaaf7eb2485ae65be8b6f12611c3` |
| 21 | `theorem` | [BooleanNetwork.AsynchronousNetwork.updateAt_eq_self_of_stable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-updateat-eq-self-of-stable--0c8b3c793ec3adcbc7cbdb63.md) | 162 | `result-track:0c8b3c793ec3adcbc7cbdb63944fdfa53e3fe07e9b721d21ffc34ac9b23332fc` |
| 22 | `theorem` | [BooleanNetwork.AsynchronousNetwork.fixedPoint_of_stable](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-fixedpoint-of-stable--1a6b8e4d3ba30e3bbe4d0e3b.md) | 175 | `result-track:1a6b8e4d3ba30e3bbe4d0e3bcfb691adc7e48be6488fd976a53aefcac6370fd7` |
| 23 | `theorem` | [BooleanNetwork.AsynchronousNetwork.stable_of_fixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-stable-of-fixedpoint--5b60dc30b4ee8ea1d50d1715.md) | 183 | `result-track:5b60dc30b4ee8ea1d50d1715ad483f2545a93d30fac900e1970f9debf5dc67e0` |
| 24 | `theorem` | [BooleanNetwork.AsynchronousNetwork.run_of_fixedPoint](../../../../../mathematics/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Asynchronous/Variant5ad9777132f27372146b2e7fa396fc6c07f4e23fd55c7427d4f604241dd1c005.lean/declarations/booleannetwork-asynchronousnetwork-run-of-fixedpoint--77a898f12878386a1022dd49.md) | 193 | `result-track:77a898f12878386a1022dd49f5a1cf9e78260c6a095df6d1625d7510b717920c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
