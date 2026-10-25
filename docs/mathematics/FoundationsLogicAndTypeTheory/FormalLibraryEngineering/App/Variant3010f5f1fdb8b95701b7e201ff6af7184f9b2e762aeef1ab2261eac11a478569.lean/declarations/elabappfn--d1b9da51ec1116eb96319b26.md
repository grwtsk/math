# elabAppFn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca216d574cea63c0ac20e4d359171bc869725f76caa29224ee9dc64255eb0147",
  "kind": "def",
  "lexical_name": "elabAppFn",
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
  "slug": "elabappfn--d1b9da51ec1116eb96319b26",
  "source": {
    "blob": "b72a9e10f27f1a68631935a63623f43ea5fdc36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2140,
    "line": 2060,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d1b9da51ec1116eb96319b261fca444aed926c68d88e3d7bf7a2f763a5b88437",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca216d574cea63c0ac20e4d359171bc869725f76caa29224ee9dc64255eb0147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2060–2140.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private partial def elabAppFn (f : Syntax) (lvals : List LVal) (namedArgs : Array NamedArg) (args : Array Arg)
    (expectedType? : Option Expr) (explicit ellipsis overloaded : Bool) (acc : Array (TermElabResult Expr)) : TermElabM (Array (TermElabResult Expr)) := do
  if f.getKind == choiceKind then
    -- Set `errToSorry` to `false` when processing choice nodes. See comment above about the interaction between `errToSorry` and `observing`.
    withReader (fun ctx => { ctx with errToSorry := false }) do
      f.getArgs.foldlM (init := acc) fun acc f => elabAppFn f lvals namedArgs args expectedType? explicit ellipsis true acc
  else
    let elabFieldName (e field : Syntax) (explicitUnivs : List Level) := do
      let comps := field.identComponents
      let lastIdx := comps.length - 1
      let newLVals := comps.mapIdx fun idx comp =>
        let levels := if idx = lastIdx then explicitUnivs else []
        let suffix? := none -- We use `none` since the field can't be part of a composite name
        LVal.fieldName comp comp.getId.getString! levels suffix? f
      elabAppFn e (newLVals ++ lvals) namedArgs args expectedType? explicit ellipsis overloaded acc
    let elabFieldIdx (e idxStx : Syntax) (explicitUnivs : List Level) := do
      let some idx := idxStx.isFieldIdx?
        | throwError "Internal error: Unexpected field index syntax `{idxStx}`"
      elabAppFn e (LVal.fieldIdx idxStx idx explicitUnivs :: lvals) namedArgs args expectedType? explicit ellipsis overloaded acc
    let elabDottedIdent (id : Syntax) (explicitUnivs : List Level) : TermElabM (Array (TermElabResult Expr)) := do
      let res ← withRef f <| resolveDottedIdentFn id id.getId.eraseMacroScopes explicitUnivs expectedType?
      -- Use (forceTermInfo := true) because we want to record the result of .ident resolution even in patterns
      elabAppFnResolutions f res lvals namedArgs args expectedType? explicit ellipsis overloaded acc (forceTermInfo := true)
    match f with
    | `($(e).$idx:fieldIdx)
    | `($e |>.$idx:fieldIdx) =>
      elabFieldIdx e idx []
    | `($(e).$idx:fieldIdx.{$us,*})
    | `($e |>.$idx:fieldIdx.{$us,*}) =>
      let us ← elabExplicitUnivs us
      elabFieldIdx e idx us
    | `($(e).$field:ident)
    | `($e |>.$field:ident) =>
      elabFieldName e field []
    | `($(e).$field:ident.{$us,*})
    | `($e |>.$field:ident.{$us,*}) =>
      let us ← elabExplicitUnivs us
      elabFieldName e field us
    | `($_:ident@$_:term) =>
      throwError m!"Expected a function, but found the named pattern{indentD f}"
        ++ .note m!"Named patterns `<identifier>@<term>` can only be used when pattern-matching"
    | `($id:ident) => do
      elabAppFnId id [] lvals namedArgs args expectedType? explicit ellipsis overloaded acc
    | `($id:ident.{$us,*}) => do
      let us ← elabExplicitUnivs us
      elabAppFnId id us lvals namedArgs args expectedType? explicit ellipsis overloaded acc
    | `(.$id:ident) => elabDottedIdent id []
    | `(.$id:ident.{$us,*}) =>
      let us ← elabExplicitUnivs us
      elabDottedIdent id us
    | `(@$_:ident)
    | `(@$_:ident.{$_us,*})
    | `(@$(_).$_:fieldIdx)
    | `(@$(_).$_:ident)
    | `(@$(_).$_:ident.{$_us,*})
    | `(@.$_:ident)
    | `(@.$_:ident.{$_us,*}) =>
      elabAppFn (f.getArg 1) lvals namedArgs args expectedType? (explicit := true) ellipsis overloaded acc
    | `(@$_)     => throwUnsupportedSyntax -- invalid occurrence of `@`
    | `(_)       => throwError "A placeholder `_` cannot be used where a function is expected"
    | _ => do
      let catchPostpone := !overloaded
      /- If we are processing a choice node, then we should use `catchPostpone == false` when elaborating terms.
        Recall that `observing` does not catch `postponeExceptionId`. -/
      if lvals.isEmpty && namedArgs.isEmpty && args.isEmpty then
        /- Recall that elabAppFn is used for elaborating atomics terms **and** choice nodes that may contain
          arbitrary terms. If they are not being used as a function, we should elaborate using the expectedType. -/
        let s ← observing do
          if overloaded then
            elabTermEnsuringType f expectedType? catchPostpone
          else
            elabTerm f expectedType?
        return acc.push s
      else
        let s ← observing do
          let f ← elabTerm f none catchPostpone
          let e ← elabAppLVals f lvals namedArgs args expectedType? explicit ellipsis
          if overloaded then ensureHasType expectedType? e else return e
        return acc.push s

/-- Return the successful candidates. Recall we have Syntax `choice` nodes and overloaded symbols when we open multiple namespaces. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean#L2060).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72a9e10f27f1a68631935a63623f43ea5fdc36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
