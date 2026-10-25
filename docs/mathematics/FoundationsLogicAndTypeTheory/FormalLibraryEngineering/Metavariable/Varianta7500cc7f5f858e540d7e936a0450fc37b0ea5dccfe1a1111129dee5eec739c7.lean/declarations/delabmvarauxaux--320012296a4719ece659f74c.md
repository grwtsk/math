# delabMVarAuxAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e611536174d1471415e024f72bfd11ea6086092d9f49b2de104d92643299327",
  "kind": "def",
  "lexical_name": "delabMVarAuxAux",
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
  "slug": "delabmvarauxaux--320012296a4719ece659f74c",
  "source": {
    "blob": "359370fff157320eaf1b015c3742f7b5a3af70c6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 48,
    "line": 21,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Varianta7500cc7f5f858e540d7e936a0450fc37b0ea5dccfe1a1111129dee5eec739c7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:320012296a4719ece659f74cb90ef8666147b6d0784cc9c18387cc3f901cd5f7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Varianta7500cc7f5f858e540d7e936a0450fc37b0ea5dccfe1a1111129dee5eec739c7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e611536174d1471415e024f72bfd11ea6086092d9f49b2de104d92643299327`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 21–48.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def delabMVarAuxAux {α} (m : MVarId)
    (mkMVarPlaceholder : MetaM α) (mkMVar : Name → MetaM α) (mkMVarDead : Name → MetaM α)
    (ppMVars : Bool)
    (ppMVarsAnonymous : Bool) :
    MetaM α := do
  if ppMVars then
    if let some decl ← m.findDecl? then
      match decl.userName with
      | .anonymous =>
        if ppMVarsAnonymous then
          mkMVar <| Name.num `m (decl.index + 1)
        else
          mkMVarPlaceholder
      | n =>
        if some m == (← getMCtx).findUserName? n then
          mkMVar n
        else
          mkMVarDead n
    else
      -- Undefined mvar, use internal name
      mkMVar <| m.name.replacePrefix `_uniq `_mvar
  else
    mkMVarPlaceholder

/--
Constructs a `?m` term using the name of `m` or its index. Does not add terminfo.
The metavariable does not need to be type correct in the current local context.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Varianta7500cc7f5f858e540d7e936a0450fc37b0ea5dccfe1a1111129dee5eec739c7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Metavariable/Varianta7500cc7f5f858e540d7e936a0450fc37b0ea5dccfe1a1111129dee5eec739c7.lean#L21).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `359370fff157320eaf1b015c3742f7b5a3af70c6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
