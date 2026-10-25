# throwInvalidNamedArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:10746d80ace2f07cdc6bda474905138de6648a715dfac5798051ee9c2bcf4eca",
  "kind": "def",
  "lexical_name": "throwInvalidNamedArgs",
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
  "slug": "throwinvalidnamedargs--ae74994ae78cb7326bcb315a",
  "source": {
    "blob": "d668088481e4fa5d2d3b1100b1d548dcc1752f20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 139,
    "line": 116,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ae74994ae78cb7326bcb315a4ff5ee02c570b2801e4d4e6bc7d9ae05c962d09d",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:10746d80ace2f07cdc6bda474905138de6648a715dfac5798051ee9c2bcf4eca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 116–139.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def throwInvalidNamedArgs (ctx : Context) (h : !ctx.namedArgs.isEmpty) : MetaM α := do
  let names := (ctx.namedArgs.map fun narg => m!"`{narg.name}`").toList
  let nameStr := if names.length == 1 then "name" else "names"
  let validNames := ctx.paramDecls.filterMap fun (name, _) =>
    if name.hasMacroScopes then none else some name
  have h := Nat.zero_lt_of_ne_zero (mt Array.isEmpty_iff_size_eq_zero.mpr (Bool.not_eq.mp h))
  -- We offer hints only for the first argument
  let firstNamedArg := ctx.namedArgs[0]'h
  let replacementSpan := firstNamedArg.ref[1]
  let unused := validNames.filter (!ctx.usedNames.contains ·)
  let hint ← do
    if replacementSpan.getHeadInfo matches .original .. then
      let suggestions := unused.map fun validName =>
        { suggestion := validName.toString
          span? := replacementSpan
          preInfo? := some s!"`{validName}`: "
          toCodeActionTitle? := some fun s => s!"Change argument name `{firstNamedArg.name}` to `{s}`" }
      let hintMsg := m!"Replace `{firstNamedArg.name}` with one of the following parameter names:"
      MessageData.hint (forceList := true) hintMsg suggestions
    else
      let validNamesMsg := MessageData.orList <| unused.map (m!"`{·}`") |>.toList
      pure <| MessageData.hint' m!"Perhaps you meant one of the following parameter names: {validNamesMsg}"
  throwError m!"Invalid argument {nameStr} {.andList names} for function `{ctx.funId}`" ++ hint

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant6be934acc27fb01b8f33f713881c33fa1d65851d4985df4ced2cce4b8856cced.lean#L116).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d668088481e4fa5d2d3b1100b1d548dcc1752f20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
