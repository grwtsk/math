# inferMeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d54a52df1fdf342f3f48f740032f30fd42d32651f9aabb161fffae940b8c729",
  "kind": "def",
  "lexical_name": "inferMeta",
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
  "slug": "infermeta--33337a1c4d8b9c9572a70e5f",
  "source": {
    "blob": "0013b649b4e88bfc6fd17ed06e16f7ccbc401439",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 50,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Varianta6315c59dd76da8868a996857e677ac8f2aea41f450ba8a30bff69ac4543c87c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33337a1c4d8b9c9572a70e5f0c62ec62b42fde0ca673c337b8f9882dde192fc5",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Varianta6315c59dd76da8868a996857e677ac8f2aea41f450ba8a30bff69ac4543c87c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d54a52df1fdf342f3f48f740032f30fd42d32651f9aabb161fffae940b8c729`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 50–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def inferMeta (decls : Array Decl) : CompilerM Unit := do
  if !(← getEnv).header.isModule then
    return
  for decl in decls do
    if isMarkedMeta (← getEnv) decl.name then
      trace[compiler.ir.inferMeta] m!"Marking {decl.name} as meta because it is tagged with `meta`"
      modifyEnv (setDeclMeta · decl.name)
      setClosureMeta decl

/--
Checks meta availability just before `evalConst`. This is a "last line of defense" as accesses
should have been checked at declaration time in case of attributes. We do not solely want to rely on
errors from the interpreter itself as those depend on whether we are running in the server.
-/
@[export lean_eval_check_meta]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Varianta6315c59dd76da8868a996857e677ac8f2aea41f450ba8a30bff69ac4543c87c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Meta/Varianta6315c59dd76da8868a996857e677ac8f2aea41f450ba8a30bff69ac4543c87c.lean#L50).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0013b649b4e88bfc6fd17ed06e16f7ccbc401439` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
