# Entry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:992c6d30ad7bb33a5056e29914545f5d950209a30688d88af818297a394c3400",
  "kind": "structure",
  "lexical_name": "Entry",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "entry--08074a0c074dc3b92ce7cd7a",
  "source": {
    "blob": "0dcc92af7f181669557c924c447e167c1f3569e9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 44,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantd02c599e5ab1e16cf60188729350d655833aa111e3f9e7e8c631598ed664cc93.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:08074a0c074dc3b92ce7cd7ac854c67b34a7aff09665a9947a3c5f318b7e3c03",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantd02c599e5ab1e16cf60188729350d655833aa111e3f9e7e8c631598ed664cc93.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:992c6d30ad7bb33a5056e29914545f5d950209a30688d88af818297a394c3400`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Entry where
  /-- A type of this expression as a `MessageData`. Make sure to use `addMessageContext`. -/
  type     : MessageData
  /-- The row number, starting from `0`. This is set by `Entries.add`. -/
  line     : Option Nat := none
  /-- How many `if`s (aka lambda-abstractions) this row is nested under. -/
  depth    : Nat
  /-- What `Status` this entry has - this only affects how `│`s are displayed. -/
  status   : Status
  /-- What to display in the "theorem applied" column.
  Make sure to use `addMessageContext` if needed. -/
  thm      : MessageData
  /-- Which other lines (aka rows) this row depends on.
  `none` means that the dependency has been filtered out of the table. -/
  deps     : List (Option Nat)
  /-- Whether or not to use this in future deps lists. Generally controlled by the `select` function
  passed to `explodeCore`. Exception: `∀I` may ignore this for introduced hypotheses. -/
  useAsDep : Bool

/-- Get the `line` for an `Entry` that has been added to the `Entries` structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantd02c599e5ab1e16cf60188729350d655833aa111e3f9e7e8c631598ed664cc93.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Datatypes/Variantd02c599e5ab1e16cf60188729350d655833aa111e3f9e7e8c631598ed664cc93.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0dcc92af7f181669557c924c447e167c1f3569e9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
