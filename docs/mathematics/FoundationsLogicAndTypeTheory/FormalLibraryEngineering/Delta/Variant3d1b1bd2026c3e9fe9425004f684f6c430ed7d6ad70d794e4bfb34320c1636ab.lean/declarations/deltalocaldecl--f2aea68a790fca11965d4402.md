# deltaLocalDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7bec19e3fff042a2c2f7e21d591ae57ddf67c8916807afe72e6df2a78f00c66e",
  "kind": "def",
  "lexical_name": "deltaLocalDecl",
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
  "slug": "deltalocaldecl--f2aea68a790fca11965d4402",
  "source": {
    "blob": "b33e8db5e8bf4c18ad5ac4a4fb818a19b34b92d1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 25,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delta/Variant3d1b1bd2026c3e9fe9425004f684f6c430ed7d6ad70d794e4bfb34320c1636ab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f2aea68a790fca11965d440297fe4f7f0d5f6cc98848a4881916be6364a1b8ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delta/Variant3d1b1bd2026c3e9fe9425004f684f6c430ed7d6ad70d794e4bfb34320c1636ab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7bec19e3fff042a2c2f7e21d591ae57ddf67c8916807afe72e6df2a78f00c66e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 25–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def deltaLocalDecl (declNames : Array Name) (fvarId : FVarId) : TacticM Unit := do
  let mvarId ← getMainGoal
  let localDecl ← fvarId.getDecl
  let typeNew ← deltaExpand localDecl.type declNames.contains
  if typeNew == localDecl.type then
    throwTacticEx `delta mvarId m!"did not delta reduce {declNames} at {localDecl.userName}"
  replaceMainGoal [← mvarId.replaceLocalDeclDefEq fvarId typeNew]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delta/Variant3d1b1bd2026c3e9fe9425004f684f6c430ed7d6ad70d794e4bfb34320c1636ab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Delta/Variant3d1b1bd2026c3e9fe9425004f684f6c430ed7d6ad70d794e4bfb34320c1636ab.lean#L25).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b33e8db5e8bf4c18ad5ac4a4fb818a19b34b92d1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
