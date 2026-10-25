# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Reordering.Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fc874a692efba35b5b2167aeba5f79318851536f",
  "lexical_observation_count": 6,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reordering/Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reordering/Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reordering/Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fc874a692efba35b5b2167aeba5f79318851536f`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reordering/Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reordering/Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Mathlib.Data.Finsupp.Multiset` — import line 6; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `abbrev` | [Word](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reordering/Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b.lean/declarations/word--e4563a6f90e22d631d0bab8d.md) | 24 | `declaration-track:e4563a6f90e22d631d0bab8d51a85e567f9ab5d121ea7b08ce471ef55e1fdedb` |
| 2 | `abbrev` | [ReorderingClass](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reordering/Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b.lean/declarations/reorderingclass--e27e77191f326c31d3959a14.md) | 31 | `declaration-track:e27e77191f326c31d3959a1424a84b431f86d8da8daaeb8f404e3e3d5df59225` |
| 3 | `abbrev` | [CountProfile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reordering/Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b.lean/declarations/countprofile--dcadbe8cece10a568e393c5b.md) | 34 | `declaration-track:dcadbe8cece10a568e393c5be01167f88a337e7199ee740c7a8ba8e0b41e17c3` |
| 4 | `def` | [countProfileEquiv](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reordering/Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b.lean/declarations/countprofileequiv--258a6c191669c43fcb2dcffa.md) | 37 | `declaration-track:258a6c191669c43fcb2dcffa6ab2b266dddd16f86734ef60628d53a1f9fa1964` |
| 5 | `def` | [quotientCountProfile](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reordering/Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b.lean/declarations/quotientcountprofile--cd13360cc531d2c772eb3e19.md) | 43 | `declaration-track:cd13360cc531d2c772eb3e19a4a94c7beea8ead9998d857d65385106f664c1ec` |
| 6 | `theorem` | [count_profiles_classify_reordering](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Reordering/Variant9604fee11479dbe5d20b3af0c8d840c43f411943afc2b2897dcb2de443a5442b.lean/declarations/count-profiles-classify-reordering--57931c4c34089e4b1fb76be1.md) | 48 | `result-track:57931c4c34089e4b1fb76be15aad0c90971b45d84264b8cbe2ecadd32dd74f8e` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
