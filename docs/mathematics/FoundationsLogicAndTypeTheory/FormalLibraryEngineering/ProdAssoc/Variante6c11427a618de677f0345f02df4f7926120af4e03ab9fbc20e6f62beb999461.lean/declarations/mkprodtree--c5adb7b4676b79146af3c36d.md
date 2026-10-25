# mkProdTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e16a6d21acb4dc20c743671db96a28288603676147ff68f816a11c1b9947462e",
  "kind": "def",
  "lexical_name": "mkProdTree",
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
  "slug": "mkprodtree--c5adb7b4676b79146af3c36d",
  "source": {
    "blob": "40a335233a30ebb7f74a962a53d6b5cc0267189a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 46,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5adb7b4676b79146af3c36dceabd243c64704dcaeee9529d7148eefce579805",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e16a6d21acb4dc20c743671db96a28288603676147ff68f816a11c1b9947462e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def mkProdTree (e : Expr) : MetaM ProdTree :=
  match e.consumeMData with
    | .app (.app (.const ``Prod [u,v]) X) Y => do
        return .prod (← X.mkProdTree) (← Y.mkProdTree) u v
    | X => do
      let some u := (← whnfD <| ← inferType X).type? | throwError "Not a type{indentExpr X}"
      return .type X u

/-- Given `P : ProdTree` representing an iterated product and `e : Expr` which
should correspond to a term of the iterated product, this will return
a list, whose items correspond to the leaves of `P` (i.e. the types appearing in the product),
where each item is the appropriate composition of `Prod.fst` and `Prod.snd` applied to `e`
resulting in an element of the type corresponding to the leaf.

For example, if `P` corresponds to `(X × Y) × Z` and `t : (X × Y) × Z`, then this
should return `[t.fst.fst, t.fst.snd, t.snd]`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variante6c11427a618de677f0345f02df4f7926120af4e03ab9fbc20e6f62beb999461.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `40a335233a30ebb7f74a962a53d6b5cc0267189a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
