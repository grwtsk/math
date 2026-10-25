# findBRecOnLHS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b2644908f636c4ffb6e7728d176bfb4d28edf24961c7552eca42457381f0052f",
  "kind": "def",
  "lexical_name": "findBRecOnLHS",
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
  "slug": "findbreconlhs--6f4ef35d45253ab7d59a5190",
  "source": {
    "blob": "498ee9750402d57814612132b4831f26b0c11082",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 47,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f4ef35d45253ab7d59a5190479fc6a98bff8a66b4350c31a9dc04e70b9217bb",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b2644908f636c4ffb6e7728d176bfb4d28edf24961c7552eca42457381f0052f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def findBRecOnLHS (goal : Expr) : MetaM (Expr × Expr) := do
  let some (_, lhs, rhs) := goal.eq? | throwError "goal not an equality{indentExpr goal}"
  go lhs fun brecOnApp x c =>
    return (brecOnApp, ← mkLambdaFVars #[x] (← mkEq c rhs))
where
  go {α} (e : Expr) (k : Expr → Expr → Expr → MetaM α) : MetaM α := e.withApp fun f xs => do
    if let .proj t n e := f then
      return ← go e fun brecOnApp x c => k brecOnApp x (mkAppN (mkProj t n c) xs)
    if let .const name _ := f then
      if isBRecOnRecursor (← getEnv) name then
        let arity ← forallTelescope (← inferType f) fun xs _ => return xs.size
        if arity ≤ xs.size then
          let brecOnApp := mkAppN f xs[:arity]
          let extraArgs := xs[arity:]
          return ← withLocalDeclD `x (← inferType brecOnApp) fun x =>
            k brecOnApp x (mkAppN x extraArgs)
    throwError "could not find `.brecOn` application in{indentExpr e}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant40ea9e00e3d60adac8cd9f4e845cf3b6325a1b5a1a95b18bf260a627d3f28355.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `498ee9750402d57814612132b4831f26b0c11082` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
