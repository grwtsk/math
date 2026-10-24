# Verification target: GRWTSK.Topology.AlgebraicTopology.FabricTests.Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e54e5263d63f6e6ff7e858b1d2bb3ed088b53356",
  "lexical_observation_count": 18,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/index.md) · [Full source](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e54e5263d63f6e6ff7e858b1d2bb3ed088b53356`.

Source path: `GRWTSK/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Fabric.Core` — import line 6; external provider; requires a separately pinned dependency.
- `BinaryMatrix.Adapters.Fabric` — import line 7; external provider; requires a separately pinned dependency.
- `FilesystemCodec.Adapters.Fabric` — import line 8; external provider; requires a separately pinned dependency.
- `Mathlib.AlgebraicTopology.SimplicialSet.StdSimplex` — import line 9; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [unitSystem](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/unitsystem--c3f307f26a1a4af243c4addd.md) | 29 | `declaration-track:c3f307f26a1a4af243c4addd17570ad210dc0c3729a01cf0882eef7706d11d26` |
| 2 | `def` | [unitPresentation](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/unitpresentation--7b6f8decce29023bbbf9e53a.md) | 38 | `declaration-track:7b6f8decce29023bbbf9e53aea61f45bf52747eec21f2f71ad3ff9dcc7bd86d7` |
| 3 | `def` | [constantPresentedFabric](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/constantpresentedfabric--691e22d0199d0af5b58f5a73.md) | 46 | `declaration-track:691e22d0199d0af5b58f5a733cb17b1882ceb5cbc8584028d3eeb4e8d4284cee` |
| 4 | `def` | [oneSimplexShape](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/onesimplexshape--1f4467ed7f7f3dffdb042073.md) | 57 | `declaration-track:1f4467ed7f7f3dffdb0420731948bfd9a0f1d5f020508cafb4497949fa6534bb` |
| 5 | `def` | [canonicalEdge](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/canonicaledge--5806fe98f014c5c52e464842.md) | 61 | `declaration-track:5806fe98f014c5c52e464842b41522e327da236845bc3b0916a4586d1656627b` |
| 6 | `def` | [oneSimplexFabric](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/onesimplexfabric--d495760f63d08b4b81b83533.md) | 64 | `declaration-track:d495760f63d08b4b81b83533feab6abc8a257f5d9c0acea555037052cee3c394` |
| 7 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/example--c52724870626ae5a102bedb6.md) | 67 | `declaration-track:c52724870626ae5a102bedb6d486a408d3105ab13b15d927da9c8e225fe3a092` |
| 8 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/example--755f7666857d0f4de63198aa.md) | 72 | `declaration-track:755f7666857d0f4de63198aa865b8f0cc32727dc2569c94cb548db0c17d31f08` |
| 9 | `def` | [triangleShape](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/triangleshape--c0eb46a240909c3bac7c7e9f.md) | 78 | `declaration-track:c0eb46a240909c3bac7c7e9f3a839bc2df4f03175f3e4390a679b24154164b66` |
| 10 | `def` | [canonicalTriangle](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/canonicaltriangle--444208600d51963d9576bf5a.md) | 82 | `declaration-track:444208600d51963d9576bf5a862fc5d9a0113a5b71c4e31d0e2a0fde87c6eff8` |
| 11 | `def` | [triangleFabric](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/trianglefabric--c288110ab910cde56fb84aac.md) | 85 | `declaration-track:c288110ab910cde56fb84aac2f4abab7e46921b3c8ca6c0568660bdf1aff0865` |
| 12 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/example--49cfe76e7084dc2cad62b058.md) | 89 | `declaration-track:49cfe76e7084dc2cad62b058212816f9b234479ecf0ef16a988b08f927a02069` |
| 13 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/example--8dc258b7bb55488bd32bcc6d.md) | 97 | `declaration-track:8dc258b7bb55488bd32bcc6d95685c5474971b8664ca5c193a875ec9ff9b9219` |
| 14 | `def` | [canonicalVertex](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/canonicalvertex--c4cd6997f0bf1e4cf9ae5853.md) | 110 | `declaration-track:c4cd6997f0bf1e4cf9ae5853b96d173250af5e0b141fc28a4f2d464c037f93c5` |
| 15 | `def` | [degenerateEdge](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/degenerateedge--0f057e14cc03371693bcc34c.md) | 115 | `declaration-track:0f057e14cc03371693bcc34ca8270d5d0c2ea227a9b59244756c723a0196c0a7` |
| 16 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/example--e09f09653c2ae5772c17861a.md) | 118 | `declaration-track:e09f09653c2ae5772c17861aed6be567056469ca12c6e9e4c14ceb44636e78b2` |
| 17 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/example--da3191eaf419ee87007d8488.md) | 125 | `declaration-track:da3191eaf419ee87007d8488900c62c1ee4627f3f9800e5bb7cd90a4c797f8f7` |
| 18 | `example` | [(anonymous)](../../../../../mathematics/Topology/AlgebraicTopology/FabricTests/Variant08d1c7e80519b3dccec05aba29514f271f99b548b2b6be909ab9ece9402ab22e.lean/declarations/example--ed8fa6b9e9c5a1b5590f24cc.md) | 130 | `declaration-track:ed8fa6b9e9c5a1b5590f24ccd993e6dfcd1dcd74d9294cdea16ad93387f2044c` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
