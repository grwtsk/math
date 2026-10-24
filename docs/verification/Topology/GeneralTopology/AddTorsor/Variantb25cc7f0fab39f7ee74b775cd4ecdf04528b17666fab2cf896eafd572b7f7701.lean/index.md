# Verification target: GRWTSK.Topology.GeneralTopology.AddTorsor.Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "61c50c3373e7a00ad220da4766eb6143b6509407",
  "lexical_observation_count": 45,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/index.md) · [Full source](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `61c50c3373e7a00ad220da4766eb6143b6509407`.

Source path: `GRWTSK/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Analysis.Normed.Group.Basic` — import line 11; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.AffineSubspace` — import line 12; external provider; requires a separately pinned dependency.
- `Mathlib.LinearAlgebra.AffineSpace.Midpoint` — import line 13; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `class` | [NormedAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/normedaddtorsor--f0044e9fa4c0e56d8736f5ae.md) | 41 | `declaration-track:f0044e9fa4c0e56d8736f5ae76bf8b72f26599710e6300c0c6dd02181fd73589` |
| 2 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/instance--e0a982582153a587d03c98ef.md) | 47 | `declaration-track:e0a982582153a587d03c98ef60ceb4878e8f0fa5b936c231af3479a4b8f8f14d` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/instance--0afe629f95c4f913e21f1855.md) | 55 | `declaration-track:0afe629f95c4f913e21f1855a5f4d272b295438e019ef605f813c47673a0e88c` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/instance--6eab6ce443e018f7837f1567.md) | 62 | `declaration-track:6eab6ce443e018f7837f15679ba7c6dc110ae3cb93788c04ad52aac02155e76c` |
| 5 | `instance` | [AffineSubspace.toNormedAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/affinesubspace-tonormedaddtorsor--6d9a089409b417c4b2cc9d3f.md) | 68 | `declaration-track:6d9a089409b417c4b2cc9d3f1596dad44499899b9965fe6ea803a374c739177c` |
| 6 | `theorem` | [dist_eq_norm_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/dist-eq-norm-vsub--8218bcd2bf3f9ef0dc81b363.md) | 81 | `result-track:8218bcd2bf3f9ef0dc81b3635131c6690a518cb96c176aab3f5fc4b68f309f9c` |
| 7 | `theorem` | [nndist_eq_nnnorm_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/nndist-eq-nnnorm-vsub--8ba9fb3cfc0b607e1c303a9b.md) | 85 | `result-track:8ba9fb3cfc0b607e1c303a9b1371302b7a1d78331a1ddf364b21056316f972d2` |
| 8 | `theorem` | [dist_eq_norm_vsub'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/dist-eq-norm-vsub--0d036857818cee532fc9582a.md) | 93 | `result-track:0d036857818cee532fc9582ac49ea965e47d2b7630f92b20f44b815fa6c1d8b9` |
| 9 | `theorem` | [nndist_eq_nnnorm_vsub'](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/nndist-eq-nnnorm-vsub--6477fb32d5d70bb01633e015.md) | 97 | `result-track:6477fb32d5d70bb01633e015f40c1ba623205facd877b3cfad5584624e6f63eb` |
| 10 | `theorem` | [dist_vadd_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/dist-vadd-cancel-left--7a6b25d0159f8071797e02b1.md) | 103 | `result-track:7a6b25d0159f8071797e02b121da57b31e1e8a20d524b9856d2105944e00199c` |
| 11 | `theorem` | [nndist_vadd_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/nndist-vadd-cancel-left--6baf49960f584867d77dd7bf.md) | 108 | `result-track:6baf49960f584867d77dd7bf383a659002b46eb8e1e45a7ca6fa8539f3995ff6` |
| 12 | `theorem` | [dist_vadd_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/dist-vadd-cancel-right--923634c7cbb18a8935930d94.md) | 112 | `result-track:923634c7cbb18a8935930d94c2d507ab96052b0353a50de7a123524dcc29f004` |
| 13 | `theorem` | [nndist_vadd_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/nndist-vadd-cancel-right--3962c1f26fe0926fd7df8172.md) | 117 | `result-track:3962c1f26fe0926fd7df8172ec8757b408eb33686fd1a6b463a5ab50c88450f1` |
| 14 | `theorem` | [dist_vadd_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/dist-vadd-left--46076948ba554860e260c307.md) | 122 | `result-track:46076948ba554860e260c307e0887313ea7678bd7c4b4476e1f9c9cff52f0005` |
| 15 | `theorem` | [nndist_vadd_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/nndist-vadd-left--7bd1e4d817414e188f98cedc.md) | 128 | `result-track:7bd1e4d817414e188f98cedcb844c701c9e80e45de3cd745e8b7cfef120b2b1d` |
| 16 | `theorem` | [dist_vadd_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/dist-vadd-right--191ce93866a92c459d3b8246.md) | 133 | `result-track:191ce93866a92c459d3b82468c86c47b58dbfa0a524bbb77fbc18bd246f7c74d` |
| 17 | `theorem` | [nndist_vadd_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/nndist-vadd-right--698d5f9e8508c23d19f878c2.md) | 137 | `result-track:698d5f9e8508c23d19f878c28d6acbbf67ebd15b6fc0d9bd4cd919b282dc9350` |
| 18 | `def` | [IsometryEquiv.vaddConst](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/isometryequiv-vaddconst--d363a85a77ac192cbe31c4bc.md) | 144 | `declaration-track:d363a85a77ac192cbe31c4bccf9f7f832bac1b01e3c032f17c6d644fdf608cab` |
| 19 | `theorem` | [dist_vsub_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/dist-vsub-cancel-left--98d80b4e7e223924c6056bea.md) | 150 | `result-track:98d80b4e7e223924c6056beaeed28c21ec6ddc39e33b55f09226e805351a601d` |
| 20 | `theorem` | [nndist_vsub_cancel_left](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/nndist-vsub-cancel-left--51623a9c690cd1e153e46082.md) | 156 | `result-track:51623a9c690cd1e153e46082c99f0faa50449b84a0b2f358de0b50845b1ce691` |
| 21 | `def` | [IsometryEquiv.constVSub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/isometryequiv-constvsub--efe2b05ef72cc95befbbaf74.md) | 162 | `declaration-track:efe2b05ef72cc95befbbaf747d60d3cac9dc598cfcd1c1b902da53044057054b` |
| 22 | `theorem` | [dist_vsub_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/dist-vsub-cancel-right--83695bc42c8ecfef09792704.md) | 168 | `result-track:83695bc42c8ecfef0979270477d188f5125931d7ffcff9e0ff0b4ef1a53e2bed` |
| 23 | `theorem` | [nndist_vsub_cancel_right](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/nndist-vsub-cancel-right--202f4ddb23ada9cb8a04364c.md) | 173 | `result-track:202f4ddb23ada9cb8a04364ca350f86ebcd93be3a838808475408d6a3e7b7b02` |
| 24 | `theorem` | [dist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/dist-vadd-vadd-le--6296dccd75d0ae4ddc78677b.md) | 177 | `result-track:6296dccd75d0ae4ddc78677b2876920cd277b92756efe007e90a298ee8af07dd` |
| 25 | `theorem` | [nndist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/nndist-vadd-vadd-le--29c409f3a13c601dfc5006d2.md) | 183 | `result-track:29c409f3a13c601dfc5006d261215d9848d4c5c924cac49aca7e02a930c49098` |
| 26 | `theorem` | [dist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/dist-vsub-vsub-le--9b4e8e92474230eb12bcfda8.md) | 188 | `result-track:9b4e8e92474230eb12bcfda80d873af259a35334bc75ac6a6d9ee93a0f5cf03d` |
| 27 | `theorem` | [nndist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/nndist-vsub-vsub-le--d3187271df29e110b7c3011f.md) | 194 | `result-track:d3187271df29e110b7c3011f9f4742eb937dcc66e89ca4c918d4206f77b9f29f` |
| 28 | `theorem` | [edist_vadd_vadd_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/edist-vadd-vadd-le--b111c5913e203218c1ad980e.md) | 200 | `result-track:b111c5913e203218c1ad980e8113c6d06139481646559ae42f75c8e8e82cd88d` |
| 29 | `theorem` | [edist_vsub_vsub_le](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/edist-vsub-vsub-le--c84290767354e8a8b948a487.md) | 207 | `result-track:c84290767354e8a8b948a48709b2b9e41eb110949509d206ec611507b3092b7f` |
| 30 | `def` | [pseudoMetricSpaceOfNormedAddCommGroupOfAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/pseudometricspaceofnormedaddcommgroupofaddtorsor--8265570dc4525c3460498cc8.md) | 216 | `declaration-track:8265570dc4525c3460498cc804ce0bb3140a1da3f083fb4615f58333d2f41736` |
| 31 | `def` | [metricSpaceOfNormedAddCommGroupOfAddTorsor](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/metricspaceofnormedaddcommgroupofaddtorsor--51c7afb02b315c6958980767.md) | 231 | `declaration-track:51c7afb02b315c6958980767da2ca67518a6f3f1c2417f24e11528718d241486` |
| 32 | `theorem` | [LipschitzWith.vadd](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/lipschitzwith-vadd--4e26b86e996324d8dfa3c7c9.md) | 244 | `result-track:4e26b86e996324d8dfa3c7c94f627bd662523a22ed662e982c3154acc4488dea` |
| 33 | `theorem` | [LipschitzWith.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/lipschitzwith-vsub--3869673e32b9f78ca0b741ff.md) | 254 | `result-track:3869673e32b9f78ca0b741ffaa9c2c24c567e92c5210de2cd5978b74e40d3897` |
| 34 | `theorem` | [uniformContinuous_vadd](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/uniformcontinuous-vadd--5c0074645f9748b3917ab475.md) | 264 | `result-track:5c0074645f9748b3917ab475f198c79a571525104f1ead97b00ef23804a22d9b` |
| 35 | `theorem` | [uniformContinuous_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/uniformcontinuous-vsub--aebf7bb1782f9b78901d710e.md) | 268 | `result-track:aebf7bb1782f9b78901d710ef055c9ae52c98f4795604abe6251a95c7273ec03` |
| 36 | `instance` | [(anonymous)](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/instance--db176551a507557211dac1af.md) | 272 | `declaration-track:db176551a507557211dac1afbf986c045b6b94ce51197bde6429b80006274e71` |
| 37 | `theorem` | [continuous_vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/continuous-vsub--2ff52c7ebc80ed037721c073.md) | 276 | `result-track:2ff52c7ebc80ed037721c073cc6fb1b44b8f5f619f85f457b2bd43e5bf1cb43d` |
| 38 | `theorem` | [Filter.Tendsto.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/filter-tendsto-vsub--4fb78feb344a6697c4dfe7b3.md) | 280 | `result-track:4fb78feb344a6697c4dfe7b3fe682135e4b43a415bb35eee69cd1ad4072941f6` |
| 39 | `theorem` | [Continuous.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/continuous-vsub--5b9363fb63d7a3dfd86bae0c.md) | 289 | `result-track:5b9363fb63d7a3dfd86bae0cb1ec8b181bdd53a6dc8625bf5850a74a73a488f1` |
| 40 | `theorem` | [ContinuousAt.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/continuousat-vsub--c6ac8140258483589a940432.md) | 294 | `result-track:c6ac8140258483589a940432e18f21298fb79c08379313552d33404ceb2adb6b` |
| 41 | `theorem` | [ContinuousWithinAt.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/continuouswithinat-vsub--a74d96b292801467a566a5e9.md) | 300 | `result-track:a74d96b292801467a566a5e982e381bd21a2c1509a4f80b6c41431ec21b3ca56` |
| 42 | `theorem` | [ContinuousOn.vsub](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/continuouson-vsub--ccba44eb25d55e48c870a38f.md) | 306 | `result-track:ccba44eb25d55e48c870a38fa3111f6929cd767b15e4f6d8a3deef9d6914b55c` |
| 43 | `theorem` | [Filter.Tendsto.lineMap](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/filter-tendsto-linemap--cc7ff2e91c589d51f351c975.md) | 316 | `result-track:cc7ff2e91c589d51f351c975590cada683ee1fd38bb59aac129a1cab1215e19c` |
| 44 | `theorem` | [Filter.Tendsto.midpoint](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/filter-tendsto-midpoint--1d4a36eb662808557784f78f.md) | 322 | `result-track:1d4a36eb662808557784f78f65caee4da245f8503082f51f20d7144146a54ab8` |
| 45 | `theorem` | [IsClosed.vadd_right_of_isCompact](../../../../../mathematics/Topology/GeneralTopology/AddTorsor/Variantb25cc7f0fab39f7ee74b775cd4ecdf04528b17666fab2cf896eafd572b7f7701.lean/declarations/isclosed-vadd-right-of-iscompact--0f1d83a0cc9e11c0ca32cabe.md) | 334 | `result-track:0f1d83a0cc9e11c0ca32cabe7f484ed565670a4284b5632adf9b459604a0a838` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
