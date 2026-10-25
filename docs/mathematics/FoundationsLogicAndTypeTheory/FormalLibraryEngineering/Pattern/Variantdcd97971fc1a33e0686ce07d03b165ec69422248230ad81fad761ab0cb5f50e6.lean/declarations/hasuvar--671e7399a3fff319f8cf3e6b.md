# hasUVar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e1f4e5ced4ffb67e184272d043497c604f2ac5835f5befe119368bdf21708ea6",
  "kind": "def",
  "lexical_name": "hasUVar",
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
  "slug": "hasuvar--671e7399a3fff319f8cf3e6b",
  "source": {
    "blob": "171627a1f2c4709561f698cb175364ff4dc27c54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 422,
    "line": 411,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:671e7399a3fff319f8cf3e6b3ad5e03c77712498ad3d7a28424084d54f85c6eb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e1f4e5ced4ffb67e184272d043497c604f2ac5835f5befe119368bdf21708ea6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 411–422.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def hasUVar (u : Level) : Bool :=
  match u with
  | .succ u₁    => hasUVar u₁
  | .max u₁ u₂ | .imax u₁ u₂ => hasUVar u₁ || hasUVar u₂
  | .param name => isUVar name
  | _ => false

/--
Returns `true` and add `u =?= v` to pending list IF
- `u` is of the form `max .. ..` or `imax .. ..`, and
- `u` contains `UVars`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Pattern/Variantdcd97971fc1a33e0686ce07d03b165ec69422248230ad81fad761ab0cb5f50e6.lean#L411).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `171627a1f2c4709561f698cb175364ff4dc27c54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
