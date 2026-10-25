# visit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c3277d697efdef64fcb005c81ef0b78a9f66643cf65f4a40499bccd677864e04",
  "kind": "def",
  "lexical_name": "visit",
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
  "slug": "visit--cda3c96e646675b133f9ced1",
  "source": {
    "blob": "e8c728018470d7234d3a2a3727add85678683620",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant1e5d1a2b9efda910248f7e51425b86a5e28a985e11b74d596cdc79d1246d2e46.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cda3c96e646675b133f9ced10e2cef4c982e8f420bb4499d0fe0fae1df7d2a6a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant1e5d1a2b9efda910248f7e51425b86a5e28a985e11b74d596cdc79d1246d2e46.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c3277d697efdef64fcb005c81ef0b78a9f66643cf65f4a40499bccd677864e04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def visit (g : Expr → m Bool) (e : Expr) : MonadCacheT Expr Unit m Unit :=
  checkCache e fun _ => do
    if (← g e) then
      match e with
      | .forallE _ d b _   => do visit g d; visit g b
      | .lam _ d b _       => do visit g d; visit g b
      | .letE _ t v b _    => do visit g t; visit g v; visit g b
      | .app f a           => do visit g f; visit g a
      | .mdata _ b         => visit g b
      | .proj _ _ b        => visit g b
      | _                  => pure ()

end ForEachExpr

/-- Apply `f` to each sub-expression of `e`. If `f t` returns false, then t's children are not visited. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant1e5d1a2b9efda910248f7e51425b86a5e28a985e11b74d596cdc79d1246d2e46.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ForEachExpr/Variant1e5d1a2b9efda910248f7e51425b86a5e28a985e11b74d596cdc79d1246d2e46.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e8c728018470d7234d3a2a3727add85678683620` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
