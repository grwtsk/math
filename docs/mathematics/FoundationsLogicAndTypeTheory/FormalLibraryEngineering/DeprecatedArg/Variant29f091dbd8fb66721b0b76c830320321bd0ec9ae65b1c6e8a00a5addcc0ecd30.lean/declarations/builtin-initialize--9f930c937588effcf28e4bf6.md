# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:902b18f2ec25b56f09bfb116c0646b61dcd29e247b72c233272439067b7cb634",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--9f930c937588effcf28e4bf6",
  "source": {
    "blob": "95436910b22b18c3b687ef4b642ab919c6f16d14",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedArg/Variant29f091dbd8fb66721b0b76c830320321bd0ec9ae65b1c6e8a00a5addcc0ecd30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f930c937588effcf28e4bf62e6f1044eec223c1cbab26ac7eb826aef64a39d8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedArg/Variant29f091dbd8fb66721b0b76c830320321bd0ec9ae65b1c6e8a00a5addcc0ecd30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:902b18f2ec25b56f09bfb116c0646b61dcd29e247b72c233272439067b7cb634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize registerBuiltinAttribute {
  name := `deprecated_arg
  descr := "mark a parameter as deprecated"
  add := fun declName stx _kind => do
    let `(attr| deprecated_arg $oldId $[$newId?]? $[$text?]? $[(since := $since?)]?) := stx
      | throwError "Invalid `[deprecated_arg]` attribute syntax"
    let oldArg := oldId.getId
    let newArg? := newId?.map TSyntax.getId
    let text? := text?.map TSyntax.getString |>.filter (!·.isEmpty)
    let since? := since?.map TSyntax.getString
    let info ← getConstInfo declName
    let paramNames ← MetaM.run' do
      forallTelescopeReducing info.type fun xs _ =>
        xs.mapM fun x => return (← x.fvarId!.getDecl).userName
    if let some newArg := newArg? then
      -- We have a replacement provided
      unless Array.any paramNames (· == newArg) do
        throwError "`{newArg}` is not a parameter of `{declName}`"
      if Array.any paramNames (· == oldArg) then
        throwError "`{oldArg}` is still a parameter of `{declName}`; \
          rename it to `{newArg}` before adding `@[deprecated_arg]`"
    else
      -- We do not have a replacement provided
      if Array.any paramNames (· == oldArg) then
        throwError "`{oldArg}` is still a parameter of `{declName}`; \
          remove it before adding `@[deprecated_arg]`"
    if since?.isNone then
      logWarning "`[deprecated_arg]` attribute should specify the date or library version \
        at which the deprecation was introduced, using `(since := \"...\")`"
    modifyEnv fun env => deprecatedArgExt.addEntry env {
      declName, oldArg, newArg?, text?, since?
    }
}

end Lean.Elab
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedArg/Variant29f091dbd8fb66721b0b76c830320321bd0ec9ae65b1c6e8a00a5addcc0ecd30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedArg/Variant29f091dbd8fb66721b0b76c830320321bd0ec9ae65b1c6e8a00a5addcc0ecd30.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `95436910b22b18c3b687ef4b642ab919c6f16d14` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
