# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Value.Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "e3c7f582b2f59d24f804f40588714e2af760eb45",
  "lexical_observation_count": 14,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `e3c7f582b2f59d24f804f40588714e2af760eb45`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.String` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.String.TakeDrop` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 19; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 21; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `inductive` | [Value](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/value--e03e971f5b30dc8b035f663f.md) | 35 | `declaration-track:e03e971f5b30dc8b035f663f64cfbf18f1c3ad4d0a90b9c15f391f43185d67c3` |
| 2 | `abbrev` | [Table](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/table--32740ecb546d99056528df28.md) | 46 | `declaration-track:32740ecb546d99056528df28daf30c0d206f71c76680a4d93f70e9901d58b830` |
| 3 | `def` | [Table.empty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/table-empty--9e1f35a66af9744d133cbea0.md) | 48 | `declaration-track:9e1f35a66af9744d133cbea06668f546499c56ec56d4882032def01ec1f11055` |
| 4 | `def` | [Table.mkEmpty](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/table-mkempty--870c73ebe6960e35ca6522f6.md) | 49 | `declaration-track:870c73ebe6960e35ca6522f615df2755ed3a4068f94d1e103574e86b3d06991b` |
| 5 | `abbrev` | [Value.table](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/value-table--d60097f1ecef79c3979fe932.md) | 51 | `declaration-track:d60097f1ecef79c3979fe93288e244d8236016d9ac761c5ff53ae059693f141e` |
| 6 | `def` | [Value.ref](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/value-ref--2933e58c23cc0cfa8f7813c9.md) | 54 | `declaration-track:2933e58c23cc0cfa8f7813c9f94a234bb5cbf76b8fdc90d2ee29e61cee972507` |
| 7 | `def` | [ppString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/ppstring--d90a8f227fac4c48f970f092.md) | 67 | `declaration-track:d90a8f227fac4c48f970f092deecb3fb2b67e04bc15f1ba2539c42b90b6fc267` |
| 8 | `def` | [ppSimpleKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/ppsimplekey--3159d27502df0a84e2fb3b9c.md) | 84 | `declaration-track:3159d27502df0a84e2fb3b9c9c7f68e9c3ed78c462b4c5f7051c9f75a195cfdf` |
| 9 | `def` | [ppKey](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/ppkey--bc1f5fc898f6ad4015606ccc.md) | 90 | `declaration-track:bc1f5fc898f6ad4015606ccca2f73c57d4d71e94adb083f5a5b672aafbf665aa` |
| 10 | `def` | [ppInlineTable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/ppinlinetable--135c21ed60be731cd121ef62.md) | 101 | `declaration-track:135c21ed60be731cd121ef62c8d3cc6442d4af948fd440f305c96fc472d5cd00` |
| 11 | `def` | [ppInlineArray](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/ppinlinearray--a0adab5c775544f789761bf4.md) | 105 | `declaration-track:a0adab5c775544f789761bf4544dd1aa34c9a8976746a2057ebd480eeb62b45f` |
| 12 | `def` | [Value.toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/value-tostring--a1fbb784a848a7a2e8d9b316.md) | 109 | `declaration-track:a1fbb784a848a7a2e8d9b316cdb2047b2b00cae03b6c375ee3b8f759297f1588` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/instance--5c742521c70a2dcd051b72d9.md) | 121 | `declaration-track:5c742521c70a2dcd051b72d98dbfa089baf3d14c2731b7c81be07c218dc730f6` |
| 14 | `def` | [ppTable](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Value/Variant949b3537926b1b878b8878d0ecacba30bc4bf35dbdf851d1d34e5c3139f2422f.lean/declarations/pptable--00fa8fe05c409fce922fac88.md) | 123 | `declaration-track:00fa8fe05c409fce922fac88efec20bcee4e6e318bb2a7e24a6fb064cc8133c1` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
