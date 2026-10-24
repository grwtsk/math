# toSimplexCategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8a2c3702b77915f9f52d58b0f554471d894e33905d3b577ed515df765f0867d9",
  "kind": "def",
  "lexical_name": "toSimplexCategory",
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
  "slug": "tosimplexcategory--45c63412fd6edbbf0cd42e0d",
  "source": {
    "blob": "5971d9463f4521ed115ecf26c0c83782a2f222ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 255,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:45c63412fd6edbbf0cd42e0d95cf1a9e009c78161765a900415c813c63757ba2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8a2c3702b77915f9f52d58b0f554471d894e33905d3b577ed515df765f0867d9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 255–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toSimplexCategory : SimplexCategoryGenRel ⥤ SimplexCategory :=
  CategoryTheory.Quotient.lift _
    (Paths.lift
      { obj := .mk
        map f := match f with
          | FreeSimplexQuiver.Hom.δ i => SimplexCategory.δ i
          | FreeSimplexQuiver.Hom.σ i => SimplexCategory.σ i })
    (fun _ _ _ _ h ↦ match h with
      | .δ_comp_δ H => SimplexCategory.δ_comp_δ H
      | .δ_comp_σ_of_le H => SimplexCategory.δ_comp_σ_of_le H
      | .δ_comp_σ_self => SimplexCategory.δ_comp_σ_self
      | .δ_comp_σ_succ => SimplexCategory.δ_comp_σ_succ
      | .δ_comp_σ_of_gt H => SimplexCategory.δ_comp_σ_of_gt H
      | .σ_comp_σ H => SimplexCategory.σ_comp_σ H)

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant2f7aed04d30278857ec7fc45f3ecf15e1d1d1a3eff5e76e49d1fb17e1660a363.lean#L255).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5971d9463f4521ed115ecf26c0c83782a2f222ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
