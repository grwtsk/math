# collectUnassignedMVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4aa74032155b9fe8d2040bcc4f19f6c4ae8103b37ccc730dae79dd4b02802248",
  "kind": "def",
  "lexical_name": "collectUnassignedMVars",
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
  "slug": "collectunassignedmvars--f519158bc6c706e907e3d42c",
  "source": {
    "blob": "4d848e0860a24a0a4bee2440466e612380b33ac5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2021,
    "line": 1991,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f519158bc6c706e907e3d42c41b7b314fb19692ab89762f0bb3923aa0d1224c0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4aa74032155b9fe8d2040bcc4f19f6c4ae8103b37ccc730dae79dd4b02802248`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1991–2021.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def collectUnassignedMVars (type : Expr) (init : Array Expr := #[]) (except : MVarId → Bool := fun _ => false)
    : TermElabM (Array Expr) := do
  let mvarIds ← getMVars type
  if mvarIds.isEmpty then
    return init
  else
    go mvarIds.toList init init
where
  go (mvarIds : List MVarId) (result visited : Array Expr) : TermElabM (Array Expr) := do
    match mvarIds with
    | [] => return result
    | mvarId :: mvarIds => do
      let visited := visited.push (mkMVar mvarId)
      if (← mvarId.isAssigned) then
        go mvarIds result visited
      else if result.contains (mkMVar mvarId) || except mvarId then
        go mvarIds result visited
      else
        let mvarType := (← getMVarDecl mvarId).type
        let mvarIdsNew ← getMVars mvarType
        let mvarIdsNew := mvarIdsNew.filter fun mvarId => !visited.contains (mkMVar mvarId)
        if mvarIdsNew.isEmpty then
          go mvarIds (result.push (mkMVar mvarId)) visited
        else
          go (mvarIdsNew.toList ++ mvarId :: mvarIds) result visited

/--
Adds an `InlayHintInfo` for the fvar auto implicits in `autos` at `inlayHintPos`.
The inserted inlay hint has a hover that denotes the type of the auto-implicit (with meta-variables)
and can be inserted at `inlayHintPos`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TermElabM/Variante5ecc7a278fc1aeeb574ca844de6dd6e40a2b379bea487ac2117c0778d4758ff.lean#L1991).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4d848e0860a24a0a4bee2440466e612380b33ac5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
