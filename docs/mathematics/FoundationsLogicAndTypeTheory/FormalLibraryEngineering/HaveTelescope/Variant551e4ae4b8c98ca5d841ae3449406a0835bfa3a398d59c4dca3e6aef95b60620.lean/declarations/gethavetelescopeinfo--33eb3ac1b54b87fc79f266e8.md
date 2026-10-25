# getHaveTelescopeInfo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4432bacd603bdf5c5c4b48ca1e15c5f6344a0c792d4784ecf0928cfdb84e0501",
  "kind": "def",
  "lexical_name": "getHaveTelescopeInfo",
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
  "slug": "gethavetelescopeinfo--33eb3ac1b54b87fc79f266e8",
  "source": {
    "blob": "4e020348ec2f18dbc5fa70001e85ec4b22868421",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 87,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:33eb3ac1b54b87fc79f266e8dcd2ceebc762ff676fc1c497a449edf0884133b9",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4432bacd603bdf5c5c4b48ca1e15c5f6344a0c792d4784ecf0928cfdb84e0501`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def getHaveTelescopeInfo (e : Expr) : MetaM HaveTelescopeInfo := do
  collect e 0 {} (← getLCtx) #[]
where
  collect (e : Expr) (numHaves : Nat) (info : HaveTelescopeInfo) (lctx : LocalContext) (fvars : Array Expr) : MetaM HaveTelescopeInfo := do
    /-
    Gives indices into `fvars` that the uninstantiated expression `a` depends on, from collecting its bvars.
    This is more efficient than collecting `fvars` from an instantiated expression,
    since the expression likely contains many fvars for the pre-existing local context.
    -/
    let getBackDeps (a : Expr) : Std.HashSet Nat :=
      a.collectLooseBVars.fold (init := {}) fun deps vidx =>
        -- Since the original expression has no bvars, `vidx < numHaves` must be true.
        deps.insert (numHaves - vidx - 1)
    match e with
    | .letE n t v b true =>
      let typeBackDeps := getBackDeps t
      let valueBackDeps := getBackDeps v
      let t := t.instantiateRev fvars
      let v := v.instantiateRev fvars
      let level ← withLCtx' lctx <| getLevel t
      let fvarId ← mkFreshFVarId
      let decl := LocalDecl.ldecl 0 fvarId n t v true .default
      let info := { info with haveInfo := info.haveInfo.push { typeBackDeps, valueBackDeps, decl, level } }
      let lctx := lctx.addDecl decl
      let fvars := fvars.push (mkFVar fvarId)
      collect b (numHaves + 1) info lctx fvars
    | _ =>
      let bodyDeps := getBackDeps e
      withLCtx' lctx do
        let body := e.instantiateRev fvars
        let bodyType ← inferType body
        let level ← getLevel bodyType
        -- Collect fvars appearing in the type of `e`. Computing `bodyType` in particular is where `MetaM` is necessary.
        let bodyTypeFVarIds := (collectFVars {} bodyType).fvarSet
        let bodyTypeDeps : Std.HashSet Nat := Nat.fold fvars.size (init := {}) fun idx _ deps =>
          if bodyTypeFVarIds.contains fvars[idx].fvarId! then
            deps.insert idx
          else
            deps
        return { info with bodyDeps, bodyTypeDeps, body, bodyType, level }

/--
Computes which `have`s in the telescope are fixed and which are unused.
The length of the unused array may be less than the number of `have`s: use `unused.getD i true`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/HaveTelescope/Variant551e4ae4b8c98ca5d841ae3449406a0835bfa3a398d59c4dca3e6aef95b60620.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e020348ec2f18dbc5fa70001e85ec4b22868421` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
