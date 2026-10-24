# exists_eq_of_isCofiltered_costructuredArrow

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:98b021a8-926d-366f-05a5-687813a35b06",
  "kind": "theorem",
  "lexical_name": "exists_eq_of_isCofiltered_costructuredArrow",
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
  "slug": "exists-eq-of-iscofiltered-costructuredarrow--e5fbd9ebea610a76f31db9eb",
  "source": {
    "blob": "73bf54c45f474ea31848b3213ba175e79bb25407",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 103,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5fbd9ebea610a76f31db9eb9bdd4fc978ddb2511276b0f41ec70578f8a0bf5a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:98b021a8-926d-366f-05a5-687813a35b06`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_eq_of_isCofiltered_costructuredArrow {d : D}
    [IsCofiltered (CostructuredArrow F d)] {c₁ c₂ : C}
    (s₁ : F.obj c₁ ⟶ d) (s₂ : F.obj c₂ ⟶ d) :
    ∃ (c : C) (t₁ : c ⟶ c₁) (t₂ : c ⟶ c₂), F.map t₁ ≫ s₁ = F.map t₂ ≫ s₂ := by
  obtain ⟨W, p₁, p₂, -⟩ := IsCofilteredOrEmpty.cone_objs
    (CostructuredArrow.mk s₁) (CostructuredArrow.mk s₂)
  exact ⟨W.left, p₁.left, p₂.left, (CostructuredArrow.w p₁).trans (CostructuredArrow.w p₂).symm⟩

/-- If `C` is filtered, then we can give an explicit condition for a functor `F : C ⥤ D` to
be final. The converse is also true, see `final_iff_of_isFiltered`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Final/Variantb69436ac61cce1f7feea2d23ade97048f0c3d8588f143a021fcdbf5e820ef046.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `73bf54c45f474ea31848b3213ba175e79bb25407` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
