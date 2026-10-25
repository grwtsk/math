# renameInaccessibles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:131cba973c60872e2f7a71b8021eec0bf0d87293518c3be2ed28fd3c2783ebfc",
  "kind": "def",
  "lexical_name": "renameInaccessibles",
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
  "slug": "renameinaccessibles--93d242e37c2e6ae313c851bf",
  "source": {
    "blob": "eeb0dc2fffb817446617cc893963af690d8ae5cb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 63,
    "line": 19,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RenameInaccessibles/Variantda37d8d0dd01a40dc288ec9de674f82a37ad4f49830f90c0120b037fa8efddb7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:93d242e37c2e6ae313c851bfc9f90f9902f0c763a9889079c6f4b7176a25f446",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RenameInaccessibles/Variantda37d8d0dd01a40dc288ec9de674f82a37ad4f49830f90c0120b037fa8efddb7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:131cba973c60872e2f7a71b8021eec0bf0d87293518c3be2ed28fd3c2783ebfc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 19–63.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def renameInaccessibles (mvarId : MVarId) (hs : TSyntaxArray ``binderIdent) : TermElabM MVarId := do
  if hs.isEmpty then
    return mvarId
  else
    let mvarDecl ← mvarId.getDecl
    let mut lctx  := mvarDecl.lctx
    let mut hs    := hs
    let mut info  := #[]
    let mut found : NameSet := {}
    let n := lctx.numIndices
    -- hypotheses are inaccessible if their scopes are different from the caller's (we assume that
    -- the scopes are the same for all the hypotheses in `hs`, which is reasonable to expect in
    -- practice and otherwise the expected semantics of `rename_i` really are not clear)
    let some callerScopes := hs.findSome? (fun
        | `(binderIdent| $h:ident) => some <| extractMacroScopes h.getId
        | _ => none)
      | return mvarId
    for i in *...n do
      let j := n - i - 1
      match lctx.getAt? j with
      | none => pure ()
      | some localDecl =>
        if localDecl.isImplementationDetail then
          continue
        let inaccessible := !(extractMacroScopes localDecl.userName |>.equalScope callerScopes)
        let shadowed := found.contains localDecl.userName
        if inaccessible || shadowed then
          if let `(binderIdent| $h:ident) := hs.back! then
            let newName := h.getId
            lctx := lctx.setUserName localDecl.fvarId newName
            info := info.push (localDecl.fvarId, h)
          hs := hs.pop
          if hs.isEmpty then
            break
        found := found.insert localDecl.userName
    unless hs.isEmpty do
      logError m!"too many variable names provided"
    let mvarNew ← Meta.mkFreshExprMVarAt lctx mvarDecl.localInstances mvarDecl.type MetavarKind.syntheticOpaque mvarDecl.userName
    withSaveInfoContext <| mvarNew.mvarId!.withContext do
      for (fvarId, stx) in info do
        Term.addLocalVarInfo stx (mkFVar fvarId)
    mvarId.assign mvarNew
    return mvarNew.mvarId!

end Lean.Elab.Tactic
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RenameInaccessibles/Variantda37d8d0dd01a40dc288ec9de674f82a37ad4f49830f90c0120b037fa8efddb7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/RenameInaccessibles/Variantda37d8d0dd01a40dc288ec9de674f82a37ad4f49830f90c0120b037fa8efddb7.lean#L19).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eeb0dc2fffb817446617cc893963af690d8ae5cb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
