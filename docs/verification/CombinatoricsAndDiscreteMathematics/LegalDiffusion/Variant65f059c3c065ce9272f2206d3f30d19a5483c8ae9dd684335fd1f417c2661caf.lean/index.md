# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.LegalDiffusion.Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e64379fe9c1d2e9f4809fb10ad30b82891f5eba5",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e64379fe9c1d2e9f4809fb10ad30b82891f5eba5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.LinearRelaxation` — import line 1; external provider; requires a separately pinned dependency.
- `DAF.Geometry.TorsionResolution` — import line 2; external provider; requires a separately pinned dependency.
- `DAF.Terrain.Boundary` — import line 3; external provider; requires a separately pinned dependency.
- `DAF.Terrain.HalfThreshold` — import line 4; external provider; requires a separately pinned dependency.
- `Mathlib.Tactic.Ring` — import line 5; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [LegalNeighborSystem](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/legalneighborsystem--a2d120d18fa39542a813a7c6.md) | 26 | `declaration-track:a2d120d18fa39542a813a7c649ff13d5840452db5f9ee02f3c4e6c6ff352b8f4` |
| 2 | `theorem` | [member_adjacent](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/member-adjacent--fa707f630fa6c750e42c4c7f.md) | 46 | `result-track:fa707f630fa6c750e42c4c7f2f94232c4d4d1bc6d05eb799c86d7210a88cb71d` |
| 3 | `theorem` | [member_not_obstacle](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/member-not-obstacle--b5912c56fb736bac6c22bedc.md) | 54 | `result-track:b5912c56fb736bac6c22bedc932ac8faea37edca4c4c8a5ba76e5a3dab423f6c` |
| 4 | `def` | [legalLaplacian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/legallaplacian--d133761c8af528ddf1230270.md) | 64 | `declaration-track:d133761c8af528ddf123027085f5c91909da514e04266a2ab1379d8614e9a2ee` |
| 5 | `theorem` | [apply](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/apply--479965b67e07f01ff4031bc0.md) | 97 | `result-track:479965b67e07f01ff4031bc0bd0f00d19e84d1aafca3d91d3bfe32bb567a6ac4` |
| 6 | `theorem` | [constant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/constant--11c5cd21b17d4e5d5ae2ca54.md) | 108 | `result-track:11c5cd21b17d4e5d5ae2ca54eaa41b458a268ef43d02ab7a2d9039f6ec412266` |
| 7 | `def` | [metricLegalLaplacian](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/metriclegallaplacian--ecd5365344095bd5a45a470b.md) | 119 | `declaration-track:ecd5365344095bd5a45a470beded83d9abad099f92d4b99aabfd40ba79bd7b12` |
| 8 | `def` | [legalEulerStep](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/legaleulerstep--8182318b8bad98a2d3a6b445.md) | 132 | `declaration-track:8182318b8bad98a2d3a6b445491c26095d247bfdfbc8deedf9c539400ed3e242` |
| 9 | `theorem` | [legalEulerStep_constant](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/legaleulerstep-constant--a74a04c859996a6b952ee667.md) | 146 | `result-track:a74a04c859996a6b952ee667afb50529b3e2d5f5e529f9095504143a08e6e91d` |
| 10 | `inductive` | [DiffusionCommutationStatus](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/diffusioncommutationstatus--6fbf07aee4868b9250448251.md) | 160 | `declaration-track:6fbf07aee4868b92504482517c13dc12856e7b16957fcbac0e6c5a162b770ea2` |
| 11 | `structure` | [LegalDiffusionOperator](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/legaldiffusionoperator--373394ea64ea140ccde9138d.md) | 169 | `declaration-track:373394ea64ea140ccde9138db0dd34b20efc7e43a6f4e059c1cb3f1cefd55320` |
| 12 | `def` | [horizonMap](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/horizonmap--87b8c2a559506622839adf38.md) | 202 | `declaration-track:87b8c2a559506622839adf386e2ae4926ba7675d31454d2b7db130e1fb33e144` |
| 13 | `theorem` | [horizonMap_add](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/horizonmap-add--9db7418560486a72ef9f1b26.md) | 207 | `result-track:9db7418560486a72ef9f1b26a82bb61c1640e1e97ffd9c17bd9f43e91f2a2333` |
| 14 | `def` | [absoluteResult](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/absoluteresult--f4996f0c9aceacf82361a854.md) | 214 | `declaration-track:f4996f0c9aceacf82361a854fdfd89997e9258128d182724946fdb40b35b0fc0` |
| 15 | `def` | [thresholdResult](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/thresholdresult--fb44b6a55b5788740bdba89f.md) | 220 | `declaration-track:fb44b6a55b5788740bdba89f17e9997e225145e8b188d70794d229c287e5b1b1` |
| 16 | `theorem` | [admitted_neighbor_safe](../../../../mathematics/CombinatoricsAndDiscreteMathematics/LegalDiffusion/Variant65f059c3c065ce9272f2206d3f30d19a5483c8ae9dd684335fd1f417c2661caf.lean/declarations/admitted-neighbor-safe--4698a1a0b409fe8cf757fde3.md) | 226 | `result-track:4698a1a0b409fe8cf757fde329863382b9f9b68d2a327e15bfd75fd8bea45527` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
