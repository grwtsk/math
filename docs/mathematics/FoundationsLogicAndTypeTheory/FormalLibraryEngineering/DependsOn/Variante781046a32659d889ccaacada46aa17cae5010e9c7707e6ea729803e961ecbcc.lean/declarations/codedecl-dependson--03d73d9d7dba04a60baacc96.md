# CodeDecl.dependsOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:634b66a908f677529485d2a24b9da7c88b261c4d58bfdd3461df447dd3945acd",
  "kind": "def",
  "lexical_name": "CodeDecl.dependsOn",
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
  "slug": "codedecl-dependson--03d73d9d7dba04a60baacc96",
  "source": {
    "blob": "cc711514d836ce64f7bc6ec873978f4b786c284c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependsOn/Variante781046a32659d889ccaacada46aa17cae5010e9c7707e6ea729803e961ecbcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:03d73d9d7dba04a60baacc96c3901c1885804971b753edf9aceeec091108ebf5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependsOn/Variante781046a32659d889ccaacada46aa17cae5010e9c7707e6ea729803e961ecbcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:634b66a908f677529485d2a24b9da7c88b261c4d58bfdd3461df447dd3945acd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def CodeDecl.dependsOn (decl : CodeDecl pu) (s : FVarIdSet) : Bool :=
  match decl with
  | .let decl => decl.dependsOn s
  | .jp decl | .fun decl _ => decl.dependsOn s
  | .oset (fvarId := fvarId) (y := y) .. =>
    s.contains fvarId || y.dependsOn s
  | .uset (fvarId := fvarId) (y := y) ..
  | .sset (fvarId := fvarId) (y := y) .. =>
    s.contains fvarId || s.contains y
  | .inc (fvarId := fvarId) .. | .dec (fvarId := fvarId) .. | .del (fvarId := fvarId) ..
  | .setTag (fvarId := fvarId) .. =>
    s.contains fvarId

/--
Return `true` is `c` depends on a free variable in `s`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependsOn/Variante781046a32659d889ccaacada46aa17cae5010e9c7707e6ea729803e961ecbcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DependsOn/Variante781046a32659d889ccaacada46aa17cae5010e9c7707e6ea729803e961ecbcc.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cc711514d836ce64f7bc6ec873978f4b786c284c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
