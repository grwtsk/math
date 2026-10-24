# forget_faithful

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0c8737bf387125af717d06e9a0a277d663394d4f41928816d58632a99d210147",
  "kind": "instance",
  "lexical_name": "forget_faithful",
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
  "slug": "forget-faithful--23ae535d85ec3dee68b511fc",
  "source": {
    "blob": "938ea87943bb0c45cbc945f5808e98f37060fa2e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 508,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:23ae535d85ec3dee68b511fc12afbd864203cacec01c61159913f44c84f76965",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0c8737bf387125af717d06e9a0a277d663394d4f41928816d58632a99d210147`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 508–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance forget_faithful : Faithful (forget G) where
#align category_theory.comonad.forget_faithful CategoryTheory.Comonad.forget_faithful

/-- Given a coalgebra morphism whose carrier part is an epimorphism, we get an algebra epimorphism.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant89f0e4bfb054810e426d648a8d32449911bea61a0c956b5ad2a867b5ce3248ac.lean#L508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `938ea87943bb0c45cbc945f5808e98f37060fa2e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
