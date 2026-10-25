# findFacetConfig?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1885f6b7ee7171910fcfb0a2aada1147428c57e72bca576e9f6ef04a262db324",
  "kind": "def",
  "lexical_name": "findFacetConfig?",
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
  "slug": "findfacetconfig--660ca86acc7e8d3256b81aa5",
  "source": {
    "blob": "d9b48a5ca4648e081694fe9d21b0f9bc28a8e3d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 335,
    "line": 332,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant6a0881e9c009a7b16a5ec5bdef1612618fe028f1fb45dceb9c46cf42fd9f046f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:660ca86acc7e8d3256b81aa5f5b5cc03d33b4d6fbb2bd02f7b000231beb49b6d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant6a0881e9c009a7b16a5ec5bdef1612618fe028f1fb45dceb9c46cf42fd9f046f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1885f6b7ee7171910fcfb0a2aada1147428c57e72bca576e9f6ef04a262db324`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[inline] public def findFacetConfig? (name : Name) (self : Workspace) : Option (FacetConfig name) :=
  self.facetConfigs.get? name

/-- Add a module facet to the workspace. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant6a0881e9c009a7b16a5ec5bdef1612618fe028f1fb45dceb9c46cf42fd9f046f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Workspace/Variant6a0881e9c009a7b16a5ec5bdef1612618fe028f1fb45dceb9c46cf42fd9f046f.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d9b48a5ca4648e081694fe9d21b0f9bc28a8e3d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
