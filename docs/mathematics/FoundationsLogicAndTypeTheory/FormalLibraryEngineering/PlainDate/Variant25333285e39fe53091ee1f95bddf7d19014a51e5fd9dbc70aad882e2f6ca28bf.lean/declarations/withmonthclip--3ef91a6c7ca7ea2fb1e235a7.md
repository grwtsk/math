# withMonthClip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7e93805f73f8e55cd43c7d30cb7a5b37d3752b5fa92e7c4eb956397b478ec71c",
  "kind": "def",
  "lexical_name": "withMonthClip",
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
  "slug": "withmonthclip--3ef91a6c7ca7ea2fb1e235a7",
  "source": {
    "blob": "fbd254b50956f80bbb159ef80063995ea2f496dd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 297,
    "line": 290,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDate/Variant25333285e39fe53091ee1f95bddf7d19014a51e5fd9dbc70aad882e2f6ca28bf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ef91a6c7ca7ea2fb1e235a72b65c8ddbaa5942004074e8a5a795f1fd0048a92",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDate/Variant25333285e39fe53091ee1f95bddf7d19014a51e5fd9dbc70aad882e2f6ca28bf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7e93805f73f8e55cd43c7d30cb7a5b37d3752b5fa92e7c4eb956397b478ec71c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 290–297.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def withMonthClip (dt : PlainDate) (month : Month.Ordinal) : PlainDate :=
  ofYearMonthDayClip dt.year month dt.day

/--
Creates a new `PlainDate` by adjusting the month to the given `month` value.
The day is rolled over to the next valid month if necessary.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDate/Variant25333285e39fe53091ee1f95bddf7d19014a51e5fd9dbc70aad882e2f6ca28bf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PlainDate/Variant25333285e39fe53091ee1f95bddf7d19014a51e5fd9dbc70aad882e2f6ca28bf.lean#L290).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbd254b50956f80bbb159ef80063995ea2f496dd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
