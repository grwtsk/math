# connectedComponentSetoid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8653c8365a3bfa83e826e7ddafa9acd059ddc77c21ce02d5ffd95b4a0626c456",
  "kind": "def",
  "lexical_name": "connectedComponentSetoid",
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
  "slug": "connectedcomponentsetoid--d2bd6e2c39cfefd49eea1721",
  "source": {
    "blob": "6350b9ac3f3b7507094908a2180ddb7bc386a1f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 480,
    "line": 476,
    "path": "GRWTSK/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2bd6e2c39cfefd49eea17215f5d0de9b8ac60fa077accdad6da2a8da39d801c",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8653c8365a3bfa83e826e7ddafa9acd059ddc77c21ce02d5ffd95b4a0626c456`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 476–480.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def connectedComponentSetoid (α : Type*) [TopologicalSpace α] : Setoid α :=
  ⟨fun x y => connectedComponent x = connectedComponent y,
    ⟨fun x => by trivial, fun h1 => h1.symm, fun h1 h2 => h1.trans h2⟩⟩

/-- The quotient of a space by its connected components -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Clopen/Variant5e214c3bda3b9e897fed2d3d449988a66a38b5469c0f3ed85b92d8e4d2894236.lean#L476).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6350b9ac3f3b7507094908a2180ddb7bc386a1f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
