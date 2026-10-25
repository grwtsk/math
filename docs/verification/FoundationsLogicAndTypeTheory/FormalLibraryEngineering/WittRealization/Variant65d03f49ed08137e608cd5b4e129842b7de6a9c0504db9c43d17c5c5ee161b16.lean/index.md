# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.WittRealization.Variant65d03f49ed08137e608cd5b4e129842b7de6a9c0504db9c43d17c5c5ee161b16

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "ddb9b6c1ef9499f2fc6dc25973a141dd43dc8b74",
  "lexical_observation_count": 4,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittRealization/Variant65d03f49ed08137e608cd5b4e129842b7de6a9c0504db9c43d17c5c5ee161b16.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittRealization/Variant65d03f49ed08137e608cd5b4e129842b7de6a9c0504db9c43d17c5c5ee161b16.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittRealization/Variant65d03f49ed08137e608cd5b4e129842b7de6a9c0504db9c43d17c5c5ee161b16.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `ddb9b6c1ef9499f2fc6dc25973a141dd43dc8b74`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittRealization/Variant65d03f49ed08137e608cd5b4e129842b7de6a9c0504db9c43d17c5c5ee161b16.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittRealization/Variant65d03f49ed08137e608cd5b4e129842b7de6a9c0504db9c43d17c5c5ee161b16.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Folder.CrystallineIndex.WittValuedIndex` — import line 6; external provider; requires a separately pinned dependency.
- `Folder.DerivedSheaf.KTheoryIndex` — import line 7; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [WittRealization](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittRealization/Variant65d03f49ed08137e608cd5b4e129842b7de6a9c0504db9c43d17c5c5ee161b16.lean/declarations/wittrealization--ffd02198dceed87745edb243.md) | 27 | `declaration-track:ffd02198dceed87745edb243c74a726f23974110f7292051b896ac18fcd61c53` |
| 2 | `structure` | [KTheoryIndexWittImage](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittRealization/Variant65d03f49ed08137e608cd5b4e129842b7de6a9c0504db9c43d17c5c5ee161b16.lean/declarations/ktheoryindexwittimage--6b52eeb1288eda826b7fadca.md) | 36 | `declaration-track:6b52eeb1288eda826b7fadcad74a5bdbe183ffb28a327d7d89c4f5e4a650c2cb` |
| 3 | `theorem` | [witt_realization_compatible](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittRealization/Variant65d03f49ed08137e608cd5b4e129842b7de6a9c0504db9c43d17c5c5ee161b16.lean/declarations/witt-realization-compatible--a15a9efcc6be85108bc81c10.md) | 44 | `result-track:a15a9efcc6be85108bc81c10ec6d08567a71f306dc9705e052ffbac43a538c44` |
| 4 | `theorem` | [ktheory_index_witt_image_eq](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/WittRealization/Variant65d03f49ed08137e608cd5b4e129842b7de6a9c0504db9c43d17c5c5ee161b16.lean/declarations/ktheory-index-witt-image-eq--08dab3dfebc5b7166a61e745.md) | 51 | `result-track:08dab3dfebc5b7166a61e74505e33da93e30503e9cb64b600491546d437d2507` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
