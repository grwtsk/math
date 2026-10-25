# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d610c6737bd7dbd9b129716787998ce56ab6aa4fa93c43aba4da59ebc9cdf2e",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--98c83badb31d150ed74a16b3",
  "source": {
    "blob": "f5267c0d1367eabdfa6a65d75ab9685a6ed6421b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variantc427189707c935c71e02a3c08af83d94432fdf954f76aeb840ae4979a6baa9ae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:98c83badb31d150ed74a16b3e6d8404b9928cea8db2db6e5b579168809293193",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variantc427189707c935c71e02a3c08af83d94432fdf954f76aeb840ae4979a6baa9ae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d610c6737bd7dbd9b129716787998ce56ab6aa4fa93c43aba4da59ebc9cdf2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public scoped instance : HDiv FilePath String FilePath where
  hDiv p sub := joinRelative p ⟨sub⟩

/--
Creates a module `Name` from a file path.
The components of the path become string components of the `Name`.
Before conversion, normalizes the path, removes any extensions, and
strips a trailing path separator.

Examples:
* ``modOfFilePath "Foo/Bar" = `Foo.Bar``
* ``modOfFilePath "Foo/Bar/" = `Foo.Bar``
* ``modOfFilePath "Foo/Bar.lean" = `Foo.Bar``
* ``modOfFilePath "Foo/Bar.tar.gz" = `Foo.Bar``
* ``modOfFilePath "Foo/Bar.lean/" = `Foo.«Bar.lean»``
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variantc427189707c935c71e02a3c08af83d94432fdf954f76aeb840ae4979a6baa9ae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FilePath/Variantc427189707c935c71e02a3c08af83d94432fdf954f76aeb840ae4979a6baa9ae.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f5267c0d1367eabdfa6a65d75ab9685a6ed6421b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
