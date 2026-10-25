# assignExp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ce2a6b7074b7573b0ac4864985ee0f0f7fb1fc3b38a3197c423b5c939502e7e",
  "kind": "def",
  "lexical_name": "assignExp",
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
  "slug": "assignexp--16dffe8730579c1a47f6c4a1",
  "source": {
    "blob": "3ad97d82016c98fecf071011eac4662b21b2dbf2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 542,
    "line": 536,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16dffe8730579c1a47f6c4a194d2c42b51d4e3402e310c7059761ed60ddd085c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ce2a6b7074b7573b0ac4864985ee0f0f7fb1fc3b38a3197c423b5c939502e7e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 536–542.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def assignExp (m : MetavarContext) (mvarId : MVarId) (val : Expr) : MetavarContext :=
  { m with eAssignment := m.eAssignment.insert mvarId val }

/--
Add a delayed assignment for the given metavariable. You must make sure that
the metavariable is not already assigned or delayed-assigned.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/MetavarContext/Variantc077803ff87931e95ab13401b9119317a4268206814ace2a2d9586c9786355af.lean#L536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ad97d82016c98fecf071011eac4662b21b2dbf2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
