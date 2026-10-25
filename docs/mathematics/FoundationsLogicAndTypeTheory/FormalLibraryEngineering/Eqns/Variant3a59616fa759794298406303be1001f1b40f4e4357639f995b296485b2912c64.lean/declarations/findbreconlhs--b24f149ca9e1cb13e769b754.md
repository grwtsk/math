# findBRecOnLHS

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1f11d843e99805c4eb7596ba9c4bf7d9597ebdf31b16f25af408800fa3bb7afc",
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
  "slug": "findbreconlhs--b24f149ca9e1cb13e769b754",
  "source": {
    "blob": "bbb0c35cb5e67f6cfc202167fc9ee17aab4d2be3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 56,
    "line": 39,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b24f149ca9e1cb13e769b754e24fb380028c7ea286d95805fb07760d025c79ad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1f11d843e99805c4eb7596ba9c4bf7d9597ebdf31b16f25af408800fa3bb7afc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–56.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eqns/Variant3a59616fa759794298406303be1001f1b40f4e4357639f995b296485b2912c64.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbb0c35cb5e67f6cfc202167fc9ee17aab4d2be3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
