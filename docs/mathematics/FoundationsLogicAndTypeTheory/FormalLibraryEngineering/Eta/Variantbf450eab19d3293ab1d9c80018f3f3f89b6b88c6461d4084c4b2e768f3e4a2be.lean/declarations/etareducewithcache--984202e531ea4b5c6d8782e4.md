# etaReduceWithCache

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c455b34b913e02f1a6f79a21adee78c89472287b5920c5c4791ffaad76105d55",
  "kind": "def",
  "lexical_name": "etaReduceWithCache",
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
  "slug": "etareducewithcache--984202e531ea4b5c6d8782e4",
  "source": {
    "blob": "8e473b1076a7759ae62e9b5637ee4c4bf474f344",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 70,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantbf450eab19d3293ab1d9c80018f3f3f89b6b88c6461d4084c4b2e768f3e4a2be.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:984202e531ea4b5c6d8782e470fafd489a1683bcd0e9044e35c355e40a962022",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantbf450eab19d3293ab1d9c80018f3f3f89b6b88c6461d4084c4b2e768f3e4a2be.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c455b34b913e02f1a6f79a21adee78c89472287b5920c5c4791ffaad76105d55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public partial def etaReduceWithCache (e : Expr) (c : Std.HashMap ExprPtr Expr) : CoreM (Expr × Std.HashMap ExprPtr Expr) := do
  visit e |>.run c
where
  cache (e e' : Expr) : StateRefT (Std.HashMap ExprPtr Expr) CoreM Expr := do
    modify fun s => s.insert { expr := e } e'
    return e'

  visit (e : Expr) : StateRefT (Std.HashMap ExprPtr Expr) CoreM Expr := withIncRecDepth do
    if let some e' := (← get).get? { expr := e } then
      return e'
    match e with
    | .forallE _ d b _ => cache e (e.updateForallE! (← visit d) (← visit b))
    | .lam _ d b _ =>
      let e' := etaReduce.go e e 0
      if isSameExpr e e' then
        cache e (e.updateLambdaE! (← visit d) (← visit b))
      else
        cache e (← visit e')
    | .letE _ t v b _  => cache e (e.updateLetE! (← visit t) (← visit v) (← visit b))
    | .app f a         => cache e (e.updateApp! (← visit f) (← visit a))
    | .mdata _ b       => cache e (e.updateMData! (← visit b))
    | .proj _ _ b      => cache e (e.updateProj! (← visit b))
    | _                => return e

/-- Applies `etaReduce` to all subexpressions. Returns `e` unchanged if no subexpression is eta-reducible. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantbf450eab19d3293ab1d9c80018f3f3f89b6b88c6461d4084c4b2e768f3e4a2be.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Eta/Variantbf450eab19d3293ab1d9c80018f3f3f89b6b88c6461d4084c4b2e768f3e4a2be.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8e473b1076a7759ae62e9b5637ee4c4bf474f344` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
