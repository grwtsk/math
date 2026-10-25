# funProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1437dec4ed46d57b82db6b89376858ba64a4ce1d876a416b16aa1e39086a18fb",
  "kind": "def",
  "lexical_name": "funProp",
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
  "slug": "funprop--e9557fb49b80ed643a25eb7d",
  "source": {
    "blob": "1bca8cc5caaa3d03f0cf8aec450079f68c678083",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 656,
    "line": 620,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e9557fb49b80ed643a25eb7db8b3f2693215a4e1a263ca6ee39522ade8b3947c",
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

Occurrence: `declaration:1437dec4ed46d57b82db6b89376858ba64a4ce1d876a416b16aa1e39086a18fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  partial def funProp (e : Expr) : FunPropM (Option Result) := do

    let e ← instantiateMVars e

    withTraceNode `Meta.Tactic.fun_prop
      (fun r => do pure s!"[{ExceptToEmoji.toEmoji r}] {← ppExpr e}") do

    -- check cache for successful goals
    if let .some { expr := _, proof? := .some proof } := (← get).cache.find? e then
      trace[Meta.Tactic.fun_prop] "reusing previously found proof for {e}"
      return .some { proof := proof }
    else if (← get).failureCache.contains e then
      trace[Meta.Tactic.fun_prop] "skipping proof search, proving {e} was tried already and failed"
      return .none
    else
      -- take care of forall and let binders and run main
      match e with
      | .letE .. =>
        letTelescope e fun xs b => do
          let .some r ← funProp b
            | return none
          cacheResult e {proof := ← mkLambdaFVars xs r.proof }
      | .forallE .. =>
        forallTelescope e fun xs b => do
          let .some r ← funProp b
            | return none
          cacheResult e {proof := ← mkLambdaFVars xs r.proof }
      | .mdata _ e' => funProp e'
      | _ =>
        if let .some r ← main e then
          cacheResult e r
        else
          cacheFailure e
          return none


  /-- Main `funProp` function. Returns proof of `e`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Core/Variantd0c25609b98fa3eb360c1b63cfb49c011ac8ac5465f40f527f8308f86278a079.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1bca8cc5caaa3d03f0cf8aec450079f68c678083` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
