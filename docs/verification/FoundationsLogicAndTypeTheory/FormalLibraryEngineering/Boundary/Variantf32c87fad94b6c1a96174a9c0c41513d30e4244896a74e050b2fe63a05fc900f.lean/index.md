# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Boundary.Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "c6ce36c52af415bb84609e1a967fe5906a495886",
  "lexical_observation_count": 12,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `c6ce36c52af415bb84609e1a967fe5906a495886`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Think.Pipeline.Basic` — import line 1; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [BoundarySide](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/boundaryside--d758beddd593fb34218a054b.md) | 7 | `declaration-track:d758beddd593fb34218a054b7227bd6c8170ca5a946c0acf7cf1d6047ed76934` |
| 2 | `def` | [BoundarySide.polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/boundaryside-polarity--8e879975b3382f540a09df93.md) | 13 | `declaration-track:8e879975b3382f540a09df93beee93dc68fefc3d2774d41f97b4fc2b9b0f5ce5` |
| 3 | `def` | [BoundarySide.isStable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/boundaryside-isstable--dddd54581e1da2fffbca5429.md) | 18 | `declaration-track:dddd54581e1da2fffbca54293d0d2742bfeaef7b2ae8d9bdc6c3c5dc1d195dcc` |
| 4 | `theorem` | [inner_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/inner-polarity--b801169545636cfceaeee990.md) | 22 | `result-track:b801169545636cfceaeee990a1de91d1875fd7fc9760a8c797da602149e3c1ee` |
| 5 | `theorem` | [bridge_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/bridge-polarity--ab2f99f7741599240875532f.md) | 26 | `result-track:ab2f99f7741599240875532f19fb11a2499b8e9b329e1f855eeb38463a33bb4f` |
| 6 | `theorem` | [outer_polarity](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/outer-polarity--ec7aafba7a2875d98d560cd8.md) | 30 | `result-track:ec7aafba7a2875d98d560cd81225b7f42ed1a257f55cd8c893585c6d0f4ef8bd` |
| 7 | `inductive` | [BoundaryFlow](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/boundaryflow--0e087a9c8ea552440484e406.md) | 34 | `declaration-track:0e087a9c8ea552440484e406d528a99f103bcbb88fd049f8b01e81afdd7f001b` |
| 8 | `structure` | [BoundaryFlowReport](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/boundaryflowreport--4398c57376563af659adfbdb.md) | 41 | `declaration-track:4398c57376563af659adfbdb93a383aeed94cc94bb69bdc09a773413b79ff586` |
| 9 | `def` | [BoundaryFlowReport.residue](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/boundaryflowreport-residue--020092d59066be490c4095d6.md) | 47 | `declaration-track:020092d59066be490c4095d65d1e8c77da5a81dd0e7379a5736cc358ad2f5cb7` |
| 10 | `def` | [BoundaryFlowReport.closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/boundaryflowreport-closed--6368a0d93093181e4e827461.md) | 50 | `declaration-track:6368a0d93093181e4e827461ee9c683bddf314e22c1df60542cc946520f1f5c4` |
| 11 | `def` | [BoundaryFlowReport.acceptable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/boundaryflowreport-acceptable--757fccd7f3770bc954ecd6e0.md) | 53 | `declaration-track:757fccd7f3770bc954ecd6e0d7303a61db160598bf49c6ae7e3e102960f97795` |
| 12 | `theorem` | [boundaryFlowReport_zero_closed](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Boundary/Variantf32c87fad94b6c1a96174a9c0c41513d30e4244896a74e050b2fe63a05fc900f.lean/declarations/boundaryflowreport-zero-closed--2f2808a9be9f7f65d9df17e5.md) | 57 | `result-track:2f2808a9be9f7f65d9df17e5590e1c54be397121c1ab5a289dd5aea84a43cfd0` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
