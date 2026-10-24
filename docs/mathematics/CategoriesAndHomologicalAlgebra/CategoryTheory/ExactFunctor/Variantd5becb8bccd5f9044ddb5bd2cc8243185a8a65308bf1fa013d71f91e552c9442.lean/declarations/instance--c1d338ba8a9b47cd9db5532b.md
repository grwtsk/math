# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bd5b859cb385ed55f2335f184c8e3130a3aa1f07a8f8c21db06b138db1c913bc",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--c1d338ba8a9b47cd9db5532b",
  "source": {
    "blob": "48b40cc12697b47e6b3d5612b565b21b445aca08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 223,
    "line": 212,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1d338ba8a9b47cd9db5532bb680e71d98c5af564671b315339ce1cbd1142aea",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bd5b859cb385ed55f2335f184c8e3130a3aa1f07a8f8c21db06b138db1c913bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 212–223.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance :
    NatTrans.CommShift (Lifting.iso DerivedCategory.Q
      (HomologicalComplex.quasiIso C₁ (ComplexShape.up ℤ))
      (F.mapHomologicalComplex _ ⋙ G.mapHomologicalComplex _ ⋙ DerivedCategory.Q)
      (F.mapDerivedCategory ⋙ G.mapDerivedCategory)).hom ℤ := by
  dsimp [Lifting.iso]
  infer_instance

/-- If `F` and `G` are exact functors between abelian categories, the composition
of the induced functors on the derived category identifies to the functor
induced by `F ⋙ G`. -/
@[no_expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/ExactFunctor/Variantd5becb8bccd5f9044ddb5bd2cc8243185a8a65308bf1fa013d71f91e552c9442.lean#L212).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `48b40cc12697b47e6b3d5612b565b21b445aca08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
