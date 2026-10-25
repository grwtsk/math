# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Totality.Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "867e26fa12a47b5b4b4d8c48967cbf9878184531",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `867e26fa12a47b5b4b4d8c48967cbf9878184531`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathematics.Ecosystem.CoverageBoundary` — import line 6; external provider; requires a separately pinned dependency.
- `Mathematics.Ingestion.ClosureLevel` — import line 7; external provider; requires a separately pinned dependency.
- `Mathematics.Ingestion.Receipt` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `def` | [ArtifactTotal](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259.lean/declarations/artifacttotal--bcd6d08601c84df9040a167a.md) | 22 | `declaration-track:bcd6d08601c84df9040a167a2a1e4968d20b9268397b7d364b8d852c8c556ad6` |
| 2 | `structure` | [TotalityEnvelope](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259.lean/declarations/totalityenvelope--68f8d4b448347ee471339734.md) | 31 | `declaration-track:68f8d4b448347ee471339734b44ac0d34c9806b7f07624282699e924a2023df9` |
| 3 | `theorem` | [artifact_total](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259.lean/declarations/artifact-total--ff2e9cfa42f8bc82916855b7.md) | 46 | `result-track:ff2e9cfa42f8bc82916855b7b04e27067514d0d2478acef61c9332a2c03785e0` |
| 4 | `theorem` | [artifact_semantics_hold](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259.lean/declarations/artifact-semantics-hold--36df1221f5f168c098b15833.md) | 53 | `result-track:36df1221f5f168c098b15833e1ef1e796bab74191bc12eb8fd5f3f7c5b2f1d63` |
| 5 | `theorem` | [incomplete_level_visible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259.lean/declarations/incomplete-level-visible--83d720da2fc24584b4520141.md) | 59 | `result-track:83d720da2fc24584b4520141358b6340524c719cb447f38d8a0ab85e0a8900d7` |
| 6 | `theorem` | [source_omission_rejected](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Totality/Varianta69ba512837de39bb64e35bf1e7ead8d3893f73d47db3f42f678a3f1741e1259.lean/declarations/source-omission-rejected--7274e33483f1c9f1feff2233.md) | 69 | `result-track:7274e33483f1c9f1feff2233064612369d96abc4047a782c11145e625e6f1759` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
