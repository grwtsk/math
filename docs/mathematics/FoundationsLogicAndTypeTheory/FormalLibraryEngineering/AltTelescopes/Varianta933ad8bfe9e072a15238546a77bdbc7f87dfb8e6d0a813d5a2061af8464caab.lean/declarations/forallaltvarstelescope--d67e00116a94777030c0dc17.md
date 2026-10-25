# forallAltVarsTelescope

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8ba3a84076a2b006b17cb8ae7605a977b1b4cc323d941d576d95934980203f04",
  "kind": "def",
  "lexical_name": "forallAltVarsTelescope",
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
  "slug": "forallaltvarstelescope--d67e00116a94777030c0dc17",
  "source": {
    "blob": "71431087eadc7ae66faefae5b6a213ca10560d27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 106,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AltTelescopes/Varianta933ad8bfe9e072a15238546a77bdbc7f87dfb8e6d0a813d5a2061af8464caab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d67e00116a94777030c0dc17938246a209931e7d40975005d726f2679ddc0146",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AltTelescopes/Varianta933ad8bfe9e072a15238546a77bdbc7f87dfb8e6d0a813d5a2061af8464caab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8ba3a84076a2b006b17cb8ae7605a977b1b4cc323d941d576d95934980203f04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–106.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def forallAltVarsTelescope (altType : Expr) (altInfo : AltParamInfo)
  (k : (patVars : Array Expr) → (args : Array Expr) → (mask : Array Bool) → (type : Expr) → MetaM α) : MetaM α := do
  assert! altInfo.numOverlaps = 0
  if altInfo.hasUnitThunk then
    let type ← whnfForall altType
    let type ← Match.unfoldNamedPattern type
    let type ← instantiateForall type #[mkConst ``Unit.unit]
    k #[] #[mkConst ``Unit.unit] #[false] type
  else
    go #[] #[] #[] 0 altType
where
  go (ys : Array Expr) (args : Array Expr) (mask : Array Bool) (i : Nat) (type : Expr) : MetaM α := do
    let type ← whnfForall type

    if i < altInfo.numFields then
      let Expr.forallE n d b .. := type
        | throwError "expecting {altInfo.numFields} parameters, but found type{indentExpr altType}"

      let d ← Match.unfoldNamedPattern d
      withLocalDeclD n d fun y => do
        let typeNew := b.instantiate1 y
        if let some (_, lhs, rhs) ← matchEq? d then
          if lhs.isFVar && ys.contains lhs && args.contains lhs && isNamedPatternProof typeNew y then
              let some j  := ys.finIdxOf? lhs | unreachable!
              let ys      := ys.eraseIdx j
              let some k  := args.idxOf? lhs | unreachable!
              let mask    := mask.set! k false
              let args    := args.map fun arg => if arg == lhs then rhs else arg
              let arg     ← mkEqRefl rhs
              let typeNew := typeNew.replaceFVar lhs rhs
              return ← withReplaceFVarId lhs.fvarId! rhs do
              withReplaceFVarId y.fvarId! arg do
                go ys (args.push arg) (mask.push false) (i+1) typeNew
        go (ys.push y) (args.push y) (mask.push true) (i+1) typeNew
    else
      let type ← Match.unfoldNamedPattern type
      k ys args mask type

  isNamedPatternProof (type : Expr) (h : Expr) : Bool :=
    Option.isSome <| type.find? fun e =>
      if let some e := Match.isNamedPattern? e then
        e.appArg! == h
      else
        false


/--
  Extension of `forallAltTelescope` that continues further:

  Equality parameters associated with the `h : discr` notation are replaced with `rfl` proofs.
  Recall that this kind of parameter always occurs after the parameters corresponding to pattern
  variables.

  The continuation `k` takes four arguments `ys args mask type`.
  - `ys` are variables for the hypotheses that have not been eliminated.
  - `eqs` are variables for equality hypotheses associated with discriminants annotated with `h : discr`.
  - `args` are the arguments for the alternative `alt` that has type `altType`. `ys.size <= args.size`
  - `mask[i]` is true if the hypotheses has not been eliminated. `mask.size == args.size`.
  - `type` is the resulting type for `altType`.

  We use the `mask` to build the splitter proof. See `mkSplitterProof`.

  This can be used to use the alternative of a match expression in its splitter.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AltTelescopes/Varianta933ad8bfe9e072a15238546a77bdbc7f87dfb8e6d0a813d5a2061af8464caab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/AltTelescopes/Varianta933ad8bfe9e072a15238546a77bdbc7f87dfb8e6d0a813d5a2061af8464caab.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `71431087eadc7ae66faefae5b6a213ca10560d27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
