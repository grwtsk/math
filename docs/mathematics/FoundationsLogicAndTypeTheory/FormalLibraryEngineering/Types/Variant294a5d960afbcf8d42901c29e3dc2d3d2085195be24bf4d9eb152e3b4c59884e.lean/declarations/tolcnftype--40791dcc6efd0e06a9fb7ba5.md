# toLCNFType

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:42c319dbff0a0ea473c652845daac6d68ff438fa2e6d814f40fda1e631e8947a",
  "kind": "def",
  "lexical_name": "toLCNFType",
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
  "slug": "tolcnftype--40791dcc6efd0e06a9fb7ba5",
  "source": {
    "blob": "c0b10aedb80d8760a87cf5375eaa4e0aea15f74b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 138,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant294a5d960afbcf8d42901c29e3dc2d3d2085195be24bf4d9eb152e3b4c59884e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:40791dcc6efd0e06a9fb7ba5cf3c474050072575dacd9961793fcbbfb0c92353",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant294a5d960afbcf8d42901c29e3dc2d3d2085195be24bf4d9eb152e3b4c59884e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:42c319dbff0a0ea473c652845daac6d68ff438fa2e6d814f40fda1e631e8947a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 138–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def toLCNFType (type : Expr) : MetaM Expr := do
  let res ← go type
  if (← getEnv).header.isModule then
    -- Under the module system, `type` may reduce differently in different modules, leading to
    -- IR-level mismatches and thus undefined behavior. We want to make this part independent of the
    -- current module and its view of the environment but until then, we force the user to make
    -- involved type definitions exposed by checking whether we would infer a different type in the
    -- public scope. We ignore failed inference in the public scope because it can easily fail when
    -- compiling private declarations using private types, and even if that private code should
    -- escape into different modules, it can only generate a static error there, not a
    -- miscompilation.
    -- Note that always using `withExporting` would not always be correct either because it is
    -- ignored in non-`module`s and thus mismatches with upstream `module`s may again occur.
    let res'? ← observing <| withExporting <| go type
    if let .ok res' := res'? then
      if res != res' then
        let mut reason := m!"locally inferred compilation type{indentD res}\n\
          differs from type{indentD res'}\n\
          that would be inferred in other modules. This usually means that a type `def` involved \
          with the mentioned declarations needs to be `@[expose]`d. "
        -- The above error message is terrible to read, so we'll try to condense it to the essential
        -- list of non-exposed definitions.
        let origDiag := (← get).diag
        try
          let _ ← observing <| withOptions (diagnostics.set · true)  <| withExporting <| go type
          let env ← getEnv
          let blocked := (← get).diag.unfoldAxiomCounter.toList.filterMap fun (n, count) => do
            let count := count - origDiag.unfoldAxiomCounter.findD n 0
            guard <| count > 0 && getOriginalConstKind? env n matches some .defn
            return m!"{.ofConstName n} ↦ {count}"
          if !blocked.isEmpty then
            reason := m!"locally inferred compilation type differs from type that would be \
              inferred in other modules. Some of the following definitions may need to be \
              `@[expose]`d to fix this mismatch: {indentD <| .joinSep blocked Format.line}\n"
        finally
          modify ({ · with diag := origDiag })
        throwError "Compilation failed, {reason}This is a current compiler \
          limitation for `module`s that may be lifted in the future."
  return res
where
  go type := do
    if ← isProp type then
      return erasedExpr
    let type ← whnfEta type
    match type with
    | .sort u     => return .sort u
    | .const ..   => visitApp type #[]
    | .lam n d b bi =>
      withLocalDecl n bi d fun x => do
        let d ← go d
        let b ← go (b.instantiate1 x)
        if b.isErased then
          return b
        else
          return Expr.lam n d (b.abstract #[x]) bi
    | .forallE .. => visitForall type #[]
    | .app ..  => type.withApp visitApp
    | .fvar .. => visitApp type #[]
    | .proj ``Subtype 0 (.app (.const ``Void.nonemptyType []) _) =>
      return mkConst ``lcVoid
    | _        => return mkConst ``lcAny

  whnfEta (type : Expr) : MetaM Expr := do
    -- We increase transparency here to unfold type aliases of functions that are declared as
    -- `irreducible`, such that they end up being represented as C functions.
    let type ← withTransparency .all do
      whnf type
    let type' := type.eta
    if type' != type then
      whnfEta type'
    else
      return type

  visitForall (e : Expr) (xs : Array Expr) : MetaM Expr := do
    match e with
    | .forallE n d b bi =>
      let d := d.instantiateRev xs
      withLocalDecl n bi d fun x => do
        let isBorrowed := isMarkedBorrowed d
        let mut d := (← go d).abstract xs
        if isBorrowed then
          d := markBorrowed d
        return .forallE n d (← visitForall b (xs.push x)) bi
    | _ =>
      let e ← go (e.instantiateRev xs)
      return e.abstract xs

  visitApp (f : Expr) (args : Array Expr) := do
    let fNew ← match f with
      | .const declName us =>
        if (← getEnv).isExporting && isPrivateName declName then
          -- This branch can happen under `backward.privateInPublic`; restore original behavior of
          -- failing here, which is caught and ignored above by `observing`.
          throwError "internal compiler error: private in public"
        let .inductInfo _ ← getConstInfo declName | return anyExpr
        pure <| .const declName us
      | .fvar .. => pure f
      | _ => return anyExpr
    let mut result := fNew
    for arg in args do
      if ← isProp arg <||> isPropFormer arg then
        result := mkApp result erasedExpr
      else if ← isTypeFormer arg then
        result := mkApp result (← go arg)
      else
        result := mkApp result (mkConst ``lcAny)
    return result

mutual

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant294a5d960afbcf8d42901c29e3dc2d3d2085195be24bf4d9eb152e3b4c59884e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Types/Variant294a5d960afbcf8d42901c29e3dc2d3d2085195be24bf4d9eb152e3b4c59884e.lean#L138).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0b10aedb80d8760a87cf5375eaa4e0aea15f74b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
