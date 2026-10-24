# Verification target: GRWTSK.Geometry.DifferentialGeometry.Riemannian.Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "44d869fcdf20f0434a3b85af9203d9b2b536ac0c",
  "lexical_observation_count": 21,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `44d869fcdf20f0434a3b85af9203d9b2b536ac0c`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean.json)

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
| 1 | `class` | [IsContMDiffRiemannianBundle](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/iscontmdiffriemannianbundle--09dcf8c46b9979bcbe27d6a6.md) | 75 | `declaration-track:09dcf8c46b9979bcbe27d6a62bab78b397cd0be1087178fd4a1595e47c59dea3` |
| 2 | `lemma` | [IsContMDiffRiemannianBundle.of_le](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/iscontmdiffriemannianbundle-of-le--4851c1d10543624da073265e.md) | 81 | `result-track:4851c1d10543624da073265e10852dcfcd4c9c7d9e3016da292904cc400f1f68` |
| 3 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/instance--c350d61ac4092d97e7dd6884.md) | 86 | `declaration-track:c350d61ac4092d97e7dd688419c5405b9e4d6d3d00fd63fab1f5d5f009b6d849` |
| 4 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/instance--6d16c8e443ad68a859206fcc.md) | 90 | `declaration-track:6d16c8e443ad68a859206fcc0c0aa251bf42db50baac3eebcb26d907c0aa69da` |
| 5 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/instance--d7400b6366d8afde07342a52.md) | 94 | `declaration-track:d7400b6366d8afde07342a52e4eba4ea2e65e255f2ec6fbba9e3400b9f1794f2` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/instance--eacd185831fc31bad5510ade.md) | 97 | `declaration-track:eacd185831fc31bad5510adec78a43bd50ff1df8137e30c35ba1c4691f6f316a` |
| 7 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/instance--d0e2e6889ca68a62a30cc1c4.md) | 100 | `declaration-track:d0e2e6889ca68a62a30cc1c45d66340c2af5e59c77ee2893b2744248d11c009f` |
| 8 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/instance--8a9e5d7e0e6f2c7375e258f7.md) | 109 | `declaration-track:8a9e5d7e0e6f2c7375e258f758369b573bec68bcbdcbc66eaf1b8320bb7bd370` |
| 9 | `lemma` | [ContMDiffWithinAt.inner_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/contmdiffwithinat-inner-bundle--628d1a3e35a2ec130f79e055.md) | 129 | `result-track:628d1a3e35a2ec130f79e0556b7fdd34a84d57250d500d9d999eebb26da4aa1d` |
| 10 | `lemma` | [ContMDiffAt.inner_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/contmdiffat-inner-bundle--306f72519bb5a343fd58176d.md) | 149 | `result-track:306f72519bb5a343fd58176d2790de9ec9cfaaeddabe5773602cb36662a0ed67` |
| 11 | `lemma` | [ContMDiffOn.inner_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/contmdiffon-inner-bundle--a65f469ebe2470717ffca0d9.md) | 157 | `result-track:a65f469ebe2470717ffca0d97c048324cb8762f43d41cbb825ed647b01f41db5` |
| 12 | `lemma` | [ContMDiff.inner_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/contmdiff-inner-bundle--fa24e7c63042a5f9db8a1015.md) | 165 | `result-track:fa24e7c63042a5f9db8a1015e8531a2d9e21cf0f58101c92de2701617b6c049e` |
| 13 | `lemma` | [MDifferentiableWithinAt.inner_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/mdifferentiablewithinat-inner-bundle--f20ad91d4ed20b337665d665.md) | 184 | `result-track:f20ad91d4ed20b337665d665b36ab70791a5072eaeb5b68dfc89c1407614abb2` |
| 14 | `lemma` | [MDifferentiableAt.inner_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/mdifferentiableat-inner-bundle--536a534fb14eacb027f4be8d.md) | 205 | `result-track:536a534fb14eacb027f4be8dcd193b0aa9c07aa23c89152a7fd03d6cd7216d72` |
| 15 | `lemma` | [MDifferentiableOn.inner_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/mdifferentiableon-inner-bundle--29a6e381c78bf6c5cfea3a46.md) | 213 | `result-track:29a6e381c78bf6c5cfea3a46fca4cb0e926d891031a320971487ca5c1d028f17` |
| 16 | `lemma` | [MDifferentiable.inner_bundle](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/mdifferentiable-inner-bundle--c18b77dc15e6ddfb43e7d702.md) | 221 | `result-track:c18b77dc15e6ddfb43e7d7022d0e4f3a36ab73a967b4beb73a28bbcb3a5fbe8a` |
| 17 | `structure` | [ContMDiffRiemannianMetric](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/contmdiffriemannianmetric--74b7440c8d23fc57a00d63c0.md) | 252 | `declaration-track:74b7440c8d23fc57a00d63c0b15e4c214fff8c1f4ecaa6ddf6cede6137583df8` |
| 18 | `def` | [ContMDiffRiemannianMetric.toContinuousRiemannianMetric](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/contmdiffriemannianmetric-tocontinuousriemannianmetric--4f97afa3bd5c2e6605d6e1fb.md) | 262 | `declaration-track:4f97afa3bd5c2e6605d6e1fb6d62f5affc0f69284802725a2fefcd430460b3a6` |
| 19 | `def` | [ContMDiffRiemannianMetric.toRiemannianMetric](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/contmdiffriemannianmetric-toriemannianmetric--592a51eabdae4bef123d1378.md) | 267 | `declaration-track:592a51eabdae4bef123d1378e2f7d5fe77e48675faca82fb764ff1d6179f2ce2` |
| 20 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/instance--51e8bdaddb67183ae2eddc76.md) | 271 | `declaration-track:51e8bdaddb67183ae2eddc764e706103a2cd3109784ec911a34eb5b6b8ea337d` |
| 21 | `instance` | [(anonymous)](../../../../../mathematics/Geometry/DifferentialGeometry/Riemannian/Variant2272b7199ca7c1cc5471bb5cb947d50b510179d3c5e412263dc0ffccf90d6e02.lean/declarations/instance--59928f5b90cb46e6f6fc09a0.md) | 287 | `declaration-track:59928f5b90cb46e6f6fc09a0ff34a3092b4146ac91059db1df9f4637e5265aba` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
