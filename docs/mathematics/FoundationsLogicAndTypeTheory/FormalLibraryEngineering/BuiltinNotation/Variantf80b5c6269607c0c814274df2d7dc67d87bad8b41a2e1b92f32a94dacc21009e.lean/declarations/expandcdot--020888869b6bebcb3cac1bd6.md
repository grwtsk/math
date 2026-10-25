# expandCDot?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:52a4d94260f777df908240acdd8cc186b47266b2cd1d1dec57e2e04d98b34f00",
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
  "slug": "expandcdot--020888869b6bebcb3cac1bd6",
  "source": {
    "blob": "3420ebb6df810a5218fbfe80f93c70893eada123",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 386,
    "line": 331,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:020888869b6bebcb3cac1bd67534fa5b09afdcade7a2f79be938d45a60bc1078",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:52a4d94260f777df908240acdd8cc186b47266b2cd1d1dec57e2e04d98b34f00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–386.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinNotation/Variantf80b5c6269607c0c814274df2d7dc67d87bad8b41a2e1b92f32a94dacc21009e.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3420ebb6df810a5218fbfe80f93c70893eada123` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
