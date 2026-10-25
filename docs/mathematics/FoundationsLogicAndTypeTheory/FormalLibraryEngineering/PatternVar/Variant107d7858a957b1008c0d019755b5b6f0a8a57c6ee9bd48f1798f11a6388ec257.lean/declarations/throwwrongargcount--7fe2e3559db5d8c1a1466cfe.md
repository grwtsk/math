# throwWrongArgCount

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0ac1678d914b3055ed37cc5d4a2436b9be679b889bc5af351967407d2d64a20",
  "kind": "def",
  "lexical_name": "throwWrongArgCount",
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
  "slug": "throwwrongargcount--7fe2e3559db5d8c1a1466cfe",
  "source": {
    "blob": "125ef9b58cffd4f12b599f6bb1f67084bb79dbaf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 140,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fe2e3559db5d8c1a1466cfe6b50cd715a2c35ed06f1c68ad5c1dfef1778dfbe",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0ac1678d914b3055ed37cc5d4a2436b9be679b889bc5af351967407d2d64a20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def throwWrongArgCount (ctx : Context) (tooMany : Bool) : M α := do
  let numExpectedArgs :=
    (if ctx.explicit then ctx.paramDecls else ctx.paramDecls.filter (·.2.isExplicit)).size
  -- If we have too few arguments because we skipped invalid named args, show that error instead
  if !tooMany && !ctx.namedArgs.isEmpty then checkNamedArgs
  let argKind := if ctx.explicit then "" else "explicit "
  let argWord := if numExpectedArgs == 1 then "argument" else "arguments"
  let discrepancyKind := if tooMany then "Too many" else "Not enough"
  let mut msg := m!"Invalid pattern: {discrepancyKind} arguments to `{ctx.funId}`; \
    expected {numExpectedArgs} {argKind}{argWord}"
  if !tooMany then
    msg := msg ++ .hint' "To ignore all remaining arguments, use the ellipsis notation `..`"
  throwError msg
where
  checkNamedArgs := do
    let mut ctx := ctx
    let mut remainingNames : Std.HashSet Name := {}
    -- If there were too few (unnamed) arguments, we may not have processed the parameters that
    -- match the outstanding named arguments, so some names in `namedArgs` may be valid
    while !isDone ctx do
      let ((name, _), ctx') := getNextParam ctx
      ctx := ctx'
      if let some idx := ctx'.namedArgs.findFinIdx? fun namedArg => namedArg.name == name then
        ctx := { ctx with namedArgs := ctx.namedArgs.eraseIdx idx
                          usedNames := ctx.usedNames.insert name }
    if h : !ctx.namedArgs.isEmpty then
      throwInvalidNamedArgs ctx h

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/PatternVar/Variant107d7858a957b1008c0d019755b5b6f0a8a57c6ee9bd48f1798f11a6388ec257.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `125ef9b58cffd4f12b599f6bb1f67084bb79dbaf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
