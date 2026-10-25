# isServerError

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:637878fa2c247caebbd4e1e0ebe56e59570bc05591507fa8ea8c718e69c70367",
  "kind": "def",
  "lexical_name": "isServerError",
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
  "slug": "isservererror--9774d19d715677d82f90aae8",
  "source": {
    "blob": "d5fe1ed921566b6ec0dda33eb7cca0f80ce252a4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 646,
    "line": 638,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variantc4cd8f3d668dbaa5ceb9b158d1d23d867d4ea63a0ba2ce597b8bb8375c321ced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9774d19d715677d82f90aae84ca26804fc75e73f36edc9585668f71f4bc02b7d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variantc4cd8f3d668dbaa5ceb9b158d1d23d867d4ea63a0ba2ce597b8bb8375c321ced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:637878fa2c247caebbd4e1e0ebe56e59570bc05591507fa8ea8c718e69c70367`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 638–646.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def isServerError (c : Status) : Bool :=
  500 ≤ c.toCode ∧ c.toCode < 600

/--
Checks if the status code indicates an error (either client error 4xx or server error 5xx).

Reference: https://httpwg.org/specs/rfc9110.html#status.codes
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variantc4cd8f3d668dbaa5ceb9b158d1d23d867d4ea63a0ba2ce597b8bb8375c321ced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Status/Variantc4cd8f3d668dbaa5ceb9b158d1d23d867d4ea63a0ba2ce597b8bb8375c321ced.lean#L638).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d5fe1ed921566b6ec0dda33eb7cca0f80ce252a4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
