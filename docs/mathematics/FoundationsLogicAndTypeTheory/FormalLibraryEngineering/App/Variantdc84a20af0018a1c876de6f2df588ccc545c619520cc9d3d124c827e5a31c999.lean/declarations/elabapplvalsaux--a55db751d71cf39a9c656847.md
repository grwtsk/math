# elabAppLValsAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:59cb1820d3e48ba6bdd1de82d6d869ec7e1c169ab9bbc28eca3140c6e83465ea",
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
  "slug": "elabapplvalsaux--a55db751d71cf39a9c656847",
  "source": {
    "blob": "e4839efc829596a2e83bcbf82e29d63c4502e727",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1902,
    "line": 1851,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a55db751d71cf39a9c65684749b0d3b6d3b734a456cce845926df4e9c704238a",
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

Occurrence: `declaration:59cb1820d3e48ba6bdd1de82d6d869ec7e1c169ab9bbc28eca3140c6e83465ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1851–1902.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/App/Variantdc84a20af0018a1c876de6f2df588ccc545c619520cc9d3d124c827e5a31c999.lean#L1851).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e4839efc829596a2e83bcbf82e29d63c4502e727` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
