# sumElimCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e57f421e614d7a144b0eac04a4443fc619ee8fda104dcaf46a91bd2e72d18d3c",
  "kind": "instance",
  "lexical_name": "sumElimCategory",
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
  "slug": "sumelimcategory--65a351931728a572fc26e0e4",
  "source": {
    "blob": "e5a77ced145189c4778a948fc69d0fce6258980d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 149,
    "line": 134,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant794b208f988edd33725c1b4256c3eef46a89fa1d895f1bef1a5e8059659913e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:65a351931728a572fc26e0e4b6055d0ffd4785445d1f3d977d140162cfd5c99b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant794b208f988edd33725c1b4256c3eef46a89fa1d895f1bef1a5e8059659913e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e57f421e614d7a144b0eac04a4443fc619ee8fda104dcaf46a91bd2e72d18d3c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 134–149.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance sumElimCategory : ∀ s : Sum I J, Category.{v₁} (Sum.elim C D s)
  | Sum.inl i => by
    dsimp
    infer_instance
  | Sum.inr j => by
    dsimp
    infer_instance
#align category_theory.pi.sum_elim_category CategoryTheory.Pi.sumElimCategoryₓ

/- Porting note: replaced `Sum.rec` with `match`'s per the error about
current state of code generation -/

/-- The bifunctor combining an `I`-indexed family of objects with a `J`-indexed family of objects
to obtain an `I ⊕ J`-indexed family of objects.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant794b208f988edd33725c1b4256c3eef46a89fa1d895f1bef1a5e8059659913e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant794b208f988edd33725c1b4256c3eef46a89fa1d895f1bef1a5e8059659913e8.lean#L134).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e5a77ced145189c4778a948fc69d0fce6258980d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
