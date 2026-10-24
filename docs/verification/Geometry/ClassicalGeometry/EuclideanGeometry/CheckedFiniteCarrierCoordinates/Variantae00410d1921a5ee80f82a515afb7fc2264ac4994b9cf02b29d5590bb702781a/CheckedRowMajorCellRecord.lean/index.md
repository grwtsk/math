# Verification target: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CheckedFiniteCarrierCoordinates.Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a.CheckedRowMajorCellRecord

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "434a35179cf75b734caffc158fca1bfc1da2f50e",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CheckedRowMajorCellRecord.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CheckedRowMajorCellRecord.lean/index.md) · [Full source](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CheckedRowMajorCellRecord.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `434a35179cf75b734caffc158fca1bfc1da2f50e`.

Source path: `GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CheckedRowMajorCellRecord.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CheckedRowMajorCellRecord.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `BitMatrix.Codec.Profiles` — import line 18; external provider; requires a separately pinned dependency.
- `BitMatrix.Geometry.CarrierGrid` — import line 19; external provider; requires a separately pinned dependency.
- `BitMatrix.Runtime.Semantics` — import line 20; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [GridCellRecord](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CheckedRowMajorCellRecord.lean/declarations/gridcellrecord--83b0683c58f75f2f241157fc.md) | 41 | `declaration-track:83b0683c58f75f2f241157fc69d39241b9c740eb0f7b023c280939b614705830` |
| 2 | `def` | [abstractGridCell](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CheckedRowMajorCellRecord.lean/declarations/abstractgridcell--b5b1a4a8648f1ba0d91f36e8.md) | 48 | `declaration-track:b5b1a4a8648f1ba0d91f36e8d0ca0f62613e6a2aa0e60162cede16e6bb763bde` |
| 3 | `def` | [gridCellRepresentation](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CheckedRowMajorCellRecord.lean/declarations/gridcellrepresentation--226111062aeb71b53a2abc6d.md) | 53 | `declaration-track:226111062aeb71b53a2abc6de483eee95b0c6f592cbba6d15c4414d27de768ae` |
| 4 | `theorem` | [abstractGridCell_rowMajorIndex](../../../../../../../mathematics/Geometry/ClassicalGeometry/EuclideanGeometry/CheckedFiniteCarrierCoordinates/Variantae00410d1921a5ee80f82a515afb7fc2264ac4994b9cf02b29d5590bb702781a/CheckedRowMajorCellRecord.lean/declarations/abstractgridcell-rowmajorindex--88cd1c6cc502b1e86cc601d0.md) | 61 | `result-track:88cd1c6cc502b1e86cc601d004b9cf53569abba3576e7bf1a6781ac0f4bdb700` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
