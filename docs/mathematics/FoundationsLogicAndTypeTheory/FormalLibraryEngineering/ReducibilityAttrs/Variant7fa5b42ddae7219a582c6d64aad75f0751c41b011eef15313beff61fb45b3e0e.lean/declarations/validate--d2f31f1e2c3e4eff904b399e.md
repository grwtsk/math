# validate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9a0993be5902da044afccd4fd7de5683173f01d7de350c783f37f7800daf1f1e",
  "kind": "def",
  "lexical_name": "validate",
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
  "slug": "validate--d2f31f1e2c3e4eff904b399e",
  "source": {
    "blob": "d32f8582486f0b4cba5334c29164194c2787c78d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 127,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d2f31f1e2c3e4eff904b399e3fdd85a0ad9995dea75f93912512098333caea66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9a0993be5902da044afccd4fd7de5683173f01d7de350c783f37f7800daf1f1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 127–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def validate (declName : Name) (status : ReducibilityStatus) (attrKind : AttributeKind) : CoreM Unit := do
  let suffix := .note "Use `set_option allowUnsafeReducibility true` to override reducibility status validation"
  -- Allow global visibility attributes even on non-exported definitions - they may be relevant for
  -- downstream non-`module`s.
  withoutExporting do
  unless allowUnsafeReducibility.get (← getOptions) do
    unless (← getConstInfo declName).isDefinition do
      throwError "failed to set reducibility status, `{.ofConstName declName}` is not a definition{suffix}"
    let statusOld := getReducibilityStatusCore (← getEnv) declName
    match attrKind with
    | .scoped =>
      throwError "failed to set reducibility status for `{.ofConstName declName}`, the `scoped` modifier is not recommended for this kind of attribute{suffix}"
    | .global =>
      if (← getEnv).getModuleIdxFor? declName matches some _ then
        throwError "failed to set reducibility status, `{.ofConstName declName}` has not been defined in this file, consider using the `local` modifier{suffix}"
      match status with
      | .reducible =>
        unless statusOld matches .semireducible do
          throwError "failed to set `[reducible]`, `{.ofConstName declName}` is not currently `[semireducible]`, but `{statusOld.toAttrString}`{suffix}"
      | .irreducible =>
        unless statusOld matches .semireducible | .implicitReducible | .instanceReducible do
          throwError "failed to set `[irreducible]`, `{.ofConstName declName}` is not currently `[semireducible]`, `[implicit_reducible]` nor `[instance_reducible]`, but `{statusOld.toAttrString}`{suffix}"
      | .implicitReducible =>
        -- Allow `[semireducible] -> [implicit_reducible]` and the upgrade
        -- `[instance_reducible] -> [implicit_reducible]` (so instances can be strengthened to
        -- only unfold during implicit-arg defeq).
        unless statusOld matches .semireducible | .instanceReducible do
          throwError "failed to set `[implicit_reducible]`, `{.ofConstName declName}` is not currently `[semireducible]` nor `[instance_reducible]`, but `{statusOld.toAttrString}`{suffix}"
      | .instanceReducible =>
        unless statusOld matches .semireducible do
          throwError "failed to set `[instance_reducible]`, `{.ofConstName declName}` is not currently `[semireducible]`, but `{statusOld.toAttrString}`{suffix}"
      | .semireducible =>
        if statusOld matches .semireducible then do
          throwError "failed to set `[semireducible]` for `{.ofConstName declName}` because it already is `[semireducible]`{suffix}"
        else
          throwError "failed to set `[semireducible]` for `{.ofConstName declName}`{suffix}"
    | .local =>
      match status with
      | .reducible =>
        throwError "failed to set `[local reducible]` for `{.ofConstName declName}`, recall that `[reducible]` affects the term indexing datastructures used by `simp` and type class resolution{suffix}"
      | .irreducible =>
        unless statusOld matches .semireducible | .implicitReducible | .instanceReducible do
          throwError "failed to set `[local irreducible]`, `{.ofConstName declName}` is currently `{statusOld.toAttrString}`, `[semireducible]`, `[implicit_reducible]` nor `[instance_reducible]` expected{suffix}"
      | .implicitReducible =>
        unless statusOld matches .semireducible | .instanceReducible do
          throwError "failed to set `[local implicit_reducible]`, `{.ofConstName declName}` is currently `{statusOld.toAttrString}`, `[semireducible]` or `[instance_reducible]` expected{suffix}"
      | .instanceReducible =>
        unless statusOld matches .semireducible do
          throwError "failed to set `[local instance_reducible]`, `{.ofConstName declName}` is currently `{statusOld.toAttrString}`, `[semireducible]` expected{suffix}"
      | .semireducible =>
        unless statusOld matches .irreducible do
          throwError "failed to set `[local semireducible]`, `{.ofConstName declName}` is currently `{statusOld.toAttrString}`, `[irreducible]` expected{suffix}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ReducibilityAttrs/Variant7fa5b42ddae7219a582c6d64aad75f0751c41b011eef15313beff61fb45b3e0e.lean#L127).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d32f8582486f0b4cba5334c29164194c2787c78d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
