# Verification target: GRWTSK.Geometry.DifferentialGeometry.ContMDiffMFDeriv.Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "a30afb0689985d5c351b5975ffcf5c9998a80f5e",
  "lexical_observation_count": 20,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/index.md) · [Full source](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `a30afb0689985d5c351b5975ffcf5c9998a80f5e`.

Source path: `GRWTSK/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean.json)

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
| 1 | `theorem` | [ContMDiffWithinAt.mfderivWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiffwithinat-mfderivwithin--33ce4350925b0c48113c339e.md) | 68 | `result-track:33ce4350925b0c48113c339e8e8bfaf4fd0a8e687afd2a584b15f4af7be3aa99` |
| 2 | `theorem` | [ContMDiffWithinAt.mfderivWithin_const](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiffwithinat-mfderivwithin-const--8007671134b8f2a6b2dfb255.md) | 192 | `result-track:8007671134b8f2a6b2dfb25565af26f16468f239e9bb06bb2c96087b8979836a` |
| 3 | `theorem` | [ContMDiffWithinAt.mfderivWithin_apply](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiffwithinat-mfderivwithin-apply--219b6531facde3a2b53eb4f2.md) | 207 | `result-track:219b6531facde3a2b53eb4f20ac4c952c6a0980d31747c08d0f7efa3abeb5432` |
| 4 | `theorem` | [ContMDiffAt.mfderiv](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiffat-mfderiv--875cacf9333b4162416a1f7a.md) | 224 | `result-track:875cacf9333b4162416a1f7a9df6c27a35cf329e316c65557e3564845e9a8be1` |
| 5 | `theorem` | [ContMDiffAt.mfderiv_const](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiffat-mfderiv-const--4ccf344b6765c5cba0e65ae4.md) | 241 | `result-track:4ccf344b6765c5cba0e65ae4ce338441b816f11d503f613038df4fa804466814` |
| 6 | `theorem` | [ContMDiffAt.mfderiv_apply](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiffat-mfderiv-apply--b562bd7f19745c76eee8ca72.md) | 256 | `result-track:b562bd7f19745c76eee8ca7248c706c7a32e5cd92a2170c8b196ecb8c3cf0a10` |
| 7 | `theorem` | [ContMDiffOn.contMDiffOn_tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiffon-contmdiffon-tangentmapwithin--2135d57c47562319977fa40c.md) | 274 | `result-track:2135d57c47562319977fa40c84de9567f7faf8b93da08986ca62cd7eee8ff65e` |
| 8 | `theorem` | [ContMDiffOn.continuousOn_tangentMapWithin](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiffon-continuouson-tangentmapwithin--9ec75ce8748d286640b7c4a7.md) | 298 | `result-track:9ec75ce8748d286640b7c4a7205de458b611d495c172614856c5ef749e6924b1` |
| 9 | `theorem` | [ContMDiff.contMDiff_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiff-contmdiff-tangentmap--47f2adda4d51dcd5ff8eec4e.md) | 306 | `result-track:47f2adda4d51dcd5ff8eec4ed1798834ad1ca119a418c6e002f0e4196041e51a` |
| 10 | `theorem` | [ContMDiff.continuous_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiff-continuous-tangentmap--9f63c4545861595fbed524dc.md) | 313 | `result-track:9f63c4545861595fbed524dcd423b90c654831e94877adeb8ae0c82261484598` |
| 11 | `theorem` | [tangentMap_tangentBundle_pure](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/tangentmap-tangentbundle-pure--dcb2d891c631e96964a377ec.md) | 341 | `result-track:dcb2d891c631e96964a377ec83b4f04a99ba9ff6e359ec71b864612dce556a7d` |
| 12 | `theorem` | [mdifferentiable'](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/mdifferentiable--032fac1827533568824acba2.md) | 382 | `result-track:032fac1827533568824acba2c990a2ba82efb4f9270601181ef652ae1d4829f3` |
| 13 | `theorem` | [mdifferentiable](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/mdifferentiable--62a76eb6a6c1a1fab1aaeb57.md) | 385 | `result-track:62a76eb6a6c1a1fab1aaeb57f0d4b1e2047e1d4c7e9d76a7587311952b2de0d0` |
| 14 | `theorem` | [mdifferentiableAt](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/mdifferentiableat--52871fd120b79af872da30c0.md) | 388 | `result-track:52871fd120b79af872da30c0a57892c37adeb2836ee9aa213e9fb2e7773fe8d7` |
| 15 | `def` | [equivTangentBundleProd](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/equivtangentbundleprod--913aef2c871e4de77bae2868.md) | 398 | `declaration-track:913aef2c871e4de77bae2868780c3eb5fd26587860b9b5983fe30be13b6a606e` |
| 16 | `lemma` | [equivTangentBundleProd_eq_tangentMap_prod_tangentMap](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/equivtangentbundleprod-eq-tangentmap-prod-tangentmap--ae71bbb48b48bce93a63734a.md) | 403 | `result-track:ae71bbb48b48bce93a63734a9e30f17a59a518fcbeae0f6157ea408d84226a93` |
| 17 | `lemma` | [contMDiff_equivTangentBundleProd](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiff-equivtangentbundleprod--cc2954d6a7e0a1ea307cb6bc.md) | 412 | `result-track:cc2954d6a7e0a1ea307cb6bc20aa9426aacfa7194767eeec53727096314c9112` |
| 18 | `lemma` | [contMDiff_equivTangentBundleProd_symm](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/contmdiff-equivtangentbundleprod-symm--28653249d1c399594fe11334.md) | 420 | `result-track:28653249d1c399594fe11334001c687f054e1353669e7a9a03c5babcad56adcb` |
| 19 | `lemma` | [injective_eval_mdifferentiableAt_vectorField](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/injective-eval-mdifferentiableat-vectorfield--10b577a649bc1a8c1b7cc657.md) | 530 | `result-track:10b577a649bc1a8c1b7cc6571bc63e4cd55a2ee03bef65a71ffed6843dc1084c` |
| 20 | `lemma` | [injective_eval_contMDiffAt_vectorField](../../../../../mathematics/Geometry/DifferentialGeometry/ContMDiffMFDeriv/Variant266106fe22b3f558499d6d80d19f74fe0fc8101b5b98334242fd5622b7f314c4.lean/declarations/injective-eval-contmdiffat-vectorfield--f94425f24096eff9db76b399.md) | 540 | `result-track:f94425f24096eff9db76b39911182fbc9cdc73700dfc8d50a26ad7218a1c29a9` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
