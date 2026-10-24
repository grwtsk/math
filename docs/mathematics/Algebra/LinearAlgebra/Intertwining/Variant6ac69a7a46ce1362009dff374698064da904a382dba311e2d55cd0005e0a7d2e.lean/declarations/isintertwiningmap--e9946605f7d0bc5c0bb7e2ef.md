# IsIntertwiningMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3dc9e3fd20c0cdd722e58aa3eaad4106ddf26e117f06b0c4ac1f6977c2eea662",
  "kind": "structure",
  "lexical_name": "IsIntertwiningMap",
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
  "slug": "isintertwiningmap--e9946605f7d0bc5c0bb7e2ef",
  "source": {
    "blob": "00d610e74d863d4d3d09c58b47baeafbe8d1d3e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 39,
    "path": "GRWTSK/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9946605f7d0bc5c0bb7e2efe45b235a7c60cf2dab5902e261b9bbe4960016f8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3dc9e3fd20c0cdd722e58aa3eaad4106ddf26e117f06b0c4ac1f6977c2eea662`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–43.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[mk_iff] structure IsIntertwiningMap : Prop where
  isIntertwining (g : G) (v : V) : f (ρ g v) = σ g (f v)

/-- An intertwining map between two representations `ρ` and `σ` of the same monoid `G` is a map
  between underlying modules which commutes with the `G`-actions. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Intertwining/Variant6ac69a7a46ce1362009dff374698064da904a382dba311e2d55cd0005e0a7d2e.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `00d610e74d863d4d3d09c58b47baeafbe8d1d3e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
