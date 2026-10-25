# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IndexClass.Variant7e237c7f882acec44935fab367b9622f31ad8032495158ed586a74de31b8872c

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "9477adf551a3bae34c6207499d29c8482586975b",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant7e237c7f882acec44935fab367b9622f31ad8032495158ed586a74de31b8872c.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant7e237c7f882acec44935fab367b9622f31ad8032495158ed586a74de31b8872c.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant7e237c7f882acec44935fab367b9622f31ad8032495158ed586a74de31b8872c.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `9477adf551a3bae34c6207499d29c8482586975b`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant7e237c7f882acec44935fab367b9622f31ad8032495158ed586a74de31b8872c.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant7e237c7f882acec44935fab367b9622f31ad8032495158ed586a74de31b8872c.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CrystallineIndex.KernelCokernel` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.CrystallineIndex.CohomologyClass` — import line 7; external provider; requires a separately pinned dependency.
- `Folder.CrystallineIndex.WittValuedIndex` — import line 8; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [CrystallineIndexClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant7e237c7f882acec44935fab367b9622f31ad8032495158ed586a74de31b8872c.lean/declarations/crystallineindexclass--f2a2f487765b95ef53e3eab1.md) | 34 | `declaration-track:f2a2f487765b95ef53e3eab10b51cd0b226b9a35bcc1a02402bc9871dedebf48` |
| 2 | `theorem` | [index_class_represents_formal_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant7e237c7f882acec44935fab367b9622f31ad8032495158ed586a74de31b8872c.lean/declarations/index-class-represents-formal-index--fc8fb1b1f1171fa655972975.md) | 46 | `result-track:fc8fb1b1f1171fa655972975eabcbbd8ded91bbf8307ec82bc64e065988b8239` |
| 3 | `structure` | [CrystallineIndexClassInWitt](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant7e237c7f882acec44935fab367b9622f31ad8032495158ed586a74de31b8872c.lean/declarations/crystallineindexclassinwitt--049bf26b1ba9d0a0676e9f39.md) | 59 | `declaration-track:049bf26b1ba9d0a0676e9f39e2216b679b77698423abe876ef559c1f75f90a03` |
| 4 | `theorem` | [crystalline_index_class_in_witt_is_index](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/IndexClass/Variant7e237c7f882acec44935fab367b9622f31ad8032495158ed586a74de31b8872c.lean/declarations/crystalline-index-class-in-witt-is-index--5631a92a6e8863d7c70b0b41.md) | 69 | `result-track:5631a92a6e8863d7c70b0b41aa19c75382d2d39de656b306b8ae93766e88226f` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
