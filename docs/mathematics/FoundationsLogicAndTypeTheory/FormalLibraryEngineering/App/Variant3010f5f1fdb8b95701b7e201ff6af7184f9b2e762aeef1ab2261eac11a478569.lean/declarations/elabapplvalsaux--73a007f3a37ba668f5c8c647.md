# elabAppLValsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d4297b9f348b2403988cb7491df96cc80053e44720b1bcb870d0c005438b2a16",
  "kind": "def",
  "lexical_name": "elabAppLValsAux",
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
  "slug": "elabapplvalsaux--73a007f3a37ba668f5c8c647",
  "source": {
    "blob": "b72a9e10f27f1a68631935a63623f43ea5fdc36a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1894,
    "line": 1843,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:73a007f3a37ba668f5c8c647343286cfae189ab7f927421394e301e3007f1df8",
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

Occurrence: `declaration:d4297b9f348b2403988cb7491df96cc80053e44720b1bcb870d0c005438b2a16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1843–1894.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def elabAppLValsAux (namedArgs : Array NamedArg) (args : Array Arg) (expectedType? : Option Expr) (explicit ellipsis : Bool)
    (f : Expr) (lvals : List LVal) : TermElabM Expr :=
  let rec loop : Expr → List LVal → TermElabM Expr
  | f, []          => elabAppArgs f namedArgs args expectedType? explicit ellipsis
  | f, lval::lvals => do
    if let LVal.fieldName (ref := ref) .. := lval then
      addDotCompletionInfo ref f expectedType?
    let hasArgs := !namedArgs.isEmpty || !args.isEmpty
    let (f, lvalRes) ← resolveLVal f lval hasArgs
    match lvalRes with
    | LValResolution.projIdx structName idx =>
      let f ← mkProjAndCheck structName idx f
      let f ← addTermInfo lval.getRef f
      loop f lvals
    | LValResolution.projFn baseStructName structName fieldName levels =>
      let f ← mkBaseProjections baseStructName structName f
      let some info := getFieldInfo? (← getEnv) baseStructName fieldName | unreachable!
      if (← isInaccessiblePrivateName info.projFn) then
        throwError "Field `{fieldName}` from structure `{structName}` is private"
      let projFn ← withRef lval.getRef <| mkConst info.projFn levels
      let projFn ← addProjTermInfo lval.getRef projFn
      let baseStructInfo ← getConstInfoInduct baseStructName
      let namedArg : NamedArg :=
        { name := `self, val := Arg.expr f, numImplicitParams := baseStructInfo.numParams }
      if lvals.isEmpty then
        let namedArgs ← addNamedArg namedArgs namedArg
        elabAppArgs projFn namedArgs args expectedType? explicit ellipsis
      else
        let f ← elabAppArgs projFn #[namedArg] #[] (expectedType? := none) (explicit := false) (ellipsis := false)
        loop f lvals
    | LValResolution.const baseStructName structName constName levels =>
      let f ← if baseStructName != structName then mkBaseProjections baseStructName structName f else pure f
      let projFn ← withRef lval.getRef <| mkConst constName levels
      let projFn ← addProjTermInfo lval.getRef projFn
      if lvals.isEmpty then
        let (args, namedArgs) ← addLValArg baseStructName f args namedArgs projFn explicit
        elabAppArgs projFn namedArgs args expectedType? explicit ellipsis
      else
        let (args, namedArgs) ← addLValArg baseStructName f #[] #[] projFn (explicit := false)
        let f ← elabAppArgs projFn namedArgs args (expectedType? := none) (explicit := false) (ellipsis := false)
        loop f lvals
    | LValResolution.localRec baseName fvar =>
      let fvar ← addProjTermInfo lval.getRef fvar
      if lvals.isEmpty then
        let (args, namedArgs) ← addLValArg baseName f args namedArgs fvar explicit
        elabAppArgs fvar namedArgs args expectedType? explicit ellipsis
      else
        let (args, namedArgs) ← addLValArg baseName f #[] #[] fvar (explicit := false)
        let f ← elabAppArgs fvar namedArgs args (expectedType? := none) (explicit := false) (ellipsis := false)
        loop f lvals
  loop f lvals

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variant3010f5f1fdb8b95701b7e201ff6af7184f9b2e762aeef1ab2261eac11a478569.lean#L1843).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b72a9e10f27f1a68631935a63623f43ea5fdc36a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
