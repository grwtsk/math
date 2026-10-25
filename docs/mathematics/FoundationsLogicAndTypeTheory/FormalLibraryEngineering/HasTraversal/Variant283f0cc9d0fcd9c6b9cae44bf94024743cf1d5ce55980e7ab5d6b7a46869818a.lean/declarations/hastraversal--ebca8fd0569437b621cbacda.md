# hasTraversal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b0c1b604ddfc8279fb6ce6e58db14e5e5ea466c7fae277bb011a1941f2596eab",
  "kind": "def",
  "lexical_name": "hasTraversal",
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
  "slug": "hastraversal--ebca8fd0569437b621cbacda",
  "source": {
    "blob": "ed16d255edcf59025d1e06d63124708e1e75e4b7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 19,
    "line": 15,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasTraversal/Variant283f0cc9d0fcd9c6b9cae44bf94024743cf1d5ce55980e7ab5d6b7a46869818a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebca8fd0569437b621cbacdaa6cb5b8a029c1288d9b43aa665d26a95c2184e04",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasTraversal/Variant283f0cc9d0fcd9c6b9cae44bf94024743cf1d5ce55980e7ab5d6b7a46869818a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b0c1b604ddfc8279fb6ce6e58db14e5e5ea466c7fae277bb011a1941f2596eab`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 15–19.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasTraversal (value : String) : Bool :=
  value.contains '/' || value.contains '\\' || value == "." || value == ".." ||
    value.startsWith "." || value.endsWith "."

end Mathematics.Oracle.Naming
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasTraversal/Variant283f0cc9d0fcd9c6b9cae44bf94024743cf1d5ce55980e7ab5d6b7a46869818a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HasTraversal/Variant283f0cc9d0fcd9c6b9cae44bf94024743cf1d5ce55980e7ab5d6b7a46869818a.lean#L15).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ed16d255edcf59025d1e06d63124708e1e75e4b7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
