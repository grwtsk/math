# synthesizePendingAndNormalizeFunType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b506960769154ecb3bfb15eca0d2e7b58e2ccec0f7d9863cc2481b4d9cbeda98",
  "kind": "def",
  "lexical_name": "synthesizePendingAndNormalizeFunType",
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
  "slug": "synthesizependingandnormalizefuntype--0b0f5d1e829d8c0eebf13994",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 381,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0b0f5d1e829d8c0eebf139947bfb6c87bac84ecb8dc7b2332f80edeecbb8f8e7",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b506960769154ecb3bfb15eca0d2e7b58e2ccec0f7d9863cc2481b4d9cbeda98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 381–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def synthesizePendingAndNormalizeFunType : M Unit := do
  trySynthesizeAppInstMVars
  synthesizeSyntheticMVars
  unless ← fTypeIsForall do
    let s ← get
    if let some f ← coerceToFunction? s.f then
      let fType ← inferType f
      modify fun s => { s with f, fType }
    else
      for namedArg in s.namedArgs do
        let f := s.f.getAppFn
        if f.isConst then
          let env ← getEnv
          if linter.deprecated.arg.get (← getOptions) then
            if let some entry := findDeprecatedArg? env f.constName! namedArg.name then
              if entry.newArg?.isNone then
                let msg := formatDeprecatedArgMsg entry
                let hint ←
                  if namedArg.ref.getHeadInfo matches .original .. then
                    MessageData.hint "Delete this argument:" #[{
                      suggestion := .string ""
                      span? := namedArg.ref
                      toCodeActionTitle? := some fun _ =>
                        s!"Delete deprecated argument `{entry.oldArg}`"
                    }]
                  else
                    pure .nil
                throwErrorAt namedArg.ref (msg ++ hint)
        let validNames ← getFoundNamedArgs
        let fnName? := if f.isConst then some f.constName! else none
        throwInvalidNamedArg namedArg fnName? validNames
      -- Help users see if this is actually due to an indentation mismatch/other parsing mishaps:
      let extra := if let some (arg : Arg) := s.args[0]? then
        .note m!"Expected a function because this term is being applied to the argument\
          {indentD <| toMessageData arg}"
      else .nil
      throwError "Function expected at{indentExpr s.f}\nbut this term has type{indentExpr (← inferType s.f)}\
        {extra}\
        {← hintAutoImplicitFailure s.f}"

/-- Add the given metavariable to the collection of metavariables associated with instance-implicit arguments. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L381).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
