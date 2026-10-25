# getStateUnsafe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c486578f008fe0abc02e38506454fce916c50ec78e298c47f336f18e5fa65bae",
  "kind": "def",
  "lexical_name": "getStateUnsafe",
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
  "slug": "getstateunsafe--2a8782e6f92cd7fbd06d0987",
  "source": {
    "blob": "59e340aebe9944d1482e6aba5da1f8ec52a51fee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1511,
    "line": 1450,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2a8782e6f92cd7fbd06d0987060b3fba5a783f877db099467aede6712ac5d672",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c486578f008fe0abc02e38506454fce916c50ec78e298c47f336f18e5fa65bae`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1450–1511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private unsafe def getStateUnsafe {σ : Type} [Inhabited σ] (ext : EnvExtension σ)
    (env : Environment) (asyncMode := ext.asyncMode) (asyncDecl : Name := .anonymous) : σ := Id.run do
  -- safety: `ext`'s constructor is private, so we can assume the entry at `ext.idx` is of type `σ`
  match asyncMode with
  | .sync => ext.getStateImpl env.checked.get.extensions
  | .async branch =>
    if asyncDecl.isAnonymous then
      panic! "called on `async` extension, must set `asyncDecl` \
        or pass `(asyncMode := .local)` to explicitly access local state"

    -- analogous structure to `findAsync?`; see there
    -- safety: `ext`'s constructor is private, so we can assume the entry at `ext.idx` is of type `σ`
    if env.base.get env |>.constants.contains asyncDecl then
      return ext.getStateImpl env.base.private.extensions

    -- specialization of the following branch, nested async decls are rare
    if let some c := env.asyncConsts.find? asyncDecl then
      match branch with
      | .asyncEnv =>
        if let some exts := c.exts? then
          return ext.getStateImpl exts.get
        else
          return ext.getStateImpl env.base.private.extensions
      | .mainEnv =>
        if c.isRealized then
          if let some exts := c.exts? then
            return ext.getStateImpl exts.get
        else
          return ext.getStateImpl env.base.private.extensions

    if let some (c, parent?) := env.asyncConsts.findRecAndParent? asyncDecl then
      -- If `parent?` is `none`, the current branch is the parent
      let parentExts? := match parent? with
        | some c => c.exts?
        | none   => some <| .pure env.base.private.extensions
      if let some exts := (match branch with
          -- If the constant is not async, fall back to parent
          | .asyncEnv => c.exts? <|> parentExts?
          -- If the constant is realized, parent branch is empty and we should always look at `c`. In
          -- this specific case, accessing the latter will in particular not block longer than the
          -- former.
          | .mainEnv => if c.isRealized then c.exts? else parentExts?) then
        return ext.getStateImpl exts.get
      -- NOTE: if `exts?` is `none`, we should *not* try the following, more expensive branches that
      -- will just come to the same conclusion
    else if let some c := env.allRealizations.get.find? asyncDecl then
      if let some exts := c.exts? then
        return ext.getStateImpl exts.get
    -- fallback; we could enforce that `asyncDecl` and its extension state always exist but the
    -- upside of doing is unclear and it is not true in e.g. the compiler. One alternative would be
    -- to add a `getState?` that does not panic in such cases.
    ext.getStateImpl env.base.private.extensions
  | _         => ext.getStateImpl env.base.private.extensions

/--
Returns the current extension state. See `AsyncMode` for details on how modifications from
different environment branches are reconciled.

Overriding the extension's default `AsyncMode` is usually not recommended and should be considered
only for important optimizations.
-/
@[implemented_by getStateUnsafe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Environment/Variant1fa418b4950d670072e1c9e4e903ae3066c2707ffe90753ac2ea53cfd753adfe.lean#L1450).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `59e340aebe9944d1482e6aba5da1f8ec52a51fee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
