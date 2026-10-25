# uriEscapeChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3ddd1a78c3363fa2a05c732d3619ab5dfdbdee120eef53165a3532a3ddaad59",
  "kind": "def",
  "lexical_name": "uriEscapeChar",
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
  "slug": "uriescapechar--933136bab7ad03dd3f42d77e",
  "source": {
    "blob": "4d83ef2b6c1b7bd63efc46ee4401ddc09eb8dfe0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 77,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantad264f0d59df55e0e0edd29aa420599187b96caa9218e3c7732019aeb0e0e536.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:933136bab7ad03dd3f42d77e10e7b213d028f3f053bd42381bba7fc020dcafa7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantad264f0d59df55e0e0edd29aa420599187b96caa9218e3c7732019aeb0e0e536.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3ddd1a78c3363fa2a05c732d3619ab5dfdbdee120eef53165a3532a3ddaad59`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def uriEscapeChar (c : Char) (s := "") : String :=
  foldlUtf8 c (init := s) fun s b => uriEscapeByte b s

/--
A URI unreserved mark as specified in [RFC3986][2].
Unlike the older [RFC2396][1], RFC2396 also reserves `!`, `*`, `'`, `(`, and `)`.

Lake uses RFC3986 here because the `curl` implementation of AWS Sigv4
that Lake uses to upload artifacts requires these additional characters to be escaped.

[1]: https://datatracker.ietf.org/doc/html/rfc2396#section-2.3
[2]: https://datatracker.ietf.org/doc/html/rfc3986#section-2.3
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantad264f0d59df55e0e0edd29aa420599187b96caa9218e3c7732019aeb0e0e536.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Url/Variantad264f0d59df55e0e0edd29aa420599187b96caa9218e3c7732019aeb0e0e536.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d83ef2b6c1b7bd63efc46ee4401ddc09eb8dfe0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
