# constructorNameAsVariable

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:276e2e0e0cb75865b8cf5654a4a4af01fa8aace28d552dee11b2c2f93bcfe2f0",
  "kind": "def",
  "lexical_name": "constructorNameAsVariable",
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
  "slug": "constructornameasvariable--5f587512e3489ea85ca3fab2",
  "source": {
    "blob": "c9a1e14ced581066e3793643125a21301267352c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 96,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConstructorAsVariable/Variant5f2ec5fb6c03a2aeb2d325bbc1a5222d9a362ca0d144334cc3630ddae0c95076.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5f587512e3489ea85ca3fab2804e1875d0e5cb75ccba3660c95a3f02968688f4",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConstructorAsVariable/Variant5f2ec5fb6c03a2aeb2d325bbc1a5222d9a362ca0d144334cc3630ddae0c95076.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:276e2e0e0cb75865b8cf5654a4a4af01fa8aace28d552dee11b2c2f93bcfe2f0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–96.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def constructorNameAsVariable : Linter where
  run cmdStx := do
    unless getLinterValue linter.constructorNameAsVariable (← getLinterOptions) do
      return
    let some cmdStxRange := cmdStx.getRange?
      | return

    let infoTrees := (← get).infoState.trees.toArray
    let warnings : IO.Ref (Std.HashMap Lean.Syntax.Range (Syntax × Name × Name)) ← IO.mkRef {}

    for tree in infoTrees do
      tree.visitM' (postNode := fun ci info _ => do
        match info with
        | .ofTermInfo ti =>
          match ti.expr with
          | .fvar id .. =>
            let some range := info.range? | return
            if (← warnings.get).contains range then return
            let .original .. := info.stx.getHeadInfo | return
            if ti.isBinder then
              -- This is a local variable declaration.
              let some ldecl := ti.lctx.find? id | return
              -- Skip declarations which are outside the command syntax range, like `variable`s
              -- (it would be confusing to lint these), or those which are macro-generated
              if !cmdStxRange.contains range.start || ldecl.userName.hasMacroScopes then return
              let opts ← ci.options.toLinterOptions
              -- we have to check for the option again here because it can be set locally
              if !getLinterValue linter.constructorNameAsVariable opts then return
              if let n@(.str .anonymous s) := info.stx.getId then
                -- Check whether the type is an inductive type, and get its constructors
                let ty ←
                  if let some t := ti.expectedType? then pure t
                  else ti.runMetaM ci (Meta.inferType ti.expr)
                let ty ← ti.runMetaM ci (instantiateMVars ty >>= Meta.whnf)
                if let .const tn _ := ty.getAppFn' then
                  if let some (.inductInfo i) := (← getEnv).find? tn then
                    for c in i.ctors do
                      -- Only warn when the constructor has 0 fields. Pattern variables can't be
                      -- confused with constructors that want arguments.
                      if let some (.ctorInfo ctorInfo) := (← getEnv).find? c then
                        if ctorInfo.numFields > 0 then continue
                      if let .str _ cn := c then
                        if cn == s then
                          warnings.modify (·.insert range (info.stx, n, c))
            else pure ()
          | _ => pure ()
        | _ => pure ())

    -- Sort the outputs by position
    for (_range, declStx, userName, ctorName) in (← warnings.get).toArray.qsort (·.1.start < ·.1.start) do
      logLint linter.constructorNameAsVariable declStx <|
        m!"Local variable '{userName}' resembles constructor '{ctorName}' - " ++
        m!"write '.{userName}' (with a dot) or '{ctorName}' to use the constructor."

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConstructorAsVariable/Variant5f2ec5fb6c03a2aeb2d325bbc1a5222d9a362ca0d144334cc3630ddae0c95076.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ConstructorAsVariable/Variant5f2ec5fb6c03a2aeb2d325bbc1a5222d9a362ca0d144334cc3630ddae0c95076.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9a1e14ced581066e3793643125a21301267352c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
