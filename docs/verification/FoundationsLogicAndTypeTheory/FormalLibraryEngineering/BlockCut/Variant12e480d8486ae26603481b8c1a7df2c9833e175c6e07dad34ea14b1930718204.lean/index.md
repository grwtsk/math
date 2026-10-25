# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.BlockCut.Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "bd5caf7e9557d3285eee2d875824641b3bd361b7",
  "lexical_observation_count": 8,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `bd5caf7e9557d3285eee2d875824641b3bd361b7`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Tactic` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [TypeIIBlockCut](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/declarations/typeiiblockcut--1c055b25534c948416e514f6.md) | 33 | `declaration-track:1c055b25534c948416e514f65f23560b8c214fba99cd40b1af9e80b9885ddd5f` |
| 2 | `def` | [TypeIIBlockCut.childMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/declarations/typeiiblockcut-childmatrix--8c0c21e5c157bf42a091eb32.md) | 49 | `declaration-track:8c0c21e5c157bf42a091eb324d851a6877bff668935389e2662e90bd2777230d` |
| 3 | `def` | [TypeIIBlockCut.blockDiagonal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/declarations/typeiiblockcut-blockdiagonal--2186005b3cde5cd9e1c9296a.md) | 60 | `declaration-track:2186005b3cde5cd9e1c9296aee5b5bb4dd4fc65c0eb228fcd26d3b8878256263` |
| 4 | `def` | [TypeIIBlockCut.crossMatrix](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/declarations/typeiiblockcut-crossmatrix--6bed9ff3302630fedb99bb2d.md) | 68 | `declaration-track:6bed9ff3302630fedb99bb2d442be83979a3abdb535e9c31ac0eb1e8ad59af71` |
| 5 | `theorem` | [TypeIIBlockCut.blockDiagonal_add_cross](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/declarations/typeiiblockcut-blockdiagonal-add-cross--93eeec372450448ea572571b.md) | 76 | `result-track:93eeec372450448ea572571bc37f088804a67371b76826ba6d0fa1a778634dc8` |
| 6 | `def` | [TypeIIBlockCut.coefficientPartition](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/declarations/typeiiblockcut-coefficientpartition--78575d0a62a1bcd75086e7a9.md) | 85 | `declaration-track:78575d0a62a1bcd75086e7a9a4afc44ff97e7fb06ba03a6218d96604317301d8` |
| 7 | `theorem` | [TypeIIBlockCut.sum_childMass_le_parent](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/declarations/typeiiblockcut-sum-childmass-le-parent--9de074bd8f3a2983cbbfe90c.md) | 95 | `result-track:9de074bd8f3a2983cbbfe90c29b504edf7893f9b6d72e02dbcffb8af324d8f26` |
| 8 | `structure` | [SpatialNeckRealization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BlockCut/Variant12e480d8486ae26603481b8c1a7df2c9833e175c6e07dad34ea14b1930718204.lean/declarations/spatialneckrealization--235cb8cc4e1de6d7dbee93c9.md) | 108 | `declaration-track:235cb8cc4e1de6d7dbee93c97fc0a6bd4ba1b69cae27d9b60859a9feb8e898c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
