# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fcde827f3df3bf79d0fd58d39c49962c0fcb6f5d9eed96d6908f6f7e7378f121",
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
  "slug": "instance--a74a637b5e6cb3e22dda14a8",
  "source": {
    "blob": "862bf459d4369a75a40c57fd512fb4b8dbf9ea33",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 109,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a74a637b5e6cb3e22dda14a8d747e27d4bf9c85f553819533dd8f46a8c29d377",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fcde827f3df3bf79d0fd58d39c49962c0fcb6f5d9eed96d6908f6f7e7378f121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : ToString FormatError where
  toString f :=
    s!"srcNat: {f.srcNat}, srcPos: {f.srcEndPos}, fmtPos: {f.fmtPos}, \
      msg: {f.msg}, length: {f.length}\n"

/--
Produces a `FormatError` from the input data.  It expects
* `ls` to be a "user-typed" string;
* `ms` to be a "pretty-printed" string;
* `msg` to be a custom error message, such as `extra space` or `remove line break`;
* `length` (optional with default `1`), how many characters the error spans.

In particular, it extracts the position information within the string, both as number of characters
and as `String.Pos`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Whitespace/Variantf6643b8bc0d7a3ef7949255573e87c942ce21549570454e1f7e49c51211f2978.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `862bf459d4369a75a40c57fd512fb4b8dbf9ea33` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
