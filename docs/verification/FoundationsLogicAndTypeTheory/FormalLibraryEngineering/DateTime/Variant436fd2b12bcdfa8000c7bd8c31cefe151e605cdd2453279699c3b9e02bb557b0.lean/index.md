# Verification target: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DateTime.Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0

grwtsk contributors

<!-- BEGIN MODULE VERIFICATION TARGET
{
  "blob": "fe066ffabaa7762c812159149bc08f142f07beaa",
  "lexical_observation_count": 16,
  "mathematical_admission": "NOT_CLAIMED",
  "schema": "grwtsk.module-verification-target/1",
  "source_path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean",
  "source_pin": {
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "repository": "grwtsk/math",
    "root_tree": "5251a5a6d85a8d3f06b12803d6bd7887693b65a8"
  },
  "target_scope": "Every source command and generated elaborated declaration in this module."
}
END MODULE VERIFICATION TARGET -->

[Module and every result](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/index.md) · [Full source](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/source.md)

This page is a static source-bound verification specification. Execution attempts, compiler output, receipts and changing controller state belong to Noeaaeue.

## Source and expected scope

Repository: `grwtsk/math` · commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8` · blob: `fe066ffabaa7762c812159149bc08f142f07beaa`.

Source path: `GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean`. Every lexical declaration and anonymous command below is included. Command spellings are observations; elaboration must determine actual fully qualified declaration names and generated declarations.

The verification target requires source-pinned native Lean elaboration with the pinned toolchain and resolved dependency providers, then named theorem axiom audits and exact hypothesis/statement bridges where acceptance requires them. Module elaboration alone does not certify a transitive axiom policy, an informal statement or a cross-branch composition.

## Public verification evidence

Status supplied for these exact source bytes: `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Public status snapshot](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/modules/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean.json)

[Public verification summary](https://github.com/grwtsk/noeaaeue/blob/main/verification/math/corpus/706c62c1285a9857cb9d52e0620ec2cb514eb374/index.md)

## Acceptance and trust boundary

The source is preserved literally. Its axioms, conditional interfaces, missing imports, unresolved premises and proof holes must be assessed by the verifier; they are not erased by documentation generation. Any permitted axiom set must be explicit in the public verification profile. `sorryAx` and unchecked assumptions cannot silently become accepted proofs.

Public profile permitted axioms: `["propext", "Classical.choice", "Quot.sound"]`.

## Observed dependency providers

- `Lake.Util.String` — import line 15; external provider; requires a separately pinned dependency.
- `Init.Data.String.Search` — import line 16; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Collect` — import line 17; external provider; requires a separately pinned dependency.
- `Init.Data.Iterators.Consumers.Loop` — import line 18; external provider; requires a separately pinned dependency.
- `Init.Data.ToString.Macro` — import line 19; external provider; requires a separately pinned dependency.

## Top results and three-degree verification metric

**S₃: unavailable** (`verification_dependency_graph_unavailable`). Top results require the three-degree verification dependency graph. The complete enumeration below includes every source and declaration regardless of score or status. [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).


## Complete declaration target set

| No. | Kind | Source spelling | Line | Stable track |
|---:|---|---|---:|---|
| 1 | `structure` | [Time](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/time--1d0eb47bc738afccf056df8b.md) | 48 | `declaration-track:1d0eb47bc738afccf056df8b9bf71ff331f3e08ed12f9898ffbc33b4cdb3d948` |
| 2 | `abbrev` | [IsValidHour](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/isvalidhour--44be16baabe1938cd72b2c61.md) | 58 | `declaration-track:44be16baabe1938cd72b2c611677c73d3bdb79a97c9ac8f96a37083104672345` |
| 3 | `abbrev` | [IsValidMinute](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/isvalidminute--b9a84fcabb59e191da350da8.md) | 61 | `declaration-track:b9a84fcabb59e191da350da84f0115e080791c594fa14c184c45e1bda73d6371` |
| 4 | `abbrev` | [IsValidSecond](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/isvalidsecond--2885967a0076fd8ffb62247a.md) | 64 | `declaration-track:2885967a0076fd8ffb62247ac7afd3ba904136d00fa71e0ea6ab55ee31d48cc6` |
| 5 | `def` | [zero](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/zero--0a3adf9a59ff946e6a0082e1.md) | 67 | `declaration-track:0a3adf9a59ff946e6a0082e1734d968d5124ef700409075c9149d1f02d75ab72` |
| 6 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/instance--1a6b6e6f9ce70fe8aed84c93.md) | 70 | `declaration-track:1a6b6e6f9ce70fe8aed84c93b91f526f0969cb7a963d0c8a8cc29f6c003044e3` |
| 7 | `def` | [ofValid?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/ofvalid--31b3eb1b30bfc4f4a82ec3b5.md) | 72 | `declaration-track:31b3eb1b30bfc4f4a82ec3b5f4c9750848e9d0a07848fd3e10ba03bcf8d398a2` |
| 8 | `def` | [ofString?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/ofstring--cad475a20ffe2ffb25bc79de.md) | 76 | `declaration-track:cad475a20ffe2ffb25bc79dee44d1ff90435baf2f11154bb4acc04c0174bc96b` |
| 9 | `def` | [toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/tostring--f83f85409bc3209ef7e9607a.md) | 90 | `declaration-track:f83f85409bc3209ef7e9607a3b68e66f93e4b090b04cb4e7a3ec8228b73c3ae3` |
| 10 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/instance--2a279e041625ebdac8f90c87.md) | 97 | `declaration-track:2a279e041625ebdac8f90c87aaebb0abb1b31da654e8e0700ef89f9116f6b27e` |
| 11 | `inductive` | [DateTime](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/datetime--c834f8e67deca43a578b9fd3.md) | 102 | `declaration-track:c834f8e67deca43a578b9fd315cdae041fd922dc8df1f371ccb0684f30fa70cf` |
| 12 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/instance--04f382dbb4742eec77298fe9.md) | 109 | `declaration-track:04f382dbb4742eec77298fe91192ac89f2aed3fd2669953845aa24fbc27c0546` |
| 13 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/instance--51c574cc28de1245d1d59cc7.md) | 110 | `declaration-track:51c574cc28de1245d1d59cc7b9cbcce191417e7df84b187f5e2d9780631471b8` |
| 14 | `def` | [ofString?](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/ofstring--b56020bf892b216b5e421484.md) | 114 | `declaration-track:b56020bf892b216b5e42148479a19bceeece49ff71f64c66c68688a04d28d469` |
| 15 | `def` | [toString](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/tostring--2167864be37c4a56440a662a.md) | 133 | `declaration-track:2167864be37c4a56440a662ac82e3a319c9e0d18f2b390ce9768e56d64f973b0` |
| 16 | `instance` | [(anonymous)](../../../../../mathematics/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DateTime/Variant436fd2b12bcdfa8000c7bd8c31cefe151e605cdd2453279699c3b9e02bb557b0.lean/declarations/instance--c3043f2417f01358c8cf3fb5.md) | 147 | `declaration-track:c3043f2417f01358c8cf3fb5c6c67ea32adc1be61592a920f83a350effb5c167` |

The target set is lexical. A failed or blocked verification leaves every source article and its result links published; it supplies no stronger mathematical admission.
