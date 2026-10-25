# mkProdTree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5973bc723537ee239b3569745359e4923ac8665553419edb7f7bc9b0a69143c0",
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
  "slug": "mkprodtree--9b3ee12fef433fb7da6c6086",
  "source": {
    "blob": "03e779259f1e496183e71c02c8a909a822cecfba",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 54,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b3ee12fef433fb7da6c608640ec76d3f4e8dcb969ffa1b1afa053cffe98d853",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5973bc723537ee239b3569745359e4923ac8665553419edb7f7bc9b0a69143c0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 54–70.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProdAssoc/Variantb6a66f9aa7e9b0ba4551eba9f6bf12630b52e0f85e2edb1cbad3b6f6e4b3ccae.lean#L54).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03e779259f1e496183e71c02c8a909a822cecfba` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
