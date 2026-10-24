# existsUnique_toNπ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b10f6e63-6749-db84-8cc6-76f7bec41a3f",
  "kind": "lemma",
  "lexical_name": "existsUnique_toNπ",
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
  "slug": "existsunique-ton--3c503424d356fe201992cdec",
  "source": {
    "blob": "dc64cc79c02ea257718fbf66de96923a8e3d26c3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 301,
    "line": 287,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant534aa9e6e9de3fe3a726466834fa9af3def7c14e21cd84333f10c5e1e10638f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c503424d356fe201992cdecf7bddc649ca2313d27fcef4ab1006f5b4072628a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant534aa9e6e9de3fe3a726466834fa9af3def7c14e21cd84333f10c5e1e10638f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b10f6e63-6749-db84-8cc6-76f7bec41a3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–301.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma existsUnique_toNπ {x : X.S} {y : X.N} (hy : x.toN = y) :
    ∃! (f : ⦋x.dim⦌ ⟶ ⦋y.dim⦌), Epi f ∧ X.map f.op y.simplex = x.simplex := by
  obtain ⟨n, x, hx, rfl⟩ := x.mk_surjective
  obtain ⟨m, f, _, z, rfl⟩ := X.exists_nonDegenerate x
  obtain rfl : y = N.mk _ z.2 := by
    rw [toN_eq_iff] at hy
    rw [← N.subcomplex_injective_iff, hy]
    exact subcomplex_eq_of_epi _ _ f rfl
  refine existsUnique_of_exists_of_unique ⟨f, inferInstance, rfl⟩
    (fun f₁ f₂ ⟨_, hf₁⟩ ⟨_, hf₂⟩ ↦ unique_nonDegenerate_map _ _ _ _ hf₁.symm _ _ hf₂.symm)

/-- Given a simplex `x : X.S` of a simplicial set `X`, this is the unique
(epi)morphism `f : ⦋x.dim⦌ ⟶ ⦋x.toN.dim⦌` such that `x.simplex` is
`X.map f.op x.toN.simplex` where `x.toN : X.N` is the unique nondegenerate
simplex of `X` which generates the same subcomplex as `x`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant534aa9e6e9de3fe3a726466834fa9af3def7c14e21cd84333f10c5e1e10638f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/NonDegenerateSimplices/Variant534aa9e6e9de3fe3a726466834fa9af3def7c14e21cd84333f10c5e1e10638f6.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc64cc79c02ea257718fbf66de96923a8e3d26c3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
