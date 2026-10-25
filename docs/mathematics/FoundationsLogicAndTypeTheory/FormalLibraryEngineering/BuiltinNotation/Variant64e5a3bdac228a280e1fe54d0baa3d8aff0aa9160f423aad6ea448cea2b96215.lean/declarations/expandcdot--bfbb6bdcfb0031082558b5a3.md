# expandCDot?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ca0a7514436d9284b722d8bbc116d13624810e727d24665154a32663f7c88b50",
  "kind": "def",
  "lexical_name": "expandCDot?",
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
  "slug": "expandcdot--bfbb6bdcfb0031082558b5a3",
  "source": {
    "blob": "93ccf3f0a584d0877fb3442500c1b7e37083fe83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 323,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bfbb6bdcfb0031082558b5a39b16d88966c8709e2e1848211f1cde216836ee98",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ca0a7514436d9284b722d8bbc116d13624810e727d24665154a32663f7c88b50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 323–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def expandCDot? (stx : Term) (hygieneInfo? : Option Name) : MacroM (Option Term) := do
  if hasCDot stx hygieneInfo? then
    withFreshMacroScope do
      let mut (newStx, binders) ← (go stx).run #[]
      if binders.size == 1 then
        -- It is nicer using `x` over `x1` if there is only a single binder.
        let x1 := binders[0]!
        let x ← mkVarFrom x1 "x"
        binders := binders.set! 0 x
        newStx ← newStx.replaceM fun s => pure (if s == x1 then x else none)
      `(fun $binders* => $(⟨newStx⟩))
  else
    pure none
where
  mkVarFrom (ref : Syntax) (s : String) : MacroM Ident := do
    -- We do not incorporate the hygieneInfo macro scopes into the variable name.
    -- We could, but since cdot function binders identifiers are not supposed to cross stages it would not enable anything.
    let name ← MonadQuotation.addMacroScope <| Name.mkSimple s
    return mkIdentFrom ref name (canonical := true)
  /--
  Auxiliary function for expanding the `·` notation.
  The extra state `Array Syntax` contains the new binder names.
  If `stx` is a `·`, we create a fresh identifier, store it in the
  extra state, and return it. Otherwise, we just return `stx`.
  -/
  go (stx : Syntax) : StateT (Array Ident) MacroM Syntax :=
    match stx with
    | .node _ k args => do
      if isCDotForInfo stx hygieneInfo? then
        let id ← mkVarFrom stx s!"x{(← get).size + 1}"
        modify (fun s => s.push id)
        pure id
      else if isCDotBinderKind k then
        pure stx
      else
        let args ←
          if k == choiceKind then
            if args.isEmpty then
              return stx
            let s ← get
            let args' ← args.mapM (fun arg => go arg |>.run s)
            let s' := args'[0]!.2
            unless args'.all (fun (_, s'') => s''.size == s'.size) do
              Macro.throwErrorAt stx "Ambiguous notation in cdot function has different numbers of '·' arguments in each alternative."
            set s'
            pure <| args'.map Prod.fst
          else
            args.mapM go
        return .node (.fromRef stx (canonical := true)) k args
    | _ => pure stx

/--
  Helper method for elaborating terms such as `(.+.)` where a constant name is expected.
  This method is usually used to implement tactics that take function names as arguments
  (e.g., `simp`).
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variant64e5a3bdac228a280e1fe54d0baa3d8aff0aa9160f423aad6ea448cea2b96215.lean#L323).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93ccf3f0a584d0877fb3442500c1b7e37083fe83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
