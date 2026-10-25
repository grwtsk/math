# tryTheorems

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c896b44be35384ccbd5edea09d0edad7cb6e728fc0e0e17a588935d0bcd1fb8c",
  "kind": "def",
  "lexical_name": "tryTheorems",
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
  "slug": "trytheorems--f95c1d17528f4361b919e3fc",
  "source": {
    "blob": "1bca8cc5caaa3d03f0cf8aec450079f68c678083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 522,
    "line": 467,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f95c1d17528f4361b919e3fc5b7617d2fa37276f5342a343a2d7360c564e0906",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c896b44be35384ccbd5edea09d0edad7cb6e728fc0e0e17a588935d0bcd1fb8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 467–522.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def tryTheorems (funPropDecl : FunPropDecl) (e : Expr) (fData : FunctionData)
    (thms : Array FunctionTheorem) (funProp : Expr → FunPropM (Option Result)) :
    FunPropM (Option Result) := do

  -- none - decomposition not tried
  -- some none - decomposition failed
  -- some some (f, g) - successful decomposition
  let mut dec? : Option (Option (Expr × Expr)) := none

  for thm in thms do

    trace[Debug.Meta.Tactic.fun_prop] s!"trying theorem {← ppOrigin' thm.thmOrigin}"

    match compare thm.appliedArgs fData.args.size with
    | .lt =>
      trace[Meta.Tactic.fun_prop] s!"removing argument to later use {← ppOrigin' thm.thmOrigin}"
      if let .some r ← removeArgRule funPropDecl e fData funProp then
        return r
      continue
    | .gt =>
      trace[Meta.Tactic.fun_prop] s!"adding argument to later use {← ppOrigin' thm.thmOrigin}"
      if let .some r ← applyPiRule funPropDecl e funProp then
        return r
      continue
    | .eq =>
      if thm.form == .comp then
        if let .some r ← tryTheorem? e thm.thmOrigin funProp then
          return r
      else

        if thm.mainArgs.size == fData.mainArgs.size then
          if dec?.isNone then
            dec? := .some (← fData.nontrivialDecomposition)
          match dec? with
          | .some .none =>
            if let .some r ← tryTheorem? e thm.thmOrigin funProp then
              return r
          | .some (.some (f,g)) =>
            trace[Meta.Tactic.fun_prop]
              s!"decomposing to later use {←ppOrigin' thm.thmOrigin} as:
                   ({← ppExpr f}) ∘ ({← ppExpr g})"
            if let .some r ← applyCompRule funPropDecl e f g funProp then
              return r
          | _ => continue
        else
          let .some (f,g) ← fData.decompositionOverArgs thm.mainArgs
            | continue
          trace[Meta.Tactic.fun_prop]
            s!"decomposing to later use {←ppOrigin' thm.thmOrigin} as:
                 ({← ppExpr f}) ∘ ({← ppExpr g})"
          if let .some r ← applyCompRule funPropDecl e f g funProp then
            return r
      -- todo: decompose if uncurried and arguments do not match exactly
  return none

/-- Prove function property of `fun x => f x₁ ... xₙ` where `f` is free variable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean#L467).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bca8cc5caaa3d03f0cf8aec450079f68c678083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
