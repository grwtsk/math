# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Gray.Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "21ed6daafd86caa52f1d1bdcb0704bdf429c2a94",
  "lexical_observation_count": 13,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `21ed6daafd86caa52f1d1bdcb0704bdf429c2a94`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Boolean.Cube.Hypercube` — import line 6; external provider; requires a separately pinned dependency.
- `Lean.Elab.Tactic.Omega` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [Hypercube.Adjacent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-adjacent--9e83a90597833acdf1bc8a02.md) | 21 | `declaration-track:9e83a90597833acdf1bc8a026263be78c89b4f32312ab44dbf57b8ef26a2aa32` |
| 2 | `def` | [Hypercube.AdjacentPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-adjacentpath--c46dc7aee129b0be48a46882.md) | 26 | `declaration-track:c46dc7aee129b0be48a4688276408aec1d32d144eda552fe69c46b048fac1a9a` |
| 3 | `def` | [Hypercube.zeroPoint](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-zeropoint--2002c4d57c13c76b54d9bf95.md) | 35 | `declaration-track:2002c4d57c13c76b54d9bf959a86ed97fa2a2b80f2cff0d08257faddc79e0315` |
| 4 | `def` | [Hypercube.graySteps](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-graysteps--818ba0cc30f80b9ecbd457e9.md) | 44 | `declaration-track:818ba0cc30f80b9ecbd457e932bf610cc059ae356736e617dc36e6a0a10bec7a` |
| 5 | `def` | [Hypercube.walkFrom](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-walkfrom--196e20eef6616ef0210ee207.md) | 53 | `declaration-track:196e20eef6616ef0210ee207ce2a5774d98209faa03474324370aa53caccebf9` |
| 6 | `def` | [Hypercube.grayTraversal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-graytraversal--6c930c0fb6cd80cd60dbf1d1.md) | 61 | `declaration-track:6c930c0fb6cd80cd60dbf1d19e46802794b95989546ba050fa2ddce02f0ed272` |
| 7 | `theorem` | [Hypercube.walkFrom_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-walkfrom-length--45f4c284d1c879f9d307fa34.md) | 64 | `result-track:45f4c284d1c879f9d307fa34e01c201c9446e7abc0636aa5b050af4c7dc1ea4b` |
| 8 | `theorem` | [Hypercube.walkFrom_adjacentPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-walkfrom-adjacentpath--09f39f98a3bf773f46270b7d.md) | 74 | `result-track:09f39f98a3bf773f46270b7dd1aacfc4d0d7308da52ad3a4843b58658c8089b5` |
| 9 | `theorem` | [Hypercube.graySteps_length_add_one](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-graysteps-length-add-one--74c916f41415c0bc7c1e36ed.md) | 94 | `result-track:74c916f41415c0bc7c1e36edd60a6a80f4dd48dbea122c5d32f0b6ae7ecae502` |
| 10 | `theorem` | [Hypercube.grayTraversal_length](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-graytraversal-length--c025f1f4bc7d01b05b99c95a.md) | 102 | `result-track:c025f1f4bc7d01b05b99c95aa9326208fb586b276f5697daee1f003beb4e4060` |
| 11 | `theorem` | [Hypercube.grayTraversal_optimalLength](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-graytraversal-optimallength--cad261d957679ef6be7fa4ff.md) | 107 | `result-track:cad261d957679ef6be7fa4ff1d19551ec2bd85708969d21fff1e98f6b8dfb3f6` |
| 12 | `theorem` | [Hypercube.grayTraversal_transitionCount](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-graytraversal-transitioncount--032fea8938291e071619a4c8.md) | 113 | `result-track:032fea8938291e071619a4c842e642d900d162d9b502d61ee1236918bd0f3b48` |
| 13 | `theorem` | [Hypercube.grayTraversal_adjacentPath](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Gray/Varianteb781750ef8199d79afb727194b4139eb10734f83e8f27823be70b518bad53e3.lean/declarations/hypercube-graytraversal-adjacentpath--6355920cf7817fd9aa4e85d3.md) | 118 | `result-track:6355920cf7817fd9aa4e85d3e26c69654388d64dff79ed821b3d82ba320a44a0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
