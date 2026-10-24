# Verification target: GRWTSK.CombinatoricsAndDiscreteMathematics.Node.Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c91aa3b4814a0c767d9b259eb2a3d63290a379b5",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean/index.md) · [Full source](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c91aa3b4814a0c767d9b259eb2a3d63290a379b5`.

Source path: `GRWTSK/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `DAF.Universe.Authority` — import line 6; external provider; requires a separately pinned dependency.
- `Mathlib.Data.Finset.Basic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [TerrainNodeKind](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean/declarations/terrainnodekind--e8a4564a80966292178caf79.md) | 18 | `declaration-track:e8a4564a80966292178caf79078ad278e38b695424de013fb64176681e292011` |
| 2 | `inductive` | [TerrainRelation](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean/declarations/terrainrelation--1e52350051c51a3700e13d49.md) | 32 | `declaration-track:1e52350051c51a3700e13d49187574c74ff9e92b2fca7a6574f0f6ff8e98a494` |
| 3 | `structure` | [TerrainNode](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean/declarations/terrainnode--676330b734f2a5bec8aaa721.md) | 48 | `declaration-track:676330b734f2a5bec8aaa721d33f742a8d7b098b99e67be40c2e9da3b6ad6393` |
| 4 | `structure` | [RelationCertificate](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean/declarations/relationcertificate--3eb519d20caf569c554e50e6.md) | 63 | `declaration-track:3eb519d20caf569c554e50e60353860bc8fd70fee9d52cbfa43d89f1a94f3f9d` |
| 5 | `structure` | [TerrainEdgeDescriptor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean/declarations/terrainedgedescriptor--d9d09ac6311ad866f10d7721.md) | 70 | `declaration-track:d9d09ac6311ad866f10d7721ebef9277218f03e1c33604b9146783658ef1459f` |
| 6 | `structure` | [TerrainCellDescriptor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean/declarations/terraincelldescriptor--1c07dfdbf3ec846bca4366f7.md) | 81 | `declaration-track:1c07dfdbf3ec846bca4366f7221d0d3d2e4d3e7d3a07fd204130931c8b1073e8` |
| 7 | `structure` | [RuntimeBindingDescriptor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean/declarations/runtimebindingdescriptor--5a689ee9d0e44b76b9a25c21.md) | 89 | `declaration-track:5a689ee9d0e44b76b9a25c2159aa64a560c8e8fd479144a49757971ff8b62b7b` |
| 8 | `structure` | [ExternalAuthorityDescriptor](../../../../mathematics/CombinatoricsAndDiscreteMathematics/Node/Variantc184f42d9bdeae7d05104a517988b7c87e79a09fd9acb3101d94bf51940c532f.lean/declarations/externalauthoritydescriptor--6145a721953422f9d5c6bf8d.md) | 99 | `declaration-track:6145a721953422f9d5c6bf8d8a46c39334c9cc627dfd9146e1676098ed46b5ce` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
