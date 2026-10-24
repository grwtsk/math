# Verification target: GRWTSK.Analysis.PrismMesh.Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "91fc94242282f4068393cc2117a276b9c1ececc0",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/index.md) · [Full source](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `91fc94242282f4068393cc2117a276b9c1ececc0`.

Source path: `GRWTSK/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Geometry.PrismCarrier` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Analysis.SpecialFunctions.Pow.Real` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [MeshOrientation](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/meshorientation--3b769ea478568e1317a1ac91.md) | 26 | `declaration-track:3b769ea478568e1317a1ac91178f86fdd033bb9c6aab748de412ad61fe7ef701` |
| 2 | `structure` | [PrismMesh](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/prismmesh--96f049880861ce461ee8d28b.md) | 33 | `declaration-track:96f049880861ce461ee8d28b4edc6f6ea73c98f2996ede6265ae2553d7e3b352` |
| 3 | `abbrev` | [ActiveCell](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/activecell--26adfdf22f7d2c4b9e21dd15.md) | 73 | `declaration-track:26adfdf22f7d2c4b9e21dd15d4175f18ffc9a6ba88efc8288c24712c8a095303` |
| 4 | `def` | [activeCellId](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/activecellid--98da818300b8a303e69e3db4.md) | 77 | `declaration-track:98da818300b8a303e69e3db4b0020a2d7921330b1a5be1cd7d6662fa304ea6f0` |
| 5 | `theorem` | [activeCellId_injective](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/activecellid-injective--e2922fd7d675e9a994a74f26.md) | 81 | `result-track:e2922fd7d675e9a994a74f267ac3ea036486ad9e7a099ec536b7f0c6c32afe80` |
| 6 | `theorem` | [activeCell_mem](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/activecell-mem--fdc9ae9d4727fb777a7e219d.md) | 86 | `result-track:fdc9ae9d4727fb777a7e219d224df0dd69025a2b8006abcbfdbb81889b96b760` |
| 7 | `theorem` | [boundaryCell_active](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/boundarycell-active--bf48aff41fbed7114890f37d.md) | 93 | `result-track:bf48aff41fbed7114890f37dc23dea36e296ca23a3a7d970a1b6f06188612ae5` |
| 8 | `theorem` | [boundaryCell_mem](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/boundarycell-mem--a2b9d0d36bd431c42c6c0fd3.md) | 100 | `result-track:a2b9d0d36bd431c42c6c0fd349dc2a2f837fb81bc5321bb3b84583402fe5ad23` |
| 9 | `theorem` | [obstacleCell_active](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/obstaclecell-active--00395218f6cd6a7bed21d922.md) | 107 | `result-track:00395218f6cd6a7bed21d922959793d62d127deab08a90a473eb661e33f6b81a` |
| 10 | `theorem` | [obstacleCell_mem](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/obstaclecell-mem--a6666a84a04708201e550157.md) | 114 | `result-track:a6666a84a04708201e550157b02aa1a4ce5c65691b77888b06c9ff8a7f2091f7` |
| 11 | `theorem` | [interpolation_partition_of_unity](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/interpolation-partition-of-unity--84885032cb0ff100c835995b.md) | 121 | `result-track:84885032cb0ff100c835995bd37423c6c455e0b64fba195fb4461d5e0fe133d7` |
| 12 | `theorem` | [interpolationWeight_eq_zero_of_not_mem](../../../../mathematics/Analysis/PrismMesh/Variant56c06062369bd010d3f3e6e68bd41c3476d6a2550b9221b3d5a4b69f7523d9bf.lean/declarations/interpolationweight-eq-zero-of-not-mem--755fa341ea33d8d889d4d071.md) | 131 | `result-track:755fa341ea33d8d889d4d071b30d8f19f9623e651453e30ce2ba6dde2724692b` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
