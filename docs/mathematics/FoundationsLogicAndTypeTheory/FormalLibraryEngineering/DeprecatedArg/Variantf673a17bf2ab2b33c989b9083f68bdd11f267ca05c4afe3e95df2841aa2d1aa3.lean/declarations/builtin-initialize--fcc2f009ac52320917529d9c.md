# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:32c03d3d582bc589d1b7ee59a885ec2a473fa0102bd6f2c5ea3ecabdfd765c04",
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
  "slug": "builtin-initialize--fcc2f009ac52320917529d9c",
  "source": {
    "blob": "15703fcf8be6f804aaeead22d05be053db5263f9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 71,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedArg/Variantf673a17bf2ab2b33c989b9083f68bdd11f267ca05c4afe3e95df2841aa2d1aa3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fcc2f009ac52320917529d9cea3d3191321686ecda916c18afa6c1fae3518ecb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedArg/Variantf673a17bf2ab2b33c989b9083f68bdd11f267ca05c4afe3e95df2841aa2d1aa3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:32c03d3d582bc589d1b7ee59a885ec2a473fa0102bd6f2c5ea3ecabdfd765c04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–105.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedArg/Variantf673a17bf2ab2b33c989b9083f68bdd11f267ca05c4afe3e95df2841aa2d1aa3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/DeprecatedArg/Variantf673a17bf2ab2b33c989b9083f68bdd11f267ca05c4afe3e95df2841aa2d1aa3.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `15703fcf8be6f804aaeead22d05be053db5263f9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
